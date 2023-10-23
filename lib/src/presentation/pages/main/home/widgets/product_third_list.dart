import 'package:flutter/material.dart';
import 'package:ploff_kebab/src/core/extension/extension.dart';
import 'package:ploff_kebab/src/core/utils/utils.dart';

class ProductThirdList extends StatelessWidget {
  const ProductThirdList({Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverList.separated(

      itemBuilder: (_, index) => SizedBox(
        height: 44,
        child: Padding(
          padding: AppUtils.kPaddingAll12,
          child: Material(
            borderRadius: AppUtils.kBorderRadius16,
            child: Padding(
              padding: AppUtils.kPaddingHor14Ver16,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: List<Widget>.generate(
                  7,
                      (index) => index == 0
                      ? Padding(
                    padding: AppUtils.kPaddingHor14Ver16,
                    child: Column(
                      crossAxisAlignment:
                      CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Со скидкой',
                          style: context
                              .textStyle.sfProDisplay
                              .copyWith(
                            fontSize: 22,
                          ),
                        ),
                      ],
                    ),
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
                          trailing: const Material(
                            borderRadius:
                            AppUtils.kBorderRadius8,
                            child: Image(
                              image: AssetImage(
                                  'assets/logo/kebab_logo.png'),
                              height: 88,
                              width: 88,
                            ),
                          ),
                        ),
                      ]),
                ),
              ),
            ),
          ),
        ),
      ),
      separatorBuilder: (_, __) => AppUtils.kDivider,
      itemCount: 3,
    );
  }
}
