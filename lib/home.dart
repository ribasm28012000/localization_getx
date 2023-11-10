import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:locale_test/profile.dart';

// ignore: must_be_immutable
class HomePage extends StatelessWidget {
  late final List locale = [
    {'name': 'ENGLISH', 'locale': const Locale('en', 'US')},
    {'name': 'عربي', 'locale': const Locale('ar', 'SA')}
  ];

  HomePage({super.key});
  updateLanguage(Locale locale) {
    Get.updateLocale(locale);
  }

  int _selectedLanguage = Get.locale == const Locale('ar', 'SA') ? 1 : 0;
  final TextEditingController textEditingControllerName =
      TextEditingController();
  final TextEditingController textEditingControllerPosition =
      TextEditingController();

  showKeyboardChangeDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (builder) {
        return AlertDialog(
          title: Text('popuptitle'.tr),
          content: Text('popupdes'.tr),
          actions: <Widget>[
            TextButton(
              child: Text('txtok'.tr),
              onPressed: () {
                Navigator.pop(builder);
              },
            ),
          ],
        );
      },
    );
  }

  languageDialog(BuildContext context) {
    int tempSelected = _selectedLanguage;
    showDialog(
      context: context,
      builder: (builder) {
        return AlertDialog(
          title: const Text("Select Language"),
          actions: [
            TextButton(
                onPressed: () {
                  _selectedLanguage = tempSelected;
                  Navigator.pop(builder);
                  _selectedLanguage == tempSelected
                      ? showKeyboardChangeDialog(context)
                      : null;
                },
                child: const Text("Ok")),
            TextButton(
                onPressed: () {
                  updateLanguage(locale[_selectedLanguage]['locale']);
                  Navigator.pop(builder);
                },
                child: const Text("Cancel")),
          ],
          content: SizedBox(
            width: double.maxFinite,
            height: 100,
            child: ListView.builder(
              itemCount: locale.length,
              itemBuilder: (context, index) {
                return RadioListTile(
                  title: Text(locale[index]['name']),
                  value: index,
                  groupValue: tempSelected,
                  activeColor: Colors.red,
                  onChanged: (int? value) {
                    if (value != null) {
                      updateLanguage(locale[value]['locale']);
                      tempSelected = value;
                    }
                  },
                );
              },
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
          child: ListView(
        children: [
          Container(
            height: 200,
            color: Colors.blue,
          ),
          InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const ProfilePage()));
            },
            child: ListTile(
              title: Text('profile'.tr),
            ),
          ),
        ],
      )),
      appBar: AppBar(
        title: Text('title'.tr),
        actions: [
          IconButton(
              onPressed: () {
                languageDialog(context);
              },
              icon: const Icon(Icons.translate_outlined))
        ],
      ),
      body: Center(
          child: SizedBox(
        width: 350,
        height: 350,
        child:
            Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          TextFormField(
            controller: textEditingControllerName,
            decoration: InputDecoration(
              border: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(25))),
              hintText: 'hintText'.tr,
            ),
          ),
          TextFormField(
            controller: textEditingControllerPosition,
            decoration: InputDecoration(
              border: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(25))),
              hintText: 'hintText1'.tr,
            ),
          ),
          TextField(
            enabled: false,
            decoration: const InputDecoration(
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(25))),
            ),
            controller: TextEditingController.fromValue(
                TextEditingValue(text: 'defaultvalue'.tr)),
          ),
        ]),
      )),
    );
  }
}
