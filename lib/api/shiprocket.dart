import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:shiprocket/datamodels/Authres.dart';
import 'package:shiprocket/datamodels/channelres.dart';
import 'package:shiprocket/datamodels/orderreq.dart';
import 'package:shiprocket/datamodels/orderres.dart';

String shiprocketToken = "";
String temail = "";
String tpassword = "";

String baseurl = "https://apiv2.shiprocket.in/v1/external";

mixin ShipRocket {

  static Future<void> init(
      {required String email,
      required String password,
      bool debug = false}) async {
        
    if (debug) {
      baseurl = baseurl;
    }

    temail = email;
    tpassword = password;

    var res = await http
        .post(
      Uri.parse('$baseurl/auth/login'),
      headers: <String, String>{
        'Content-Type': 'application/json',
      },
      body: jsonEncode(<String, String>{"email": email, "password": password}),
    )
        .timeout(const Duration(seconds: 5), onTimeout: () {
      return http.Response('Time out', 408);
    });

    if (res.statusCode == 200) {
      var data = AuthRes.fromJson(jsonDecode(res.body));
      shiprocketToken = data.token;
    } else {
      throw Exception(jsonDecode(res.body)["message"]);
    }
  }

 static Future<OrderRes> placeorder(OrderData data) async {
    if (shiprocketToken == "") {
      await init(email: temail, password: tpassword);
      placeorder(data);
    }
    var res = await http.post(
      Uri.parse('$baseurl/auth/login'),
      headers: <String, String>{
        'Content-Type': 'application/json',
      },
      body: data.toJson(),
    ).timeout(const Duration(seconds: 5), onTimeout: () {
      return http.Response('Time out', 408);
    });

    if (res.statusCode == 200) {
      return OrderRes.fromJson(jsonDecode(res.body));
    } else {
      throw Exception(jsonDecode(res.body)["message"]);
    }
  }

  static Future<int> getchanel({String channelname = 'CUSTOM'}) async {
    if (shiprocketToken == "") {
      await init(email: temail, password: tpassword);
      getchanel();
    }
    var res = await http.get(
      Uri.parse('$baseurl/auth/login'),
      headers: <String, String>{
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $shiprocketToken'
      },
    ).timeout(const Duration(seconds: 5), onTimeout: () {
      return http.Response('Time out', 408);
    });
    if (res.statusCode == 200) {
      var data = ChannelRes.fromJson(jsonDecode(res.body));
      var x =
          data.data!.where((element) => element.name == channelname).toList();
      return x[0].id!;
    } else {
      throw Exception(jsonDecode(res.body)["message"]);
    }
  }
}
