import 'package:duuchinapp/components/song_card.dart';
import 'package:duuchinapp/http/http.dart';
import 'package:duuchinapp/models/song_model.dart';
import 'package:duuchinapp/services/song_service.dart';
import 'package:flutter/material.dart';

class SongPage extends StatefulWidget {
  @override
  _SongPageState createState() => _SongPageState();
}

class _SongPageState extends State<SongPage> {
  List<Song> _songList = [];
  int limit = 10;
  int page = 1;
  bool hasMore = false;
  bool error = false;
  String errorMsg = '';

  void _getSongList({bool push = true}) async {
    try {
      Map<String, dynamic> result =
          await SongService.getSongList(page: page, limit: limit);
      List<dynamic> songList = result['data'];
      SongList songListModel = SongList.fromJson(songList);

      setState(() {
        hasMore = page * limit < result['total'];
        page++;
        if (push) {
          _songList.addAll(songListModel.list);
        } else {
          _songList = songListModel.list;
        }
      });
    } catch (e) {
      setState(() {
        error = true;
        errorMsg = e.toString();
      });
    }
  }

  @override
  void initState() {
    super.initState();
    _getSongList();
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: _songList.length,
        itemBuilder: (context, index) {
          return SongCard(song: _songList[index]);
        });
  }
}
