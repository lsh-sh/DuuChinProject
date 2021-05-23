import 'package:duuchinapp/components/root_page_header.dart';
import 'package:duuchinapp/pages/sub_pages/article_page.dart';
import 'package:duuchinapp/pages/sub_pages/singer_page.dart';
import 'package:duuchinapp/pages/sub_pages/song_page.dart';
import 'package:duuchinapp/pages/sub_pages/tiny_video_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  final List<Widget> _tabs = [
    Tab(text: "歌曲"),
    Tab(text: "推荐"),
    Tab(text: "歌手"),
    Tab(text: "小视频"),
    Tab(text: "文章"),
    Tab(text: "视频"),
  ];

  final List<Widget> _tabContent = [
    SongPage(),
    Center(child: Text("111111")),
    SingerPage(),
    TinyVideoPage(),
    ArticlePage(),
    Center(child: Text("111111")),
  ];

  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController =
        TabController(initialIndex: 1, length: _tabs.length, vsync: this);
  }

  @override
  void dispose() {
    _tabController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: RootPageHader(),
        bottom: TabBar(
          isScrollable: true,
          tabs: _tabs,
          controller: _tabController,
        ),
      ),
      body: TabBarView(
        children: _tabContent,
        controller: _tabController,
      ),
    );
  }
}
