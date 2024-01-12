import '../../../core/app_export.dart';

/// This class is used in the [userprofilelist_item_widget] screen.
class UserprofilelistItemModel {
  UserprofilelistItemModel({
    this.editButton,
    this.jobDescriptionText,
    this.uxDesignerText,
    this.id,
  }) {
    editButton = editButton ?? ImageConstant.imgEditWhite24dp;
    jobDescriptionText = jobDescriptionText ?? "Job Description";
    uxDesignerText = uxDesignerText ??
        "In a UX Designer job, you'll need both types of skills to develop the next generation of products. You'll partner with Researchers and Designers to define and deliver new features.";
    id = id ?? "";
  }

  String? editButton;

  String? jobDescriptionText;

  String? uxDesignerText;

  String? id;
}
