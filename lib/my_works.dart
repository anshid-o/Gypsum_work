import 'package:flutter/material.dart';

import 'package:flutter_application_1/modal/data_modal.dart';
import 'package:flutter_application_1/db_function.dart';

class MyWorks extends StatelessWidget {
  const MyWorks({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    getAllWorks();
    return ValueListenableBuilder(
      valueListenable: worklistnotifier,
      builder: (ctx, List<WorkModal> workslist, child) {
        return ListView.separated(
            itemBuilder: (ctx, index) {
              return Padding(
                padding: const EdgeInsets.all(12.0),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(12)),
                  child: ExpansionTile(
                    title: Text(
                      'Place : ${workslist[index].place}',
                      style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    subtitle: Text(
                      'Owner : ${workslist[index].name}',
                      style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Colors.white),
                    ),
                    leading: Text(
                      '${index + 1}',
                      style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    trailing: IconButton(
                        onPressed: () {
                          if (workslist[index].id != null) {
                            deleteWork(workslist[index].id!);
                          }
                        },
                        icon: const Icon(
                          Icons.delete,
                          color: Colors.red,
                        )),
                    children: [
                      Text(
                        'Number of rooms ${workslist[index].rooms}',
                        style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      Text(
                        'Total Square feet ${workslist[index].sqft}',
                        style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      Text(
                        'Total number of ${workslist[index].balaath}',
                        style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      Text(
                        'Total price : ${workslist[index].price}',
                        style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ],
                  ),
                ),
              );
            },
            separatorBuilder: (ctx, index) => const Divider(),
            itemCount: workslist.length);
      },
    );
  }
}
