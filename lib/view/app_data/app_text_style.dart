import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app_colors.dart';

class AppTextStyle {
  ///Quicksand
  static TextStyle font30QuicksandBoldLightYellowTextStyle =
      GoogleFonts.quicksand(
          color: AppColors.lightYellowColor,
          fontSize: 30,
          fontWeight: FontWeight.w700);
  static TextStyle font30QuicksandBoldRedTextStyle = GoogleFonts.quicksand(
      color: AppColors.red, fontSize: 30, fontWeight: FontWeight.w700);
  static TextStyle font26QuicksandWhiteTextStyle = GoogleFonts.quicksand(
      color: AppColors.white, fontSize: 26, fontWeight: FontWeight.bold);
  static TextStyle font24QuicksandRegularLightBlueTextStyle =
      GoogleFonts.quicksand(
          color: AppColors.lightBlueColor,
          fontSize: 24,
          fontWeight: FontWeight.w400);
  static TextStyle font24QuicksandBoldPurpleTextStyle = GoogleFonts.quicksand(
      color: AppColors.purpleColor, fontSize: 24, fontWeight: FontWeight.w700);
  static TextStyle font18QuicksandWhiteTextStyle = GoogleFonts.quicksand(
      color: AppColors.white, fontSize: 18, fontWeight: FontWeight.bold);
  static TextStyle font18QuicksandBoldWhite60TextStyle = GoogleFonts.quicksand(
      color: AppColors.white.withOpacity(0.60),
      fontSize: 18,
      fontWeight: FontWeight.w700);

  static TextStyle font18QuicksandBoldLightYellowTextStyle =
      GoogleFonts.quicksand(
          color: AppColors.lightYellowColor,
          fontSize: 18,
          fontWeight: FontWeight.w700);
  static TextStyle font18QuicksandBoldLightGreenTextStyle =
      GoogleFonts.quicksand(
          color: AppColors.lightGreenColor,
          fontSize: 18,
          fontWeight: FontWeight.w700);
  static TextStyle font18QuicksandBoldRedTextStyle = GoogleFonts.quicksand(
      color: AppColors.red, fontSize: 18, fontWeight: FontWeight.w700);

  static TextStyle font18QuicksandBoldLightBlueTextStyle =
      GoogleFonts.quicksand(
          color: AppColors.lightBlueColor,
          fontSize: 18,
          fontWeight: FontWeight.w700);
  static TextStyle font18QuicksandBoldYellowTextStyle = GoogleFonts.quicksand(
      color: AppColors.lightYellow, fontSize: 18, fontWeight: FontWeight.w700);
  static TextStyle font18QuicksandBoldWhiteTextStyle = GoogleFonts.quicksand(
      color: AppColors.white, fontSize: 18, fontWeight: FontWeight.w700);
  static TextStyle font18QuicksandBoldPurpleTextStyle = GoogleFonts.quicksand(
      color: AppColors.purpleColor, fontSize: 18, fontWeight: FontWeight.w700);
  static TextStyle font18QuicksandRegularWhiteTextStyle = GoogleFonts.quicksand(
      color: AppColors.white, fontSize: 18, fontWeight: FontWeight.w400);

  ///Asap
  static TextStyle font60AsapRegularWhiteTextStyle = GoogleFonts.asap(
      color: AppColors.white, fontSize: 60, fontWeight: FontWeight.w400);
  static TextStyle font24AsapRegularWhiteTextStyle = GoogleFonts.asap(
      color: AppColors.white, fontSize: 24, fontWeight: FontWeight.w400);
  static TextStyle font24AsapRegularYellowTextStyle = GoogleFonts.asap(
      color: AppColors.yellow, fontSize: 24, fontWeight: FontWeight.w400);
  static TextStyle font24AsapRegularLightBlueTextStyle = GoogleFonts.asap(
      color: AppColors.lightBlueColor,
      fontSize: 24,
      fontWeight: FontWeight.w400);

  static TextStyle font20AsapMediumRedTextStyle = GoogleFonts.asap(
      color: AppColors.red, fontSize: 20, fontWeight: FontWeight.w500);
  static TextStyle font20AsapRegularWhiteTextStyle = GoogleFonts.asap(
      color: AppColors.white, fontSize: 20, fontWeight: FontWeight.w400);

  static TextStyle font18AsapRegularWhite17TextStyle = GoogleFonts.asap(
      color: AppColors.white.withOpacity(0.17),
      fontSize: 18,
      fontWeight: FontWeight.w400);

  static TextStyle font18AsapRegularWhiteTextStyle = GoogleFonts.asap(
      color: AppColors.white, fontSize: 18, fontWeight: FontWeight.w400);
  static TextStyle font18AsapRegularRedTextStyle = GoogleFonts.asap(
      color: AppColors.red, fontSize: 18, fontWeight: FontWeight.w400);
  static TextStyle font18AsapRegularWhite70TextStyle = GoogleFonts.asap(
      color: AppColors.white.withOpacity(0.70),
      fontSize: 18,
      fontWeight: FontWeight.w400);
  static TextStyle font18AsapRegularLightGreenTextStyle = GoogleFonts.asap(
      color: AppColors.lightGreen, fontSize: 18, fontWeight: FontWeight.w400);

  static TextStyle font17AsapSemiBoldWhiteTextStyle = GoogleFonts.asap(
      color: AppColors.white, fontSize: 17, fontWeight: FontWeight.w600);

  static TextStyle font17AsapSemiBoldWhiteWithShadowTextStyle =
      GoogleFonts.asap(
          color: AppColors.white,
          shadows: [
            Shadow(
              color: AppColors.black.withOpacity(0.5),
              offset: const Offset(0, 3),
              blurRadius: 20,
            ),
          ],
          fontSize: 17,
          fontWeight: FontWeight.w600);
  static TextStyle font16AsapAppGrayTextStyle =
      GoogleFonts.asap(color: AppColors.grey, fontSize: 16);
  static TextStyle font16AsapBoldWhite35TextStyle = GoogleFonts.asap(
      color: AppColors.white.withOpacity(0.35),
      fontSize: 16,
      fontWeight: FontWeight.w700);
  static TextStyle font16AsapMediumBlueDarkTextStyle = GoogleFonts.asap(
      color: AppColors.grey, fontSize: 16, fontWeight: FontWeight.w500);
  static TextStyle font16AsapRegularRed80TextStyle = GoogleFonts.asap(
      color: AppColors.red.withOpacity(0.80),
      fontSize: 16,
      fontWeight: FontWeight.w400);
  static TextStyle font16AsapRegularRedTextStyle = GoogleFonts.asap(
      color: AppColors.red, fontSize: 16, fontWeight: FontWeight.w400);
  static TextStyle font16AsapBoldRedTextStyle = GoogleFonts.asap(
      color: AppColors.red, fontSize: 16, fontWeight: FontWeight.w700);
  static TextStyle font16AsapRegularWhite70TextStyle = GoogleFonts.asap(
      color: AppColors.white.withOpacity(0.70),
      fontSize: 16,
      fontWeight: FontWeight.w400);
  static TextStyle font16AsapRegularWhiteTextStyle = GoogleFonts.asap(
      color: AppColors.white, fontSize: 16, fontWeight: FontWeight.w400);

  static TextStyle font14AsapSemiBoldRedTextStyle = GoogleFonts.asap(
      color: AppColors.red, fontSize: 14, fontWeight: FontWeight.w600);

  static TextStyle font14AsapRegularRedTextStyle = GoogleFonts.asap(
      color: AppColors.red, fontSize: 14, fontWeight: FontWeight.w400);
  static TextStyle font14AsapRegularGreyTextStyle = GoogleFonts.asap(
      color: AppColors.grey, fontSize: 14, fontWeight: FontWeight.w400);

  ///Opensans

  static TextStyle font30OpenSansExtraboldWhiteTextStyle = GoogleFonts.openSans(
      color: AppColors.white, fontSize: 30, fontWeight: FontWeight.w800);
  static TextStyle font30OpenSansExtraboldRedTextStyle = GoogleFonts.openSans(
      color: AppColors.red, fontSize: 30, fontWeight: FontWeight.w800);
  static TextStyle font30OpenSansExtraboldWhite30TextStyle =
      GoogleFonts.openSans(
          color: AppColors.white.withOpacity(0.30),
          fontSize: 30,
          fontWeight: FontWeight.w800);

  static TextStyle font28OpenSansExtraboldWhiteTextStyle = GoogleFonts.openSans(
      color: AppColors.white, fontSize: 28, fontWeight: FontWeight.w800);

  static TextStyle font26OpenSansExtraboldWhiteTextStyle = GoogleFonts.openSans(
      color: AppColors.white, fontSize: 26, fontWeight: FontWeight.w800);
  static TextStyle font24OpenSansExtraboldWhiteTextStyle = GoogleFonts.openSans(
      color: AppColors.white, fontSize: 24, fontWeight: FontWeight.w800);

  static TextStyle font24OpenSansExtraboldRedTextStyle = GoogleFonts.openSans(
      color: AppColors.red, fontSize: 24, fontWeight: FontWeight.w800);
  static TextStyle font24OpenSansRegularRedTextStyle = GoogleFonts.openSans(
      color: AppColors.red, fontSize: 24, fontWeight: FontWeight.w400);

  static TextStyle font22OpenSansExtraboldRedTextStyle = GoogleFonts.openSans(
      color: AppColors.red, fontSize: 22, fontWeight: FontWeight.w800);

  static TextStyle font20OpenSansExtraboldWhiteTextStyle = GoogleFonts.openSans(
      color: AppColors.white, fontSize: 20, fontWeight: FontWeight.w800);
  static TextStyle font20OpenSansMediumBlackTextStyle = GoogleFonts.openSans(
      color: AppColors.black, fontSize: 20, fontWeight: FontWeight.w500);
  static TextStyle font20OpenSansExtraboldPurpleTextStyle =
      GoogleFonts.openSans(
          color: AppColors.purpleColor,
          fontSize: 20,
          fontWeight: FontWeight.w800);

  static TextStyle font18OpenSansExtraboldWhite50TextStyle =
      GoogleFonts.openSans(
          color: AppColors.white.withOpacity(0.50),
          fontSize: 18,
          fontWeight: FontWeight.w800);
  static TextStyle font18OpenSansExtraBoldWhiteTextStyle = GoogleFonts.openSans(
      color: AppColors.white, fontSize: 18, fontWeight: FontWeight.w800);

  static TextStyle font18OpenSansBoldWhite79TextStyle = GoogleFonts.openSans(
      color: AppColors.white.withOpacity(0.79),
      fontSize: 18,
      fontWeight: FontWeight.w700);
  static TextStyle font18OpenSansBoldBlackTextStyle = GoogleFonts.openSans(
      color: AppColors.black, fontSize: 18, fontWeight: FontWeight.w700);
  static TextStyle font18OpenSansSemiBoldBlackTextStyle = GoogleFonts.openSans(
      color: AppColors.black, fontSize: 18, fontWeight: FontWeight.w600);

  static TextStyle font18OpenSansboldredTextStyle = GoogleFonts.openSans(
      color: AppColors.red, fontSize: 18, fontWeight: FontWeight.w700);

  static TextStyle font18OpenSansExtraBoldUnderlinePurpleTextStyle =
      GoogleFonts.openSans(
          color: AppColors.purpleColor,
          fontSize: 18,
          decoration: TextDecoration.underline,
          // decorationThickness: 2,
          // decoration: TextDecoration.underline,
          // decorationColor: AppColors.purpleColor,
          fontWeight: FontWeight.w800);
  static TextStyle font18OpenSansRegularBlackTextStyle = GoogleFonts.openSans(
      color: AppColors.black, fontSize: 18, fontWeight: FontWeight.w400);
  static TextStyle font16OpenSansRegularBlackTextStyle = GoogleFonts.openSans(
      color: AppColors.black, fontSize: 16, fontWeight: FontWeight.w400);
  static TextStyle font16OpenSansRegularRedTextStyle = GoogleFonts.openSans(
      color: AppColors.red, fontSize: 16, fontWeight: FontWeight.w400);

  static TextStyle font16OpenSansRegularWhiteTextStyle = GoogleFonts.openSans(
      color: AppColors.white, fontSize: 16, fontWeight: FontWeight.w400);
  static TextStyle font15OpenSansRegularBlackTextStyle = GoogleFonts.openSans(
      color: AppColors.black, fontSize: 15, fontWeight: FontWeight.w400);

  static TextStyle font14OpenSansBoldBlackTextStyle = GoogleFonts.openSans(
      color: AppColors.black, fontSize: 14, fontWeight: FontWeight.w700);
  static TextStyle font14OpenSansBoldBlueTextStyle = GoogleFonts.openSans(
      color: AppColors.blue, fontSize: 14, fontWeight: FontWeight.w700);
  static TextStyle font14OpenSansRegularBlackTextStyle = GoogleFonts.openSans(
      color: AppColors.black, fontSize: 14, fontWeight: FontWeight.w400);
  static TextStyle font14OpenSansRegularWhiteTextStyle = GoogleFonts.openSans(
      color: AppColors.white, fontSize: 14, fontWeight: FontWeight.w400);
  static TextStyle font14OpenSansRegularGreenTextStyle = GoogleFonts.openSans(
      color: AppColors.green, fontSize: 14, fontWeight: FontWeight.w400);
  static TextStyle font14OpenSansSemiBoldGreenTextStyle = GoogleFonts.openSans(
      color: AppColors.green, fontSize: 14, fontWeight: FontWeight.w600);
  static TextStyle font14OpenSansRegularRedUnderlineTextStyle =
      GoogleFonts.openSans(
          decoration: TextDecoration.underline,
          color: AppColors.red,
          fontSize: 14,
          fontWeight: FontWeight.w400);
  static TextStyle font14OpenSansRegularRedTextStyle = GoogleFonts.openSans(
      color: AppColors.red, fontSize: 14, fontWeight: FontWeight.w400);
  static TextStyle font14OpenSansBoldRedTextStyle = GoogleFonts.openSans(
      color: AppColors.red, fontSize: 14, fontWeight: FontWeight.w700);
  static TextStyle font14OpenSansRegularGreyTextStyle = GoogleFonts.openSans(
      color: AppColors.grey, fontSize: 14, fontWeight: FontWeight.w400);
  static TextStyle font12OpenSansboldWhite60TextStyle = GoogleFonts.openSans(
      color: AppColors.white.withOpacity(0.60),
      fontSize: 12,
      fontWeight: FontWeight.w700);
  static TextStyle font12OpenSansRegularWhiteTextStyle = GoogleFonts.openSans(
      color: AppColors.white, fontSize: 12, fontWeight: FontWeight.w400);
  static TextStyle font12OpenSansRegularBlackTextStyle = GoogleFonts.openSans(
      color: AppColors.black, fontSize: 12, fontWeight: FontWeight.w400);
  static TextStyle font12OpenSansRegularGreyTextStyle = GoogleFonts.openSans(
      color: AppColors.grey, fontSize: 12, fontWeight: FontWeight.w400);
}
