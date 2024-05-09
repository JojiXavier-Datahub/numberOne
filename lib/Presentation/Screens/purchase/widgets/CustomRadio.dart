import 'package:flutter/material.dart';
import 'package:number_one_academy_v2/Utils/colors.dart';

class CustomRadio extends StatefulWidget {
  final Object value;
  final Object? groupValue;
  final void Function(Object?)? onChanged;
  const CustomRadio(
      {super.key,
      required this.value,
      required this.groupValue,
      required this.onChanged});

  @override
  State<StatefulWidget> createState() => _CustomRadioState();
}

class _CustomRadioState extends State<CustomRadio> {
  @override
  Widget build(BuildContext context) {
    bool selected = (widget.value == widget.groupValue);

    return InkWell(
      onTap: () => widget.onChanged!(widget.value),
      child: Container(
        margin: const EdgeInsets.all(2),
        padding: const EdgeInsets.all(2),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(width: 2, color: secondaryColor),
          color: Colors.white,
        ),
        child: Icon(
          Icons.circle,
          size: 15,
          color: selected ? primaryColor : Colors.white,
        ),
      ),
    );
  }
}
