import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  TextEditingController controller = TextEditingController();
  bool? isChecked = false;
  bool isSwitched = false;
  double sliderValue = 0.0;
  String? menuItem = 'e1';
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            DropdownButton(
              value: menuItem,
              items: [
                DropdownMenuItem(value: 'e1', child: Text('Element 1')),
                DropdownMenuItem(value: 'e2', child: Text('Element 2')),
                DropdownMenuItem(value: 'e3', child: Text('Element 3')),
              ],
              onChanged: (String? value) {
                setState(() {
                  menuItem = value;
                });
              },
            ),
            TextField(
              controller: controller,
              decoration: const InputDecoration(border: OutlineInputBorder()),
              onEditingComplete: () {
                setState(() {});
              },
            ),

            Text(controller.text),

            Checkbox.adaptive(
              tristate: true,
              value: isChecked,
              onChanged: (bool? value) {
                setState(() {
                  isChecked = value;
                });
              },
            ),

            CheckboxListTile.adaptive(
              tristate: true,
              title: const Text("Checkbox List Tile"),
              value: isChecked,
              onChanged: (bool? value) {
                setState(() {
                  isChecked = value;
                });
              },
            ),

            Switch.adaptive(
              value: isSwitched,
              onChanged: (bool value) {
                setState(() {
                  isSwitched = value;
                });
              },
            ),

            SwitchListTile.adaptive(
              title: const Text('Switch me'),
              value: isSwitched,
              onChanged: (bool value) {
                setState(() {
                  isSwitched = value;
                });
              },
            ),

            Slider.adaptive(
              max: 10,
              value: sliderValue,
              divisions: 10,
              onChanged: (double value) {
                setState(() {
                  sliderValue = value;
                });
              },
            ),

            InkWell(
              splashColor: Colors.teal,
              onTap: () {
                print('Image tapped');
              },
              child: Container(
                height: 100,
                width: double.infinity,
                color: Colors.white12,
              ),
            ),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.teal,
                foregroundColor: Colors.white,
              ),
              child: Text('Click Me'),
            ),
            ElevatedButton(onPressed: () {}, child: Text('Click Me')),
            FilledButton(onPressed: () {}, child: Text('Click Me')),
            TextButton(onPressed: () {}, child: Text('Click Me')),
            OutlinedButton(onPressed: () {}, child: Text('Click Me')),
            CloseButton(),
            BackButton(),
          ],
        ),
      ),
    );
  }
}
