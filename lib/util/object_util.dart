/// String List Map 的对象是否为空
/// 两个List是否相等.
class ObjectUtil {
  /// String 是否为空
  static bool isEmptyString(String str) {
    return str == null || str.isEmpty;
  }

  /// Returns true list是否为null或者长度为0
  static bool isEmptyList(Iterable list) {
    return list == null || list.isEmpty;
  }

  /// Returns true if there is no key/value pair in the map.
  static bool isEmptyMap(Map map) {
    return map == null || map.isEmpty;
  }

  /// Returns true  String or List or Map is empty.
  static bool isEmpty(Object object) {
    if (object == null) return true;
    if (object is String && object.isEmpty) {
      return true;
    } else if (object is Iterable && object.isEmpty) {
      return true;
    } else if (object is Map && object.isEmpty) {
      return true;
    }
    return false;
  }

  /// Returns true String or List or Map is not empty.
  static bool isNotEmpty(Object object) {
    return !isEmpty(object);
  }

  /// Returns true 两个list集合相等
  static bool twoListIsEqual(List listA, List listB) {
    if (listA == listB) return true;
    if (listA == null || listB == null) return false;
    int len = listA.length;
    if (len != listB.length) return false;
    for (int i = 0; i < len; i++) {
      if (!listA.contains(listB[i])) {
        return false;
      }
    }
    return true;
  }

  /// get length
  static int getLength(Object value) {
    if (value == null) return 0;
    if (value is String) {
      return value.length;
    } else if (value is Iterable) {
      return value.length;
    } else if (value is Map) {
      return value.length;
    } else {
      return 0;
    }
  }
}
