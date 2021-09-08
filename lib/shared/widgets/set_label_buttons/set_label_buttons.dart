import 'package:flutter/material.dart';
import 'package:payflow/shared/themes/app_text_styles.dart';

import '../label_button/label_button.dart';

class SetLabelButtons extends StatelessWidget {
  final String primaryLabel;
  final VoidCallback primaryOnPressed;
  final String secoundaryLabel;
  final VoidCallback secoundaryOnPressed;
  final bool enabledPrimaryColor;

  const SetLabelButtons(
      {Key? key,
      required this.primaryLabel,
      required this.primaryOnPressed,
      required this.secoundaryLabel,
      required this.secoundaryOnPressed,
      this.enabledPrimaryColor = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56,
      child: Row(
        children: [
          Expanded(
            child: LabelButton(
              label: primaryLabel,
              onPressed: primaryOnPressed,
              style: enabledPrimaryColor ? TextStyles.buttonPrimary : null,
            ),
          ),
          VerticalDivider(),
          Expanded(
            child: LabelButton(
              label: secoundaryLabel,
              onPressed: secoundaryOnPressed,
            ),
          ),
        ],
      ),
    );
  }
}
