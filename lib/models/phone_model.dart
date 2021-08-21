class PhoneModel {
  final int id;
  final String name;
  final String brand;
  final String? image;

  PhoneModel({
    required this.id, 
    required this.name, 
    required this.brand, 
    required this.image});

     factory PhoneModel.fromJson(Map<String, dynamic> json) {
    return PhoneModel(
      id: json['id'],
      name: json['name'],
      brand: json['Brand'],
      image: json['Image_url'],
    );
  }
}
