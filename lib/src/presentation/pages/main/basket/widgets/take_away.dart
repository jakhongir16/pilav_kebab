import 'dart:ui' as ui;
import 'dart:ui';

import 'package:flutter/material.dart';

// Add this CustomPaint widget to the Widget Tree
// CustomPaint(
// size: Size(104, 104),
// painter: RPSCustomPainter(),
// )

//Copy this CustomPainter code to the Bottom of the File
class RPSCustomPainter extends CustomPainter {
@override
void paint(Canvas canvas, Size size) {

Path path_0 = Path();
path_0.moveTo(100.844,51.7271);
path_0.lineTo(84.5801,27.0315);
path_0.lineTo(19.5143,27.0315);
path_0.lineTo(3.25,51.7271);
path_0.lineTo(3.25,99.5884);
path_0.cubicTo(3.25,102.025,5.22491,104,7.66162,104);
path_0.lineTo(96.4328,104);
path_0.cubicTo(98.8695,104,100.844,102.025,100.844,99.5884);
path_0.lineTo(100.844,51.7271);
path_0.close();

Paint paint_0_fill = Paint()..style=PaintingStyle.fill;
paint_0_fill.shader = ui.Gradient.linear(Offset(size.width*0.2891038,size.height*0.4484202), Offset(size.width*1.156558,size.height*1.541077), [Color(0xffFFD459).withOpacity(1),Color(0xffFFD355).withOpacity(1),Color(0xffFFCF4A).withOpacity(1),Color(0xffFFC838).withOpacity(1),Color(0xffFFBF1F).withOpacity(1),Color(0xffFFB400).withOpacity(1)], [0,0.2296,0.4362,0.634,0.825,1]);
canvas.drawPath(path_0,paint_0_fill);

Path path_1 = Path();
path_1.moveTo(84.5801,27.0315);
path_1.lineTo(73.2956,27.0315);
path_1.lineTo(89.5591,51.7271);
path_1.lineTo(89.5591,99.5884);
path_1.cubicTo(89.5591,102.025,87.5842,104,85.1483,104);
path_1.lineTo(96.4336,104);
path_1.cubicTo(98.8695,104,100.844,102.025,100.844,99.5884);
path_1.lineTo(100.844,51.7271);
path_1.lineTo(84.5801,27.0315);
path_1.close();

Paint paint_1_fill = Paint()..style=PaintingStyle.fill;
paint_1_fill.shader = ui.Gradient.linear(Offset(size.width*0.8372106,size.height*0.1951038), Offset(size.width*0.8372106,size.height*2.510990), [Color(0xffE58200).withOpacity(0),Color(0xffE27F04).withOpacity(0.039216),Color(0xffC15D2F).withOpacity(0.466667),Color(0xffAD4949).withOpacity(0.8),Color(0xffA64153).withOpacity(1)], [0,0.0396,0.4671,0.8016,1]);
canvas.drawPath(path_1,paint_1_fill);

Path path_2 = Path();
path_2.moveTo(84.5801,27.0315);
path_2.lineTo(19.5143,27.0315);
path_2.lineTo(3.25,51.7271);
path_2.lineTo(100.844,51.7271);
path_2.lineTo(84.5801,27.0315);
path_2.close();

Paint paint_2_fill = Paint()..style=PaintingStyle.fill;
paint_2_fill.shader = ui.Gradient.linear(Offset(size.width*0.3681894,size.height*0.3252615), Offset(size.width*1.571990,size.height*1.513808), [Color(0xffE58200).withOpacity(0),Color(0xffE27F04).withOpacity(0.039216),Color(0xffC15D2F).withOpacity(0.466667),Color(0xffAD4949).withOpacity(0.8),Color(0xffA64153).withOpacity(1)], [0,0.0396,0.4671,0.8016,1]);
canvas.drawPath(path_2,paint_2_fill);

Path path_3 = Path();
path_3.moveTo(75.0587,0);
path_3.lineTo(29.0358,0);
path_3.cubicTo(23.7775,0,19.5143,4.26404,19.5143,9.52228);
path_3.lineTo(19.5143,27.0315);
path_3.lineTo(84.5801,27.0315);
path_3.lineTo(84.5801,9.52228);
path_3.cubicTo(84.5801,4.26404,80.3169,0,75.0587,0);
path_3.close();
path_3.moveTo(63.7693,12.6485);
path_3.cubicTo(63.0029,13.4126,61.9444,13.8863,60.7756,13.8863);
path_3.lineTo(33.1356,13.8863);
path_3.cubicTo(30.7972,13.8863,28.9041,11.9923,28.9041,9.65399);
path_3.cubicTo(28.9041,8.48523,29.377,7.42676,30.1418,6.65948);
path_3.cubicTo(30.9083,5.89539,31.9668,5.42169,33.1356,5.42169);
path_3.lineTo(60.7756,5.42169);
path_3.cubicTo(63.114,5.42169,65.0079,7.31567,65.0079,9.65399);
path_3.cubicTo(65.0079,10.8228,64.5342,11.8812,63.7693,12.6485);
path_3.close();

Paint paint_3_fill = Paint()..style=PaintingStyle.fill;
paint_3_fill.shader = ui.Gradient.linear(Offset(size.width*0.2577471,size.height*-8.592904), Offset(size.width*0.6748058,size.height*0.3311298), [Color(0xffFFD459).withOpacity(1),Color(0xffFFD355).withOpacity(1),Color(0xffFFCF4A).withOpacity(1),Color(0xffFFC838).withOpacity(1),Color(0xffFFBF1F).withOpacity(1),Color(0xffFFB400).withOpacity(1)], [0,0.2296,0.4362,0.634,0.825,1]);
canvas.drawPath(path_3,paint_3_fill);

Path path_4 = Path();
path_4.moveTo(75.0587,0);
path_4.lineTo(64.3462,0);
path_4.cubicTo(69.6052,0,73.8685,4.26324,73.8685,9.52228);
path_4.lineTo(73.8685,27.0315);
path_4.lineTo(84.5801,27.0315);
path_4.lineTo(84.5801,9.52228);
path_4.cubicTo(84.5801,4.26324,80.3169,0,75.0587,0);
path_4.close();

Paint paint_4_fill = Paint()..style=PaintingStyle.fill;
paint_4_fill.shader = ui.Gradient.linear(Offset(size.width*0.7159942,size.height*0.1691260), Offset(size.width*0.7159942,size.height*0.5468058), [Color(0xffE58200).withOpacity(0),Color(0xffE27F04).withOpacity(0.039216),Color(0xffC15D2F).withOpacity(0.466667),Color(0xffAD4949).withOpacity(0.8),Color(0xffA64153).withOpacity(1)], [0,0.0396,0.4671,0.8016,1]);
canvas.drawPath(path_4,paint_4_fill);

Path path_5 = Path();
path_5.moveTo(3.25,83.5812);
path_5.lineTo(3.25,99.5884);
path_5.cubicTo(3.25,102.025,5.22491,104,7.66162,104);
path_5.lineTo(96.4328,104);
path_5.cubicTo(98.8695,104,100.844,102.025,100.844,99.5884);
path_5.lineTo(100.844,83.5812);
path_5.lineTo(3.25,83.5812);
path_5.close();

Paint paint_5_fill = Paint()..style=PaintingStyle.fill;
paint_5_fill.shader = ui.Gradient.linear(Offset(size.width*0.5004538,size.height*0.9443913), Offset(size.width*0.5004538,size.height*1.193683), [Color(0xffE58200).withOpacity(0),Color(0xffE27F04).withOpacity(0.039216),Color(0xffC15D2F).withOpacity(0.466667),Color(0xffAD4949).withOpacity(0.8),Color(0xffA64153).withOpacity(1)], [0,0.0396,0.4671,0.8016,1]);
canvas.drawPath(path_5,paint_5_fill);

Path path_6 = Path();
path_6.moveTo(40.0743,68.0984);
path_6.lineTo(75.9751,104);
path_6.lineTo(91.7427,104);
path_6.cubicTo(94.1794,104,96.1543,102.025,96.1543,99.5884);
path_6.lineTo(96.1543,67.1884);
path_6.lineTo(55.9974,27.0315);
path_6.lineTo(38.7167,27.0315);
path_6.lineTo(38.7167,66.018);
path_6.cubicTo(38.7167,66.9479,39.2753,67.7462,40.0743,68.0984);
path_6.close();

Paint paint_6_fill = Paint()..style=PaintingStyle.fill;
paint_6_fill.shader = ui.Gradient.linear(Offset(size.width*0.6386587,size.height*0.6313663), Offset(size.width*-47.01962,size.height*0.2575087), [Color(0xffE58200).withOpacity(0),Color(0xffE27F04).withOpacity(0.039216),Color(0xffC15D2F).withOpacity(0.466667),Color(0xffAD4949).withOpacity(0.8),Color(0xffA64153).withOpacity(1)], [0,0.0396,0.4671,0.8016,1]);
canvas.drawPath(path_6,paint_6_fill);

Path path_7 = Path();
path_7.moveTo(53.7226,68.2928);
path_7.lineTo(40.9916,68.2928);
path_7.cubicTo(39.7355,68.2928,38.7167,67.2748,38.7167,66.018);
path_7.lineTo(38.7167,27.0315);
path_7.lineTo(55.9974,27.0315);
path_7.lineTo(55.9974,66.018);
path_7.cubicTo(55.9974,67.2748,54.9786,68.2928,53.7226,68.2928);
path_7.close();

Paint paint_7_fill = Paint()..style=PaintingStyle.fill;
paint_7_fill.shader = ui.Gradient.linear(Offset(size.width*0.3774817,size.height*0.3641577), Offset(size.width*0.7720731,size.height*0.8068288), [Color(0xffFF6E3A).withOpacity(1),Color(0xffFF6440).withOpacity(1),Color(0xffFF4B52).withOpacity(1),Color(0xffFF216E).withOpacity(1),Color(0xffFF0084).withOpacity(1)], [0,0.1596,0.4266,0.7662,1]);
canvas.drawPath(path_7,paint_7_fill);

Path path_8 = Path();
path_8.moveTo(10.0634,71.3127);
path_8.lineTo(33.3442,71.3127);
path_8.lineTo(33.3442,75.3403);
path_8.lineTo(10.0634,75.3403);
path_8.lineTo(10.0634,71.3127);
path_8.close();

Paint paint_8_fill = Paint()..style=PaintingStyle.fill;
paint_8_fill.shader = ui.Gradient.linear(Offset(size.width*0.09676250,size.height*0.7050606), Offset(size.width*0.3206221,size.height*0.7050606), [Color(0xff45425A).withOpacity(1),Color(0xff2D3251).withOpacity(1)], [0,1]);
canvas.drawPath(path_8,paint_8_fill);

Path path_9 = Path();
path_9.moveTo(10.0634,81.2651);
path_9.lineTo(33.3442,81.2651);
path_9.lineTo(33.3442,85.2927);
path_9.lineTo(10.0634,85.2927);
path_9.lineTo(10.0634,81.2651);
path_9.close();

Paint paint_9_fill = Paint()..style=PaintingStyle.fill;
paint_9_fill.shader = ui.Gradient.linear(Offset(size.width*0.09676250,size.height*0.8007587), Offset(size.width*0.3206221,size.height*0.8007587), [Color(0xff45425A).withOpacity(1),Color(0xff2D3251).withOpacity(1)], [0,1]);
canvas.drawPath(path_9,paint_9_fill);

Path path_10 = Path();
path_10.moveTo(10.0634,91.2174);
path_10.lineTo(28.6017,91.2174);
path_10.lineTo(28.6017,95.245);
path_10.lineTo(10.0634,95.245);
path_10.lineTo(10.0634,91.2174);
path_10.close();

Paint paint_10_fill = Paint()..style=PaintingStyle.fill;
paint_10_fill.shader = ui.Gradient.linear(Offset(size.width*0.09676250,size.height*0.8964567), Offset(size.width*0.2750212,size.height*0.8964567), [Color(0xff45425A).withOpacity(1),Color(0xff2D3251).withOpacity(1)], [0,1]);
canvas.drawPath(path_10,paint_10_fill);

}

@override
bool shouldRepaint(covariant CustomPainter oldDelegate) {
return true;
}
}