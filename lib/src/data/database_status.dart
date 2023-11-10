enum DatabaseStatus {
  initial,
  loading,
  success,
  error,
}

extension ProductStatusX on DatabaseStatus {
  bool get isInitial => this == DatabaseStatus.initial;
  bool get isLoading => this == DatabaseStatus.loading;
  bool get isSuccess => this == DatabaseStatus.success;
  bool get isError => this == DatabaseStatus.error;
}