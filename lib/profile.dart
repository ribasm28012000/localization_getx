import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:locale_test/home.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('profile'.tr),
      ),
      body: Center(
        child: SizedBox(
          height: 250,
          child: Column(
            children: [
              Text(
                'message'.tr,
                style: const TextStyle(fontSize: 25),
              ),
              TextButton(
                  onPressed: () {
                    HomePage().languageDialog(context);
                  },
                  child: Text('chanlang'.tr)),
            ],
          ),
        ),
      ),
    );
  }
}
