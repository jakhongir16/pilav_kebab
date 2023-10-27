import 'package:flutter/material.dart';
import 'package:ploff_kebab/src/config/theme/themes.dart';
import 'package:ploff_kebab/src/core/utils/utils.dart';

class MapAppBar extends StatelessWidget {
  const MapAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      title: Material(
      borderRadius: AppUtils.kBorderRadius12,
      child: ClipRRect(
        child: GestureDetector(
          onTap: (){
            Navigator.pop(context);
          },
          child: const Icon(
            Icons.arrow_back_ios,
          ),
        ),
      ),
    ),
    bottom: PreferredSize(
    preferredSize: const Size(double.infinity, 22),
    child: Column(
      children: [
        Column(
         children: [
           IconButton(
             onPressed: (){},
             icon: Icon(AppIcons.location),
           )
         ],
        ),
      ],
    )
    )

    );
  }
}
