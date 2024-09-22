import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:scanner_task/utils/color_constants.dart';
import 'package:scanner_task/utils/image_constants.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.buttonText, this.onButtonTapped});
  final String buttonText;
  final void Function()? onButtonTapped;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onButtonTapped,
      child: Padding(
        padding: const EdgeInsets.only(bottom: 16, left: 20, right: 20),
        child: Container(
          alignment: Alignment.center,
          width: double.infinity,
          height: 60,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: ColorConstants.primaryBlue,
              image: DecorationImage(opacity: .5, fit: BoxFit.cover, image: AssetImage(ImageConstants.TEXTURE))),
          child: Text(
            buttonText,
            style: GoogleFonts.poppins(fontWeight: FontWeight.bold, fontSize: 22, color: Colors.white),
          ),
        ),
      ),
    );
  }
}
