import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:shiprocket/datamodels/Authres.dart';
import 'package:shiprocket/datamodels/channelres.dart';
import 'package:shiprocket/datamodels/orderreq.dart';
import 'package:shiprocket/datamodels/orderres.dart';

String shiprocketToken = "";
String baseurl = "https://apiv2.shiprocket.in/v1/external";

class ShipRocket {
  Future<void> auth({required String email, required String password}) async {
    var res = await http.post(
      Uri.parse('$baseurl/auth/login'),
      headers: <String, String>{
        'Content-Type': 'application/json',
      },
      body: jsonEncode(<String, String>{"email": email, "password": password}),
    );

    var data = AuthRes.fromJson(jsonDecode(res.body));
    shiprocketToken = data.token;
  }

  Future<OrderRes> placeorder(OrderData data) async {
    var res = await http.post(
      Uri.parse('$baseurl/auth/login'),
      headers: <String, String>{
        'Content-Type': 'application/json',
      },
      body: data.toJson(),
    );

    return OrderRes.fromJson(jsonDecode(res.body));
  }

  Future<int> getchanel({String channelname = 'CUSTOM'}) async {
    var res = await http.get(
      Uri.parse('$baseurl/auth/login'),
      headers: <String, String>{
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $shiprocketToken'
      },
    );

    var data = ChannelRes.fromJson(jsonDecode(res.body));
    var x = data.data!.where((element) => element.name == channelname).toList();
    return x[0].id!;
  }
}
