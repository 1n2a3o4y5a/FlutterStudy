class Store {
  final String id;
  final String name;
  final int addr;
  final double lat;
  final double lng;
  final String tel;
  final String category;

  Store({
    this.id,
    this.name,
    this.addr,
    this.lat,
    this.lng,
    this.tel,
    this.category
  });

  factory Store.fromJson(Map<String, dynamic> json) {
    return Store(
      id: json['id'],
      name: json['title'],
      addr: json['title'],
      lat: json['lat'],
      lng: json['lng'],
      tel: json['tel'],
      category: json['category'],
    );
  }
}