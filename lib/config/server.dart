import 'dart:convert'; 
import 'package:http/http.dart' as http; 

const API_URL = "http://localhost:3000";

Future<dynamic> fetchAPI(String endpoint) async {
  try {
    final url = Uri.parse(API_URL + endpoint);
    final response = await http.get(url);

    if (response.statusCode == 200) {
      var data = jsonDecode(response.body);
      return data;
    } else {
      print('Erro: ${response.statusCode}');
      return null;
    }
  } catch (e) {
    print('Erro ao fazer a requisição: $e');
    return null;
  }
}