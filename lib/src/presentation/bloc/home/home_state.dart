part of 'home_bloc.dart';

class HomeState extends Equatable {
  const HomeState({
    this.isScrollingTop = false,
    this.categoryWithResponse = const [],
    this.categoryStatus = HomeStatus.initial,
    this.chosenList = const [],
    this.error = "",
    this.apiStatus = ApiStatus.initial,
    this.bannerWithResponse,
    this.currentIndex,
  });
// this.products = const [],

  final BannerResponse? bannerWithResponse;
  final int? currentIndex;
  final List<CategoryModel>? categoryWithResponse;  // final List<Categories>? categoryWithResponse;
  final bool isScrollingTop;
  final ApiStatus apiStatus;
  final HomeStatus categoryStatus;
  final List<String> chosenList;
  final String error;
  HomeState copyWith({
    BannerResponse? bannerWithResponse,
    int? currentIndex,
    List<CategoryModel>? categoryWithResponse,
    bool? isScrollingTop,
    HomeStatus? categoryStatus,
    List<String>? chosenList,
    String? error,
    ApiStatus? apiStatus,
  }) =>
      HomeState(
        bannerWithResponse: bannerWithResponse ?? this.bannerWithResponse,
        currentIndex: currentIndex ?? this.currentIndex,
        categoryWithResponse: categoryWithResponse ?? this.categoryWithResponse,
        error: error ?? this.error,
        isScrollingTop: isScrollingTop ?? this.isScrollingTop,
        categoryStatus: categoryStatus ?? this.categoryStatus,
        chosenList: chosenList ?? this.chosenList,
        apiStatus: apiStatus ??  this.apiStatus,

      );
// products: products ?? this.products,
  @override
  List<Object?> get props => [
        bannerWithResponse,
        currentIndex,
        isScrollingTop,
        categoryStatus,
        categoryWithResponse,
        chosenList,
        error,
        apiStatus,
      ];
}

enum HomeStatus {
  initial,
  loading,
  success,
  error,
}

extension HomeStatusX on HomeStatus {
  bool get isInitial => this == HomeStatus.initial;

  bool get isLoading => this == HomeStatus.loading;

  bool get isSuccess => this == HomeStatus.success;

  bool get isError => this == HomeStatus.error;
}