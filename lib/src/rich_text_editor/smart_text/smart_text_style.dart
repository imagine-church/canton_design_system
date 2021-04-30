import 'package:canton_design_system/canton_design_system.dart';

extension SmartTextStyle on SmartTextType {
  TextStyle get textStyle {
    switch (this) {
      case SmartTextType.QUOTE:
        return MobileTextTheme.theme(cantonLightTheme())
            .bodyText1
            .copyWith(fontStyle: FontStyle.italic);
      case SmartTextType.H1:
        return MobileTextTheme.theme(cantonLightTheme()).headline1;
        break;
      default:
        return MobileTextTheme.theme(cantonLightTheme()).bodyText1;
    }
  }

  EdgeInsets get padding {
    switch (this) {
      case SmartTextType.QUOTE:
        return EdgeInsets.fromLTRB(16, 16, 16, 16);
      case SmartTextType.H1:
        return EdgeInsets.fromLTRB(16, 24, 16, 8);
        break;
      case SmartTextType.BULLET:
        return EdgeInsets.fromLTRB(24, 8, 16, 8);
      default:
        return EdgeInsets.fromLTRB(16, 8, 16, 8);
    }
  }

  TextAlign get align {
    switch (this) {
      case SmartTextType.QUOTE:
        return TextAlign.center;
        break;
      default:
        return TextAlign.start;
    }
  }

  String get prefix {
    switch (this) {
      case SmartTextType.BULLET:
        return '\u2022 ';
        break;
      default:
        return '';
    }
  }
}
