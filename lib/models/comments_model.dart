import 'user_model.dart';

class Comment {
  final User user;
  final String time;
  final String content;
  int likes = 0;
  bool liked = false;

  Comment({
    this.user,
    this.time,
    this.content,
  });
}

// bad imagination

List<Comment> comments = [
  Comment(
    user: greg,
    time: "Il y a 15 minutes",
    content: "Felicition !",
  ),
  Comment(
    user: james,
    time: "Il y a 1 heures",
    content: "Interessant !",
  ),
  Comment(
    user: john,
    time: "Il y a 2 heures",
    content: "Super !",
  ),
  Comment(
    user: olivia,
    time: "Il y a 2 heures",
    content: "Wow !",
  ),
  Comment(
    user: sam,
    time: "Il y a 5 heures",
    content:
        "Il me faut un commentaire très long pour vois si mon code marche toujours dans le voici !",
  ),
];
