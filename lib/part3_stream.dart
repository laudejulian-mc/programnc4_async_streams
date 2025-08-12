import 'dart:async';

/// Stream function that emits numbers 1–5 with 1-second delays
Stream<int> numberStream() async* {
  for (int i = 1; i <= 5; i++) {
    await Future.delayed(Duration(seconds: 1));
    yield i;
  }
}

Future<void> main() async {
  print('Starting number stream...');
  await for (final number in numberStream()) {
    print('Received: $number');
  }
  print('Stream finished.');
}
