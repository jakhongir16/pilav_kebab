part of 'package:ploff_kebab/src/presentation/pages/auth/register/register_page.dart';

mixin RegisterMixin on State<RegisterPage> {
  late final TextEditingController _fullNameController =
  TextEditingController();
  late final TextEditingController _phoneNumberController =
  TextEditingController();
  late final TextEditingController _registrationSource =
  TextEditingController();

  // late final TextEditingController _registrationSourceController =
  // TextEditingController();
 // late final CustomerRegisterBloc _bloc = context.read<CustomerRegisterBloc>();
  final formKey = GlobalKey<FormState>();


  // void _registerUser(){
  //  _bloc.add(
  //       RegisterRequestEvent();
  //  );
  // }


  @override
  void initState() {
    super.initState();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
  }

  @override
  void dispose() {

    _disposeControllers();
    super.dispose();
  }

  void _disposeControllers() {
    _fullNameController.dispose();
    _phoneNumberController.dispose();
  }

  String validateName(String value){
    String trimmedValue = value.trim();
    if(trimmedValue.isEmpty){
      return context.tr('write_name');
    }
    return '';
  }




  // void _registerUser() {
  //   final String phoneNum =
  //   _phoneNumberController.text.replaceAll(RegExp('[0-9]'), '');
  //   _bloc.add(
  //       CustomerUserRegisterEvent(
  //
  //
  //           additionalProps: {
  //             'name': _fullNameController.text,
  //             'phone': phoneNum,
  //             'registaration_source': _registrationSourceController,
  //           },
  //           phone: phoneNum,
  //           name: _fullNameController.text,
  //           registrationSource: _registrationSourceController.text,
  //           ),
  //
  //
  //   );
  }

