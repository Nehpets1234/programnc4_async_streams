

// Function that simulates an error after 2 seconds
Future<String> simulateError() {
  return Future.delayed(Duration(seconds: 2), () {
    throw Exception('Something went wrong!');
  });
}

Future<void> main() async {
  print('Starting error simulation...');

  try {
    String result = await simulateError();
    print(result); // This won't execute because an error will be thrown
  } catch (e) {
    print('Caught an error: $e');
  }
}
