class TermsAndConditionModel {
  String? title;
  String? subTitle;
  List<Description>? description;

  TermsAndConditionModel({this.title, this.subTitle, this.description});

  TermsAndConditionModel.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    subTitle = json['subTitle'];
    if (json['description'] != null) {
      description = <Description>[];
      json['description'].forEach((v) {
        description!.add(new Description.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['title'] = this.title;
    data['subTitle'] = this.subTitle;
    if (this.description != null) {
      data['description'] = this.description!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Description {
  String? titleNumber;
  List<Descriptions>? descriptions;

  Description({this.titleNumber, this.descriptions});

  Description.fromJson(Map<String, dynamic> json) {
    titleNumber = json['titleNumber'];
    if (json['descriptions'] != null) {
      descriptions = <Descriptions>[];
      json['descriptions'].forEach((v) {
        descriptions!.add(new Descriptions.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['titleNumber'] = this.titleNumber;
    if (this.descriptions != null) {
      data['descriptions'] = this.descriptions!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Descriptions {
  String? titleSubNumber;
  String? descriptions;

  Descriptions({this.titleSubNumber, this.descriptions});

  Descriptions.fromJson(Map<String, dynamic> json) {
    titleSubNumber = json['titleSubNumber'];
    descriptions = json['descriptions'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['titleSubNumber'] = this.titleSubNumber;
    data['descriptions'] = this.descriptions;
    return data;
  }
}
