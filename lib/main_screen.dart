import 'package:flutter/material.dart';
import 'package:flutter_application_1/modal/data_modal.dart';
import 'package:flutter_application_1/db_function.dart';

class MainScreen extends StatelessWidget {
  MainScreen({Key? key}) : super(key: key);
  int a = 0;
  TextEditingController kplace = TextEditingController();
  TextEditingController kname = TextEditingController();
  TextEditingController kroom = TextEditingController();
  TextEditingController ksqft = TextEditingController();
  TextEditingController kbalaath = TextEditingController();
  TextEditingController kprice = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            TextField(
              controller: kplace,
              textCapitalization: TextCapitalization.words,
              keyboardType: TextInputType.streetAddress,
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                  label: const Text('Enter Place'),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20))),
            ),
            const SizedBox(
              height: 20,
            ),
            TextField(
              controller: kname,
              keyboardType: TextInputType.name,
              textCapitalization: TextCapitalization.words,
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                  label: const Text('Enter Owner name'),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20))),
            ),
            const SizedBox(
              height: 20,
            ),
            TextField(
              controller: kroom,
              keyboardType: TextInputType.number,
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                  label: const Text('Number of rooms'),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20))),
            ),
            const SizedBox(
              height: 20,
            ),
            TextField(
              controller: ksqft,
              keyboardType: TextInputType.number,
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                  label: const Text('Total sqft'),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20))),
            ),
            const SizedBox(
              height: 20,
            ),
            TextField(
              controller: kbalaath,
              keyboardType: TextInputType.number,
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                  label: const Text('Total number of balaath'),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20))),
            ),
            const SizedBox(
              height: 20,
            ),
            TextField(
              controller: kprice,
              keyboardType: TextInputType.number,
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                  label: const Text('Total price'),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20))),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  onAddWorksButtonClicked();
                },
                child: const Text('Submit')),
          ],
        ),
      ),
    );
  }

  Future<void> onAddWorksButtonClicked() async {
    final place = kplace.text.trim();
    final name = kname.text.trim();
    final room = kroom.text.trim();
    final sqft = ksqft.text.trim();
    final balaath = kbalaath.text.trim();
    final price = kprice.text.trim();
    if (place.isEmpty ||
        name.isEmpty ||
        room.isEmpty ||
        sqft.isEmpty ||
        balaath.isEmpty ||
        price.isEmpty) {
      return;
    }
    addWorks(WorkModal(
        place: place,
        name: name,
        rooms: room,
        sqft: sqft,
        balaath: balaath,
        price: price));
  }
}
