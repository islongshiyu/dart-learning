/**
 * 类之继承
 */
class TV {
  void turnOn() {
    print('打开设备');
  }
}

/**
 * 使用extends关键字创建子类。
 */
class IPTV extends TV {
  void turnOn() {
    /**
     * 子类可以使用super关键字引用父类。
     */
    super.turnOn();
    print('连接网络...');
  }
}

void main() {
  var iptv = IPTV();
  iptv.turnOn(); // 打开设备 连接网络...
}
