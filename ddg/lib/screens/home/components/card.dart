import 'package:flutter/material.dart';
import 'package:avatars/avatars.dart';
import 'package:flutter_animated_dialog/flutter_animated_dialog.dart';

class CardTemplate extends StatelessWidget {
  final String title;
  final String desc;
  final String linkavatar;
  const CardTemplate({
    required this.title,
    required this.desc,
    required this.linkavatar,
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Avatar(
      name: title,
      elevation: 5,
      sources: [
        NetworkSource(linkavatar),
      ],
      onTap: () {
        showAnimatedDialog(
          context: context,
          barrierDismissible: true,
          builder: (BuildContext context) {
            return ClassicGeneralDialogWidget(
              titleText: title,
              contentText: desc,
              positiveText: "Jouer",
              positiveTextStyle: TextStyle(
                fontFamily: "Jost",
                fontSize: 30,
                color: Colors.orange.shade300
              ),
              onPositiveClick: () {
                Navigator.pushNamed(context, '/$title');
              },
            );
          },
          animationType: DialogTransitionType.fadeScale,
          curve: Curves.fastOutSlowIn,
          duration: const Duration(milliseconds: 700),
          barrierColor: Colors.orange.shade50.withOpacity(0.8),
        );
      },
    );
  }
}