part of 'home_bloc.dart';

class HomeState extends Equatable {
  const HomeState({
    this.isScrollingTop = false,
    this.categoryWithResponse,
    this.categoryStatus = HomeStatus.initial,
    this.chosenList = const [],
    this.error = "",
    this.apiStatus = ApiStatus.initial,
    this.products = const [],
    this.bannerWithResponse,
    this.currentIndex,
  });


  final BannerResponse? bannerWithResponse;
  final int? currentIndex;
  final List<Categories>? categoryWithResponse;
  final bool isScrollingTop;
  final ApiStatus apiStatus;
  final HomeStatus categoryStatus;
  final List<String> chosenList;
  final String error;
  final List<Products> products;
  HomeState copyWith({
    BannerResponse? bannerResponse,
    int? currentIndex,
    List<Categories>? categoryWithResponse,
    List<Products>? products,
    bool? isScrollingTop,
    HomeStatus? categoryStatus,
    List<String>? chosenList,
    String? error,
    ApiStatus? apiStatus,
  }) =>
      HomeState(
        bannerWithResponse: bannerResponse ?? this.bannerWithResponse,
        currentIndex: currentIndex ?? this.currentIndex,
        categoryWithResponse: categoryWithResponse ?? this.categoryWithResponse,
        error: error ?? this.error,
        isScrollingTop: isScrollingTop ?? this.isScrollingTop,
        categoryStatus: categoryStatus ?? this.categoryStatus,
        chosenList: chosenList ?? this.chosenList,
        apiStatus: apiStatus ??  this.apiStatus,
        products: products ?? this.products,
      );

  @override
  List<Object?> get props => [
        bannerWithResponse,
        currentIndex,
        isScrollingTop,
        categoryStatus,
        categoryWithResponse,
        products,
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