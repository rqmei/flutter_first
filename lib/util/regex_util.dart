/// 正则验证手机号，身份证，邮箱等等.
class RegexUtil {
  /// 简单手机号
  static final String regexMobileSimple = '^[1]\\d{10}\$';

  /// 精准手机号
  static final String regexMobileExact =
      '^((13[0-9])|(14[5,7])|(15[0-3,5-9])|(16[6])|(17[0,1,3,5-8])|(18[0-9])|(19[1,8,9]))\\d{8}\$';

  /// 座机
  static final String regexTel = '^0\\d{2,3}[- ]?\\d{7,8}';

  /// 15位身份证号
  static final String regexIdCard15 =
      '^[1-9]\\d{7}((0\\d)|(1[0-2]))(([0|1|2]\\d)|3[0-1])\\d{3}\$';

  ///  18位身份证号
  static final String regexIdCard18 =
      '^[1-9]\\d{5}[1-9]\\d{3}((0\\d)|(1[0-2]))(([0|1|2]\\d)|3[0-1])\\d{3}([0-9Xx])\$';

  /// Regex of email.
  static final String regexEmail =
      '^\\w+([-+.]\\w+)*@\\w+([-.]\\w+)*\\.\\w+([-.]\\w+)*\$';

  /// Regex of url.
  static final String regexUrl = '[a-zA-Z]+://[^\\s]*';

  /// 中文
  static final String regexZh = '[\\u4e00-\\u9fa5]';

  /// Regex of date which pattern is 'yyyy-MM-dd'.
  static final String regexDate =
      '^(?:(?!0000)[0-9]{4}-(?:(?:0[1-9]|1[0-2])-(?:0[1-9]|1[0-9]|2[0-8])|(?:0[13-9]|1[0-2])-(?:29|30)|(?:0[13578]|1[02])-31)|(?:[0-9]{2}(?:0[48]|[2468][048]|[13579][26])|(?:0[48]|[2468][048]|[13579][26])00)-02-29)\$';

  /// Regex of ip address.
  static final String regexIp =
      '((2[0-4]\\d|25[0-5]|[01]?\\d\\d?)\\.){3}(2[0-4]\\d|25[0-5]|[01]?\\d\\d?)';

  /// 必须包含字母和数字, 6~18.
  static const String regexUsername =
      '^(?![0-9]+\$)(?![a-zA-Z]+\$)[0-9A-Za-z]{6,18}\$';

  /// 必须包含字母和数字,可包含特殊字符 6~18.
  static const String regexUsername2 =
      '^(?![0-9]+\$)(?![a-zA-Z]+\$)[0-9A-Za-z\\W]{6,18}\$';

  /// 必须包含字母和数字和殊字符, 6~18.
  static const String regexUsername3 =
      '^(?![0-9]+\$)(?![a-zA-Z]+\$)(?![0-9a-zA-Z]+\$)(?![0-9\\W]+\$)(?![a-zA-Z\\W]+\$)[0-9A-Za-z\\W]{6,18}\$';

  /// Regex of QQ number.
  static final String regexQQ = '[1-9][0-9]{4,}';

  /// Regex of Passport.
  static final String regexPassport =
      r'(^[EeKkGgDdSsPpHh]\d{8}$)|(^(([Ee][a-fA-F])|([DdSsPp][Ee])|([Kk][Jj])|([Mm][Aa])|(1[45]))\d{7}$)';

  ///Return whether input matches regex of simple mobile.
  static bool isMobileSimple(String input) {
    return matches(regexMobileSimple, input);
  }

  ///Return whether input matches regex of exact mobile.
  static bool isMobileExact(String input) {
    return matches(regexMobileExact, input);
  }

  /// Return whether input matches regex of telephone number.
  static bool isTel(String input) {
    return matches(regexTel, input);
  }

  /// Return whether input matches regex of id card number.
  static bool isIDCard(String input) {
    if (input != null && input.length == 15) {
      return isIDCard15(input);
    }
    if (input != null && input.length == 18) {
      return isIDCard18(input);
    }
    return false;
  }

  /// Return whether input matches regex of id card number which length is 15.
  static bool isIDCard15(String input) {
    return matches(regexIdCard15, input);
  }

  /// Return whether input matches regex of id card number which length is 18.
  static bool isIDCard18(String input) {
    return matches(regexIdCard18, input);
  }

  /// Return whether input matches regex of email.
  static bool isEmail(String input) {
    return matches(regexEmail, input);
  }

  ///Return whether input matches regex of Passport.
  static bool isPassport(String input) {
    return matches(regexPassport, input);
  }

  /// Return whether input matches regex of url.
  static bool isURL(String input) {
    return matches(regexUrl, input);
  }

  /// Return whether input matches regex of Chinese character.
  static bool isZh(String input) {
    return '〇' == input || matches(regexZh, input);
  }

  /// Return whether input matches regex of date which pattern is 'yyyy-MM-dd'.
  static bool isDate(String input) {
    return matches(regexDate, input);
  }

  /// Return whether input matches regex of ip address.
  static bool isIP(String input) {
    return matches(regexIp, input);
  }

  /// Return whether input matches regex of username.
  static bool isUserName(String input, {String regex = regexUsername}) {
    return matches(regex, input);
  }

  /// Return whether input matches regex of QQ.
  static bool isQQ(String input) {
    return matches(regexQQ, input);
  }

  static bool matches(String regex, String input) {
    if (input == null || input.isEmpty) return false;
    return RegExp(regex).hasMatch(input);
  }
}
