// To parse this JSON data, do
//
//     final channelRes = channelResFromJson(jsonString);

import 'dart:convert';

ChannelRes channelResFromJson(String str) =>
    ChannelRes.fromJson(json.decode(str));

String channelResToJson(ChannelRes data) => json.encode(data.toJson());

class ChannelRes {
  ChannelRes({
    this.data,
  });

  List<Datum>? data;

  factory ChannelRes.fromJson(Map<String, dynamic> json) => ChannelRes(
        data: json["data"] == null
            ? null
            : List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "data": data == null
            ? null
            : List<dynamic>.from(data!.map((x) => x.toJson())),
      };
}

class Datum {
  Datum({
    this.id,
    this.name,
    this.status,
    this.connectionResponse,
    this.channelUpdatedAt,
    this.statusCode,
    this.settings,
    this.auth,
    this.connection,
    this.ordersSync,
    this.inventorySync,
    this.catalogSync,
    this.ordersSyncedOn,
    this.inventorySyncedOn,
    this.baseChannelCode,
    this.baseChannel,
    this.catalogSyncedOn,
    this.orderStatusMapper,
    this.paymentStatusMapper,
    this.brandName,
    this.brandLogo,
    this.allowMarkAsPaid,
    this.warehouseLocations,
    this.skipUnpaidPrepaid,
    this.vendorId,
    this.b2BChannels,
  });

  int? id;
  String? name;
  String? status;
  dynamic connectionResponse;
  DateTime? channelUpdatedAt;
  int? statusCode;
  DatumSettings? settings;
  List<dynamic>? auth;
  int? connection;
  int? ordersSync;
  int? inventorySync;
  int? catalogSync;
  String? ordersSyncedOn;
  String? inventorySyncedOn;
  String? baseChannelCode;
  BaseChannel? baseChannel;
  String? catalogSyncedOn;
  String? orderStatusMapper;
  String? paymentStatusMapper;
  String? brandName;
  String? brandLogo;
  bool? allowMarkAsPaid;
  List<dynamic>? warehouseLocations;
  bool? skipUnpaidPrepaid;
  int? vendorId;
  List<dynamic>? b2BChannels;

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        id: json["id"],
        name: json["name"],
        status: json["status"],
        connectionResponse: json["connection_response"],
        channelUpdatedAt: json["channel_updated_at"] == null
            ? null
            : DateTime.parse(json["channel_updated_at"]),
        statusCode: json["status_code"],
        settings: json["settings"] == null
            ? null
            : DatumSettings.fromJson(json["settings"]),
        auth: json["auth"] == null
            ? null
            : List<dynamic>.from(json["auth"].map((x) => x)),
        connection: json["connection"],
        ordersSync: json["orders_sync"],
        inventorySync: json["inventory_sync"],
        catalogSync: json["catalog_sync"],
        ordersSyncedOn: json["orders_synced_on"],
        inventorySyncedOn: json["inventory_synced_on"],
        baseChannelCode: json["base_channel_code"],
        baseChannel: json["base_channel"] == null
            ? null
            : BaseChannel.fromJson(json["base_channel"]),
        catalogSyncedOn: json["catalog_synced_on"],
        orderStatusMapper: json["order_status_mapper"],
        paymentStatusMapper: json["payment_status_mapper"],
        brandName: json["brand_name"],
        brandLogo: json["brand_logo"],
        allowMarkAsPaid: json["allow_mark_as_paid"],
        warehouseLocations: json["warehouse_locations"] == null
            ? null
            : List<dynamic>.from(json["warehouse_locations"].map((x) => x)),
        skipUnpaidPrepaid: json["skip_unpaid_prepaid"],
        vendorId: json["vendor_id"],
        b2BChannels: json["b2b_channels"] == null
            ? null
            : List<dynamic>.from(json["b2b_channels"].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "status": status,
        "connection_response": connectionResponse,
        "channel_updated_at": channelUpdatedAt == null
            ? null
            : channelUpdatedAt!.toIso8601String(),
        "status_code": statusCode,
        "settings": settings == null ? null : settings!.toJson(),
        "auth": auth == null ? null : List<dynamic>.from(auth!.map((x) => x)),
        "connection": connection,
        "orders_sync": ordersSync,
        "inventory_sync": inventorySync,
        "catalog_sync": catalogSync,
        "orders_synced_on": ordersSyncedOn,
        "inventory_synced_on": inventorySyncedOn,
        "base_channel_code": baseChannelCode,
        "base_channel": baseChannel == null ? null : baseChannel!.toJson(),
        "catalog_synced_on": catalogSyncedOn,
        "order_status_mapper": orderStatusMapper,
        "payment_status_mapper": paymentStatusMapper,
        "brand_name": brandName,
        "brand_logo": brandLogo,
        "allow_mark_as_paid": allowMarkAsPaid,
        "warehouse_locations": warehouseLocations == null
            ? null
            : List<dynamic>.from(warehouseLocations!.map((x) => x)),
        "skip_unpaid_prepaid": skipUnpaidPrepaid,
        "vendor_id": vendorId,
        "b2b_channels": b2BChannels == null
            ? null
            : List<dynamic>.from(b2BChannels!.map((x) => x)),
      };
}

class BaseChannel {
  BaseChannel({
    this.id,
    this.name,
    this.code,
    this.type,
    this.logo,
    this.settingsSample,
    this.authSample,
    this.description,
  });

  int? id;
  String? name;
  String? code;
  String? type;
  String? logo;
  SettingsSample? settingsSample;
  List<dynamic>? authSample;
  String? description;

  factory BaseChannel.fromJson(Map<String, dynamic> json) => BaseChannel(
        id: json["id"],
        name: json["name"],
        code: json["code"],
        type: json["type"],
        logo: json["logo"],
        settingsSample: json["settings_sample"] == null
            ? null
            : SettingsSample.fromJson(json["settings_sample"]),
        authSample: json["auth_sample"] == null
            ? null
            : List<dynamic>.from(json["auth_sample"].map((x) => x)),
        description: json["description"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "code": code,
        "type": type,
        "logo": logo,
        "settings_sample":
            settingsSample == null ? null : settingsSample!.toJson(),
        "auth_sample": authSample == null
            ? null
            : List<dynamic>.from(authSample!.map((x) => x)),
        "description": description,
      };
}

class SettingsSample {
  SettingsSample({
    this.name,
    this.help,
    this.settings,
  });

  String? name;
  String? help;
  SettingsSampleSettings? settings;

  factory SettingsSample.fromJson(Map<String, dynamic> json) => SettingsSample(
        name: json["name"],
        help: json["help"],
        settings: json["settings"] == null
            ? null
            : SettingsSampleSettings.fromJson(json["settings"]),
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "help": help,
        "settings": settings == null ? null : settings!.toJson(),
      };
}

class SettingsSampleSettings {
  SettingsSampleSettings({
    this.brandName,
    this.brandLogo,
  });

  Brand? brandName;
  Brand? brandLogo;

  factory SettingsSampleSettings.fromJson(Map<String, dynamic> json) =>
      SettingsSampleSettings(
        brandName: json["brand_name"] == null
            ? null
            : Brand.fromJson(json["brand_name"]),
        brandLogo: json["brand_logo"] == null
            ? null
            : Brand.fromJson(json["brand_logo"]),
      );

  Map<String, dynamic> toJson() => {
        "brand_name": brandName == null ? null : brandName!.toJson(),
        "brand_logo": brandLogo == null ? null : brandLogo!.toJson(),
      };
}

class Brand {
  Brand({
    this.code,
    this.name,
    this.placeholder,
    this.type,
  });

  String? code;
  String? name;
  String? placeholder;
  String? type;

  factory Brand.fromJson(Map<String, dynamic> json) => Brand(
        code: json["code"],
        name: json["name"],
        placeholder: json["placeholder"],
        type: json["type"],
      );

  Map<String, dynamic> toJson() => {
        "code": code,
        "name": name,
        "placeholder": placeholder,
        "type": type,
      };
}

class DatumSettings {
  DatumSettings({
    this.dimensions,
    this.weight,
    this.orderStatus,
  });

  String? dimensions;
  int? weight;
  String? orderStatus;

  factory DatumSettings.fromJson(Map<String, dynamic> json) => DatumSettings(
        dimensions: json["dimensions"],
        weight: json["weight"],
        orderStatus: json["order_status"],
      );

  Map<String, dynamic> toJson() => {
        "dimensions": dimensions,
        "weight": weight,
        "order_status": orderStatus,
      };
}
