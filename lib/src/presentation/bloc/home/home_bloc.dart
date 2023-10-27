import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ploff_kebab/src/data/models/banner/banner_response.dart';
// import 'package:ploff_kebab/src/data/models/get_category_product/category_with_response.dart';
import 'package:ploff_kebab/src/data/models/get_category_product/test.dart';
import 'package:ploff_kebab/src/domain/repositories/banner/banner_repository.dart';
// import 'package:ploff_kebab/src/data/models/test.dart';
import 'package:ploff_kebab/src/domain/repositories/category_repository.dart';
import 'package:ploff_kebab/src/presentation/pages/splash/status.dart';

part 'home_event.dart';

part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  // final List<> newProducts = [];
  final GetCategoryProductRepository categoryProductRepository;
  final BannerRepository bannerRepository;
  HomeBloc(this.categoryProductRepository, this.bannerRepository) : super(const HomeState()) {
    on<HomeScroll>(_onHomeScroll);
    on<GetCategoryEvent>(_getCategoryHandler);
    on<GetBannerEvent>(_getBannerHandler);
    on<BannerIndexEvent>(_getBannerIndex);
  }

  void _onHomeScroll(HomeScroll event, Emitter<HomeState> emit) {
    emit(state.copyWith(isScrollingTop: event.isScrollingTop));
  }



  FutureOr<void> _getCategoryHandler(
      GetCategoryEvent event, Emitter<HomeState> emit) async {
    emit(state.copyWith(apiStatus: ApiStatus.loading));
    print("objectkhskfhsfk");
    final response = await categoryProductRepository.getCategoryRepository();
    response.fold(
      (error) {
        print('xatolarrrrrr');
        emit(
        state.copyWith(apiStatus: ApiStatus.failure,

        products: []
        ),
      );},
      (right)
        {
          final List<Categories> products = [];

          for(Categories product in right.categories!){
            if(product.products?.isNotEmpty??false){
              products.add(product);
            }
          }


          emit(
            state.copyWith(
              apiStatus: ApiStatus.success,
              categoryWithResponse: products,

            ),
          );

        }
    );
  }

  Future<void> _getBannerHandler(
      GetBannerEvent event, Emitter<HomeState> emit
      ) async {
    final result = await bannerRepository.getAllBanners();
    result.fold(
        (error) {
          emit(state.copyWith(
            apiStatus: ApiStatus.failure,
            error: error.toString(),
          ));
        },
          (right){
          emit(state.copyWith(bannerResponse: right, apiStatus: ApiStatus.success));
    }
    );
  }

   _getBannerIndex(BannerIndexEvent event, Emitter<HomeState> emit) {
    emit(state.copyWith(currentIndex: event.index));
   }
}
//HomeStatus.success
//categoryStatus: HomeStatus.error