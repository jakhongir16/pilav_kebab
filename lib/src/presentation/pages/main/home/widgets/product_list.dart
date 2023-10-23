import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:ploff_kebab/src/core/extension/extension.dart';
import 'package:ploff_kebab/src/core/utils/utils.dart';

class ProductList extends StatelessWidget {
  const ProductList({Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverList.separated(
      itemBuilder: (_, index) => SizedBox(

        child: Material(
          borderRadius: AppUtils.kBorderRadius12,
          child: Padding(
            padding: AppUtils.kPaddingHorizontal24Vertical16,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: List<Widget>.generate(
                7,
                    (index) => index == 0
                    ? Column(
                      crossAxisAlignment:
                      CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: Text(
                            'Со скидкой',
                            style: context
                                .textStyle.sfProDisplay
                                .copyWith(
                              fontSize: 22,

                            ),

                          ),
                        ),
                      ],
                    )
                    : Column(
                    crossAxisAlignment:
                    CrossAxisAlignment.start,
                    children: [
                      ListTile(
                        title: Column(
                          crossAxisAlignment:
                          CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Чайханский плов',
                              style: context
                                  .textStyle.sfProDisplay4
                                  .copyWith(
                                color: context
                                    .color.primaryText,
                              ),
                              textAlign: TextAlign.left,
                            ),
                            Text(
                              'Своим именем чайханский плов обязан старой ташкентской традиции «ош»...',
                              style: context
                                  .textStyle.sfProDisplay2
                                  .copyWith(
                                color: context
                                    .color.thirdBlack,
                              ),
                            ),
                          ],
                        ),
                        subtitle: Text(
                          '47 000 сум',
                          style: context
                              .textStyle.sfProDisplay
                              .copyWith(
                            fontSize: 15,
                          ),
                        ),

                      ),
                    ]
              ),
              ),
            ),
          ),
        ),
      ),
      separatorBuilder: (_, __) => AppUtils.kDivider,

      itemCount: 1,
    );
  }
}
// const Material(
// borderRadius:
// AppUtils.kBorderRadius8,
// child: Image(
// image: AssetImage(
// 'assets/images/mealphoto.png'),
// height: 100,
// width: 88,
// ),
// ),
// ),
// SizedBox(
// width: 343,
// height: 1,
// child: DecoratedBox(
// decoration: BoxDecoration(
// color: Colors.black.withOpacity(0.10000000149011612),
// ),
// ),
// )