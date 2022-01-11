import 'package:http/http.dart' as http;
import 'dart:convert';

const apiKey = 'a4c318f94401f6a0c2b1bceaaf541a5c';

class NetworkHelper {


  Future getdata(double? latitude, double? longitude) async {

    var url = Uri.parse('https://api.openweathermap.org/data/2.5/'
        'weather?lat=$latitude&lon=$longitude&appid=$apiKey&units=metric');

    http.Response response = await http.get(url);

    if (response.statusCode == 200) {
      String data = response.body;
      var decodedData = jsonDecode(data);
      return decodedData;
    } else {
      print(response.statusCode);
    }
  }
}
