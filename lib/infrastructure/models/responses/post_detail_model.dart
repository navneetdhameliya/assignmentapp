import 'dart:convert';

PostDetailModel postDetailModelFromJson(String str) => PostDetailModel.fromJson(json.decode(str));

String postDetailModelToJson(PostDetailModel data) => json.encode(data.toJson());

class PostDetailModel {
  String? postId;
  UserData? postedUserData;
  PostData? postData;

  PostDetailModel({
    this.postId,
    this.postedUserData,
    this.postData,
  });

  factory PostDetailModel.fromJson(Map<String, dynamic> json) => PostDetailModel(
    postId: json["post_id"],
    postedUserData: json["posted_user_data"] == null ? null : UserData.fromJson(json["posted_user_data"]),
    postData: json["post_data"] == null ? null : PostData.fromJson(json["post_data"]),
  );

  Map<String, dynamic> toJson() => {
    "post_id": postId,
    "posted_user_data": postedUserData?.toJson(),
    "post_data": postData?.toJson(),
  };
}

class PostData {
  String? postTitle;
  String? postTimeStamp;
  String? postDescription;
  List<String>? hashtagList;
  List<String>? imagesList;
  int? likeCount;
  int? commentCount;
  List<CommentsList>? commentsList;

  PostData({
    this.postTitle,
    this.postTimeStamp,
    this.postDescription,
    this.hashtagList,
    this.imagesList,
    this.likeCount,
    this.commentCount,
    this.commentsList,
  });

  factory PostData.fromJson(Map<String, dynamic> json) => PostData(
    postTitle: json["post_title"],
    postTimeStamp: json["post_time_stamp"],
    postDescription: json["post_description"],
    hashtagList: json["hashtag_list"] == null ? [] : List<String>.from(json["hashtag_list"]!.map((x) => x)),
    imagesList: json["images_list"] == null ? [] : List<String>.from(json["images_list"]!.map((x) => x)),
    likeCount: json["like_count"],
    commentCount: json["comment_count"],
    commentsList: json["comments_list"] == null ? [] : List<CommentsList>.from(json["comments_list"]!.map((x) => CommentsList.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "post_title": postTitle,
    "post_time_stamp": postTimeStamp,
    "post_description": postDescription,
    "hashtag_list": hashtagList == null ? [] : List<dynamic>.from(hashtagList!.map((x) => x)),
    "images_list": imagesList == null ? [] : List<dynamic>.from(imagesList!.map((x) => x)),
    "like_count": likeCount,
    "comment_count": commentCount,
    "comments_list": commentsList == null ? [] : List<dynamic>.from(commentsList!.map((x) => x.toJson())),
  };
}

class CommentsList {
  String? commentTime;
  String? commentDescription;
  String? commentLikeCount;
  String? commentReplyCount;
  UserData? commentUserData;
  List<ReplyList>? replyList;

  CommentsList({
    this.commentTime,
    this.commentDescription,
    this.commentLikeCount,
    this.commentReplyCount,
    this.commentUserData,
    this.replyList,
  });

  factory CommentsList.fromJson(Map<String, dynamic> json) => CommentsList(
    commentTime: json["comment_time"],
    commentDescription: json["comment_description"],
    commentLikeCount: json["comment_like_count"],
    commentReplyCount: json["comment_reply_count"],
    commentUserData: json["comment_user_data"] == null ? null : UserData.fromJson(json["comment_user_data"]),
    replyList: json["reply_list"] == null ? [] : List<ReplyList>.from(json["reply_list"]!.map((x) => ReplyList.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "comment_time": commentTime,
    "comment_description": commentDescription,
    "comment_like_count": commentLikeCount,
    "comment_reply_count": commentReplyCount,
    "comment_user_data": commentUserData?.toJson(),
    "reply_list": replyList == null ? [] : List<dynamic>.from(replyList!.map((x) => x.toJson())),
  };
}

class UserData {
  String? userId;
  String? userProfile;
  bool? verified;
  String? userName;
  String? userHeight;
  String? userWeight;

  UserData({
    this.userId,
    this.userProfile,
    this.verified,
    this.userName,
    this.userHeight,
    this.userWeight,
  });

  factory UserData.fromJson(Map<String, dynamic> json) => UserData(
    userId: json["user_id"],
    userProfile: json["user_profile"],
    verified: json["verified"],
    userName: json["user_name"],
    userHeight: json["user_height"],
    userWeight: json["user_weight"],
  );

  Map<String, dynamic> toJson() => {
    "user_id": userId,
    "user_profile": userProfile,
    "verified": verified,
    "user_name": userName,
    "user_height": userHeight,
    "user_weight": userWeight,
  };
}

class ReplyList {
  String? replyTime;
  String? replyText;
  String? replyLikeCount;
  UserData? replyUserData;

  ReplyList({
    this.replyTime,
    this.replyText,
    this.replyLikeCount,
    this.replyUserData,
  });

  factory ReplyList.fromJson(Map<String, dynamic> json) => ReplyList(
    replyTime: json["reply_time"],
    replyText: json["reply_text"],
    replyLikeCount: json["reply_like_count"],
    replyUserData: json["reply_user_data"] == null ? null : UserData.fromJson(json["reply_user_data"]),
  );

  Map<String, dynamic> toJson() => {
    "reply_time": replyTime,
    "reply_text": replyText,
    "reply_like_count": replyLikeCount,
    "reply_user_data": replyUserData?.toJson(),
  };
}
