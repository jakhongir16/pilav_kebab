// import 'package:equatable/equatable.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:ploff_kebab/src/data/models/banner/banner_response.dart';
// import 'package:ploff_kebab/src/domain/repositories/banner/banner_repository.dart';
//
// part 'banner_event.dart';
//
// part 'banner_state.dart';
//
// class BannerBloc extends Bloc<BannerEvent, BannerState>{
//   BannerBloc(this.bannerRepository) : super(const BannerState()) {
//     on<GetBannerEvent>(_getBanners);
//     on<BannerIndex>(_alterIndex);
//   }
//
//   final BannerRepository bannerRepository;
//
//   Future<void> _getBanners(
//         GetBannerEvent event, Emitter<BannerState> emit
//       ) async {
//     emit(state.copyWith(status: BannerStatus.loading));
//     final result = await bannerRepository.getBanners();
//     result.fold(
//         (l) {
//           emit(state.copyWith(error: l.toString(), status: BannerStatus.error));
//         },
//         (r){
//           emit(
//             state.copyWith(status: BannerStatus.success, bannerList: r),
//           );
//         }
//     );
//   }
//
//   _alterIndex(BannerIndex event, Emitter<BannerState> emit) {
//     emit(state.copyWith(index: event.index));
//   }
// }