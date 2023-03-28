import 'description_model.dart';

class NotificationModel {
  String? date;
  String? time;
  String? image;
  List<DescriptionModel>? description;

  NotificationModel({this.date, this.time, this.image, this.description});
}