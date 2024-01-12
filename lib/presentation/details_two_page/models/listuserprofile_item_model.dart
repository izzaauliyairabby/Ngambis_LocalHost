import '../../../core/app_export.dart';

/// This class is used in the [listuserprofile_item_widget] screen.
class ListuserprofileItemModel {
  ListuserprofileItemModel({
    this.jobTitle,
    this.userName,
    this.remoteText,
    this.freshersText,
    this.fulltimeText,
    this.id,
  }) {
    jobTitle = jobTitle ?? "Graphic Designer";
    userName = userName ?? "Sarah Julaeiha";
    remoteText = remoteText ?? "Remote";
    freshersText = freshersText ?? "Freshers";
    fulltimeText = fulltimeText ?? "Fulltime";
    id = id ?? "";
  }

  String? jobTitle;

  String? userName;

  String? remoteText;

  String? freshersText;

  String? fulltimeText;

  String? id;
}
