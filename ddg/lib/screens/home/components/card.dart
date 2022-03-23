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


// Column(
//                 children: <Widget>[
//                   Text(
//                     title,
//                     style: const TextStyle(
//                       fontFamily: "Jost",
//                       fontWeight: FontWeight.w500,
//                       fontSize: 30,
//                     ),
//                   ),
//                   const Align(
//                     alignment: Alignment.center,
//                     child: Text(
//                       "Description",
//                       style: TextStyle(
//                         fontFamily: "Jost",
//                         fontWeight: FontWeight.w500,
//                         fontSize: 20
//                       ),
//                     ),
//                   ),
//                   const SizedBox(
//                     height: 10,
//                   ),
//                   Text(
//                     desc,
//                     textAlign: TextAlign.center,
//                     style: const TextStyle(color: Colors.black54),
//                   ),
//                   const SizedBox(
//                     height: 10,
//                   ),
//                 ],
//               ),