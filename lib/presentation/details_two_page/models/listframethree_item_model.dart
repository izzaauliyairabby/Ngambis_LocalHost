import '../../../core/app_export.dart';

/// This class is used in the [listframethree_item_widget] screen.
class ListframethreeItemModel {
  ListframethreeItemModel({
    this.frame,
    this.id,
  }) {
    frame = frame ?? "Discover";
    id = id ?? "";
  }

  String? frame;

  String? id;
}
