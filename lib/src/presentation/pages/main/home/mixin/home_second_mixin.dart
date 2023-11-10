//
//
// part of 'package:ploff_kebab/src/presentation/pages/main/home/widgets/home_page.dart';
//
// // mixin HomeSecondMixin on State<HomePage> {
//   late final ScrollController _scrollController;
//   late final HomeBloc bloc;
//   late final TabController _tabController;
//   //late final ScrollController _controllerScroll = ScrollController();
//   // final List<Category> data = ExampleData.data;
//   late AutoScrollController autoScrollController;
//   late final PageController _pageController;
//   late final ValueNotifier<int> _bannerListener = ValueNotifier<int>(999);
//   late Timer _timer;
//
//   @override
//   void initState() {
//     super.initState();
//     BlocProvider.of<HomeBloc>(context).add(const GetCategoryEvent());
//     _scrollController = ScrollController();
//     autoScrollController = AutoScrollController();
//     _pageController.animateToPage(
//       _bannerListener.value,
//       duration: const Duration(milliseconds: 300),
//       curve: Curves.easeInOut,
//     );
//   }
//
//   @override
//   void didChangeDependencies() {
//     super.didChangeDependencies();
//     _timer = Timer.periodic(
//       const Duration(seconds: 5),
//           (t) {
//         if(_pageController.hasClients) {
//           _bannerListener.value = _bannerListener.value + 1;
//           _pageController.animateToPage(
//             _bannerListener.value,
//             duration: const Duration(milliseconds: 300),
//             curve: Curves.easeInOut,
//           );
//         }
//       },
//     );
//     super.didChangeDependencies();
//     if (!mounted) return;
//     bloc = context.read<HomeBloc>();
//   }
//
//   void listener(BuildContext context, HomeState state) {
//     if (state.isScrollingTop) {
//       _scrollController.animateTo(
//         0,
//         duration: const Duration(milliseconds: 300),
//         curve: Curves.easeInOut,
//       );
//       bloc.add(const HomeScroll(isScrollingTop: false));
//     }
//   }
//
//
//
//
//
//
//   @override
//   void dispose() {
//     _pageController.dispose();
//     autoScrollController.dispose();
//     _tabController.dispose();
//     _scrollController.dispose();
//     super.dispose();
//   }
// }
