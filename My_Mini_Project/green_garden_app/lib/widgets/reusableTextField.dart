import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:green_garden/Constant/color_constant.dart';
import 'package:green_garden/Constant/text_constant.dart';

class ReusableWidgetTextField extends StatelessWidget {
  final String hintText;
  final String? prefiText;
  final bool enable;
  final Function(String)? onChanged;
  final Function(String)? onFieldSumitted;
  final TextEditingController? controller;
  final String? errorText;
  final String? Function(String?)? validator;
  final String? labelText;
  final TextInputType keyboardType;
  final Icon? prefixIcon;

  const ReusableWidgetTextField({
    super.key,
    required this.hintText,
    this.prefiText,
    this.onChanged,
    this.onFieldSumitted,
    this.controller,
    this.errorText,
    this.validator,
    required this.enable,
    this.keyboardType = TextInputType.text,
    this.labelText,
    this.prefixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 15,
          fontFamily: GoogleFonts.inter.toString()),
      keyboardType: keyboardType,
      onChanged: onChanged,
      controller: controller,
      validator: validator,
      decoration: InputDecoration(
          errorText: errorText,
          hintText: hintText,
          enabled: enable,
          prefixText: prefiText,
          prefixIcon: prefixIcon,
          filled: true,
          labelText: labelText,
          focusedBorder: OutlineInputBorder(borderSide: BorderSide(width: 1)),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(20)),
          ),
          fillColor: ColorPlants.whiteSkull,
          hintStyle: TextStyleUsable.interLoginTwo,
          disabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(15),
              ),
              borderSide: BorderSide.none),
          prefixStyle: TextStyleUsable.interLoginTwo),
    );
  }
}
