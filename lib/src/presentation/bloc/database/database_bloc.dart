import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:ploff_kebab/src/data/database_status.dart';
import 'package:ploff_kebab/src/data/models/modifier/modifier_model.dart';
import 'package:ploff_kebab/src/data/models/product/product_id_response.dart';
import 'package:ploff_kebab/src/data/models/title/title.dart';
import 'package:ploff_kebab/src/data/source/local_source.dart';

import '../../../data/models/combo/combo_id_response.dart';
import '../../../data/source/hive/products.dart';

part 'database_event.dart';
part 'database_state.dart';

class DatabaseBloc extends Bloc<DatabaseEvent, DatabaseState> {
  DatabaseBloc(this.sourceLocal) : super(const DatabaseState()) {
    on<AddProduct>(_addProduct);
  }
  final LocalSource sourceLocal;

  _addProduct(AddProduct event, Emitter<DatabaseState> emit){
    emit(state.copyWith(status: DatabaseStatus.loading));
  }
//
//   List<Modifiers> _establishModifiers(
//       List<GroupModifiers> modifierGroups, String idParent
//       ) {
//     final modifiers = <Modifiers>[];
//
//     for(var group in modifierGroups){
//       for(var variant in group.variants??[]){
//         if(int.parse(variant.count ??'') > 0){
//               modifiers.add(Modifiers(
//                   nameModifier: _establishTitleName(variant.title!),
//                   idModifier: variant.id??'',
//                   quantityModifier: int.parse(variant.count??''),
//                   idParent: idParent,
//                   priceModifiers: variant.outPrice ?? 0),
//               );
//         }
//       }
//     }
//   }
// }

TitleName _establishTitleName(TitleModel title) {
  return TitleName(
    uz: title.uz ?? '',
    ru: title.ru ?? '',
    en: title.en ?? '',
  );
  }
}