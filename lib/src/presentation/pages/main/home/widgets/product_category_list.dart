import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:ploff_kebab/src/config/router/app_routes.dart';
import 'package:ploff_kebab/src/core/extension/extension.dart';
import 'package:ploff_kebab/src/core/extension/language_extension.dart';
import 'package:ploff_kebab/src/core/utils/utils.dart';
import 'package:ploff_kebab/src/data/models/get_category_product/category_with_response.dart';
import 'package:ploff_kebab/src/data/models/product/product_model_detail.dart';
import 'package:ploff_kebab/src/presentation/bloc/home/home_bloc.dart';
import 'package:ploff_kebab/src/presentation/bloc/product/product_bloc.dart';
import 'package:ploff_kebab/src/presentation/pages/main/home/widgets/product_card_widget.dart';

class ProductCategoryList extends StatelessWidget {
  const ProductCategoryList({Key? key,
    required this.categories,
  }) : super(key: key);

  final CategoryModel categories;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppUtils.kPaddingBottom16,
      child: Material(
        shape: const RoundedRectangleBorder(
          borderRadius: AppUtils.kBorderRadius12,
        ),
        color: context.color.whiteBackground,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: AppUtils.kPaddingL16R16T16B0,
              child: Text(categories.title?.getLocalizedDescription() ?? ''),
            ),
            SizedBox(
              width: double.infinity,
              child: ListView.separated(
                itemCount: categories.products?.length ?? 0,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (_, index) => ProductCardWidget(
                    onTap:() {context.pushNamed(
                      Routes.infoProduct,
                      extra: categories.products?[index],
                    );
                  //  BlocProvider.of<ProductBloc>(context).add(ProductDataEvent(id: categories.products?[index].id ??''));
                      },
                    title: categories.products?[index].title?.getLocalizedDescription() ?? '',
                    description: categories.products?[index].description?.getLocalizedDescription() ?? '',
                    price: '${categories.products?[index].outPrice.toString() ?? ''} ${context.tr('sum')}',
                    urlImage: categories.products?[index].image ?? '',

                    ),
                  separatorBuilder: (_, __) => const Padding(
                    padding: AppUtils.kPaddingAll16,
                    child: SizedBox(
                      width: 343,
                      child: AppUtils.kDivider3,
                    ),
                  )
              ),
              ),

          ],
        ),
      ),
    );
  }
}
// context.pushNamed(
// Routes.infoProduct,
// extra: categories.products?[index]