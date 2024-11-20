class PersonModel {
  final String image;
  final String name;
  final String cargo;
  final String dataAdmissao;
  final String telefone;

  PersonModel({
    required this.image,
    required this.name,
    required this.cargo,
    required this.dataAdmissao,
    required this.telefone,
  });

  factory PersonModel.fromJson(Map<String, dynamic> json) {
    return PersonModel(
      image: json['image'],
      name: json['name'],
      cargo: json['cargo'],
      dataAdmissao: json['dataAdmissao'],
      telefone: json['telefone'],
    );
  }
}
