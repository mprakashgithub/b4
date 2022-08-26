// To parse this JSON data, do
//
//     final trendingConsultantsModel = trendingConsultantsModelFromJson(jsonString);

import 'dart:convert';

TrendingConsultantsModel trendingConsultantsModelFromJson(String str) =>
    TrendingConsultantsModel.fromJson(json.decode(str));

String trendingConsultantsModelToJson(TrendingConsultantsModel data) =>
    json.encode(data.toJson());

class TrendingConsultantsModel {
  TrendingConsultantsModel({
    required this.id,
    required this.premiumStatus,
    required this.userName,
    required this.contactPerson,
    required this.userSearchid,
    required this.paidFor,
    required this.cCode,
    required this.perMinVal,
    required this.aboutUs,
    required this.utcTime,
    required this.categoryIds,
    required this.userRating,
    required this.ccFdail,
    required this.videoperMinVal,
    required this.onlineStatus,
    required this.profilePic,
    required this.callTime,
    required this.timeZone,
    required this.isVerified,
    required this.userId,
    required this.channelId,
    required this.age,
    required this.devicetype,
    required this.todayYoutubeVideo,
    required this.maincategoryId,
    required this.tags,
    required this.uid,
    required this.todayTiming,
    required this.videoCallRate,
    required this.alldaytype,
    required this.videostatus,
    required this.avgrating,
    required this.forceClose,
    required this.offerRate,
    required this.favouriteStatus,
    required this.categoryId,
    required this.services,
    required this.videoId,
    required this.videoTitle,
    required this.thumbnailsM,
    required this.totalcount,
  });

  int id;
  int premiumStatus;
  String userName;
  String contactPerson;
  String userSearchid;
  int paidFor;
  int cCode;
  int perMinVal;
  String aboutUs;
  String utcTime;
  String categoryIds;
  String userRating;
  String ccFdail;
  int videoperMinVal;
  int onlineStatus;
  String profilePic;
  String callTime;
  String timeZone;
  int isVerified;
  String userId;
  String channelId;
  String age;
  int devicetype;
  String todayYoutubeVideo;
  String maincategoryId;
  String tags;
  int uid;
  String todayTiming;
  int videoCallRate;
  String alldaytype;
  int videostatus;
  String avgrating;
  int forceClose;
  String offerRate;
  int favouriteStatus;
  List<int> categoryId;
  List<String> services;
  String videoId;
  String videoTitle;
  String thumbnailsM;
  int totalcount;

  factory TrendingConsultantsModel.fromJson(Map<String, dynamic> json) =>
      TrendingConsultantsModel(
        id: json["id"],
        premiumStatus: json["premium_status"],
        userName: json["user_name"],
        contactPerson: json["contact_person"],
        userSearchid: json["user_searchid"],
        paidFor: json["paid_for"],
        cCode: json["c_code"],
        perMinVal: json["per_min_val"],
        aboutUs: json["about_us"],
        utcTime: json["utc_time"],
        categoryIds: json["category_ids"],
        userRating: json["user_rating"],
        ccFdail: json["cc_fdail"],
        videoperMinVal: json["videoper_min_val"],
        onlineStatus: json["online_status"],
        profilePic: json["profile_pic"],
        callTime: json["call_time"],
        timeZone: json["time_zone"],
        isVerified: json["is_verified"],
        userId: json["user_id"],
        channelId: json["channel_id"],
        age: json["age"],
        devicetype: json["devicetype"],
        todayYoutubeVideo: json["today_youtube_video"],
        maincategoryId: json["maincategory_id"],
        tags: json["tags"],
        uid: json["uid"],
        todayTiming: json["today_timing"],
        videoCallRate: json["video_call_rate"],
        alldaytype: json["alldaytype"],
        videostatus: json["videostatus"],
        avgrating: json["avgrating"],
        forceClose: json["force_close"],
        offerRate: json["offer_rate"],
        favouriteStatus: json["favourite_status"],
        categoryId: List<int>.from(json["category_id"].map((x) => x)),
        services: List<String>.from(json["services"].map((x) => x)),
        videoId: json["video_id"],
        videoTitle: json["video_title"],
        thumbnailsM: json["thumbnails_m"],
        totalcount: json["totalcount"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "premium_status": premiumStatus,
        "user_name": userName,
        "contact_person": contactPerson,
        "user_searchid": userSearchid,
        "paid_for": paidFor,
        "c_code": cCode,
        "per_min_val": perMinVal,
        "about_us": aboutUs,
        "utc_time": utcTime,
        "category_ids": categoryIds,
        "user_rating": userRating,
        "cc_fdail": ccFdail,
        "videoper_min_val": videoperMinVal,
        "online_status": onlineStatus,
        "profile_pic": profilePic,
        "call_time": callTime,
        "time_zone": timeZone,
        "is_verified": isVerified,
        "user_id": userId,
        "channel_id": channelId,
        "age": age,
        "devicetype": devicetype,
        "today_youtube_video": todayYoutubeVideo,
        "maincategory_id": maincategoryId,
        "tags": tags,
        "uid": uid,
        "today_timing": todayTiming,
        "video_call_rate": videoCallRate,
        "alldaytype": alldaytype,
        "videostatus": videostatus,
        "avgrating": avgrating,
        "force_close": forceClose,
        "offer_rate": offerRate,
        "favourite_status": favouriteStatus,
        "category_id": List<dynamic>.from(categoryId.map((x) => x)),
        "services": List<dynamic>.from(services.map((x) => x)),
        "video_id": videoId,
        "video_title": videoTitle,
        "thumbnails_m": thumbnailsM,
        "totalcount": totalcount,
      };
}
