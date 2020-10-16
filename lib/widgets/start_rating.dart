import 'package:flutter/material.dart';

class StartRatingWidget extends StatefulWidget {
  final double rating;
  final double maxRating;
  final int count;
  final double size;
  final Color unselectedColor;
  final Color selectedColor;
  final Widget selectedImg;
  final Widget unSelectedImg;

  StartRatingWidget({
    @required this.rating,
    this.maxRating = 10,
    this.count = 5,
    this.size = 30,
    this.unselectedColor = Colors.grey,
    this.selectedColor = Colors.orangeAccent,
    Widget selectedImg,
    Widget unSelectedImg,
  })  : unSelectedImg = unSelectedImg ?? Icon(Icons.star_border,
                                              color: unselectedColor,
                                              size: size,),
        selectedImg = selectedImg ?? Icon(Icons.star,
                                          color: selectedColor,
                                          size: size,);

  @override
  _StartRatingWidgetState createState() => _StartRatingWidgetState();
}

class _StartRatingWidgetState extends State<StartRatingWidget> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Row(
          mainAxisSize: MainAxisSize.min,
          children: _buildUnSelectedStarts(),
        ),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: _buildSelectedStarts(),
        )
      ],
    );
  }

  ///构建默认评分
  List<Widget> _buildUnSelectedStarts() {
    return List.generate(widget.count, (_) {
      return Icon(
        Icons.star_border,
        color: widget.unselectedColor,
        size: widget.size,
      );
    });
  }

  ///  构建填充评分
  List<Widget> _buildSelectedStarts() {
    List<Widget> selectedStarts = [];
    var selectedStart = Icon(
      Icons.star,
      color: widget.selectedColor,
      size: widget.size,
    );

    if (widget.rating > widget.maxRating) {
      return List.generate(widget.count, (index) => selectedStart);
    }

    if (widget.rating < 0) {
      return selectedStarts;
    }

    //1.有多少个填充整数start
    double oneValue = (widget.maxRating / widget.count);
    var fulStartValue = (widget.rating / oneValue).floor();

    for (double index = 0; index < fulStartValue; index++) {
      selectedStarts.add(selectedStart);
    }
    //2、裁剪未填充的start
    double unFulStartValue = widget.rating / oneValue - fulStartValue;
    var clipStart = ClipRect(
      child: selectedStart,
      clipper: StartRatingCustomClipper(ratio: unFulStartValue),
    );

    selectedStarts.add(clipStart);

    return selectedStarts;
  }
}

///自定义裁剪规则
class StartRatingCustomClipper extends CustomClipper<Rect> {
  double ratio;

  StartRatingCustomClipper({@required this.ratio});

  @override
  Rect getClip(Size size) {
    return Rect.fromLTRB(0, 0, size.width * ratio, size.height);
  }

  @override
  bool shouldReclip(StartRatingCustomClipper oldClipper) {
    return oldClipper.ratio != this.ratio;
  }
}
