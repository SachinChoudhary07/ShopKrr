

import 'package:flutter/cupertino.dart';
import 'package:shopkrr/constant/style.dart';

import 'app_constant.dart';
import 'color_resources.dart';


Text headingMediumText(BuildContext context, String heading){
  return Text(heading,textAlign: TextAlign.center,style: headingMd.copyWith(color: isDarkMode(context) ? ColorResources.whiteColor : ColorResources.gray80),);
}

Text headingSmallText(BuildContext context, String heading){
  return Text(heading,textAlign: TextAlign.center,style: headingSm.copyWith(color: textColor(context)),);
}

Text paragraphMediumText(BuildContext context, String heading){
  return Text(heading,textAlign: TextAlign.center,style: paragraphMd.copyWith(color: getColor(context, ColorResources.gray30, ColorResources.gray60)),);
}

Text smallText(BuildContext context, String heading){
  return Text(heading,textAlign: TextAlign.center,style: textSm.copyWith(fontWeight: FontWeight.w800,color: textColor(context)),);
}

Text mediumText(BuildContext context, String heading,){
  return Text(heading,textAlign: TextAlign.center,style: textMd.copyWith(fontWeight: FontWeight.w700,color: textColor(context),),);
}

Text displayLargeText(BuildContext context, String heading){
  return Text(heading,style: displayLg.copyWith(fontWeight: FontWeight.w800,color: textColor(context),),);
}


Text displayLargeTextColor(BuildContext context, String heading){
  return Text(heading,style: displayLg.copyWith(fontWeight: FontWeight.w800,color: ColorResources.red50,),);
}


Text largeText(BuildContext context, String heading){
  return Text(heading,textAlign: TextAlign.center,style: textLg.copyWith(color: ColorResources.whiteColor,fontWeight: FontWeight.w700,));
}


Text mediumDisplayText(BuildContext context, String heading){
  return Text(heading,textAlign: TextAlign.center,style: displayMd.copyWith(color: ColorResources.whiteColor,fontWeight: FontWeight.w700,));
}

textColor(BuildContext context) => getColor(context, ColorResources.whiteColor, ColorResources.gray80);
