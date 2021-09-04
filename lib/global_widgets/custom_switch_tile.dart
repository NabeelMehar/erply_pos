import 'package:erply_pos/modules/sign_up_module/widgets/custom_switch_widget.dart';
import 'package:flutter/material.dart';

class CustomSwitchTile extends StatelessWidget {

  final String title;
  final bool value;
  final ValueChanged<bool> onChanged;

  CustomSwitchTile({@required this.title,@required this.value, @required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: Row(
        children: [
          Text("I world Need inventory management software"),
          Expanded(child: SizedBox()),
          CustomSwitch(
            value: value,
            onChanged: onChanged,
          ),
        ],
      ),
    );
  }
}
