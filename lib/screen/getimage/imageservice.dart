// image_service.dart
import 'dart:io';
import 'package:image_picker/image_picker.dart';

class ImageService {
  static Future<File?> pickImage(ImageSource source) async {
    final picker = ImagePicker();
    final pickedFile = await picker.pickImage(source: source);
    if (pickedFile != null) {
      return File(pickedFile.path);
    }
    return null;
  }
}
