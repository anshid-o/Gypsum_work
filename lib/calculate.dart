import 'package:flutter/material.dart';

class ScreenCalculate extends StatefulWidget {
  const ScreenCalculate({Key? key}) : super(key: key);

  @override
  State<ScreenCalculate> createState() => _ScreenCalculateState();
}

class _ScreenCalculateState extends State<ScreenCalculate> {
  // final TextEditingController _x = TextEditingController();
  double result = 0;
  int balath = 0;
  int p1 = 0;
  int p2 = 0;
  String rs = '';
  final TextEditingController _y = TextEditingController();

  final TextEditingController _z = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),

            // Text(_x.text),
            Container(
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 200, 231, 245),
                  borderRadius: BorderRadius.circular(10)),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(10, 40, 10, 40),
                child: Column(
                  children: [
                    const Text(
                      'Room 1',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      controller: _y,
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.center,
                      onChanged: (value) {},
                      decoration: InputDecoration(
                          label: const Text('Length'),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20))),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      controller: _z,
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.center,
                      onChanged: (value) {},
                      decoration: InputDecoration(
                          label: const Text('Width'),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20))),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    ElevatedButton(
                        onPressed: () {
                          double a = double.parse(_y.text);

                          double b = double.parse(_z.text);

                          setState(() {
                            result = a * b * 10.7639;
                            balath = (result / 6.561).ceil();
                            p1 = (result * 80).ceil();
                            p2 = (result * 90).ceil();
                          });
                        },
                        child: const Text('Find')),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40),
                          color: Colors.indigoAccent),
                      child: ListTile(
                        // tileColor: Colors.indigo,
                        leading: const Icon(
                          Icons.numbers,
                          size: 30,
                          color: Colors.white,
                        ),
                        title: const Text(
                          'Square feet : ',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                        trailing: Text(
                          '$result',
                          style: const TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40),
                          color: Colors.indigoAccent),
                      child: ListTile(
                        // tileColor: Colors.indigo,
                        leading: const Icon(
                          Icons.numbers,
                          size: 30,
                          color: Colors.white,
                        ),
                        title: const Text(
                          'Number of Balaath : ',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                        subtitle: const Text(
                          'For plane',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 12),
                        ),
                        trailing: Text(
                          '$balath',
                          style: const TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40),
                          color: Colors.indigoAccent),
                      child: ListTile(
                        // tileColor: Colors.indigo,
                        leading: const Icon(
                          Icons.numbers,
                          size: 30,
                          color: Colors.white,
                        ),
                        title: const Text(
                          'Price Range : ',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                        trailing: Text(
                          '$p1 - $p2',
                          style: const TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
