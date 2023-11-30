import 'dart:convert';
// ignore: depend_on_referenced_packages
import 'package:http/http.dart' as http;

class WeatherService {
  final String apiKey;
  final String baseUrl;

  WeatherService(this.apiKey, this.baseUrl);
  Future<Map<String, dynamic>> getWeather(String city) async {
    final respone = await http.get(Uri.parse('$baseUrl?q=$city&appid=$apiKey'));

    if (respone.statusCode == 200) {
      return json.decode(respone.body);
    } else {
      throw Exception('Failed to load weather data.');
    }
  }
}

void main() async {
  final apiKey = 'API_Key';
  final baseUrl = 'https://api.openweathermap.org/data/2.5/weather';

  final weatherService = WeatherService(apiKey, baseUrl);
  try {
    final weatherData = await weatherService.getWeather("London");
    print("Weather in London: ${weatherData['weather'][0]['description']}");
  } catch (e) {
    print("Error: $e");
  }
}
