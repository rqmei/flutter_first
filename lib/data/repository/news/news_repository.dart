import '../../api/http_util.dart';

/// http://students.safe-new.tb.com/api/student/news/page?newsClazzId=36&currentPage=1&pageSize=5
import 'news_model_entity.dart';

class NewsRepository {
  Future<List<NewsModelData>> getNewsList({int page}) async {
    List<NewsModelData> newsList = List<NewsModelData>();
    Map<String, dynamic> params = {
      "newsClazzId": "36",
      "currentPage": page,
      "pageSize": "5"
    };
    await HttpUtil.getInstance().get(
        "http://students.safe-new.tb.com/api/student/news/page",
        params: page, success: (data) {
      if (data != null) {
        // 保存数据
        NewsModelEntity entityData = NewsModelEntity.fromJson(data);
        newsList = entityData.data;
      }
    }, error: (error) {});

    return newsList;
  }
}
