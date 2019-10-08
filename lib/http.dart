
import 'package:dio/dio.dart';

main() async{

  Dio dio = new Dio();
  Options options = new Options(method: "GET");
//  options.headers["Auth-Token"] = "8he4ku1qiy888804gw080goc000gw0o";
//  options.headers["X-AUTH-TOKEN"] = "8he4ku1qiy888804gw080goc000gw0o";
 // options.headers["Accept"] = "application/vnd.edusoho.v2+json";
  options.headers["Auth-Token"] = "8he4ku1qiy888804gw080goc000gw0o";
  options.headers["X-AUTH-TOKEN"] = "8he4ku1qiy888804gw080goc000gw0o";
  options.headers["token"] = "8he4ku1qiy888804gw080goc000gw0o";
  String url = "http://edusoho.cc/api/course_sets?categoryId=0&limit=10&offset=2&sort=-createdTime&type=normal";
  String urk = "http://edu.tztech.net/mapi_v2/ClassRoom/getClassRooms?category=0&limit=10&start=0&sort=studentNum";
  var response= await dio.request(urk,
      options:options);
  print(response.data);
  print(response.headers);
  print(response.request);
}