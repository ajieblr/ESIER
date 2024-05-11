import 'dart:async';

import 'package:flutter/material.dart';
import '../../../core/app_export.dart'; // Pastikan diimpor dengan benar

enum ProgressType {
  daily,
  weekly,
  monthly,
}

class ProgressbarItemWidget extends StatefulWidget {
  final double progressValue; // Tambahkan parameter progressValue
  final ProgressType progressType; // Tambahkan parameter progressType

  const ProgressbarItemWidget({
    Key? key,
    required this.progressValue, // Tentukan parameter progressValue sebagai required
    required this.progressType, 
  }) : super(key: key);

  @override
  State<ProgressbarItemWidget> createState() => _ProgressbarItemWidgetState();
}

class _ProgressbarItemWidgetState extends State<ProgressbarItemWidget> {
  @override
  Widget build(BuildContext context) {
    String labelText = '';
    switch (widget.progressType) {
      case ProgressType.daily:
        labelText = "Harian";
        break;
      case ProgressType.weekly:
        labelText = "Mingguan";
        break;
      case ProgressType.monthly:
        labelText = "Bulanan";
        break;
    }

    return SizedBox(
      width: 70.h,
      child: Column(
        children: [
          Text(
            labelText,
            style: theme.textTheme.bodySmall,
          ),
          SizedBox(height: 9.v),
          SizedBox(
            height: 48.adaptSize,
            width: 48.adaptSize,
            child: CircularProgressIndicator(
              value: widget.progressValue, // Gunakan nilai progres dari parameter
              backgroundColor: appTheme.gray400,
              color: appTheme.gray900,
            ),
          ),
          SizedBox(height: 10.v),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: (widget.progressValue * 100).toStringAsFixed(0), // Ubah nilai teks menjadi persentase
                  style: theme.textTheme.bodySmall,
                ),
                TextSpan(
                  text: "L",
                  style: CustomTextStyles.bodySmall8,
                )
              ],
            ),
            textAlign: TextAlign.left,
          )
        ],
      ),
    );
  }
}
