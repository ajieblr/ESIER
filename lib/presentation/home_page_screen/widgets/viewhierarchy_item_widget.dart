import 'package:flutter/material.dart';
import '../../../core/app_export.dart'; // ignore: must_be_immutable

class ViewhierarchyItemWidget extends StatelessWidget {
  const ViewhierarchyItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 24.h,
        vertical: 10.v,
      ),
      decoration: AppDecoration.outlineBlack.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 1.v),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "29-2-2024",
                  style: theme.textTheme.labelLarge,
                ),
                SizedBox(height: 6.v),
                Text(
                  "Pemakaian",
                  style: theme.textTheme.bodySmall,
                ),
                SizedBox(height: 8.v),
                Text(
                  "Rata-rata Mingguan",
                  style: theme.textTheme.bodySmall,
                ),
                SizedBox(height: 6.v),
                Text(
                  "Total Biaya",
                  style: theme.textTheme.bodySmall,
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 23.v),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  "213 liter",
                  style: theme.textTheme.bodySmall,
                ),
                SizedBox(height: 7.v),
                Text(
                  "53 liter",
                  style: theme.textTheme.bodySmall,
                ),
                SizedBox(height: 8.v),
                Text(
                  "Rp. 34.000",
                  style: theme.textTheme.bodySmall,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
