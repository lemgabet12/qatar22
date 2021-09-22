class User {
  List<Q22Fan>? q22Fan;

  User({this.q22Fan});

  User.fromJson(Map<String, dynamic> json) {
    if (json['Q22_Fan'] != null) {
      q22Fan = [];
      json['Q22_Fan'].forEach((v) {
        q22Fan!.add(new Q22Fan.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.q22Fan != null) {
      data['Q22_Fan'] = this.q22Fan!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Q22Fan {
  String? idUser;
  String? nom;
  String? prenom;
  String? img_user;

  Q22Fan({this.idUser, this.nom, this.prenom, this.img_user});

  Q22Fan.fromJson(Map<String, dynamic> json) {
    idUser = json['id_user'];
    nom = json['nom'];
    prenom = json['prenom'];
    img_user = json['img_user'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id_user'] = this.idUser;
    data['nom'] = this.nom;
    data['prenom'] = this.prenom;
    data['img_user'] = this.img_user;
    return data;
  }
}
