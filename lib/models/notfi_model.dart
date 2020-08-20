import 'package:myjobspace/models/models.dart';

class Notif {
  final User user;
  final String content;
  final String time;
  final List<Comment> comments;
  final String imageurl = "";
  final bool hasimage;
  int nbcomments;
  int likes = 0;
  bool liked = false;

  Notif({
    this.user,
    this.content,
    this.time,
    this.comments,
    this.hasimage,
  }) {
    this.nbcomments = comments.length;
  }
}

List<Notif> notifs = [
  Notif(
    user: greg,
    content:
        "Je viens de trouver un travail grace à l'application MyJobspace !",
    time: "il y a 1 heures",
    comments: comments,
    hasimage: false,
  ),
  Notif(
    user: james,
    content: "Je suis entrain de travailler sur un nouveau projet",
    time: "il y a 2 heures",
    comments: comments,
    hasimage: true,
  ),
  Notif(
    user: john,
    content:
        "Je suis entrain de travailler sur un projet et j'ai besoin d'aide, si vous êtes expérimenté en flutter pouvez-vous m'envoyer un message en privé ?",
    time: "il y a 4 heures",
    comments: comments,
    hasimage: false,
  ),
];
