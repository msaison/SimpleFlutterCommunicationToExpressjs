import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Api {
  Dio dio = Dio();

  Future<Response> getGames(name) async {
    try{
      return await Dio().get(
        'http://localhost:3000/games',
        queryParameters: {
          'name': name,
        },
        options: Options(
          contentType: Headers.formUrlEncodedContentType,
        ),
      );
    } catch (e) {
      await Fluttertoast.showToast(
        msg: e.toString(),
        toastLength: Toast.LENGTH_SHORT,
        backgroundColor: Colors.red,
        textColor: Colors.white,
      );
      return Response(statusCode: 500, requestOptions: RequestOptions(path: ''));
    }

  }
}
