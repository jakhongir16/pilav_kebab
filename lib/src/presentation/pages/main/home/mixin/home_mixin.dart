part of 'package:ploff_kebab/src/presentation/pages/main/home/home_page.dart';

mixin HomeMixin on State<HomePage> {
  late final ScrollController _scrollController;
  late final PageController _pageController;
  late final HomeBloc bloc = context.read<HomeBloc>();
  late final bool innerBoxIsScrolled;

  late final ValueNotifier<int> _bannerListener = ValueNotifier<int>(999);
  late Timer _timer;
  late final TabController _tabController;
  late final ScrollController _controllerScroll = ScrollController();

  @override
  void initState() {
    super.initState();
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
        _bannerListener.value = _bannerListener.value + 1;
        _pageController.animateToPage(
          _bannerListener.value,
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeInOut,
        );
      },
    );
  }

  void listener(BuildContext context, HomeState state) {
    if (state.isScrollingTop) {
      _scrollController.animateTo(
        0,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
      bloc.add(const HomeScroll(isScrollingTop: false));
    }
  }

  void initController(TickerProvider vsync){
    _tabController = TabController(length: 4, vsync: vsync);
  }

  @override
  void dispose() {
    _tabController.dispose();
    _timer.cancel();
    _scrollController.dispose();
    _pageController.dispose();
    _controllerScroll.dispose();
    super.dispose();
  }






}
