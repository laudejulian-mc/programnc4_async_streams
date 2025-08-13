Future<void> simulateError() async {
  await Future.delayed(Duration(seconds: 2));
  throw Exception('Something went wrong!');
}

Future<void> main() async {
  try {
    await simulateError();
  } catch (e) {
    print('Caught an error: $e');
  }
}