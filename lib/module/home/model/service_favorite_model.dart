class ServiceFavoriteModel {
  String? image;
  String? title;

  ServiceFavoriteModel({this.image, this.title});

  ServiceFavoriteModel.fromJson(Map<String, dynamic> json) {
    image = json['image'];
    title = json['title'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['image'] = image;
    data['title'] = title;
    return data;
  }
}
