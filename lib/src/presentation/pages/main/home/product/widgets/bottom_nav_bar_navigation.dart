import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ploff_kebab/src/core/extension/extension.dart';
import 'package:ploff_kebab/src/core/utils/utils.dart';
import 'package:ploff_kebab/src/data/models/product/product_id_response.dart';
import 'package:ploff_kebab/src/presentation/bloc/product/product_bloc.dart';

class BottomNavBarNavigation extends StatefulWidget {
  const BottomNavBarNavigation({Key? key, required this.productIdResponse}) : super(key: key);
  final ProductIdResponse productIdResponse;

  @override
  State<BottomNavBarNavigation> createState() => _BottomNavBarNavigationState();
}

class _BottomNavBarNavigationState extends State<BottomNavBarNavigation> {

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductBloc, ProductState>(
      builder: (context, state) {
        return SizedBox(
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
                                    context.read<ProductBloc>()
                                      .add(RemoveProductEvent(
                                          priceRemove:
                                              state.price - (widget.productIdResponse.products?[state.index].outPrice ?? 0),
                                          decrementDigit: state.digit - 1));
                                  },
                                  icon: Icon(
                                    Icons.remove,
                                    color: context.color.thirdBlack,
                                  )),
                              Text(state.price.toString()),
                              IconButton(
                                  onPressed: () {
                                    context.read<ProductBloc>()
                                        .add(AddProductEvent(
                                        priceAdd:
                                        state.price + (widget.productIdResponse.products?[state.index].outPrice ?? 0),
                                        incrementDigit: state.digit + 1));
                                  },
                                  icon: Icon(
                                    Icons.add,
                                    color: context.color.thirdBlack,
                                  )),
                            ],
                          ),
                        ),
                      ),
                      Text((widget.productIdResponse.products?[state.index].outPrice).toString()),
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
        );
      },
    );
  }
}
