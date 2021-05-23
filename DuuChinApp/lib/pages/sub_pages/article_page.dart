import 'package:duuchinapp/components/article_card.dart';
import 'package:duuchinapp/models/article_model.dart';
import 'package:duuchinapp/models/article_model.dart';
import 'package:duuchinapp/services/article_service.dart';
import 'package:duuchinapp/services/article_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyrefresh/easy_refresh.dart';

class ArticlePage extends StatefulWidget {
  @override
  _ArticlePageState createState() => _ArticlePageState();
}

class _ArticlePageState extends State<ArticlePage>
    with AutomaticKeepAliveClientMixin {
  List<Article> _articleList = [];
  int limit = 10;
  int page = 1;
  bool hasMore = false;
  bool error = false;
  String errorMsg = '';
  EasyRefreshController _easyRefreshController;

  void _getArticleList({bool push = false}) async {
    try {
      Map<String, dynamic> result =
          await ArticleService.getArticleList(page: page, limit: limit);
      List<dynamic> articleList = result['data'];
      ArticleList articleListModel = ArticleList.fromJson(articleList);

      setState(() {
        hasMore = page * limit < result['total'];
        page++;
        if (push) {
          _articleList.addAll(articleListModel.list);
        } else {
          _articleList = articleListModel.list;
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
    _getArticleList(push: true);
  }

  Future _onRefresh() async {
    page = 1;
    await _getArticleList();
    _easyRefreshController?.finishRefresh();
    _easyRefreshController?.resetLoadState();
  }

  Future _onLoad() async {
    if (hasMore) {
      await _getArticleList(push: true);
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
        itemCount: _articleList.length,
        itemBuilder: (context, index) {
          return ArticleCard(article: _articleList[index]);
        });
  }

  @override
  bool get wantKeepAlive => true;
}
