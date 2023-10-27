part of 'home_bloc.dart';

abstract class HomeEvent extends Equatable {
  const HomeEvent();

  @override
  List<Object?> get props => [];
}

class HomeScroll extends HomeEvent {
  const HomeScroll({
    required this.isScrollingTop
});


  final bool isScrollingTop;

  @override
  List<Object?> get props => [isScrollingTop];
}

// class CategoryChooseEvent extends HomeEvent {
//   final List<String> chosenList;
//   // final List<CategoryWithProductModel> categoryWithProductsList;
//   const CategoryChooseEvent({required this.chosenList,required this.categoryWithProductsList});
//   @override
//   List<Object?> get props => [categoryWithProductsList];
// }

class GetBannerEvent extends HomeEvent {
  const GetBannerEvent();

}

class BannerIndexEvent extends HomeEvent {
  const BannerIndexEvent({this.index = 0});
  final int index;
}

class GetCategoryEvent extends HomeEvent {
  const GetCategoryEvent();

  @override
  List<Object?> get props => [];
}

