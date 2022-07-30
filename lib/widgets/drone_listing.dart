class DroneListing {
  final String name;
  final String color;
  String idTag;
  final String weight;
  final String distance;
  final String speed;
  final String manufacturer;

  DroneListing({
    required this.name,
    required this.color,
    this.idTag = '',
    required this.weight,
    required this.distance,
    required this.speed,
    required this.manufacturer,
  });

  Map<String, dynamic> toJson() => {
        'name': name,
        'color': color, 
        'idTag': idTag,
        'weight': weight,
        'distance': distance,
        'speed': speed,
        'manufacturer': manufacturer,
      };

  static DroneListing fromJson(Map<String, dynamic> json) => DroneListing(
        name: json['name'],
        color: json['color'],
        idTag: json['idTag'],
        weight: json['weight'],
        distance: json['distance'],
        speed: json['speed'],
        manufacturer: json['manufacturer'],
      );
}
