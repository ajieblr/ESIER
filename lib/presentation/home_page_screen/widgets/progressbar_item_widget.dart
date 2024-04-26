import 'package:flutter/material.dart';
import '../../../core/app_export.dart'; // Pastikan diimpor dengan benar

class ProgressbarItemWidget extends StatelessWidget {
  final double progressValue; // Tambahkan parameter progressValue

  const ProgressbarItemWidget({
    Key? key,
    required this.progressValue, // Tentukan parameter progressValue sebagai required
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 48.h,
      child: Column(
        children: [
          Text(
            "Harian",
            style: theme.textTheme.bodySmall,
          ),
          SizedBox(height: 9.v),
          SizedBox(
            height: 48.adaptSize,
            width: 48.adaptSize,
            child: CircularProgressIndicator(
              value: progressValue, // Gunakan nilai progres dari parameter
              backgroundColor: appTheme.gray400,
              color: appTheme.gray900,
            ),
          ),
          SizedBox(height: 10.v),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: (progressValue * 100).toStringAsFixed(0), // Ubah nilai teks menjadi persentase
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
