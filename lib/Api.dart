import 'package:http/http.dart' as http;
import 'dart:convert';

const CHAVE_YOUTUBE_API = "AIzaSyDYe9L3WHyRn1OCh6NQZZZn9mmmAg97DWU";
const ID_CANAL = "rafaellaballerini";
const URL_BASE = "https://www.googleapis.com/youtube/v3/";

class Api {

  pesquisar(String pesquisa) async {

    http.Response response = await http.get(
      URL_BASE + "search"
          "?part=snippet"
          "&type=video"
          "&maxResults=20"
          "&order=date"
          "&key=$CHAVE_YOUTUBE_API"
          "&channelId=$ID_CANAL"
          "&q=$pesquisa" + URL_BASE
    );

    if( response.statusCode == 200 ){

      print("resultado: " + response.body);

    }
  }
}