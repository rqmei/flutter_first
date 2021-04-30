class NewsModelEntity {
  List<NewsModelData> data;
  int totalPage;
  int pageSize;
  bool countTotal;
  int currentPage;

  NewsModelEntity({
    this.data,
    this.totalPage,
    this.pageSize,
    this.countTotal,
    this.currentPage,
  });

  NewsModelEntity.fromJson(Map<String, dynamic> json) {
    if (json['data'] != null) {
      data = new List<NewsModelData>();
      (json['data'] as List).forEach((v) {
        data.add(new NewsModelData.fromJson(v));
      });
    }
    totalPage = json['totalPage'];
    pageSize = json['pageSize'];
    countTotal = json['countTotal'];
    currentPage = json['currentPage'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.data != null) {
      data['data'] = this.data.map((v) => v.toJson()).toList();
    }
    data['totalPage'] = this.totalPage;
    data['pageSize'] = this.pageSize;
    data['countTotal'] = this.countTotal;
    data['currentPage'] = this.currentPage;
    return data;
  }
}

class NewsModelData {
  List<Null> imgUrlList;
  int contentId;
  dynamic description;
  int likeCount;
  String source;
  String title;
  int readCount;
  int newsType;
  dynamic content;
  int setting;
  int newsClazzId;
  int articleType;
  String digest;
  int rank;
  int id;
  int state;
  String publishTime;
  String orgName;
  String author;
  String auditor;
  String auditDescription;
  String userId;
  String imgUrl;
  String auditUserId;
  String vedioUrl;
  String auditTime;
  String createTime;

  NewsModelData(
      {this.imgUrlList,
      this.contentId,
      this.description,
      this.likeCount,
      this.source,
      this.title,
      this.readCount,
      this.newsType,
      this.content,
      this.setting,
      this.newsClazzId,
      this.articleType,
      this.digest,
      this.rank,
      this.id,
      this.state,
      this.publishTime,
      this.orgName,
      this.author,
      this.auditor,
      this.auditDescription,
      this.userId,
      this.imgUrl,
      this.auditUserId,
      this.vedioUrl,
      this.auditTime,
      this.createTime});

  NewsModelData.fromJson(Map<String, dynamic> json) {
    if (json['imgUrlList'] != null) {
      imgUrlList = new List<Null>();
    }
    contentId = json['contentId'];
    description = json['description'];
    likeCount = json['likeCount'];
    source = json['source'];
    title = json['title'];
    readCount = json['readCount'];
    newsType = json['newsType'];
    content = json['content'];
    setting = json['setting'];
    newsClazzId = json['newsClazzId'];
    articleType = json['articleType'];
    digest = json['digest'];
    rank = json['rank'];
    id = json['id'];
    state = json['state'];
    publishTime = json['publishTime'];
    orgName = json['orgName'];
    author = json['author'];
    auditor = json['auditor'];
    auditDescription = json['auditDescription'];
    userId = json['userId'];
    imgUrl = json['imgUrl'];
    auditUserId = json['auditUserId'];
    vedioUrl = json['vedioUrl'];
    auditTime = json['auditTime'];
    createTime = json['createTime'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.imgUrlList != null) {
      data['imgUrlList'] = [];
    }
    data['contentId'] = this.contentId;
    data['description'] = this.description;
    data['likeCount'] = this.likeCount;
    data['source'] = this.source;
    data['title'] = this.title;
    data['readCount'] = this.readCount;
    data['newsType'] = this.newsType;
    data['content'] = this.content;
    data['setting'] = this.setting;
    data['newsClazzId'] = this.newsClazzId;
    data['articleType'] = this.articleType;
    data['digest'] = this.digest;
    data['rank'] = this.rank;
    data['id'] = this.id;
    data['state'] = this.state;
    data['publishTime'] = this.publishTime;
    data['orgName'] = this.orgName;
    data['author'] = this.author;
    data['auditor'] = this.auditor;
    data['auditDescription'] = this.auditDescription;
    data['userId'] = this.userId;
    data['imgUrl'] = this.imgUrl;
    data['auditUserId'] = this.auditUserId;
    data['vedioUrl'] = this.vedioUrl;
    data['auditTime'] = this.auditTime;
    data['createTime'] = this.createTime;
    return data;
  }
}
