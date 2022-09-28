// To parse this JSON data, do
//
//     final orderData = orderDataFromJson(jsonString);

import 'dart:convert';

OrderData orderDataFromJson(String str) => OrderData.fromJson(json.decode(str));

String orderDataToJson(OrderData data) => json.encode(data.toJson());

class OrderData {
  OrderData({
    this.orderId,
    this.orderDate,
    this.pickupLocation,
    this.channelId,
    this.comment,
    this.billingCustomerName,
    this.billingLastName,
    this.billingAddress,
    this.billingAddress2,
    this.billingCity,
    this.billingPincode,
    this.billingState,
    this.billingCountry,
    this.billingEmail,
    this.billingPhone,
    this.shippingIsBilling,
    this.shippingCustomerName,
    this.shippingLastName,
    this.shippingAddress,
    this.shippingAddress2,
    this.shippingCity,
    this.shippingPincode,
    this.shippingCountry,
    this.shippingState,
    this.shippingEmail,
    this.shippingPhone,
    this.orderItems,
    this.paymentMethod,
    this.shippingCharges,
    this.giftwrapCharges,
    this.transactionCharges,
    this.totalDiscount,
    this.subTotal,
    this.length,
    this.breadth,
    this.height,
    this.weight,
  });

  String? orderId;
  String? orderDate;
  String? pickupLocation;
  String? channelId;
  String? comment;
  String? billingCustomerName;
  String? billingLastName;
  String? billingAddress;
  String? billingAddress2;
  String? billingCity;
  String? billingPincode;
  String? billingState;
  String? billingCountry;
  String? billingEmail;
  String? billingPhone;
  bool? shippingIsBilling;
  String? shippingCustomerName;
  String? shippingLastName;
  String? shippingAddress;
  String? shippingAddress2;
  String? shippingCity;
  String? shippingPincode;
  String? shippingCountry;
  String? shippingState;
  String? shippingEmail;
  String? shippingPhone;
  List<OrderItem>? orderItems;
  String? paymentMethod;
  int? shippingCharges;
  int? giftwrapCharges;
  int? transactionCharges;
  int? totalDiscount;
  int? subTotal;
  int? length;
  int? breadth;
  int? height;
  double? weight;

  factory OrderData.fromJson(Map<String, dynamic> json) => OrderData(
        orderId: json["order_id"],
        orderDate: json["order_date"],
        pickupLocation: json["pickup_location"],
        channelId: json["channel_id"],
        comment: json["comment"],
        billingCustomerName: json["billing_customer_name"],
        billingLastName: json["billing_last_name"],
        billingAddress: json["billing_address"],
        billingAddress2: json["billing_address_2"],
        billingCity: json["billing_city"],
        billingPincode: json["billing_pincode"],
        billingState: json["billing_state"],
        billingCountry: json["billing_country"],
        billingEmail: json["billing_email"],
        billingPhone: json["billing_phone"],
        shippingIsBilling: json["shipping_is_billing"],
        shippingCustomerName: json["shipping_customer_name"],
        shippingLastName: json["shipping_last_name"],
        shippingAddress: json["shipping_address"],
        shippingAddress2: json["shipping_address_2"],
        shippingCity: json["shipping_city"],
        shippingPincode: json["shipping_pincode"],
        shippingCountry: json["shipping_country"],
        shippingState: json["shipping_state"],
        shippingEmail: json["shipping_email"],
        shippingPhone: json["shipping_phone"],
        orderItems: json["order_items"] == null
            ? null
            : List<OrderItem>.from(
                json["order_items"].map((x) => OrderItem.fromJson(x))),
        paymentMethod: json["payment_method"],
        shippingCharges: json["shipping_charges"],
        giftwrapCharges: json["giftwrap_charges"],
        transactionCharges: json["transaction_charges"],
        totalDiscount: json["total_discount"],
        subTotal: json["sub_total"],
        length: json["length"],
        breadth: json["breadth"],
        height: json["height"],
        weight: json["weight"] == null ? null : json["weight"].toDouble(),
      );

  Map<String, dynamic> toJson() => {
        "order_id": orderId,
        "order_date": orderDate,
        "pickup_location": pickupLocation,
        "channel_id": channelId,
        "comment": comment,
        "billing_customer_name": billingCustomerName,
        "billing_last_name": billingLastName,
        "billing_address": billingAddress,
        "billing_address_2": billingAddress2,
        "billing_city": billingCity,
        "billing_pincode": billingPincode,
        "billing_state": billingState,
        "billing_country": billingCountry,
        "billing_email": billingEmail,
        "billing_phone": billingPhone,
        "shipping_is_billing": shippingIsBilling,
        "shipping_customer_name": shippingCustomerName,
        "shipping_last_name": shippingLastName,
        "shipping_address": shippingAddress,
        "shipping_address_2": shippingAddress2,
        "shipping_city": shippingCity,
        "shipping_pincode": shippingPincode,
        "shipping_country": shippingCountry,
        "shipping_state": shippingState,
        "shipping_email": shippingEmail,
        "shipping_phone": shippingPhone,
        "order_items": orderItems == null
            ? null
            : List<dynamic>.from(orderItems!.map((x) => x.toJson())),
        "payment_method": paymentMethod,
        "shipping_charges": shippingCharges,
        "giftwrap_charges": giftwrapCharges,
        "transaction_charges": transactionCharges,
        "total_discount": totalDiscount,
        "sub_total": subTotal,
        "length": length,
        "breadth": breadth,
        "height": height,
        "weight": weight,
      };
}

class OrderItem {
  OrderItem({
    this.name,
    this.sku,
    this.units,
    this.sellingPrice,
    this.discount,
    this.tax,
    this.hsn,
  });

  String? name;
  String? sku;
  int? units;
  String? sellingPrice;
  String? discount;
  String? tax;
  int? hsn;

  factory OrderItem.fromJson(Map<String, dynamic> json) => OrderItem(
        name: json["name"],
        sku: json["sku"],
        units: json["units"],
        sellingPrice: json["selling_price"],
        discount: json["discount"],
        tax: json["tax"],
        hsn: json["hsn"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "sku": sku,
        "units": units,
        "selling_price": sellingPrice,
        "discount": discount,
        "tax": tax,
        "hsn": hsn,
      };
}
