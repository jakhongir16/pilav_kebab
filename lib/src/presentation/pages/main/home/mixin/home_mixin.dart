// part of 'package:ploff_kebab/src/presentation/pages/main/home/widgets/home_page_view.dart';

part of 'package:ploff_kebab/src/presentation/pages/main/home/home_page_view.dart';

mixin HomeMixinView on State<HomePageView> implements TickerProvider {
  late final ScrollController _scrollController;
  late final PageController _pageController;
  final HomeState state = const HomeState();

  late final ValueNotifier<int> _bannerListener = ValueNotifier<int>(1);
  late Timer _timer;
  TabController? controllerTab;
  late final ScrollController _controllerScroll = ScrollController();

  late AutoScrollController autoScrollController;
  late final HomeBloc bloc = context.read<HomeBloc>();
   bool isInit = false;

  @override
  void initState() {
    super.initState();
    autoScrollController = AutoScrollController();
    _scrollController = ScrollController();
    // controllerTab = TabController(length: state, vsync: vsync)
    listener(context: context, state: state, vsync: this);
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


  // void initcontroller(int len,vsync, HomeState state){
  //   controllerTab  = TabController(length: state.categoryWithResponse?.length ?? 0, vsync: vsync);
  //   isInit = true;
  //
  // }

  // void initController(){
  //  final bool ? innerBoxIsScrolled;
  // }

  void listener({required BuildContext context, required HomeState state,
    required TickerProvider vsync}) {

    if (state.isScrollingTop) {
      _scrollController.animateTo(
        0,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
      bloc.add(const HomeScroll(isScrollingTop: false));
    }
    controllerTab ??= TabController(length: state.categoryWithResponse?.length ?? 0, vsync: vsync);

  }

  // void initController(TickerProvider vsync){
  //   _tabController = TabController(length: , vsync: vsync);
  // }

  @override
  void dispose() {

    _timer.cancel();
    _scrollController.dispose();
    _pageController.dispose();
    _controllerScroll.dispose();
    super.dispose();
  }






}
