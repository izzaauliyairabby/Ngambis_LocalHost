import '../../../core/app_export.dart';

/// This class is used in the [framethree_item_widget] screen.
class FramethreeItemModel {
  FramethreeItemModel({
    this.frame,
    this.id,
  }) {
    frame = frame ?? "Discover";
    id = id ?? "";
  }

  String? frame;

  String? id;
}
