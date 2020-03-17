import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:learn_flutter/utils/color_util.dart';

class CholiceChipSelect extends StatefulWidget {
  final List<SelectOption> selectOptions;
  String selectedId;
  final void Function(SelectOption option, bool isSelect) onSelect;
  CholiceChipSelect({Key key, this.selectOptions, this.selectedId, this.onSelect}): super(key: key);
  @override
  _CholiceChipSelectState createState() => _CholiceChipSelectState();
}

class _CholiceChipSelectState extends State<CholiceChipSelect> {
  @override
  Widget build(BuildContext context) {
    return Wrap(
      direction: Axis.horizontal,
      alignment: WrapAlignment.start,
      spacing: 10,
      runSpacing: 15,
      runAlignment: WrapAlignment.start,
      children: <Widget>[
        ...widget.selectOptions.map((button) {
          return customCholiceChip(
            text: button?.label,
            isSelected: widget.selectedId == button?.id,
            onSelected: (isSelected) {
              setState(() {
                widget.selectedId = button.id;
              });
              widget?.onSelect(button, isSelected);
            },
          );
        }),
      ],
    );
  }

  customCholiceChip({
    String text,
    bool isSelected,
    double width,
    double height = 26,
    void Function(bool) onSelected,
  }) {
    return SizedBox(
      height: height,
      child: ChoiceChip(
        label: SizedBox(
          width: width,
          child: Text(
            text,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 12,
              color: isSelected ? Colors.red : Colors.black,
            ),
          ),
        ),
        padding: EdgeInsets.fromLTRB(5, 0, 5, 8),
        pressElevation: 0,
        selectedColor: ColorUtil.hexToColor("#F9EDEB"),
        selected: isSelected,
        backgroundColor: ColorUtil.hexToColor("#F2F2F2"),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
          side: BorderSide(
              color: isSelected ? Colors.red : Colors.transparent, width: 1),
        ),
        onSelected: onSelected,
        // shape: BoxShape.circle,
      ),
    );
  }
  
}

class SelectOption {
  String id;
  String label;
  dynamic value;
  SelectOption({ this.id, this.label, this.value });
}
