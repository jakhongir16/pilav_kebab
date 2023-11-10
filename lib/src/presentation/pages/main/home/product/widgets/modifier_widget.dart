import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ploff_kebab/src/core/extension/extension.dart';
import 'package:ploff_kebab/src/core/extension/language_extension.dart';
import 'package:ploff_kebab/src/core/utils/utils.dart';
import 'package:ploff_kebab/src/presentation/bloc/product/product_bloc.dart';
import 'package:ploff_kebab/src/presentation/components/border_material/border_material.dart';

class ModifierWidget extends StatefulWidget {
  const ModifierWidget({Key? key, required this.modifierIndex}) : super(key: key);
  final int modifierIndex;
  @override
  State<ModifierWidget> createState() => _ModifierWidgetState();
}

class _ModifierWidgetState extends State<ModifierWidget> {
  int? selectValue;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductBloc, ProductState>(
        builder: (context, state){
          print('aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa${state.modifierProduct?.productModifiers?.groupModifiers?.length??0}bbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb');
          return ListView.separated(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            padding: AppUtils.kPaddingAll16,
            itemCount: state.modifierProduct?.productModifiers?.groupModifiers?.length ?? 0,
            itemBuilder: (context, index){
              return BorderMaterial(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(state.modifierProduct?.productModifiers?.groupModifiers?[widget.modifierIndex].name?.getLocalizedName() ?? ''),
                    const SizedBox(height:15),
                    Column(
                      children: List.generate(

                      state.modifierProduct?.productModifiers?.groupModifiers?[state.index].variants?.length ?? 0,
                              (indexModify){
                              final modifyProduct = state.modifierProduct?.productModifiers?.groupModifiers?[index].variants?[indexModify];
                              return Column(
                                children: [
                                  RadioListTile(
                                    title: Text(
                                      modifyProduct?.title?.getLocalizedDescription()?? '',
                                    ),
                                    value: indexModify,
                                    groupValue: selectValue,
                                    onChanged: (value){
                                      selectValue = value;
                                      setState(() {});
                                    },
                                  ),
                                  AppUtils.kDivider4,
                                ],
                              );
                              }),
                    )
                  ],
                ),
              );
            },
            separatorBuilder: (context, index) => Divider(
              color: context.color.firstBlack.withOpacity(0.1),
            ),
          );
        });
  }
}
//int count = int.parse(state.modifierProduct?.productModifiers?.groupModifiers?[modifierIndex].variants?[indexVariant].count ??'');
