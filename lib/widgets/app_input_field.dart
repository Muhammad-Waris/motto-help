import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants/app_spacing.dart';
import 'app_text.dart';

class AppInputField extends StatelessWidget {
  String hintText;
  bool obscureText;
  TextEditingController? controller;
  TextInputType? keyboardtype;
  Widget? suffixIcon, prefixIcon;
  void Function()? onTap;
  EdgeInsetsGeometry contentPadding;
  bool? enabled;
  double? width, height;
  int? maxLines;
  TextInputAction textInputAction;
  int? maxLength;
  AppInputField({
    Key? key,
    required this.hintText,
    this.controller,
    this.keyboardtype,
    this.obscureText = false,
    this.suffixIcon,
    this.contentPadding = const EdgeInsets.only(top: 15, left: 15),
    this.onTap,
    this.enabled,
    this.width,
    this.prefixIcon,
    this.height,
    this.maxLines = 1,
    this.textInputAction = TextInputAction.next,
    this.maxLength,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: width,
        height: height ?? 70,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
        ),
        child: TextFormField(
          maxLength: maxLength,
          maxLines: maxLines,
          textInputAction: textInputAction,
          enabled: enabled,
          obscureText: obscureText,
          keyboardType: keyboardtype,
          controller: controller,
          decoration: InputDecoration(
            prefixIcon: prefixIcon,
            border: InputBorder.none,
            suffixIcon: suffixIcon,
            hintText: hintText,
            contentPadding: contentPadding,
            hintStyle: GoogleFonts.poppins(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: const Color(0xffA3A3A3),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.0),
              borderSide: const BorderSide(
                color: Color(0xffECECEE),
                width: 1.0,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.0),
              borderSide: const BorderSide(
                color: Color(0xffECECEE),
                width: 1.0,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class AppFormField extends StatelessWidget {
  final TextEditingController? controller;
  final EdgeInsetsGeometry? contentPadding;
  final Widget? prefixIcon, suffixIcon;
  final String? hintText;
  final String headingText;
  final bool obsecureText, readOnly;
  final VoidCallback? onTap;
  final int? maxLength, maxLines;
  final TextInputType? keyboardType;
  const AppFormField({
    Key? key,
    this.contentPadding,
    this.controller,
    this.hintText,
    this.prefixIcon,
    required this.headingText,
    this.suffixIcon,
    this.obsecureText = false,
    this.readOnly = false,
    this.onTap,
    this.maxLength,
    this.maxLines = 1,
    this.keyboardType,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        headingText.isNotEmpty
            ? AppText(
                text: headingText,
                fontSize: 16,
                fontWeight: FontWeight.w500,
              )
            : const SizedBox(),
        headingText.isNotEmpty ? AppSpacing.heightSpace10 : const SizedBox(),
        TextFormField(
          textInputAction: TextInputAction.next,
          keyboardType: keyboardType,
          maxLength: maxLength,
          maxLines: maxLines,
          onTap: onTap,
          readOnly: readOnly,
          obscureText: obsecureText,
          controller: controller,
          decoration: InputDecoration(
            counterText: "",
            filled: true,
            contentPadding: contentPadding,
            prefixIcon: prefixIcon,
            hintText: hintText,
            suffixIcon: suffixIcon,
            hintStyle: GoogleFonts.exo2(color: const Color(0xffA3A3A3)),
            fillColor: const Color(0xffE0E0E0),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide.none),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide.none),
          ),
        ),
      ],
    );
  }
}

class AppFormField2 extends StatelessWidget {
  final TextEditingController? controller;
  final EdgeInsetsGeometry? contentPadding;
  final Widget? prefixIcon, suffixIcon;
  final String? hintText;
  final String headingText;
  final bool obsecureText, readOnly;
  final VoidCallback? onTap;
  final int? maxLength, maxLines;
  final TextInputType? keyboardType;
  const AppFormField2({
    Key? key,
    this.contentPadding,
    this.controller,
    this.hintText,
    this.prefixIcon,
    required this.headingText,
    this.suffixIcon,
    this.obsecureText = false,
    this.readOnly = false,
    this.onTap,
    this.maxLength,
    this.maxLines = 1,
    this.keyboardType,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        headingText.isNotEmpty
            ? AppText(
                text: headingText,
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: const Color(0xff8A8A8A),
              )
            : const SizedBox(),
        headingText.isNotEmpty ? AppSpacing.heightSpace10 : const SizedBox(),
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
            boxShadow: [
              BoxShadow(
                offset: const Offset(0, 2),
                color: const Color(0xff0057FF).withOpacity(0.10),
                blurRadius: 8,
              ),
            ],
          ),
          child: TextFormField(
            textInputAction: TextInputAction.next,
            keyboardType: keyboardType,
            maxLength: maxLength,
            maxLines: maxLines,
            onTap: onTap,
            readOnly: readOnly,
            obscureText: obsecureText,
            controller: controller,
            decoration: InputDecoration(
              counterText: "",
              filled: true,
              contentPadding: contentPadding,
              prefixIcon: prefixIcon,
              hintText: hintText,
              suffixIcon: suffixIcon,
              hintStyle: GoogleFonts.montserrat(color: const Color(0xff37445E)),
              fillColor: const Color(0xffFFFFFF),
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none),
            ),
          ),
        ),
      ],
    );
  }
}
// class DropdownContainer extends StatelessWidget {
//   Object? currentValue;
//   List<String> items;
//   void Function(Object? value)? onValueChange;
//   DropdownContainer({
//     Key? key,
//     required this.currentValue,
//     required this.items,
//     required this.onValueChange,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 60,
//       padding: const EdgeInsets.symmetric(
//         horizontal: 18.0,
//       ),
//       decoration: BoxDecoration(
//         color: Colors.white,
//         borderRadius: BorderRadius.circular(15),
//         boxShadow: [
//           BoxShadow(
//             offset: const Offset(0, 2),
//             color: Colors.grey.withOpacity(0.20),
//             blurRadius: 8,
//           ),
//         ],
//       ),
//       child: Align(
//         alignment: Alignment.centerLeft,
//         child: DropdownButtonFormField(
//           decoration: const InputDecoration(
//             border: InputBorder.none,
//           ),
//           style: GoogleFonts.didactGothic(),
//           value: currentValue,
//           items: items
//               .map(
//                 (e) => DropdownMenuItem(
//                   value: e,
//                   child: Center(
//                     child: AppText(
//                       text: e,
//                       fontSize: 14,
//                       fontWeight: FontWeight.w500,
//                       textcolor: AppColors.primaryColor,
//                     ),
//                   ),
//                 ),
//               )
//               .toList(),
//           onChanged: onValueChange,
//           alignment: Alignment.center,
//           icon: const Icon(
//             Icons.arrow_drop_down,
//             size: 30,
//             color: AppColors.primaryColor,
//           ),
//         ),
//       ),
//     );
//   }
// }
