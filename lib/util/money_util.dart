import 'num_util.dart';

/// 单位
enum MoneyUnit {
  NORMAL, // 6.00
  YUAN, // ¥6.00
  YUAN_ZH, // 6.00元
  DOLLAR, // $6.00
}

/// 保留小数点
enum MoneyFormat {
  NORMAL, //保留两位小数(6.00元)
  END_INTEGER, //去掉末尾'0'(6.00元 -> 6元, 6.60元 -> 6.6元)
  YUAN_INTEGER, //整元(6.00元 -> 6元)
}

class MoneyUtil {
  static const String YUAN = '¥';
  static const String YUAN_ZH = '元';
  static const String DOLLAR = '\$';

  ///  分 转 元, format格式输出.
  static String changeF2Y(int amount,
      {MoneyFormat format = MoneyFormat.NORMAL}) {
    if (amount == null) return null;
    String moneyTxt;
    double yuan = NumUtil.divide(amount, 100);
    switch (format) {
      case MoneyFormat.NORMAL:
        moneyTxt = yuan.toStringAsFixed(2);
        break;
      case MoneyFormat.END_INTEGER:
        if (yuan % 100 == 0) {
          moneyTxt = yuan.toInt().toString();
        } else if (amount % 10 == 0) {
          moneyTxt = yuan.toStringAsFixed(1);
        } else {
          moneyTxt = yuan.toStringAsFixed(2);
        }
        break;
      case MoneyFormat.YUAN_INTEGER:
        moneyTxt = (amount % 100 == 0)
            ? yuan.toInt().toString()
            : yuan.toStringAsFixed(2);
        break;
    }
    return moneyTxt;
  }

  /// 分字符串 转 元, format 与 unit 格式 输出.
  static String changeFStr2YWithUnit(String amountStr,
      {MoneyFormat format = MoneyFormat.NORMAL,
      MoneyUnit unit = MoneyUnit.NORMAL}) {
    int amount;
    if (amountStr != null) {
      double value = double.tryParse(amountStr);
      amount = (value == null ? null : value.toInt());
    }
    return changeF2YWithUnit(amount, format: format, unit: unit);
  }

  /// 分 转 元, format 与 unit 格式 输出.
  static String changeF2YWithUnit(int amount,
      {MoneyFormat format = MoneyFormat.NORMAL,
      MoneyUnit unit = MoneyUnit.NORMAL}) {
    return withUnit(changeF2Y(amount, format: format), unit);
  }

  /// 元, format 与 unit 格式 输出.
  static String changeYWithUnit(Object yuan, MoneyUnit unit,
      {MoneyFormat format}) {
    if (yuan == null) return null;
    String yuanTxt = yuan.toString();
    if (format != null) {
      int amount = changeY2F(yuan);
      yuanTxt = changeF2Y(amount.toInt(), format: format);
    }
    return withUnit(yuanTxt, unit);
  }

  /// 元 转 分，
  static int changeY2F(Object yuan) {
    if (yuan == null) return null;
    return NumUtil.multiplyDecStr(yuan.toString(), '100').toInt();
  }

  /// 拼接单位.
  static String withUnit(String moneyTxt, MoneyUnit unit) {
    if (moneyTxt == null || moneyTxt.isEmpty) return null;
    switch (unit) {
      case MoneyUnit.YUAN:
        moneyTxt = YUAN + moneyTxt;
        break;
      case MoneyUnit.YUAN_ZH:
        moneyTxt = moneyTxt + YUAN_ZH;
        break;
      case MoneyUnit.DOLLAR:
        moneyTxt = DOLLAR + moneyTxt;
        break;
      default:
        break;
    }
    return moneyTxt;
  }
}
