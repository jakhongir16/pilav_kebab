// part of 'package:ploff_kebab/src/presentation/pages/main/home/widgets/home_page_view.dart';

part of 'package:ploff_kebab/src/presentation/pages/main/home/home_page_view.dart';

mixin HomeMixinView on State<HomePageView> {
  late final ScrollController _scrollController;
  late final PageController _pageController;
  late final bool innerBoxIsScrolled;
  // late final ValueChanged<int> onTap;
  late final ValueNotifier<int> _bannerListener = ValueNotifier<int>(1);
  late Timer _timer;
  late final TabController _tabController;
  late final ScrollController _controllerScroll = ScrollController();
 // final List<Category> data = ExampleData.data;
  late AutoScrollController autoScrollController;
  late final HomeBloc bloc = context.read<HomeBloc>();
   bool isInit = false;

  @override
  void initState() {
    super.initState();
    autoScrollController = AutoScrollController();
    _scrollController = ScrollController();
    _pageController = PageController(
      initialPage: 999,
      keepPage: false,
    );
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _timer = Timer.periodic(
      const Duration(seconds: 5),
          (t) {
        if(_pageController.hasClients) {
          _bannerListener.value = _bannerListener.value + 1;
          _pageController.animateToPage(
            _bannerListener.value,
            duration: const Duration(milliseconds: 300),
            curve: Curves.easeInOut,
          );
        }
      },
    );
  }


  // void initcontroller(int len,vsync){
  //   _tabController  = TabController(length: len, vsync: vsync);
  //   isInit = true;
  //
  // }
  void listener({required BuildContext context, required HomeState state, required TickerProvider vsync}) {

    if (state.isScrollingTop) {
      _scrollController.animateTo(
        0,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );

    }
  }

  void initController(TickerProvider vsync){
    _tabController = TabController(length: 10, vsync: vsync);
  }

  @override
  void dispose() {

    _timer.cancel();
    _scrollController.dispose();
    _pageController.dispose();
    _controllerScroll.dispose();
    super.dispose();
  }






}
