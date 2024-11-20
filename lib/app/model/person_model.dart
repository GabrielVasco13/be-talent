class PersonModel {
  final String id;
  final String name;
  final String job;
  final String admissionDate;
  final String phone;
  final String image;

  PersonModel({
    required this.id,
    required this.name,
    required this.job,
    required this.admissionDate,
    required this.phone,
    required this.image,
  });

  factory PersonModel.fromJson(Map<String, dynamic> json) {
    return PersonModel(
      id: json['id'] ?? '',
      name: json['name'] ?? '',
      job: json['job'] ?? '',
      admissionDate: json['admission_date'] ?? '',
      phone: json['phone'] ?? '',
      image: json['image'] ?? '',
    );
  }
}
