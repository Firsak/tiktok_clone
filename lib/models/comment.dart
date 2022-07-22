import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class Comment {
  String username;
  String comment;
  final dateFublished;
  List likes;
  String profilePhoto;
  String uid;
  String id;

  Comment({
    required this.username,
    required this.comment,
    required this.dateFublished,
    required this.likes,
    required this.profilePhoto,
    required this.uid,
    required this.id,
  });

  Map<String, dynamic> toJson() => {
        "username": username,
        "comment": comment,
        "dateFublished": dateFublished,
        "likes": likes,
        "profilePhoto": profilePhoto,
        "uid": uid,
        "id": id,
      };

  static Comment fromSnapshot(DocumentSnapshot snap) {
    var snapshot = snap.data() as Map<String, dynamic>;
    return Comment(
      username: snapshot["username"],
      comment: snapshot["comment"],
      dateFublished: snapshot["dateFublished"],
      likes: snapshot["likes"],
      profilePhoto: snapshot["profilePhoto"],
      uid: snapshot["uid"],
      id: snapshot["id"],
    );
  }
}
