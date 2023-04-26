class TransactionLimitModel {
  String? titleHeader;
  List<ListDescriptionTransaction>? description;

  TransactionLimitModel({this.titleHeader, this.description});
}

class ListDescriptionTransaction{
  String? title;
  String? subTitle;

  ListDescriptionTransaction({this.title, this.subTitle});
}
