import 'package:duuchinapp/components/song_card.dart';
import 'package:duuchinapp/models/song_model.dart';
import 'package:duuchinapp/services/song_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyrefresh/easy_refresh.dart';

class SongPage extends StatefulWidget {
  @override
  _SongPageState createState() => _SongPageState();
}

class _SongPageState extends State<SongPage>
    with AutomaticKeepAliveClientMixin {
  List<Song> _songList = [];
  int limit = 10;
  int page = 1;
  bool hasMore = false;
  bool error = false;
  String errorMsg = '';
  EasyRefreshController _easyRefreshController;

  void _getSongList({bool push = false}) async {
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
    _easyRefreshController = EasyRefreshController();
    _getSongList(push: true);
  }

  Future _onRefresh() async {
    page = 1;
    await _getSongList();
    _easyRefreshController?.finishRefresh();
    _easyRefreshController?.resetLoadState();
  }

  Future _onLoad() async {
    if (hasMore) {
      await _getSongList(push: true);
    }
    _easyRefreshController?.finishLoad(noMore: !hasMore);
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return EasyRefresh(
        controller: _easyRefreshController,
        header: ClassicalHeader(),
        footer: ClassicalFooter(),
        onRefresh: _onRefresh,
        onLoad: _onLoad,
        child: _bulidBody());
  }

  Widget _bulidBody() {
    return ListView.builder(
        itemCount: _songList.length,
        itemBuilder: (context, index) {
          return SongCard(song: _songList[index]);
        });
  }

  @override
  bool get wantKeepAlive => true;
}
