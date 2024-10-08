part of 'utils.dart';

sealed class AppUtils {
  AppUtils._();

  static const kSpacer = Spacer();

  static const kGap = Gap(0);
  static const kGap4 = Gap(4);
  static const kGap6 = Gap(6);
  static const kGap8 = Gap(8);
  static const kGap12 = Gap(12);
  static const kGap16 = Gap(16);
  static const kGap20 = Gap(20);
  static const kGap23 = Gap(23);
  static const kGap24 = Gap(24);
  static const kGap32 = Gap(32);
  static const kGap40 = Gap(40);
  static const kGap44 = Gap(44);
  static const kGap52 = Gap(52);
  static const kGap67 = Gap(67);

  /// SLIVER GAP LIST
  // static const kSliverGap = Gap(0);
   static const kSliverGap4 = SliverGap(4);
   static const kSliverGap6 = SliverGap(6);
   static const kSliverGap8 = SliverGap(8);
  static const kSliverGap12 = SliverGap(12);
  static const kSliverGap14 = SliverGap(14);
  static const kSliverGap16 = SliverGap(16);
  static const kSliverGap18 = SliverGap(18);
  static const kSliverGap20 = SliverGap(20);
  static const kSliverGap24 = SliverGap(24.5);
  static const kSliverGap25 = SliverGap(25);
  static const kSliverGap26 = SliverGap(26);
  static const kSliverGap28 = SliverGap(28);
  static const kSliverGap32 = SliverGap(32);

  static const kSliverGap40 = SliverGap(40);
  static const kSliverGap44 = SliverGap(44);
  static const kSliverGap52 = SliverGap(52);




  /// divider
  static const kDivider = Divider(height: 1, color: Color(0xFFF5F5F5),
  thickness: 2,
  );
  static const kDivider2 = Divider(height: 12, color: Color(0xFFF5F5F5), thickness: 12,);
  static const kDivider3 = Divider(height: 1, color:Color(0xFFF5F5F5), thickness: 2,  );
  static const kDivider4 = Divider(height: 1, thickness: 1.5,);


  /// padding
  static const kPadding0 = EdgeInsets.zero;
  static const kPaddingAll4 = EdgeInsets.all(4);
  static const kPaddingAll6 = EdgeInsets.all(6);
  static const kPaddingAll8 = EdgeInsets.all(8);
  static const kPaddingAll10 = EdgeInsets.all(10);
  static const kPaddingAll12 = EdgeInsets.all(12);
  static const kPaddingAll16 = EdgeInsets.all(16);
  static const kPaddingAll18 = EdgeInsets.all(18);
  static const kPaddingAll24 = EdgeInsets.all(24);
  static const kPaddingHorizontal12 = EdgeInsets.symmetric(horizontal: 12);
  static const kPaddingVer10Hor16 = EdgeInsets.symmetric(horizontal: 16, vertical: 10);
  static const kPaddingHorizontal16 = EdgeInsets.symmetric(horizontal: 16);
  static const kPaddingHor32Ver20 =
      EdgeInsets.symmetric(horizontal: 32, vertical: 20);
 static const kPaddingOnly16 = EdgeInsets.only(left: 16, right: 16,);
  static const kPaddinTop16Left16 = EdgeInsets.fromLTRB(16, 16, 0, 0);
  static const kPaddingBanner = EdgeInsets.only(top: 16, bottom: 8);
  static const kLabelPadding = EdgeInsets.only(left: 8);
  static const kPaddingHorizontal24Vertical16 = EdgeInsets.symmetric(horizontal: 24, vertical: 16);
  static const kPaddingVertical8 = EdgeInsets.symmetric(vertical: 8);
  static const kPaddingBottom16 = EdgeInsets.fromLTRB(0, 0, 0, 16);
  static const kPaddingBottom2 = EdgeInsets.fromLTRB(0, 0, 0, 2);
  static const kPaddingBottom12 = EdgeInsets.fromLTRB(12, 12, 12, 12);
  static const kPaddingHor16Ver24 =
  EdgeInsets.symmetric(horizontal: 16, vertical: 24);
  static const kPaddingHor14Ver16 =
      EdgeInsets.symmetric(horizontal: 14, vertical: 16);
  static const kPaddingHor16Ver12 =
      EdgeInsets.symmetric(horizontal: 16, vertical: 12);
  static const kPaddingVer16 = EdgeInsets.symmetric(vertical: 16);
  static const kPaddingHorizontal4 = EdgeInsets.symmetric(horizontal: 4);
  static const kPaddingAllB16 = EdgeInsets.fromLTRB(16, 16, 16, 0);
  static const kPaddingAllT16 = EdgeInsets.fromLTRB(16, 0, 16, 16);
  static const kPaddingL16T8R16B16 = EdgeInsets.fromLTRB(16, 8, 16, 16);
  static const kPaddingL16T4R16B16 = EdgeInsets.fromLTRB(16, 4, 16, 16);
  static const kPaddingL16T8R16B12 = EdgeInsets.fromLTRB(16, 8, 16, 12);
  static const kPaddingL16T4R16B12 = EdgeInsets.fromLTRB(16, 4, 16, 12);
  static const kPaddingL16T2R16B16 = EdgeInsets.fromLTRB(16, 2, 16, 16);
  static const kPaddingT0L16R16B12 = EdgeInsets.fromLTRB(16, 0, 16, 12);
  static EdgeInsets paddingV10H16 = const EdgeInsets.symmetric(horizontal: 16, vertical: 10);
  static const kPaddingL16R16T16B0 = EdgeInsets.only(top: 16, left: 16, right: 16, bottom: 0);
  static const kPaddingL16R16T0B16 = EdgeInsets.only(left: 16, top: 0, right: 16, bottom: 16);
  /// border radius
  static const kRadius = Radius.zero;
  static const kBorderRadius2 = BorderRadius.all(Radius.circular(2));
  static const kBorderRadius4 = BorderRadius.all(Radius.circular(4));
  static const kBorderRadius6 = BorderRadius.all(Radius.circular(6));
  static const kBorderRadius8 = BorderRadius.all(Radius.circular(8));
  static const kBorderRadius10 = BorderRadius.all(Radius.circular(10));
  static const kBorderRadius12 = BorderRadius.all(Radius.circular(12));
  static const kBorderRadius16 = BorderRadius.all(Radius.circular(16));
  static const kBorderRadius24 = BorderRadius.all(Radius.circular(24));
  static const kBorderRadius32 = BorderRadius.all(Radius.circular(32));
  static const kBorderRadius55 = BorderRadius.all(Radius.circular(55));
  static const kBorderRadius1212 = BorderRadius.only(topRight: Radius.circular(12), topLeft: Radius.circular(12), bottomLeft: Radius.circular(12), bottomRight: Radius.circular(12));

  static const kShapeRoundedNone = RoundedRectangleBorder();
  static const kShapeRoundedAll12 = RoundedRectangleBorder(
    borderRadius: BorderRadius.all(
      Radius.circular(12),
    ),
  );
  static const kShapeRoundedAll10 = RoundedRectangleBorder(
    borderRadius: BorderRadius.all(
      Radius.circular(10),
    ),
  );
  static const kShapeRoundedBottom12 = RoundedRectangleBorder(
    borderRadius: BorderRadius.only(
      bottomRight: Radius.circular(12),
      bottomLeft: Radius.circular(12),
    ),
  );
}
