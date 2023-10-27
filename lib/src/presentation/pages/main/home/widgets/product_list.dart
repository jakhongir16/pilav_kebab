import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:ploff_kebab/src/core/extension/extension.dart';
import 'package:ploff_kebab/src/core/extension/language_extension.dart';
import 'package:ploff_kebab/src/core/utils/utils.dart';
import 'package:ploff_kebab/src/data/models/category_with_products_model.dart';
import 'package:ploff_kebab/src/presentation/bloc/home/home_bloc.dart';
import 'package:ploff_kebab/src/presentation/pages/main/home/widgets/product_card_widget.dart';

class ProductList extends StatelessWidget {
  const ProductList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(builder: (context, state) {
      return SliverList(
        delegate: SliverChildBuilderDelegate(childCount: 10, (context, index) {
          return Material(
            color: context.color.white,
            borderRadius: AppUtils.kBorderRadius12,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: AppUtils.kPaddinTop16Left16,
                  child: Text(
                    '10000',
                    style: context.textStyle.bodyTitle3
                        .copyWith(fontWeight: FontWeight.w600),
                  ),
                ),
              ],
            ),
          );
        }),
      );
    });
  }
}
