class Comment {
  String authorName;
  String authorImageUrl;
  String text;

  Comment({
    required this.authorName,
    required this.authorImageUrl,
    required this.text,
  });
}

final List<Comment> comments = [
  Comment(
    authorName: 'Angel',
    authorImageUrl: 'assets/images/user2.png',
    text: 'صورة جميلة ',
  ),
  Comment(
    authorName: 'Charlie',
    authorImageUrl: 'assets/images/user3.png',
    text: 'صورة جميلة',
  ),
  Comment(
    authorName: 'Angelina Martin',
    authorImageUrl: 'assets/images/user4.png',
    text: 'صورة جميلة',
  ),
  Comment(
    authorName: 'Jax',
    authorImageUrl: 'assets/images/user1.png',
    text: 'صورة جميلة',
  ),
];
