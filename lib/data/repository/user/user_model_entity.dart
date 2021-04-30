class UserModelData {
	String userLoginIdentity;
	String cityId;
	List<UserModelDataUseridentity> userIdentity;
	String cardNo;
	String productName;
	dynamic orgType;
	String tempLoginId;
	List<UserModelDataOrguserduty> orgUserDuty;
	String province;
	dynamic runAsUserName;
	dynamic userCert;
	String originCode;
	int id;
	int state;
	String qq;
	String orgName;
	dynamic prefixSignatureUrl;
	dynamic departmentAuthority;
	dynamic roleList;
	String provinceId;
	String faceUrl;
	String passwd;
	String district;
	dynamic orgUserRole;
	String cardTypeCode;
	UserModelDataOrgdto orgDto;
	dynamic menuDtoList;
	String cardPhotoUrl;
	String birthday;
	dynamic runAsRealName;
	int gender;
	String city;
	String cardTypeName;
	dynamic signatureUrl;
	String prefixFaceUrl;
	String description;
	dynamic permissionList;
	String faceId;
	int orgId;
	dynamic userIdentityList;
	int scopeType;
	dynamic resourceDtoList;
	dynamic userPosition;
	String email;
	UserModelDataOrguser orgUser;
	dynamic runAs;
	String salt;
	String address;
	String mobile;
	String wechat;
	String userName;
	String userId;
	dynamic typeCode;
	String token;
	dynamic prefixCardPhotoUrl;
	String realName;
	String districtId;
	String productCode;
	String createTime;
	UserModelDataUserdepartment userDepartment;
	int age;
	dynamic permissionDtoList;
	int limitOperation;

	UserModelData({this.userLoginIdentity, this.cityId, this.userIdentity, this.cardNo, this.productName, this.orgType, this.tempLoginId, this.orgUserDuty, this.province, this.runAsUserName, this.userCert, this.originCode, this.id, this.state, this.qq, this.orgName, this.prefixSignatureUrl, this.departmentAuthority, this.roleList, this.provinceId, this.faceUrl, this.passwd, this.district, this.orgUserRole, this.cardTypeCode, this.orgDto, this.menuDtoList, this.cardPhotoUrl, this.birthday, this.runAsRealName, this.gender, this.city, this.cardTypeName, this.signatureUrl, this.prefixFaceUrl, this.description, this.permissionList, this.faceId, this.orgId, this.userIdentityList, this.scopeType, this.resourceDtoList, this.userPosition, this.email, this.orgUser, this.runAs, this.salt, this.address, this.mobile, this.wechat, this.userName, this.userId, this.typeCode, this.token, this.prefixCardPhotoUrl, this.realName, this.districtId, this.productCode, this.createTime, this.userDepartment, this.age, this.permissionDtoList, this.limitOperation});

	UserModelData.fromJson(Map<String, dynamic> json) {
		userLoginIdentity = json['userLoginIdentity'];
		cityId = json['cityId'];
		if (json['userIdentity'] != null) {
			userIdentity = new List<UserModelDataUseridentity>();(json['userIdentity'] as List).forEach((v) { userIdentity.add(new UserModelDataUseridentity.fromJson(v)); });
		}
		cardNo = json['cardNo'];
		productName = json['productName'];
		orgType = json['orgType'];
		tempLoginId = json['tempLoginId'];
		if (json['orgUserDuty'] != null) {
			orgUserDuty = new List<UserModelDataOrguserduty>();(json['orgUserDuty'] as List).forEach((v) { orgUserDuty.add(new UserModelDataOrguserduty.fromJson(v)); });
		}
		province = json['province'];
		runAsUserName = json['runAsUserName'];
		userCert = json['userCert'];
		originCode = json['originCode'];
		id = json['id'];
		state = json['state'];
		qq = json['qq'];
		orgName = json['orgName'];
		prefixSignatureUrl = json['prefixSignatureUrl'];
		departmentAuthority = json['departmentAuthority'];
		roleList = json['roleList'];
		provinceId = json['provinceId'];
		faceUrl = json['faceUrl'];
		passwd = json['passwd'];
		district = json['district'];
		orgUserRole = json['orgUserRole'];
		cardTypeCode = json['cardTypeCode'];
		orgDto = json['orgDto'] != null ? new UserModelDataOrgdto.fromJson(json['orgDto']) : null;
		menuDtoList = json['menuDtoList'];
		cardPhotoUrl = json['cardPhotoUrl'];
		birthday = json['birthday'];
		runAsRealName = json['runAsRealName'];
		gender = json['gender'];
		city = json['city'];
		cardTypeName = json['cardTypeName'];
		signatureUrl = json['signatureUrl'];
		prefixFaceUrl = json['prefixFaceUrl'];
		description = json['description'];
		permissionList = json['permissionList'];
		faceId = json['faceId'];
		orgId = json['orgId'];
		userIdentityList = json['userIdentityList'];
		scopeType = json['scopeType'];
		resourceDtoList = json['resourceDtoList'];
		userPosition = json['userPosition'];
		email = json['email'];
		orgUser = json['orgUser'] != null ? new UserModelDataOrguser.fromJson(json['orgUser']) : null;
		runAs = json['runAs'];
		salt = json['salt'];
		address = json['address'];
		mobile = json['mobile'];
		wechat = json['wechat'];
		userName = json['userName'];
		userId = json['userId'];
		typeCode = json['typeCode'];
		token = json['token'];
		prefixCardPhotoUrl = json['prefixCardPhotoUrl'];
		realName = json['realName'];
		districtId = json['districtId'];
		productCode = json['productCode'];
		createTime = json['createTime'];
		userDepartment = json['userDepartment'] != null ? new UserModelDataUserdepartment.fromJson(json['userDepartment']) : null;
		age = json['age'];
		permissionDtoList = json['permissionDtoList'];
		limitOperation = json['limitOperation'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['userLoginIdentity'] = this.userLoginIdentity;
		data['cityId'] = this.cityId;
		if (this.userIdentity != null) {
      data['userIdentity'] =  this.userIdentity.map((v) => v.toJson()).toList();
    }
		data['cardNo'] = this.cardNo;
		data['productName'] = this.productName;
		data['orgType'] = this.orgType;
		data['tempLoginId'] = this.tempLoginId;
		if (this.orgUserDuty != null) {
      data['orgUserDuty'] =  this.orgUserDuty.map((v) => v.toJson()).toList();
    }
		data['province'] = this.province;
		data['runAsUserName'] = this.runAsUserName;
		data['userCert'] = this.userCert;
		data['originCode'] = this.originCode;
		data['id'] = this.id;
		data['state'] = this.state;
		data['qq'] = this.qq;
		data['orgName'] = this.orgName;
		data['prefixSignatureUrl'] = this.prefixSignatureUrl;
		data['departmentAuthority'] = this.departmentAuthority;
		data['roleList'] = this.roleList;
		data['provinceId'] = this.provinceId;
		data['faceUrl'] = this.faceUrl;
		data['passwd'] = this.passwd;
		data['district'] = this.district;
		data['orgUserRole'] = this.orgUserRole;
		data['cardTypeCode'] = this.cardTypeCode;
		if (this.orgDto != null) {
      data['orgDto'] = this.orgDto.toJson();
    }
		data['menuDtoList'] = this.menuDtoList;
		data['cardPhotoUrl'] = this.cardPhotoUrl;
		data['birthday'] = this.birthday;
		data['runAsRealName'] = this.runAsRealName;
		data['gender'] = this.gender;
		data['city'] = this.city;
		data['cardTypeName'] = this.cardTypeName;
		data['signatureUrl'] = this.signatureUrl;
		data['prefixFaceUrl'] = this.prefixFaceUrl;
		data['description'] = this.description;
		data['permissionList'] = this.permissionList;
		data['faceId'] = this.faceId;
		data['orgId'] = this.orgId;
		data['userIdentityList'] = this.userIdentityList;
		data['scopeType'] = this.scopeType;
		data['resourceDtoList'] = this.resourceDtoList;
		data['userPosition'] = this.userPosition;
		data['email'] = this.email;
		if (this.orgUser != null) {
      data['orgUser'] = this.orgUser.toJson();
    }
		data['runAs'] = this.runAs;
		data['salt'] = this.salt;
		data['address'] = this.address;
		data['mobile'] = this.mobile;
		data['wechat'] = this.wechat;
		data['userName'] = this.userName;
		data['userId'] = this.userId;
		data['typeCode'] = this.typeCode;
		data['token'] = this.token;
		data['prefixCardPhotoUrl'] = this.prefixCardPhotoUrl;
		data['realName'] = this.realName;
		data['districtId'] = this.districtId;
		data['productCode'] = this.productCode;
		data['createTime'] = this.createTime;
		if (this.userDepartment != null) {
      data['userDepartment'] = this.userDepartment.toJson();
    }
		data['age'] = this.age;
		data['permissionDtoList'] = this.permissionDtoList;
		data['limitOperation'] = this.limitOperation;
		return data;
	}
}

class UserModelDataUseridentity {
	int isDefault;
	String orgName;
	String identityName;
	dynamic description;
	int id;
	String userId;
	String identityCode;
	int orgId;

	UserModelDataUseridentity({this.isDefault, this.orgName, this.identityName, this.description, this.id, this.userId, this.identityCode, this.orgId});

	UserModelDataUseridentity.fromJson(Map<String, dynamic> json) {
		isDefault = json['isDefault'];
		orgName = json['orgName'];
		identityName = json['identityName'];
		description = json['description'];
		id = json['id'];
		userId = json['userId'];
		identityCode = json['identityCode'];
		orgId = json['orgId'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['isDefault'] = this.isDefault;
		data['orgName'] = this.orgName;
		data['identityName'] = this.identityName;
		data['description'] = this.description;
		data['id'] = this.id;
		data['userId'] = this.userId;
		data['identityCode'] = this.identityCode;
		data['orgId'] = this.orgId;
		return data;
	}
}

class UserModelDataOrguserduty {
	String industryName;
	String industryProjectSubjectDutyId;
	String dutyCode;
	dynamic description;
	int id;
	String projectName;
	String projectId;
	String subjectId;
	String subjectName;
	String dutyName;
	String industryCode;

	UserModelDataOrguserduty({this.industryName, this.industryProjectSubjectDutyId, this.dutyCode, this.description, this.id, this.projectName, this.projectId, this.subjectId, this.subjectName, this.dutyName, this.industryCode});

	UserModelDataOrguserduty.fromJson(Map<String, dynamic> json) {
		industryName = json['industryName'];
		industryProjectSubjectDutyId = json['industryProjectSubjectDutyId'];
		dutyCode = json['dutyCode'];
		description = json['description'];
		id = json['id'];
		projectName = json['projectName'];
		projectId = json['projectId'];
		subjectId = json['subjectId'];
		subjectName = json['subjectName'];
		dutyName = json['dutyName'];
		industryCode = json['industryCode'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['industryName'] = this.industryName;
		data['industryProjectSubjectDutyId'] = this.industryProjectSubjectDutyId;
		data['dutyCode'] = this.dutyCode;
		data['description'] = this.description;
		data['id'] = this.id;
		data['projectName'] = this.projectName;
		data['projectId'] = this.projectId;
		data['subjectId'] = this.subjectId;
		data['subjectName'] = this.subjectName;
		data['dutyName'] = this.dutyName;
		data['industryCode'] = this.industryCode;
		return data;
	}
}

class UserModelDataOrgdto {
	String adminUserName;
	List<UserModelDataOrgdtoOrgareascopelist> orgAreaScopeList;
	String cityId;
	dynamic contactMoblie;
	String managerName;
	dynamic orgType;
	String province;
	dynamic companyUserTotal;
	String levelsId;
	String originCode;
	int id;
	int state;
	String longitude;
	List<UserModelDataOrgdtoOrguserrolelist> orgUserRoleList;
	String orgName;
	String registerTime;
	dynamic contactName;
	int leafType;
	String natureName;
	String provinceId;
	String parentName;
	String pinyin;
	String district;
	dynamic adminCard;
	String natureCode;
	int billingMode;
	int certState;
	String city;
	String latitude;
	String typeName;
	String description;
	String socialCreditCode;
	int orgId;
	dynamic companyStudentTotal;
	UserModelDataOrgdtoOrgsitedto orgSiteDto;
	String firstLetter;
	String address;
	String managerMobile;
	String billingTime;
	dynamic orgGov;
	String abbreviation;
	int parentId;
	String typeCode;
	int site;
	String districtId;
	String adminPhone;
	String createTime;
	List<UserModelDataOrgdtoOrgmanagersubjectlist> orgManagerSubjectList;
	UserModelDataOrgdtoUser user;
	int levels;
	int orgLevelType;

	UserModelDataOrgdto({this.adminUserName, this.orgAreaScopeList, this.cityId, this.contactMoblie, this.managerName, this.orgType, this.province, this.companyUserTotal, this.levelsId, this.originCode, this.id, this.state, this.longitude, this.orgUserRoleList, this.orgName, this.registerTime, this.contactName, this.leafType, this.natureName, this.provinceId, this.parentName, this.pinyin, this.district, this.adminCard, this.natureCode, this.billingMode, this.certState, this.city, this.latitude, this.typeName, this.description, this.socialCreditCode, this.orgId, this.companyStudentTotal, this.orgSiteDto, this.firstLetter, this.address, this.managerMobile, this.billingTime, this.orgGov, this.abbreviation, this.parentId, this.typeCode, this.site, this.districtId, this.adminPhone, this.createTime, this.orgManagerSubjectList, this.user, this.levels, this.orgLevelType});

	UserModelDataOrgdto.fromJson(Map<String, dynamic> json) {
		adminUserName = json['adminUserName'];
		if (json['orgAreaScopeList'] != null) {
			orgAreaScopeList = new List<UserModelDataOrgdtoOrgareascopelist>();(json['orgAreaScopeList'] as List).forEach((v) { orgAreaScopeList.add(new UserModelDataOrgdtoOrgareascopelist.fromJson(v)); });
		}
		cityId = json['cityId'];
		contactMoblie = json['contactMoblie'];
		managerName = json['managerName'];
		orgType = json['orgType'];
		province = json['province'];
		companyUserTotal = json['companyUserTotal'];
		levelsId = json['levelsId'];
		originCode = json['originCode'];
		id = json['id'];
		state = json['state'];
		longitude = json['longitude'];
		if (json['orgUserRoleList'] != null) {
			orgUserRoleList = new List<UserModelDataOrgdtoOrguserrolelist>();(json['orgUserRoleList'] as List).forEach((v) { orgUserRoleList.add(new UserModelDataOrgdtoOrguserrolelist.fromJson(v)); });
		}
		orgName = json['orgName'];
		registerTime = json['registerTime'];
		contactName = json['contactName'];
		leafType = json['leafType'];
		natureName = json['natureName'];
		provinceId = json['provinceId'];
		parentName = json['parentName'];
		pinyin = json['pinyin'];
		district = json['district'];
		adminCard = json['adminCard'];
		natureCode = json['natureCode'];
		billingMode = json['billingMode'];
		certState = json['certState'];
		city = json['city'];
		latitude = json['latitude'];
		typeName = json['typeName'];
		description = json['description'];
		socialCreditCode = json['socialCreditCode'];
		orgId = json['orgId'];
		companyStudentTotal = json['companyStudentTotal'];
		orgSiteDto = json['orgSiteDto'] != null ? new UserModelDataOrgdtoOrgsitedto.fromJson(json['orgSiteDto']) : null;
		firstLetter = json['firstLetter'];
		address = json['address'];
		managerMobile = json['managerMobile'];
		billingTime = json['billingTime'];
		orgGov = json['orgGov'];
		abbreviation = json['abbreviation'];
		parentId = json['parentId'];
		typeCode = json['typeCode'];
		site = json['site'];
		districtId = json['districtId'];
		adminPhone = json['adminPhone'];
		createTime = json['createTime'];
		if (json['orgManagerSubjectList'] != null) {
			orgManagerSubjectList = new List<UserModelDataOrgdtoOrgmanagersubjectlist>();(json['orgManagerSubjectList'] as List).forEach((v) { orgManagerSubjectList.add(new UserModelDataOrgdtoOrgmanagersubjectlist.fromJson(v)); });
		}
		user = json['user'] != null ? new UserModelDataOrgdtoUser.fromJson(json['user']) : null;
		levels = json['levels'];
		orgLevelType = json['orgLevelType'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['adminUserName'] = this.adminUserName;
		if (this.orgAreaScopeList != null) {
      data['orgAreaScopeList'] =  this.orgAreaScopeList.map((v) => v.toJson()).toList();
    }
		data['cityId'] = this.cityId;
		data['contactMoblie'] = this.contactMoblie;
		data['managerName'] = this.managerName;
		data['orgType'] = this.orgType;
		data['province'] = this.province;
		data['companyUserTotal'] = this.companyUserTotal;
		data['levelsId'] = this.levelsId;
		data['originCode'] = this.originCode;
		data['id'] = this.id;
		data['state'] = this.state;
		data['longitude'] = this.longitude;
		if (this.orgUserRoleList != null) {
      data['orgUserRoleList'] =  this.orgUserRoleList.map((v) => v.toJson()).toList();
    }
		data['orgName'] = this.orgName;
		data['registerTime'] = this.registerTime;
		data['contactName'] = this.contactName;
		data['leafType'] = this.leafType;
		data['natureName'] = this.natureName;
		data['provinceId'] = this.provinceId;
		data['parentName'] = this.parentName;
		data['pinyin'] = this.pinyin;
		data['district'] = this.district;
		data['adminCard'] = this.adminCard;
		data['natureCode'] = this.natureCode;
		data['billingMode'] = this.billingMode;
		data['certState'] = this.certState;
		data['city'] = this.city;
		data['latitude'] = this.latitude;
		data['typeName'] = this.typeName;
		data['description'] = this.description;
		data['socialCreditCode'] = this.socialCreditCode;
		data['orgId'] = this.orgId;
		data['companyStudentTotal'] = this.companyStudentTotal;
		if (this.orgSiteDto != null) {
      data['orgSiteDto'] = this.orgSiteDto.toJson();
    }
		data['firstLetter'] = this.firstLetter;
		data['address'] = this.address;
		data['managerMobile'] = this.managerMobile;
		data['billingTime'] = this.billingTime;
		data['orgGov'] = this.orgGov;
		data['abbreviation'] = this.abbreviation;
		data['parentId'] = this.parentId;
		data['typeCode'] = this.typeCode;
		data['site'] = this.site;
		data['districtId'] = this.districtId;
		data['adminPhone'] = this.adminPhone;
		data['createTime'] = this.createTime;
		if (this.orgManagerSubjectList != null) {
      data['orgManagerSubjectList'] =  this.orgManagerSubjectList.map((v) => v.toJson()).toList();
    }
		if (this.user != null) {
      data['user'] = this.user.toJson();
    }
		data['levels'] = this.levels;
		data['orgLevelType'] = this.orgLevelType;
		return data;
	}
}

class UserModelDataOrgdtoOrgareascopelist {
	String scopeId;
	String orgName;
	String districtId;
	String province;
	String city;
	String district;
	dynamic description;
	int id;
	String cityId;
	String provinceId;
	dynamic addressJoin;
	int orgId;

	UserModelDataOrgdtoOrgareascopelist({this.scopeId, this.orgName, this.districtId, this.province, this.city, this.district, this.description, this.id, this.cityId, this.provinceId, this.addressJoin, this.orgId});

	UserModelDataOrgdtoOrgareascopelist.fromJson(Map<String, dynamic> json) {
		scopeId = json['scopeId'];
		orgName = json['orgName'];
		districtId = json['districtId'];
		province = json['province'];
		city = json['city'];
		district = json['district'];
		description = json['description'];
		id = json['id'];
		cityId = json['cityId'];
		provinceId = json['provinceId'];
		addressJoin = json['addressJoin'];
		orgId = json['orgId'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['scopeId'] = this.scopeId;
		data['orgName'] = this.orgName;
		data['districtId'] = this.districtId;
		data['province'] = this.province;
		data['city'] = this.city;
		data['district'] = this.district;
		data['description'] = this.description;
		data['id'] = this.id;
		data['cityId'] = this.cityId;
		data['provinceId'] = this.provinceId;
		data['addressJoin'] = this.addressJoin;
		data['orgId'] = this.orgId;
		return data;
	}
}

class UserModelDataOrgdtoOrguserrolelist {
	int roleId;
	String roleCode;
	String roleName;
	dynamic description;
	int id;

	UserModelDataOrgdtoOrguserrolelist({this.roleId, this.roleCode, this.roleName, this.description, this.id});

	UserModelDataOrgdtoOrguserrolelist.fromJson(Map<String, dynamic> json) {
		roleId = json['roleId'];
		roleCode = json['roleCode'];
		roleName = json['roleName'];
		description = json['description'];
		id = json['id'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['roleId'] = this.roleId;
		data['roleCode'] = this.roleCode;
		data['roleName'] = this.roleName;
		data['description'] = this.description;
		data['id'] = this.id;
		return data;
	}
}

class UserModelDataOrgdtoOrgsitedto {
	String picUrlFull;
	dynamic orgSiteUrlDtoList;
	String orgName;
	List<UserModelDataOrgdtoOrgsitedtoOrgsiteparameterdtolist> orgSiteParameterDtoList;
	List<Null> siteUrlArr;
	String webTitle;
	String siteName;
	dynamic description;
	String updateTime;
	int orgId;
	String picUrl;
	dynamic siteUrl2;
	dynamic siteUrl1;
	int siteTemplateId;
	String siteId;
	int id;
	int state;
	dynamic sysSiteTemplateDto;
	String announcement;

	UserModelDataOrgdtoOrgsitedto({this.picUrlFull, this.orgSiteUrlDtoList, this.orgName, this.orgSiteParameterDtoList, this.siteUrlArr, this.webTitle, this.siteName, this.description, this.updateTime, this.orgId, this.picUrl, this.siteUrl2, this.siteUrl1, this.siteTemplateId, this.siteId, this.id, this.state, this.sysSiteTemplateDto, this.announcement});

	UserModelDataOrgdtoOrgsitedto.fromJson(Map<String, dynamic> json) {
		picUrlFull = json['picUrlFull'];
		orgSiteUrlDtoList = json['orgSiteUrlDtoList'];
		orgName = json['orgName'];
		if (json['orgSiteParameterDtoList'] != null) {
			orgSiteParameterDtoList = new List<UserModelDataOrgdtoOrgsitedtoOrgsiteparameterdtolist>();(json['orgSiteParameterDtoList'] as List).forEach((v) { orgSiteParameterDtoList.add(new UserModelDataOrgdtoOrgsitedtoOrgsiteparameterdtolist.fromJson(v)); });
		}
		if (json['siteUrlArr'] != null) {
			siteUrlArr = new List<Null>();
		}
		webTitle = json['webTitle'];
		siteName = json['siteName'];
		description = json['description'];
		updateTime = json['updateTime'];
		orgId = json['orgId'];
		picUrl = json['picUrl'];
		siteUrl2 = json['siteUrl2'];
		siteUrl1 = json['siteUrl1'];
		siteTemplateId = json['siteTemplateId'];
		siteId = json['siteId'];
		id = json['id'];
		state = json['state'];
		sysSiteTemplateDto = json['sysSiteTemplateDto'];
		announcement = json['announcement'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['picUrlFull'] = this.picUrlFull;
		data['orgSiteUrlDtoList'] = this.orgSiteUrlDtoList;
		data['orgName'] = this.orgName;
		if (this.orgSiteParameterDtoList != null) {
      data['orgSiteParameterDtoList'] =  this.orgSiteParameterDtoList.map((v) => v.toJson()).toList();
    }
		if (this.siteUrlArr != null) {
      data['siteUrlArr'] =  [];
    }
		data['webTitle'] = this.webTitle;
		data['siteName'] = this.siteName;
		data['description'] = this.description;
		data['updateTime'] = this.updateTime;
		data['orgId'] = this.orgId;
		data['picUrl'] = this.picUrl;
		data['siteUrl2'] = this.siteUrl2;
		data['siteUrl1'] = this.siteUrl1;
		data['siteTemplateId'] = this.siteTemplateId;
		data['siteId'] = this.siteId;
		data['id'] = this.id;
		data['state'] = this.state;
		data['sysSiteTemplateDto'] = this.sysSiteTemplateDto;
		data['announcement'] = this.announcement;
		return data;
	}
}

class UserModelDataOrgdtoOrgsitedtoOrgsiteparameterdtolist {
	int parameterType;
	String parameterContentFull;
	String parameterContent;
	int id;
	String parameterName;
	String parameterCode;

	UserModelDataOrgdtoOrgsitedtoOrgsiteparameterdtolist({this.parameterType, this.parameterContentFull, this.parameterContent, this.id, this.parameterName, this.parameterCode});

	UserModelDataOrgdtoOrgsitedtoOrgsiteparameterdtolist.fromJson(Map<String, dynamic> json) {
		parameterType = json['parameterType'];
		parameterContentFull = json['parameterContentFull'];
		parameterContent = json['parameterContent'];
		id = json['id'];
		parameterName = json['parameterName'];
		parameterCode = json['parameterCode'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['parameterType'] = this.parameterType;
		data['parameterContentFull'] = this.parameterContentFull;
		data['parameterContent'] = this.parameterContent;
		data['id'] = this.id;
		data['parameterName'] = this.parameterName;
		data['parameterCode'] = this.parameterCode;
		return data;
	}
}

class UserModelDataOrgdtoOrgmanagersubjectlist {
	String industryName;
	String scopeId;
	int trainingModel;
	dynamic description;
	int id;
	String projectName;
	String industryProjectSubjectId;
	String projectId;
	String subjectId;
	String industryCode;
	String subjectName;

	UserModelDataOrgdtoOrgmanagersubjectlist({this.industryName, this.scopeId, this.trainingModel, this.description, this.id, this.projectName, this.industryProjectSubjectId, this.projectId, this.subjectId, this.industryCode, this.subjectName});

	UserModelDataOrgdtoOrgmanagersubjectlist.fromJson(Map<String, dynamic> json) {
		industryName = json['industryName'];
		scopeId = json['scopeId'];
		trainingModel = json['trainingModel'];
		description = json['description'];
		id = json['id'];
		projectName = json['projectName'];
		industryProjectSubjectId = json['industryProjectSubjectId'];
		projectId = json['projectId'];
		subjectId = json['subjectId'];
		industryCode = json['industryCode'];
		subjectName = json['subjectName'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['industryName'] = this.industryName;
		data['scopeId'] = this.scopeId;
		data['trainingModel'] = this.trainingModel;
		data['description'] = this.description;
		data['id'] = this.id;
		data['projectName'] = this.projectName;
		data['industryProjectSubjectId'] = this.industryProjectSubjectId;
		data['projectId'] = this.projectId;
		data['subjectId'] = this.subjectId;
		data['industryCode'] = this.industryCode;
		data['subjectName'] = this.subjectName;
		return data;
	}
}

class UserModelDataOrgdtoUser {
	dynamic cityId;
	dynamic userIdentity;
	String cardNo;
	dynamic productName;
	dynamic orgUserDuty;
	dynamic province;
	dynamic userCert;
	String originCode;
	int id;
	dynamic state;
	dynamic qq;
	String orgName;
	dynamic prefixSignatureUrl;
	dynamic dutyCodes;
	dynamic orgValid;
	dynamic provinceId;
	String faceUrl;
	dynamic isDefault;
	dynamic district;
	dynamic orgUserRole;
	dynamic cardTypeCode;
	String cardPhotoUrl;
	dynamic orgState;
	dynamic birthday;
	dynamic gender;
	dynamic city;
	dynamic cardTypeName;
	dynamic signatureUrl;
	dynamic prefixFaceUrl;
	dynamic typeName;
	dynamic description;
	String faceId;
	int orgId;
	dynamic userPosition;
	String email;
	dynamic orgUser;
	dynamic address;
	String mobile;
	dynamic wechat;
	String userName;
	String userId;
	dynamic typeCode;
	dynamic prefixCardPhotoUrl;
	String realName;
	dynamic districtId;
	dynamic productCode;
	dynamic createTime;
	dynamic dutyNames;
	dynamic userDepartment;
	dynamic age;

	UserModelDataOrgdtoUser({this.cityId, this.userIdentity, this.cardNo, this.productName, this.orgUserDuty, this.province, this.userCert, this.originCode, this.id, this.state, this.qq, this.orgName, this.prefixSignatureUrl, this.dutyCodes, this.orgValid, this.provinceId, this.faceUrl, this.isDefault, this.district, this.orgUserRole, this.cardTypeCode, this.cardPhotoUrl, this.orgState, this.birthday, this.gender, this.city, this.cardTypeName, this.signatureUrl, this.prefixFaceUrl, this.typeName, this.description, this.faceId, this.orgId, this.userPosition, this.email, this.orgUser, this.address, this.mobile, this.wechat, this.userName, this.userId, this.typeCode, this.prefixCardPhotoUrl, this.realName, this.districtId, this.productCode, this.createTime, this.dutyNames, this.userDepartment, this.age});

	UserModelDataOrgdtoUser.fromJson(Map<String, dynamic> json) {
		cityId = json['cityId'];
		userIdentity = json['userIdentity'];
		cardNo = json['cardNo'];
		productName = json['productName'];
		orgUserDuty = json['orgUserDuty'];
		province = json['province'];
		userCert = json['userCert'];
		originCode = json['originCode'];
		id = json['id'];
		state = json['state'];
		qq = json['qq'];
		orgName = json['orgName'];
		prefixSignatureUrl = json['prefixSignatureUrl'];
		dutyCodes = json['dutyCodes'];
		orgValid = json['orgValid'];
		provinceId = json['provinceId'];
		faceUrl = json['faceUrl'];
		isDefault = json['isDefault'];
		district = json['district'];
		orgUserRole = json['orgUserRole'];
		cardTypeCode = json['cardTypeCode'];
		cardPhotoUrl = json['cardPhotoUrl'];
		orgState = json['orgState'];
		birthday = json['birthday'];
		gender = json['gender'];
		city = json['city'];
		cardTypeName = json['cardTypeName'];
		signatureUrl = json['signatureUrl'];
		prefixFaceUrl = json['prefixFaceUrl'];
		typeName = json['typeName'];
		description = json['description'];
		faceId = json['faceId'];
		orgId = json['orgId'];
		userPosition = json['userPosition'];
		email = json['email'];
		orgUser = json['orgUser'];
		address = json['address'];
		mobile = json['mobile'];
		wechat = json['wechat'];
		userName = json['userName'];
		userId = json['userId'];
		typeCode = json['typeCode'];
		prefixCardPhotoUrl = json['prefixCardPhotoUrl'];
		realName = json['realName'];
		districtId = json['districtId'];
		productCode = json['productCode'];
		createTime = json['createTime'];
		dutyNames = json['dutyNames'];
		userDepartment = json['userDepartment'];
		age = json['age'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['cityId'] = this.cityId;
		data['userIdentity'] = this.userIdentity;
		data['cardNo'] = this.cardNo;
		data['productName'] = this.productName;
		data['orgUserDuty'] = this.orgUserDuty;
		data['province'] = this.province;
		data['userCert'] = this.userCert;
		data['originCode'] = this.originCode;
		data['id'] = this.id;
		data['state'] = this.state;
		data['qq'] = this.qq;
		data['orgName'] = this.orgName;
		data['prefixSignatureUrl'] = this.prefixSignatureUrl;
		data['dutyCodes'] = this.dutyCodes;
		data['orgValid'] = this.orgValid;
		data['provinceId'] = this.provinceId;
		data['faceUrl'] = this.faceUrl;
		data['isDefault'] = this.isDefault;
		data['district'] = this.district;
		data['orgUserRole'] = this.orgUserRole;
		data['cardTypeCode'] = this.cardTypeCode;
		data['cardPhotoUrl'] = this.cardPhotoUrl;
		data['orgState'] = this.orgState;
		data['birthday'] = this.birthday;
		data['gender'] = this.gender;
		data['city'] = this.city;
		data['cardTypeName'] = this.cardTypeName;
		data['signatureUrl'] = this.signatureUrl;
		data['prefixFaceUrl'] = this.prefixFaceUrl;
		data['typeName'] = this.typeName;
		data['description'] = this.description;
		data['faceId'] = this.faceId;
		data['orgId'] = this.orgId;
		data['userPosition'] = this.userPosition;
		data['email'] = this.email;
		data['orgUser'] = this.orgUser;
		data['address'] = this.address;
		data['mobile'] = this.mobile;
		data['wechat'] = this.wechat;
		data['userName'] = this.userName;
		data['userId'] = this.userId;
		data['typeCode'] = this.typeCode;
		data['prefixCardPhotoUrl'] = this.prefixCardPhotoUrl;
		data['realName'] = this.realName;
		data['districtId'] = this.districtId;
		data['productCode'] = this.productCode;
		data['createTime'] = this.createTime;
		data['dutyNames'] = this.dutyNames;
		data['userDepartment'] = this.userDepartment;
		data['age'] = this.age;
		return data;
	}
}

class UserModelDataOrguser {
	dynamic combinationDutyCode;
	String line;
	dynamic prefixFaceUrl;
	String description;
	String departmentIds;
	String cardNo;
	String deviceId;
	String deviceNumber;
	int orgId;
	int paymentType;
	dynamic orgUserDuty;
	int id;
	int state;
	dynamic createTimeStr;
	dynamic dimissionTimeStr;
	dynamic updateTimeStr;
	String orgName;
	dynamic combinationDutyName;
	String identityNames;
	String deviceLaterNumber;
	String dutyCodes;
	dynamic mobile;
	dynamic index;
	String updateTime;
	dynamic dimissionTime;
	dynamic userName;
	dynamic isFinished;
	String userId;
	dynamic orgValid;
	String realName;
	String faceUrl;
	dynamic stateStr;
	String identityCodes;
	String createTime;
	dynamic originState;
	String dutyNames;
	String position;
	dynamic orgState;

	UserModelDataOrguser({this.combinationDutyCode, this.line, this.prefixFaceUrl, this.description, this.departmentIds, this.cardNo, this.deviceId, this.deviceNumber, this.orgId, this.paymentType, this.orgUserDuty, this.id, this.state, this.createTimeStr, this.dimissionTimeStr, this.updateTimeStr, this.orgName, this.combinationDutyName, this.identityNames, this.deviceLaterNumber, this.dutyCodes, this.mobile, this.index, this.updateTime, this.dimissionTime, this.userName, this.isFinished, this.userId, this.orgValid, this.realName, this.faceUrl, this.stateStr, this.identityCodes, this.createTime, this.originState, this.dutyNames, this.position, this.orgState});

	UserModelDataOrguser.fromJson(Map<String, dynamic> json) {
		combinationDutyCode = json['combinationDutyCode'];
		line = json['line'];
		prefixFaceUrl = json['prefixFaceUrl'];
		description = json['description'];
		departmentIds = json['departmentIds'];
		cardNo = json['cardNo'];
		deviceId = json['deviceId'];
		deviceNumber = json['deviceNumber'];
		orgId = json['orgId'];
		paymentType = json['paymentType'];
		orgUserDuty = json['orgUserDuty'];
		id = json['id'];
		state = json['state'];
		createTimeStr = json['createTimeStr'];
		dimissionTimeStr = json['dimissionTimeStr'];
		updateTimeStr = json['updateTimeStr'];
		orgName = json['orgName'];
		combinationDutyName = json['combinationDutyName'];
		identityNames = json['identityNames'];
		deviceLaterNumber = json['deviceLaterNumber'];
		dutyCodes = json['dutyCodes'];
		mobile = json['mobile'];
		index = json['index'];
		updateTime = json['updateTime'];
		dimissionTime = json['dimissionTime'];
		userName = json['userName'];
		isFinished = json['isFinished'];
		userId = json['userId'];
		orgValid = json['orgValid'];
		realName = json['realName'];
		faceUrl = json['faceUrl'];
		stateStr = json['stateStr'];
		identityCodes = json['identityCodes'];
		createTime = json['createTime'];
		originState = json['originState'];
		dutyNames = json['dutyNames'];
		position = json['position'];
		orgState = json['orgState'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['combinationDutyCode'] = this.combinationDutyCode;
		data['line'] = this.line;
		data['prefixFaceUrl'] = this.prefixFaceUrl;
		data['description'] = this.description;
		data['departmentIds'] = this.departmentIds;
		data['cardNo'] = this.cardNo;
		data['deviceId'] = this.deviceId;
		data['deviceNumber'] = this.deviceNumber;
		data['orgId'] = this.orgId;
		data['paymentType'] = this.paymentType;
		data['orgUserDuty'] = this.orgUserDuty;
		data['id'] = this.id;
		data['state'] = this.state;
		data['createTimeStr'] = this.createTimeStr;
		data['dimissionTimeStr'] = this.dimissionTimeStr;
		data['updateTimeStr'] = this.updateTimeStr;
		data['orgName'] = this.orgName;
		data['combinationDutyName'] = this.combinationDutyName;
		data['identityNames'] = this.identityNames;
		data['deviceLaterNumber'] = this.deviceLaterNumber;
		data['dutyCodes'] = this.dutyCodes;
		data['mobile'] = this.mobile;
		data['index'] = this.index;
		data['updateTime'] = this.updateTime;
		data['dimissionTime'] = this.dimissionTime;
		data['userName'] = this.userName;
		data['isFinished'] = this.isFinished;
		data['userId'] = this.userId;
		data['orgValid'] = this.orgValid;
		data['realName'] = this.realName;
		data['faceUrl'] = this.faceUrl;
		data['stateStr'] = this.stateStr;
		data['identityCodes'] = this.identityCodes;
		data['createTime'] = this.createTime;
		data['originState'] = this.originState;
		data['dutyNames'] = this.dutyNames;
		data['position'] = this.position;
		data['orgState'] = this.orgState;
		return data;
	}
}

class UserModelDataUserdepartment {
	dynamic departmentName;
	dynamic id;

	UserModelDataUserdepartment({this.departmentName, this.id});

	UserModelDataUserdepartment.fromJson(Map<String, dynamic> json) {
		departmentName = json['departmentName'];
		id = json['id'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['departmentName'] = this.departmentName;
		data['id'] = this.id;
		return data;
	}
}
