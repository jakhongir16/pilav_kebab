import 'package:flutter/material.dart';

class BouncingWidget extends StatefulWidget {
  final Widget child;
  final VoidCallback onPressed;
  final double scaleFactor;
  final Duration duration;
  final bool stayOnBottom;
  const BouncingWidget({
    Key? key,
    required this.child,
    required this.onPressed,
    this.scaleFactor = 1,
    this.duration = const Duration(milliseconds: 200),
    this.stayOnBottom = false,
  }) : super(key: key);

  @override
  State<BouncingWidget> createState() => _BouncingWidgetState();
}

class _BouncingWidgetState extends State<BouncingWidget> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late double _scale;
  final GlobalKey _keyChild = GlobalKey();
  bool _isOutSide = false;
  Widget get child => widget.child;
  VoidCallback get onPressed => widget.onPressed;
  double get scaleFactor => widget.scaleFactor;
  Duration get duration => widget.duration;
  bool get _stayOnBottom => widget.stayOnBottom;

  @override
  void initState() {
    _controller = AnimationController(
        vsync: this,
        duration: duration,
        upperBound: 0.1,
    )..addListener(() {
       setState(() {});
    });
    super.initState();
  }
  @override
  void didUpdateWidget(BouncingWidget oldWidget){
    if(oldWidget.stayOnBottom != _stayOnBottom){
      if(!_stayOnBottom){
        _reverseAnimation();
      }
    }
    super.didUpdateWidget(oldWidget);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    _scale = 1 - (_controller.value * scaleFactor);
    return GestureDetector(
      onTapDown: _onTapDown,
      onTapUp: _onTapUp,
      onLongPressEnd: (details) => _onLongPressEnd(details, context),
      onHorizontalDragEnd: _onDragEnd,
      onVerticalDragEnd: _onDragEnd,
      onHorizontalDragUpdate: (details) => _onDragUpdate(details, context),
      onVerticalDragUpdate: (details) => _onDragUpdate(details, context),
      child: Transform.scale(
        key: _keyChild,
        scale: _scale,
        child: child,
      ),
    );
  }
  void _triggerOnPressed(){
    onPressed();
  }

  void _onTapDown(TapDownDetails details){
    _controller.forward();
  }

  void _onTapUp(TapUpDetails details){
    if(!_stayOnBottom){
      Future.delayed(duration, _reverseAnimation);
    }
    _triggerOnPressed();
  }

  void _onDragUpdate(DragUpdateDetails details, BuildContext context) {
    final Offset touchPosition = details.globalPosition;
    _isOutSide = _isOutsideChildBox(touchPosition);
  }


  void _onDragEnd(DragEndDetails details){
    if(!_isOutSide){
      _triggerOnPressed();
    }
    _reverseAnimation();
  }

  void _reverseAnimation(){
    if(mounted){
      _controller.reverse();
    }
  }

  void _onLongPressEnd(LongPressEndDetails details, BuildContext context){
    final Offset positionTouch = details.globalPosition;
    if(!_isOutsideChildBox(positionTouch)){
      _triggerOnPressed();
    }
    _reverseAnimation();
  }

  bool _isOutsideChildBox(Offset positionTouch){
    final RenderBox? childRenderBox = _keyChild.currentContext?.findRenderObject() as RenderBox?;
    if(childRenderBox == null){
      return true;
    }
    final Size childSize = childRenderBox.size;
    final Offset positionChild = childRenderBox.localToGlobal(Offset.zero);

    return positionTouch.dx < positionChild.dx ||
       positionTouch.dx > positionChild.dx + childSize.width ||
       positionTouch.dy < positionChild.dy ||
       positionTouch.dy > positionChild.dy + childSize.height;
  }
}
