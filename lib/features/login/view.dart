import 'package:flutter/material.dart';
import 'package:tech_marketplace/constant/colors.dart';
import 'package:tech_marketplace/constant/responsive.dart';
import 'package:tech_marketplace/core/routes/magic_router.dart';
import 'package:tech_marketplace/features/home/view.dart';
import 'package:tech_marketplace/features/signup/view.dart';
import 'package:tech_marketplace/widgets/app_text_fields.dart';
import 'package:tech_marketplace/widgets/text_button_row.dart';
import 'package:tech_marketplace/widgets/white_button.dart';
part 'units/login_text.dart';
part 'units/login_fields.dart';
part 'units/validate_button.dart';
part 'units/signup_row.dart';
part 'units/slip_button.dart';


class LogInview extends StatelessWidget {
  const LogInview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: sizeFromWidth(context, 1),
        decoration: BoxDecoration(
          gradient: AppColors.lightDarkGradient,
        ),
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: const [
                 _LogInText(),
                 _LogInFields(),
                 _ValidateButton(),
                 _SignUpRow(),
                 _SkipButton(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}




