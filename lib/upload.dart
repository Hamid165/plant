import 'dart:convert';
import 'package:http/http.dart' as http;

class UpController {
  final String _url = 'https://api-plant.ficode.my.id/api/plant-upload';

  upload(data) async {
    var request = http.MultipartRequest(
      'POST',
      Uri.parse('https://api-plant.ficode.my.id/api/plant-upload'),
    );
  }
}
