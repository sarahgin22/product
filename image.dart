import 'dart:typed_data';
import 'package:firebase_storage/firebase_storage.dart';

class Image {
static Future<String> upload(String fileName, Uint8List file)async {
  FirebaseStorage.instance
      .ref()
      .child("files/$fileName")
      .putData(file)

  .then((snapshot){
    var fileUrl=snapshot.ref.getDownloadURL();
    return fileUrl;

  }); return "";
}
}