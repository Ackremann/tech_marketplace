part of '../view.dart';

class _LogInFields extends StatelessWidget {
  const _LogInFields({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(vertical: sizeFromHeight(context, 20)),
          child: AppTextField(
            
            keyboardType: TextInputType.name,
            hint: 'Email',
            onSaved: (v) {},
            validator: (v) {},
          ),
        ),
        Padding(
          padding: EdgeInsets.only(bottom: sizeFromHeight(context, 10)),
          child: AppTextField(
            keyboardType: TextInputType.name,
            hint: 'Password',
            onSaved: (v) {},
            validator: (v) {},
          ),
        ),
      ],
    );
  }
}
