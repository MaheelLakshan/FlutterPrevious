import 'dart:convert';
import 'package:test2/User.dart';
import 'package:http/http.dart' as http;

class RestApiService{
  String apiUrl='https://mocki.io/v1/c81e6e57-4fc8-4a04-8fab-918f1001276c';

  //future method to get all users from API url..(response and errors)
  Future <List<User>> getUsers() async
  {
    final response = await http.get(Uri.parse(apiUrl));

    print(response.body);

    //checking the response using status code is successfull or not..
    if(response.statusCode==200){
      return getUserList(response.body);
    }else{
      throw Exception('Unable to fetche data');
    }
  }

  //converting response body => user object list..
  List<User> getUserList(String responseBody){
    final parseBody=json.decode(responseBody).cast<Map<String,dynamic>>();
    return parseBody.map<User>((json) =>User.fromJson(json)).toList();
  }

}