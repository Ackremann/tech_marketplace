part of '../view.dart';

class _SignUpFields extends StatelessWidget {
  const _SignUpFields({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(vertical: sizeFromHeight(context, 35)),
          child: AppTextField(
            keyboardType: TextInputType.name,
            hint: 'Full name',
            onSaved: (v) {},
            validator: (v) {},
          ),
        ),
        AppTextField(
          keyboardType: TextInputType.name,
          hint: 'Email',
          onSaved: (v) {},
          validator: (v) {},
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: sizeFromHeight(context, 35)),
          child: AppTextField(
            keyboardType: TextInputType.name,
            hint: 'Password',
            onSaved: (v) {},
            validator: (v) {},
          ),
        ),
        Padding(
          padding: EdgeInsets.only(bottom: sizeFromHeight(context, 35)),
          child: AppTextField(
            keyboardType: TextInputType.name,
            hint: 'Phone Number',
            onSaved: (v) {},
            validator: (v) {},
          ),
        ),
      ],
    );
  }
}
