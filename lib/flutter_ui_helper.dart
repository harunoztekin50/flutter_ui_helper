library flutter_ui_helper;

import 'package:flutter/widgets.dart';

extension PadingDegeriAta on Widget {
  Widget padingDegeriAll(double deger) {
    return Padding(padding: EdgeInsets.all(deger), child: this);
  }

  Widget padingDegeriSymetric({
    required double? horizontal,
    required double? vertical,
  }) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: vertical ?? 0,
        horizontal: horizontal ?? 0,
      ),
       child: this
    );
  }

  Widget padingDegeriOnly({
    double? left,
    double? right,
    double? top,
    double? bottom,
  }) {
    return Padding(
      padding: EdgeInsets.only(
        left: left ?? 0,
        right: right ?? 0,
        top: top ?? 0,
        bottom: bottom ?? 0,
      ),
       child: this
    );
  }
}

enum PadingEnums {
  padding02,
  padding04,
  padding06,
  padding08,
  padding10,
  padding15,
  padding20,
  padding25,
  padding30,
  padding35,
  padding40,
  padding45,
  padding50,
}

extension PadingEnumss on PadingEnums {
  double padingDegeriAta() {
    switch (this) {
      case PadingEnums.padding02:
        return 2.0;
      case PadingEnums.padding04:
        return 4.0;
      case PadingEnums.padding06:
        return 6.0;
      case PadingEnums.padding08:
        return 8.0;
      case PadingEnums.padding10:
        return 10.0;
      case PadingEnums.padding15:
        return 15.0;
      case PadingEnums.padding20:
        return 20.0;
      case PadingEnums.padding25:
        return 25.0;
      case PadingEnums.padding30:
        return 30.0;
      case PadingEnums.padding35:
        return 35.0;
      case PadingEnums.padding40:
        return 40.0;
      case PadingEnums.padding45:
        return 45.0;
      case PadingEnums.padding50:
        return 50.0;
    }
  }
}
