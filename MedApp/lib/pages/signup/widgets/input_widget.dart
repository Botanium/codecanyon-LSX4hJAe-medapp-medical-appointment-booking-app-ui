import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../../components/labeled_text_form_field.dart';
import '../../../utils/constants.dart';

enum Gender { male, female }

class InputWidget extends StatefulWidget {
  @override
  _InputWidgetState createState() => _InputWidgetState();
}

class _InputWidgetState extends State<InputWidget> {
  final _firstNameController = TextEditingController();
  final _lastNameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();

  Gender _gender = Gender.male;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 38),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              LabeledTextFormField(
                title: 'first_name_dot'.tr(),
                controller: _firstNameController,
                hintText: 'John',
              ),
              LabeledTextFormField(
                title: 'last_name_dot'.tr(),
                controller: _lastNameController,
                hintText: 'Doe',
              ),
              Text(
                'gender_dot'.tr(),
                style: kInputTextStyle,
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            children: <Widget>[
              Radio(
                value: Gender.male,
                groupValue: _gender,
                onChanged: (Gender? gender) {
                  setState(() {
                    _gender = gender!;
                  });
                },
              ),
              Text(
                'male'.tr(),
                style: kInputTextStyle,
              ),
              SizedBox(
                width: 30,
              ),
              Radio(
                value: Gender.female,
                groupValue: _gender,
                onChanged: (Gender? gender) {
                  setState(() {
                    _gender = gender!;
                  });
                },
              ),
              Text(
                'female'.tr(),
                style: kInputTextStyle,
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 38),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              LabeledTextFormField(
                title: 'email_dot'.tr(),
                controller: _emailController,
                keyboardType: TextInputType.emailAddress,
                hintText: 'bhr.tawfik@gmail.com',
              ),
              LabeledTextFormField(
                title: 'password_dot'.tr(),
                controller: _passwordController,
                obscureText: true,
                hintText: '* * * * * *',
              ),
              LabeledTextFormField(
                title: 'confirm_password_dot'.tr(),
                controller: _confirmPasswordController,
                obscureText: true,
                hintText: '* * * * * *',
              ),
            ],
          ),
        ),
      ],
    );
  }
}
