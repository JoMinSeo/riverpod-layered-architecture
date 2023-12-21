class AppException implements Exception {
  final String message;

  const AppException([this.message = '에러가 발생했습니다.']);

  @override
  String toString() => message;
}