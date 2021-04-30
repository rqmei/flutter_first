class UserInfo {
// 详细地址
  String address;

  // 年龄（后台根据身份证号码，自动计算年龄）
  int age;

  // 生日
  String birthday;

  // 证件号码
  String cardNo;

  // 证件照地址
  String cardPhotoUrl;

  // 证件类型编码（参数管理，身份证号码，军官证，港澳通行证， 台湾通行证，护照）
  String cardTypeCode;

  // 证件类型名称
  String cardTypeName;

  // 所属市区
  String city;

  // 所属市区ID
  String cityId;

  // 创建时间
  String createTime;

  // 备注
  String description;

  // 所属区县
  String district;

  // 所属区县ID
  String districtId;

  // 邮箱地址
  String email;

  // faceId(人像服务返回唯一id，UUID)
  String faceId;

  // 最新注册照地址
  String faceUrl;

  // 性别（1：未知，2：男，3：女）
  int gender;

  // 手机号码
  String id;

  // 组织ID（学员：最新组织ID）
  String mobile;

  // 所属组织名称
  String orgId;

  // 组织用户关联出参
  String orgName;

  // 组织用户关联出参
  OrgUserBean orgUser;

  // 原组织编码（登录）
  String originCode;

  // 来源编码
  String productCode;

  // 来源名称（参数，多系统/多产品，安途帮，广告系统）
  String productName;

  // 所属省/直辖市
  String province;

  // 所属省/直辖市D（地址编码）
  String provinceId;

  // qq
  String qq;

  // 真实姓名
  String realName;

  // 状态（0：无效，1：正常,2：冻结）
  int state;

  // 登陆后的TOKEN
  String token;

  // 组织部门新增出参
  UserDepartmentBean userDepartment;

  // 用户ID
  String userId;

  // 用户登陆身份, 登陆时只能选择一个种身份学员student, 管理员administrator(管理员包含管理员,安全管理员,授课人等)
  String userLoginIdentity;

  // 用户名（规则，登录用）
  String userName;

  // 微信
  String wechat;

  // 组织用户岗位出参
  List<OrgUserDutyBean> orgUserDuty;

  // 用户所属角色出参对象
  List<OrgUserRoleBean> orgUserRole;

  // 用户所有权限信息
  List<String> permissionList;

  // 用户所有角色
  List<String> roleList;

  // 组织用户资格证出参
  List<UserCertBean> userCert;

  // 用户身份出参
  List<UserIdentityBean> userIdentity;

  // 用户身份
  List<String> userIdentityList;

  // 组织用户职位出参
  List<UserPositionBean> userPosition;

  // 签名照signatureUrl
  String signatureUrl;

  // 密码
  String passwd;

  // 证件照全路径
  String prefixCardPhotoUrl;

  // 签名照全路径
  String prefixSignatureUrl;

  // 注册照全路径
  String prefixFaceUrl;
}

///  组织部门新增出参
class UserDepartmentBean {
  String id;
  String departmentName;
}

class OrgUserBean {
  // 证件号码
  String cardNo;

  // 所属部门ID（可以选多个部门）
  String departmentIds;

  // 备注
  String description;

  // 岗位编码
  String dutyCodes;

  // 岗位（多个，逗号分隔）
  String dutyNames;

  // 注册照地址
  String faceUrl;
  String id;

  // 身份编码
  String identityCodes;

  // 身份（多个，逗号分隔
  String identityNames;

  // 车牌号码
  String licenseNumber;

  // 线路（运输线路）
  String line;

  // 所属组织ID
  String orgId;

  // 所属组织名称
  String orgName;

  // 付费类型（11：企业付费，12：个人付费）
  int paymentType;

  // 职位(有职位表，也可以手动新增,多个逗号隔开)
  String position;

  // 姓名
  String realName;

  // 状态（0：停用，1：在职，2：离职）
  int state;

  // 用户Id
  String userId;

  // 车辆ID
  String vehicleId;

  // 用户岗位出参 list
  List<OrgUserDutyBean> orgUserDuty;
}

/// 用户岗位出参 list
class OrgUserDutyBean {
  // 备注
  String description;

  // 岗位代码(来自行业表)
  String dutyCode;

  // 岗位名称
  String dutyName;
  String id;

  // 上级级行业代码(来自行业表)
  String industryCode;

  // 上级行业名称
  String industryName;
  String projectId;
  String projectName;
}

/// 用户所属角色出参对象
class OrgUserRoleBean {
  // 备注
  String description;

  // 主键id
  String id;

  // 角色编码
  String roleCode;

  // 角色名称
  String roleName;
}

class UserCertBean {
  // 资格证号码
  String certNumber;

  // 获证时间
  String certTime;

  // 证书路径(拍照)
  String certUrl;

  // 岗位编码（来自行业表）
  String dutyCode;

  // 岗位名称，资格证类型
  String dutyName;

  // 有效期结束时间
  String endTime;

  // 有效期开始时间
  String startTime;
}

class UserIdentityBean {
  String description;
  String id;

  // 身份类型（来自参数，员工，管理员，授课人，考核人员，安全管理员，管理员有角色）
  String identityCode;

  // 身份名称
  String identityName;
}

class UserPositionBean {
  String id;

  // 组织ID
  String orgId;

  // 组织名称
  String orgName;

  // 职位
  String positionName;
}
