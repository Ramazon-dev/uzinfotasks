import 'package:easy_padding/extentions/padding_extentions.dart';
import 'package:flutter/material.dart';
import 'package:uzinfotasks/core/constants/app_images.dart';
import 'package:uzinfotasks/core/constants/sizeconfig.dart';
import 'package:uzinfotasks/screens/home/home_page.dart';
import 'package:uzinfotasks/screens/widgets/dropdown_rayon.dart';
import 'package:uzinfotasks/screens/widgets/dropdown_region.dart';

class ChoosingPage extends StatelessWidget {
  const ChoosingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: Colors.green[800],
      body: Form(
        key: formKey,
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: getWidth(20),
              vertical: getHeight(60),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  alignment: Alignment.center,
                  child: Image.asset(
                    AppImages.gerb,
                    height: getHeight(150),
                  ),
                ),
                Text(
                  "Регион",
                  style: TextStyle(
                    fontSize: getHeight(20),
                    fontWeight: FontWeight.w500,
                  ),
                ).only(
                  left: getWidth(20),
                  bottom: getHeight(10),
                ),
                const DropDownButtonRegion(),
                Text(
                  "rayon",
                  style: TextStyle(
                    fontSize: getHeight(20),
                    fontWeight: FontWeight.w500,
                  ),
                ).only(
                  left: getWidth(20),
                  bottom: getHeight(10),
                ),
                const DropDownButtonRayon(),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.lime[200],
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                        getHeight(30),
                      ),
                    ),
                    fixedSize: Size(
                      getWidth(150),
                      getHeight(50),
                    ),
                  ),
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                      formKey.currentState!.save();
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomePage(
                            region: 'DropDownButtonRegion()',
                          ),
                        ),
                      );
                    }
                  },
                  child: Text(
                    "nachat",
                    style: TextStyle(
                      fontSize: getHeight(20),
                      color: Colors.black,
                    ),
                  ),
                ).only(left: getWidth(100), top: getHeight(20)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
