class ServiceName {
  int? id;
  String? name;

  ServiceName({this.id, this.name});

  static List<ServiceName> getServiceName() {
    return <ServiceName>[
      ServiceName(id: 1, name: 'Tất cả các dịch vụ'),
      ServiceName(id: 1, name: 'Dịch vụ ngân hàng'),
      ServiceName(id: 1, name: 'Dịch vụ bảo hiểm'),
      ServiceName(id: 1, name: 'Dịch vụ chứng khoán'),
      ServiceName(id: 1, name: 'Đăng ký dịch vụ'),
      ServiceName(id: 1, name: 'Mua sắm'),
      ServiceName(id: 1, name: 'Từ thiện'),
      ServiceName(id: 1, name: 'Hỗ trợ'),
      ServiceName(id: 1, name: 'Tất cả dịch vụ'),
    ];
  }
}