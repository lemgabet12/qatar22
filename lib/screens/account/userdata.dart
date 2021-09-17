class User {
  final String id;
  final String nom;
  final String prenom;
  final String img_user;

  User({
    required this.id,
    required this.nom,
    required this.prenom,
    required this.img_user,
  });

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      id: json['id_user'],
      nom: json['nom'],
      prenom: json['prenom'],
      img_user: json['img_user'],
    );
  }
}
