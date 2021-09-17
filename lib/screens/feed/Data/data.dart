class Feed {
  final String titre;
  final String img;
  final String datepub;
  final String type;
  final String description;
  final String id;

  Feed({
    required this.id,
    required this.titre,
    required this.img,
    required this.datepub,
    required this.type,
    required this.description,
  });

  factory Feed.fromJson(Map<String, dynamic> json) {
    return Feed(
      id: json['id_feed'],
      titre: json['titre'],
      img: json['img_news'],
      datepub: json['date_pub'],
      type: json['type'],
      description: json['description'],
    );
  }
}
