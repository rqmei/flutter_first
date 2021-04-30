class LoginReq {
  String userName;
  String passwd;
  String ipAddr;
  String version;
  String platform = "android";
  String userLoginIdentity = "system_org_indentity_student";
  int loginCount;

  LoginReq(this.userName, this.passwd,
      {this.ipAddr, this.version, this.loginCount});
}
