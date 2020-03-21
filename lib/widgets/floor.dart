import 'package:flutter/material.dart';

class Floor extends StatelessWidget {
  final List<FloorOption> floorOptions;
  final double itemWidth;
  final double spacing;
  final double runSpacing;
  final EdgeInsets margin;
  final Color backgroundColor;
  Floor({
    Key key,
    this.floorOptions = const [],
    this.itemWidth = 70,
    this.spacing = 20,
    this.runSpacing = 20,
    this.margin = const EdgeInsets.only(
      top: 10,
      bottom: 10,
    ),
    this.backgroundColor = const Color(0xFFFFFFFF),
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: margin,
      child: Wrap(
        direction: Axis.horizontal,
        alignment: WrapAlignment.spaceEvenly,
        crossAxisAlignment: WrapCrossAlignment.center,
        spacing: spacing,
        runSpacing: runSpacing,
        children: <Widget>[
          ...floorOptions.map((floorOption) {
            return GestureDetector(
              onTap: () => floorOption.onTab(floorOption.unionId),
              child: Container(
                width: itemWidth,
                child: Column(
                  children: <Widget>[
                    floorOption.icon,
                    Column(
                      children: <Widget>[
                        Text(
                          floorOption.title,
                          style: TextStyle(
                              fontSize: 12, color: floorOption.titleColor),
                        ),
                        Text(
                          floorOption?.subtitle,
                          style: TextStyle(
                            fontSize: 10,
                            color: floorOption.subtitleColor,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            );
          })
        ],
      ),
    );
  }
}

class FloorOption {
  final String title;
  final String subtitle;
  final Widget icon;
  final Color titleColor;
  final Color subtitleColor;
  final dynamic unionId;
  final Function(dynamic unionId) onTab;
  FloorOption(
      {this.title = "",
      this.subtitle = "",
      @required this.icon,
      this.titleColor = const Color(0xFF000000),
      this.subtitleColor = const Color(0xFF000000),
      this.onTab,
      this.unionId});
}
