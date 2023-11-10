import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ploff_kebab/src/core/extension/extension.dart';
import 'package:ploff_kebab/src/core/extension/language_extension.dart';
import 'package:ploff_kebab/src/core/utils/utils.dart';
import 'package:ploff_kebab/src/data/models/get_category_product/category_with_response.dart';
import 'package:ploff_kebab/src/presentation/bloc/product/product_bloc.dart';
import 'package:ploff_kebab/src/presentation/components/buttons/bottom_navigation_button.dart';
import 'package:ploff_kebab/src/presentation/components/loading_widgets/modal_progress_hud.dart';
import 'package:ploff_kebab/src/presentation/pages/main/home/product/widgets/bottom_nav_bar_navigation.dart';
import 'package:ploff_kebab/src/presentation/pages/main/home/product/widgets/modifier_widget.dart';
import 'package:ploff_kebab/src/presentation/pages/main/home/product/widgets/product_app_bar.dart';
import 'package:ploff_kebab/src/presentation/pages/main/home/product/widgets/product_desc_title.dart';
import 'package:ploff_kebab/src/presentation/pages/main/home/product/widgets/product_id_widget.dart';

class ProductPage extends StatefulWidget {
  const ProductPage({
    Key? key,
    required this.products,
  }) : super(key: key);

  final ProductModel products;

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  int? valueSelect;

  @override
  Widget build(BuildContext context) => BlocBuilder<ProductBloc, ProductState>(
        builder: (context, state) {
          return AnnotatedRegion<SystemUiOverlayStyle>(
            value: const SystemUiOverlayStyle(
              statusBarColor: Colors.transparent,
              statusBarBrightness: Brightness.light,
              statusBarIconBrightness: Brightness.light,
            ),
            child: ModalProgressHUD(
              inAsyncCall: false,
              child: Scaffold(
                body: CustomScrollView(
                  slivers: [
                    // AppUtils.kSliverGap25,
                    ProductAppBar(image: widget.products.image ?? ""),
                    SliverToBoxAdapter(
                      child: ProductDescTitle(
                        title: widget.products.title?.getLocalizedDescription() ?? "",
                        description: widget.products.description?.getLocalizedDescription() ?? "",
                      ),
                    ),
                    SliverList(
                      delegate: SliverChildBuilderDelegate(
                        childCount: state.modifierProduct?.productModifiers?.groupModifiers?.length ?? 0,
                        (context, modifyIndex) => ModifierWidget(
                          modifierIndex: modifyIndex,
                        ),
                      ),
                    ),
                  ],
                ),
                bottomNavigationBar: SizedBox(
                  height: 200, //168
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      color: context.color.white,
                    ),
                    child: Padding(
                      padding: AppUtils.kPaddingL16R16T0B16,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          AppUtils.kGap16,
                          Text(
                            context.tr('size'),
                            textAlign: TextAlign.left,
                          ),
                          AppUtils.kGap23,
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(
                                width: 113,
                                height: 44,
                                child: Material(
                                  shape: OutlineInputBorder(
                                    borderRadius: AppUtils.kBorderRadius8,
                                    borderSide: BorderSide(color: context.color.anotherGreyColor),
                                  ),
                                  child: Row(
                                    children: [
                                      IconButton(
                                          onPressed: () {
                                            context.read<ProductBloc>().add(RemoveProductEvent(
                                                priceRemove: state.price - (state.productIdResponse?.outPrice ?? 0),
                                                decrementDigit: state.digit - 1));
                                            print("2321312323213");
                                            print(state.digit);

                                          },
                                          icon: Icon(
                                            Icons.remove,
                                            color: context.color.thirdBlack,
                                          )),
                                      Text(state.digit.toString()),
                                      IconButton(
                                          onPressed: () {
                                            context.read<ProductBloc>().add(AddProductEvent(
                                                priceAdd: state.price + (state.productIdResponse?.outPrice ?? 0),
                                                incrementDigit: state.digit + 1));
                                            print("123123213123123");
                                            print(state.digit);

                                            },
                                          icon: Icon(
                                            Icons.add,
                                            color: context.color.thirdBlack,
                                          )),
                                    ],
                                  ),
                                ),
                              ),
                              Text(state.price.toString()),
                            ],
                          ),
                          AppUtils.kGap16,
                          Center(
                            child: SizedBox(
                              height: 52,
                              width: double.infinity,
                              child: ElevatedButton(
                                onPressed: () {},
                                child: Text(context.tr('add_to_basket')),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      );
}
