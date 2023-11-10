import 'dart:ui' as ui;

import 'package:flutter/material.dart';

//Add this CustomPaint widget to the Widget Tree
//   CustomPaint(
//     size: Size(104, 104),
//     painter: RPSCustomPainter(),
//    ),

//Copy this CustomPainter code to the Bottom of the File
class RPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(89.6622, 104);
    path_0.lineTo(14.2925, 104);
    path_0.cubicTo(10.7855, 104, 7.9425, 101.157, 7.9425, 97.65);
    path_0.lineTo(7.9425, 6.35004);
    path_0.cubicTo(7.9425, 2.84296, 10.7855, 0, 14.2925, 0);
    path_0.lineTo(89.6622, 0);
    path_0.cubicTo(93.1693, 0, 96.0123, 2.84296, 96.0123, 6.35004);
    path_0.lineTo(96.0123, 97.65);
    path_0.cubicTo(96.0123, 101.157, 93.1693, 104, 89.6622, 104);
    path_0.close();

    Paint paint0Fill = Paint()..style = PaintingStyle.fill;
    paint0Fill.shader = ui.Gradient.linear(Offset(size.width * 0.02481971, size.height * 0.02503644),
        Offset(size.width * 1.043385, size.height * 1.043596), [
      const Color(0xffFF6E3A).withOpacity(1),
      const Color(0xffFF6440).withOpacity(1),
      const Color(0xffFF4B52).withOpacity(1),
      const Color(0xffFF216E).withOpacity(1),
      const Color(0xffFF0084).withOpacity(1)
    ], [
      0,
      0.1596,
      0.4266,
      0.7662,
      1
    ]);
    canvas.drawPath(path_0, paint0Fill);

    Path path_1 = Path();
    path_1.moveTo(96.0122, 97.6499);
    path_1.lineTo(96.0122, 12.4572);
    path_1.lineTo(90.3342, 6.77924);
    path_1.cubicTo(89.2829, 5.53351, 87.7119, 4.74243, 85.9551, 4.74243);
    path_1.lineTo(17.9995, 4.74243);
    path_1.cubicTo(14.836, 4.74243, 12.2708, 7.30688, 12.2708, 10.4704);
    path_1.lineTo(12.2708, 93.5295);
    path_1.cubicTo(12.2708, 95.2862, 13.0626, 96.8572, 14.3076, 97.9086);
    path_1.lineTo(20.3997, 104);
    path_1.lineTo(89.6622, 104);
    path_1.cubicTo(93.1693, 104, 96.0122, 101.157, 96.0122, 97.6499);
    path_1.close();

    Paint paint1Fill = Paint()..style = PaintingStyle.fill;
    paint1Fill.shader = ui.Gradient.linear(Offset(size.width * 0.9169760, size.height * 0.9171933),
        Offset(size.width * 0.3211606, size.height * 0.3213779), [
      const Color(0xffFF0084).withOpacity(0),
      const Color(0xffFC0183).withOpacity(0.015686),
      const Color(0xffD00B72).withOpacity(0.239216),
      const Color(0xffAE1364).withOpacity(0.454902),
      const Color(0xff96195B).withOpacity(0.658824),
      const Color(0xff871D55).withOpacity(0.843137),
      const Color(0xff821E53).withOpacity(1)
    ], [
      0,
      0.0154,
      0.2383,
      0.454,
      0.6578,
      0.845,
      1
    ]);
    canvas.drawPath(path_1, paint1Fill);

    Path path_2 = Path();
    path_2.moveTo(7.9425, 81.7148);
    path_2.lineTo(7.9425, 97.6498);
    path_2.cubicTo(7.9425, 101.157, 10.7855, 104, 14.2925, 104);
    path_2.lineTo(89.6622, 104);
    path_2.cubicTo(93.1693, 104, 96.0123, 101.157, 96.0123, 97.6498);
    path_2.lineTo(96.0123, 81.7148);
    path_2.lineTo(7.9425, 81.7148);
    path_2.close();

    Paint paint2Fill = Paint()..style = PaintingStyle.fill;
    paint2Fill.shader = ui.Gradient.linear(Offset(size.width * 0.4997837, size.height * 0.9411760),
        Offset(size.width * 0.4997837, size.height * 1.041250), [
      const Color(0xffFF0084).withOpacity(0),
      const Color(0xffFC0183).withOpacity(0.015686),
      const Color(0xffD00B72).withOpacity(0.239216),
      const Color(0xffAE1364).withOpacity(0.454902),
      const Color(0xff96195B).withOpacity(0.658824),
      const Color(0xff871D55).withOpacity(0.843137),
      const Color(0xff821E53).withOpacity(1)
    ], [
      0,
      0.0154,
      0.2383,
      0.454,
      0.6578,
      0.845,
      1
    ]);
    canvas.drawPath(path_2, paint2Fill);

    Path path_3 = Path();
    path_3.moveTo(73.8185, 1.27747);
    path_3.cubicTo(73.156, 0.496704, 72.1682, 0, 71.0637, 0);
    path_3.lineTo(41.7534, 0);
    path_3.cubicTo(39.757, 0, 38.1392, 1.61865, 38.1392, 3.6142);
    path_3.lineTo(38.1392, 8.34399);
    path_3.cubicTo(38.1392, 9.44849, 38.6359, 10.4355, 39.4166, 11.0989);
    path_3.lineTo(60.3329, 32.0144);
    path_3.cubicTo(60.9955, 32.7952, 61.9833, 33.2919, 63.0878, 33.2919);
    path_3.lineTo(92.3981, 33.2919);
    path_3.cubicTo(94.3937, 33.2919, 96.0123, 31.674, 96.0123, 29.6777);
    path_3.lineTo(96.0123, 24.9487);
    path_3.cubicTo(96.0123, 23.8434, 95.5156, 22.8563, 94.7349, 22.1938);
    path_3.lineTo(73.8185, 1.27747);
    path_3.close();

    Paint paint3Fill = Paint()..style = PaintingStyle.fill;
    paint3Fill.shader = ui.Gradient.linear(Offset(size.width * 0.6978990, size.height * 0.2764163),
        Offset(size.width * 0.5616154, size.height * -2.312298), [
      const Color(0xffFF0084).withOpacity(0),
      const Color(0xffFC0183).withOpacity(0.015686),
      const Color(0xffD00B72).withOpacity(0.239216),
      const Color(0xffAE1364).withOpacity(0.454902),
      const Color(0xff96195B).withOpacity(0.658824),
      const Color(0xff871D55).withOpacity(0.843137),
      const Color(0xff821E53).withOpacity(1)
    ], [
      0,
      0.0154,
      0.2383,
      0.454,
      0.6578,
      0.845,
      1
    ]);
    canvas.drawPath(path_3, paint3Fill);

    Path path_4 = Path();
    path_4.moveTo(85.9551, 99.2574);
    path_4.lineTo(17.9995, 99.2574);
    path_4.cubicTo(14.836, 99.2574, 12.2708, 96.693, 12.2708, 93.5295);
    path_4.lineTo(12.2708, 10.4704);
    path_4.cubicTo(12.2708, 7.30688, 14.836, 4.74243, 17.9995, 4.74243);
    path_4.lineTo(85.9551, 4.74243);
    path_4.cubicTo(89.1187, 4.74243, 91.6839, 7.30688, 91.6839, 10.4704);
    path_4.lineTo(91.6839, 93.5295);
    path_4.cubicTo(91.6839, 96.693, 89.1187, 99.2574, 85.9551, 99.2574);
    path_4.close();

    Paint paint4Fill = Paint()..style = PaintingStyle.fill;
    paint4Fill.shader = ui.Gradient.linear(Offset(size.width * 0.2500106, size.height * 0.1245365),
        Offset(size.width * 0.9499192, size.height * 1.176654), [
      const Color(0xffFFFCF8).withOpacity(1),
      const Color(0xffFAF8F6).withOpacity(1),
      const Color(0xffECEEF2).withOpacity(1),
      const Color(0xffD5DCEA).withOpacity(1),
      const Color(0xffB5C4DF).withOpacity(1),
      const Color(0xffA1B5D8).withOpacity(1)
    ], [
      0,
      0.1875,
      0.4041,
      0.6353,
      0.875,
      1
    ]);
    canvas.drawPath(path_4, paint4Fill);

    Path path_5 = Path();
    path_5.moveTo(91.6839, 19.4674);
    path_5.lineTo(76.9581, 4.74243);
    path_5.lineTo(24.3218, 4.74243);
    path_5.lineTo(24.3218, 8.34393);
    path_5.cubicTo(24.3218, 9.72137, 25.0938, 10.9171, 26.2269, 11.5273);
    path_5.cubicTo(26.3173, 11.6947, 26.4205, 11.855, 26.5347, 12.0057);
    path_5.lineTo(26.5347, 12.4675);
    path_5.cubicTo(26.5347, 14.8582, 27.6884, 16.9847, 29.4681, 18.3185);
    path_5.lineTo(91.6831, 80.5342);
    path_5.lineTo(91.6831, 19.4674);
    path_5.lineTo(91.6839, 19.4674);
    path_5.close();

    Paint paint5Fill = Paint()..style = PaintingStyle.fill;
    paint5Fill.shader = ui.Gradient.linear(Offset(size.width * 0.6232567, size.height * 0.3527731),
        Offset(size.width * 0.3320952, size.height * -60.89433), [
      const Color(0xffA1B5D8).withOpacity(0),
      const Color(0xff9FB3D5).withOpacity(0.035294),
      const Color(0xff8898AF).withOpacity(0.45098),
      const Color(0xff798898).withOpacity(0.788235),
      const Color(0xff748290).withOpacity(1)
    ], [
      0,
      0.0343,
      0.4515,
      0.788,
      1
    ]);
    canvas.drawPath(path_5, paint5Fill);

    Path path_6 = Path();
    path_6.moveTo(17.9995, 99.2576);
    path_6.lineTo(85.9551, 99.2576);
    path_6.cubicTo(89.1187, 99.2576, 91.6839, 96.6932, 91.6839, 93.5297);
    path_6.lineTo(91.6839, 87.6073);
    path_6.lineTo(80.7834, 76.7076);
    path_6.cubicTo(79.7352, 75.5547, 78.2237, 74.8311, 76.5432, 74.8311);
    path_6.lineTo(12.2708, 74.8311);
    path_6.lineTo(12.2708, 93.5289);
    path_6.cubicTo(12.2708, 96.6932, 14.836, 99.2576, 17.9995, 99.2576);
    path_6.close();

    Paint paint6Fill = Paint()..style = PaintingStyle.fill;
    paint6Fill.shader = ui.Gradient.linear(Offset(size.width * 0.7079452, size.height * 1.090375),
        Offset(size.width * 0.4619740, size.height * 0.8444048), [
      const Color(0xffA1B5D8).withOpacity(0),
      const Color(0xff9FB3D5).withOpacity(0.035294),
      const Color(0xff8898AF).withOpacity(0.45098),
      const Color(0xff798898).withOpacity(0.788235),
      const Color(0xff748290).withOpacity(1)
    ], [
      0,
      0.0343,
      0.4515,
      0.788,
      1
    ]);
    canvas.drawPath(path_6, paint6Fill);

    Path path_7 = Path();
    path_7.moveTo(76.544, 74.8311);
    path_7.lineTo(13.6506, 74.8311);
    path_7.cubicTo(10.4863, 74.8311, 7.92188, 77.3955, 7.92188, 80.5598);
    path_7.lineTo(7.92188, 88.1111);
    path_7.cubicTo(7.92188, 94.2668, 12.9127, 99.2576, 19.0692, 99.2576);
    path_7.lineTo(86.5249, 99.2576);
    path_7.cubicTo(84.1763, 99.2576, 82.272, 97.3533, 82.272, 95.0047);
    path_7.lineTo(82.272, 80.5598);
    path_7.cubicTo(82.272, 77.3955, 79.7075, 74.8311, 76.544, 74.8311);
    path_7.close();

    Paint paint7Fill = Paint()..style = PaintingStyle.fill;
    paint7Fill.shader = ui.Gradient.linear(Offset(size.width * 0.4540731, size.height * 0.8432135),
        Offset(size.width * 0.4540731, size.height * 1.005135), [
      const Color(0xffFFFCF8).withOpacity(1),
      const Color(0xffFAF8F6).withOpacity(1),
      const Color(0xffECEEF2).withOpacity(1),
      const Color(0xffD5DCEA).withOpacity(1),
      const Color(0xffB5C4DF).withOpacity(1),
      const Color(0xffA1B5D8).withOpacity(1)
    ], [
      0,
      0.1875,
      0.4041,
      0.6353,
      0.875,
      1
    ]);
    canvas.drawPath(path_7, paint7Fill);

    Path path_8 = Path();
    path_8.moveTo(65.0278, 19.7777);
    path_8.lineTo(33.8449, 19.7777);
    path_8.cubicTo(29.8141, 19.7777, 26.5348, 16.4984, 26.5348, 12.4676);
    path_8.lineTo(26.5348, 9.25806);
    path_8.lineTo(29.857, 9.25806);
    path_8.lineTo(29.857, 12.4676);
    path_8.cubicTo(29.857, 14.6663, 31.6454, 16.4555, 33.8449, 16.4555);
    path_8.lineTo(65.0278, 16.4555);
    path_8.cubicTo(67.2264, 16.4555, 69.0149, 14.6671, 69.0149, 12.4676);
    path_8.lineTo(69.0149, 9.25806);
    path_8.lineTo(72.3371, 9.25806);
    path_8.lineTo(72.3371, 12.4676);
    path_8.cubicTo(72.3371, 16.4984, 69.0577, 19.7777, 65.0278, 19.7777);
    path_8.close();

    Paint paint8Fill = Paint()..style = PaintingStyle.fill;
    paint8Fill.shader = ui.Gradient.linear(Offset(size.width * 0.4753462, size.height * 0.1603558),
        Offset(size.width * 0.4753462, size.height * 0.2018933), [
      const Color(0xffFFD459).withOpacity(1),
      const Color(0xffFFD355).withOpacity(1),
      const Color(0xffFFCF4A).withOpacity(1),
      const Color(0xffFFC838).withOpacity(1),
      const Color(0xffFFBF1F).withOpacity(1),
      const Color(0xffFFB400).withOpacity(1)
    ], [
      0,
      0.2296,
      0.4362,
      0.634,
      0.825,
      1
    ]);
    canvas.drawPath(path_8, paint8Fill);

    Path path_9 = Path();
    path_9.moveTo(70.9358, 11.9582);
    path_9.lineTo(27.936, 11.9582);
    path_9.cubicTo(25.9396, 11.9582, 24.3218, 10.3403, 24.3218, 8.34399);
    path_9.lineTo(24.3218, 3.6142);
    path_9.cubicTo(24.3218, 1.61865, 25.9396, 0, 27.936, 0);
    path_9.lineTo(70.9366, 0);
    path_9.cubicTo(72.9321, 0, 74.5508, 1.61865, 74.5508, 3.6142);
    path_9.lineTo(74.5508, 8.34399);
    path_9.cubicTo(74.5508, 10.3403, 72.9321, 11.9582, 70.9358, 11.9582);
    path_9.close();

    Paint paint9Fill = Paint()..style = PaintingStyle.fill;
    paint9Fill.shader = ui.Gradient.linear(Offset(size.width * 0.4753462, size.height * 0.02833058),
        Offset(size.width * 0.4753462, size.height * 0.1347548), [
      const Color(0xff3B395F).withOpacity(1),
      const Color(0xff1B1F3A).withOpacity(1),
      const Color(0xff131830).withOpacity(1)
    ], [
      0,
      0.8022,
      1
    ]);
    canvas.drawPath(path_9, paint9Fill);

    Path path_10 = Path();
    path_10.moveTo(51.9675, 72.1751);
    path_10.cubicTo(38.5842, 72.1751, 27.6964, 61.2873, 27.6964, 47.9048);
    path_10.cubicTo(27.6964, 34.5216, 38.5842, 23.6338, 51.9675, 23.6338);
    path_10.cubicTo(65.3499, 23.6338, 76.2377, 34.5216, 76.2377, 47.9048);
    path_10.cubicTo(76.2377, 61.2873, 65.3499, 72.1751, 51.9675, 72.1751);
    path_10.close();
    path_10.moveTo(51.9675, 28.7318);
    path_10.cubicTo(41.3954, 28.7318, 32.7944, 37.3328, 32.7944, 47.9048);
    path_10.cubicTo(32.7944, 58.4761, 41.3954, 67.0771, 51.9675, 67.0771);
    path_10.cubicTo(62.5387, 67.0771, 71.1398, 58.4761, 71.1398, 47.9048);
    path_10.cubicTo(71.1398, 37.3328, 62.5387, 28.7318, 51.9675, 28.7318);
    path_10.close();

    Paint paint10Fill = Paint()..style = PaintingStyle.fill;
    paint10Fill.shader = ui.Gradient.linear(Offset(size.width * 0.3347423, size.height * 0.2956798),
        Offset(size.width * 0.6646260, size.height * 0.6255625), [
      const Color(0xff3B395F).withOpacity(1),
      const Color(0xff1B1F3A).withOpacity(1),
      const Color(0xff131830).withOpacity(1)
    ], [
      0,
      0.8022,
      1
    ]);
    canvas.drawPath(path_10, paint10Fill);

    Path path_11 = Path();
    path_11.moveTo(66.0378, 50.4535);
    path_11.lineTo(51.9675, 50.4535);
    path_11.cubicTo(50.5591, 50.4535, 49.4181, 49.3125, 49.4181, 47.9049);
    path_11.lineTo(49.4181, 33.8337);
    path_11.cubicTo(49.4181, 32.4261, 50.5591, 31.2852, 51.9675, 31.2852);
    path_11.cubicTo(53.3751, 31.2852, 54.5161, 32.4261, 54.5161, 33.8337);
    path_11.lineTo(54.5161, 45.3555);
    path_11.lineTo(66.0378, 45.3555);
    path_11.cubicTo(67.4454, 45.3555, 68.5864, 46.4965, 68.5864, 47.9049);
    path_11.cubicTo(68.5864, 49.3125, 67.4454, 50.4535, 66.0378, 50.4535);
    path_11.close();

    Paint paint11Fill = Paint()..style = PaintingStyle.fill;
    paint11Fill.shader = ui.Gradient.linear(Offset(size.width * 0.4485288, size.height * 0.3418202),
        Offset(size.width * 0.6184856, size.height * 0.5117769), [
      const Color(0xff3B395F).withOpacity(1),
      const Color(0xff1B1F3A).withOpacity(1),
      const Color(0xff131830).withOpacity(1)
    ], [
      0,
      0.8022,
      1
    ]);
    canvas.drawPath(path_11, paint11Fill);

    Path path_12 = Path();
    path_12.moveTo(54.5272, 45.5284);
    path_12.cubicTo(53.8893, 44.8405, 52.98, 44.4072, 51.9675, 44.4072);
    path_12.cubicTo(50.0355, 44.4072, 48.47, 45.9735, 48.47, 47.9048);
    path_12.cubicTo(48.47, 48.9172, 48.9032, 49.8265, 49.5911, 50.4653);
    path_12.lineTo(58.8182, 59.6916);
    path_12.cubicTo(59.457, 60.3795, 60.3663, 60.8127, 61.3787, 60.8127);
    path_12.cubicTo(63.31, 60.8127, 64.8755, 59.2473, 64.8755, 57.316);
    path_12.cubicTo(64.8755, 56.3035, 64.4423, 55.3942, 63.7543, 54.7555);
    path_12.lineTo(54.5272, 45.5284);
    path_12.close();

    Paint paint12Fill = Paint()..style = PaintingStyle.fill;
    paint12Fill.shader = ui.Gradient.linear(
        Offset(size.width * 0.5607058, size.height * 0.5216413),
        Offset(size.width * 0.4370750, size.height * 0.3980106),
        [const Color(0xffA1B5D8).withOpacity(0), const Color(0xff748290).withOpacity(1)],
        [0, 1]);
    canvas.drawPath(path_12, paint12Fill);

    Path path_13 = Path();
    path_13.moveTo(55.4643, 47.9048);
    path_13.cubicTo(55.4643, 49.8361, 53.8988, 51.4016, 51.9675, 51.4016);
    path_13.cubicTo(50.0363, 51.4016, 48.47, 49.8361, 48.47, 47.9048);
    path_13.cubicTo(48.47, 45.9735, 50.0363, 44.4072, 51.9675, 44.4072);
    path_13.cubicTo(53.8988, 44.4072, 55.4643, 45.9735, 55.4643, 47.9048);
    path_13.close();

    Paint paint13Fill = Paint()..style = PaintingStyle.fill;
    paint13Fill.shader = ui.Gradient.linear(Offset(size.width * 0.4701904, size.height * 0.4256654),
        Offset(size.width * 0.5150231, size.height * 0.4787990), [
      const Color(0xff8BE1E2).withOpacity(1),
      const Color(0xff87E1E1).withOpacity(1),
      const Color(0xff7CE2DD).withOpacity(1),
      const Color(0xff6AE2D7).withOpacity(1),
      const Color(0xff50E4CE).withOpacity(1),
      const Color(0xff2FE5C2).withOpacity(1),
      const Color(0xff07E7B4).withOpacity(1),
      const Color(0xff00E7B2).withOpacity(1)
    ], [
      0,
      0.1873,
      0.3558,
      0.5172,
      0.6741,
      0.8278,
      0.9772,
      1
    ]);
    canvas.drawPath(path_13, paint13Fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
