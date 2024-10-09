import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:moderne_app/util/constants/sizes.dart';
import 'package:moderne_app/util/constants/text_strings.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: TSizes.spaceBtwnScetions),
        child: Column(children: [
          //Email
          TextFormField(
            decoration: InputDecoration(
                prefixIcon: Icon(Iconsax.direct_right),
                labelText: TTexts.email),
          ),
          SizedBox(height: TSizes.spaceBtwnInputFields),
          //Password
          TextFormField(
            decoration: InputDecoration(
              prefixIcon: Icon(Iconsax.password_check),
              labelText: TTexts.password,
              suffixIcon: Icon(Iconsax.eye_slash),
            ),
          ),
          SizedBox(height: TSizes.spaceBtwnInputFields / 2),

          ///Remember Me & Forget Password
          Row(
            children: [
              ///Remember me
              Row(
                children: [
                  Checkbox(value: true, onChanged: (value) {}),
                  Text(TTexts.remeberMe)
                ],
              ),

              ///Forget Password
              TextButton(onPressed: () {}, child: Text(TTexts.forgetpassword)),
            ],
          ),
          SizedBox(height: TSizes.spaceBtwnScetions),

          ///Sign in Button
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {},
              child: Text(TTexts.signin),
            ),
          ),
          SizedBox(height: TSizes.spaceBtwnItems),

          ///Create Account Button
          SizedBox(
            width: double.infinity,
            child: OutlinedButton(
              onPressed: () {},
              child: Text(TTexts.createAccount),
            ),
          ),
        ]),
      ),
    );
  }
}
