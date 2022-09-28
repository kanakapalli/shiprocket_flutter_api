// To parse this JSON data, do
//
//     final orderRes = orderResFromJson(jsonString);

import 'dart:convert';

OrderRes orderResFromJson(String str) => OrderRes.fromJson(json.decode(str));

String orderResToJson(OrderRes data) => json.encode(data.toJson());

class OrderRes {
  OrderRes({
    this.orderId,
    this.shipmentId,
    this.status,
    this.statusCode,
    this.onboardingCompletedNow,
    this.awbCode,
    this.courierCompanyId,
    this.courierName,
  });

  int? orderId;
  int? shipmentId;
  String? status;
  int? statusCode;
  int? onboardingCompletedNow;
  String? awbCode;
  String? courierCompanyId;
  String? courierName;

  factory OrderRes.fromJson(Map<String, dynamic> json) => OrderRes(
        orderId: json["order_id"],
        shipmentId: json["shipment_id"],
        status: json["status"],
        statusCode: json["status_code"],
        onboardingCompletedNow: json["onboarding_completed_now"],
        awbCode: json["awb_code"],
        courierCompanyId: json["courier_company_id"],
        courierName: json["courier_name"],
      );

  Map<String, dynamic> toJson() => {
        "order_id": orderId,
        "shipment_id": shipmentId,
        "status": status,
        "status_code": statusCode,
        "onboarding_completed_now": onboardingCompletedNow,
        "awb_code": awbCode,
        "courier_company_id": courierCompanyId,
        "courier_name": courierName,
      };
}
