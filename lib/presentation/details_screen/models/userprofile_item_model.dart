import '../../../core/app_export.dart';

/// This class is used in the [userprofile_item_widget] screen.
class UserprofileItemModel {
  UserprofileItemModel({
    this.voiceOverArtist,
    this.spotify,
    this.remoteText,
    this.freshersText,
    this.fulltimeText,
    this.id,
  }) {
    voiceOverArtist = voiceOverArtist ?? "Voice Over Artist";
    spotify = spotify ?? "Spotify";
    remoteText = remoteText ?? "Remote";
    freshersText = freshersText ?? "Freshers";
    fulltimeText = fulltimeText ?? "Fulltime";
    id = id ?? "";
  }

  String? voiceOverArtist;

  String? spotify;

  String? remoteText;

  String? freshersText;

  String? fulltimeText;

  String? id;
}
