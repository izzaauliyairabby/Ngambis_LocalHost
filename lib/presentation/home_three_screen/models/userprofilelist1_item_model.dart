import '../../../core/app_export.dart';

/// This class is used in the [userprofilelist1_item_widget] screen.
class Userprofilelist1ItemModel {
  Userprofilelist1ItemModel({
    this.userImage,
    this.userName,
    this.userDescription,
    this.timeAgo,
    this.newMessageCount,
    this.id,
  }) {
    userImage = userImage ?? ImageConstant.imgEllipse48;
    userName = userName ?? "Andy Robertson";
    userDescription = userDescription ?? "Oh yes, please send your CV/Res...";
    timeAgo = timeAgo ?? "5m ago";
    newMessageCount = newMessageCount ?? "2";
    id = id ?? "";
  }

  String? userImage;

  String? userName;

  String? userDescription;

  String? timeAgo;

  String? newMessageCount;

  String? id;
}
