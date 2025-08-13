
Future<String> delayedMessage() async {
  return await Future.delayed(Duration(seconds: 2), () => 'Hello after 2 seconds!');
}

Future<void> main() async {
  String message = await delayedMessage();
  print(message);
}