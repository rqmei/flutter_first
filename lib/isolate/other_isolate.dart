import 'dart:isolate';
import 'dart:io';

void excuter(SendPort mainSendPort) {
  print("other_isolate start");
  // 获取newIsolate的监听器newReceivePort
  ReceivePort newReceivePort = new ReceivePort();

  // newReceivePort开始监听 mainIsolate中的newSendPort发送回来的消息
  newReceivePort.listen((message) {
    print("other_isolate message: $message");
  });
  SendPort port2 = newReceivePort.sendPort;
  // 将当前的 isolate中创建的SendPort(port2)发送到主isolate中用于通信
  mainSendPort.send([0,port2,"This is from new isolate"]);
  // 模拟耗时5秒
  sleep(Duration(seconds: 5));
  mainSendPort.send([1,"other_isolate 任务完成"]);

  print("other_isolate stop");
}