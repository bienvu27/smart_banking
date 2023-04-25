class ServiceName {
  int? id;
  String? name;

  ServiceName({this.id, this.name});

  static List<ServiceName> getServiceName() {
    return <ServiceName>[
      ServiceName(id: 1, name: 'Tất cả các dịch vụ'),
      ServiceName(id: 2, name: 'Dịch vụ ngân hàng'),
      ServiceName(id: 3, name: 'Dịch vụ bảo hiểm'),
      ServiceName(id: 4, name: 'Dịch vụ chứng khoán'),
      ServiceName(id: 5, name: 'Đăng ký dịch vụ'),
      ServiceName(id: 6, name: 'Mua sắm'),
      ServiceName(id: 7, name: 'Từ thiện'),
      ServiceName(id: 8, name: 'Hỗ trợ'),
      ServiceName(id: 9, name: 'Tất cả dịch vụ'),
    ];
  }
}