import 'package:flutter/material.dart';

import 'approvalPage.dart';
import 'notificationPage.dart';

class SecondInvoicePage extends StatelessWidget {
  SecondInvoicePage({Key? key}) : super(key: key);
  List brands = [
    "MyG Kakkanad",
    "Allen Solly Edapally",
    "Nike Edapally",
    "Dessi Cuppa",
    "Zudio Kakkanad",
    "Ayur Pharma Kochi",
    "Nike Edapally"
  ];

  var InvoiceNumber = [
    "invoice No:965623589",
    "invoice No:965623589",
    "invoice No:965623589",
    "invoice No:965623589",
    "invoice No:965623589",
    "invoice No:965623589",
    "invoice No:965623589",
  ];

  var number = ["940", "990", "550", "190", "340", "100", "300"];
  var Iconss = [
    "assets/img/MyG.jpg",
    "assets/img/allensolly.png",
    "assets/img/nike.png",
    "assets/img/dessi cuppa.jpg",
    "assets/img/zudio-logo.jpg",
    "assets/img/ayurvedh.jpg",
    "assets/img/nike.png"
  ];
  var Iconssss = [
    const Icon(Icons.watch_later_outlined),
    const Icon(Icons.watch_later_outlined),
    const Icon(Icons.check_circle_outline_outlined),
    const Icon(Icons.check_circle_outline_outlined),
    const Icon(Icons.watch_later_outlined),
    const Icon(Icons.cancel_outlined),
    const Icon(Icons.watch_later_outlined),
  ];
  var status = [
    "Pending",
    "Pending",
    "Approved",
    "Approved",
    "Pending",
    "Rejected",
    "Approved"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: 1000,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [Colors.purple.shade50, Colors.lightBlue.shade100])),
          child: Column(children: [
            const SizedBox(
              height: 50,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 18.0),
                  child: Container(
                    width: 31,
                    height: 31,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6),
                        color: Colors.white,
                        boxShadow: const [
                          BoxShadow(color: Colors.grey, blurRadius: 3)
                        ]),
                    child: const Icon(
                      Icons.arrow_back_ios_new_sharp,
                      size: 20,
                      color: Colors.blue,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 24,
                ),
                const Text(
                  "Add New Invoice",
                  style: TextStyle(
                      color: Colors.blue,
                      fontSize: 20,
                      fontWeight: FontWeight.w500),
                ),
                const SizedBox(width: 160),
                IconButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => NotificationPage()));
                    },
                    icon: const Icon(
                      Icons.notifications,
                      color: Colors.red,
                      size: 35,
                    ))
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 110,
                  width: 137,
                  decoration: BoxDecoration(
                      border: Border.all(width: 1, color: Colors.grey.shade300),
                      borderRadius: BorderRadius.circular(18),
                      color: Colors.white),
                  child: Column(children: const [
                    SizedBox(
                        height: 86,
                        width: 100,
                        child: Padding(
                          padding: EdgeInsets.only(top: 20.0),
                          child: Image(
                              image: AssetImage(
                                  "assets/img/blue-qr-code-scanning-vector-2144722.jpg")),
                        )),
                    Text(
                      "Scan Your Bill",
                      style: TextStyle(color: Colors.blue, fontSize: 11),
                    )
                  ]),
                ),
                Container(
                  height: 110,
                  width: 137,
                  decoration: BoxDecoration(
                      border: Border.all(width: 1, color: Colors.grey.shade300),
                      borderRadius: BorderRadius.circular(18),
                      color: Colors.white),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: Column(
                      children: const [
                        SizedBox(
                            height: 65,
                            width: 100,
                            child: Image(
                                image:
                                    AssetImage("assets/img/upload img.jpg"))),
                        Text(
                          "Upload Bill",
                          style: TextStyle(color: Colors.blue, fontSize: 11),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 27,
            ),
            Container(
              color: Colors.white,
              height: 45,
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.only(left: 18.0),
                child: Row(
                  children: const [
                    Icon(
                      Icons.event_note_outlined,
                      color: Colors.blue,
                    ),
                    SizedBox(
                      width: 17,
                    ),
                    Text(
                      "My Invoices",
                      style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.w500,
                          fontSize: 20),
                    )
                  ],
                ),
              ),
            ),
            ListView.builder(
              itemCount: InvoiceNumber.length,
              shrinkWrap: true,
              physics: const ScrollPhysics(),
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(
                      left: 14.0, right: 14, top: 6, bottom: 6),
                  child: InkWell(onTap:() {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ApprovalPage()));
                  },
                    child: Container(
                      height: 70,
                      decoration: BoxDecoration(
                          color: Colors.grey[100],
                          borderRadius: BorderRadius.circular(12)),
                      child: Stack(children: [
                        SizedBox(
                          width: 300,
                          child: Padding(
                            padding: const EdgeInsets.only(right: 15),
                            child: ListTile(
                              leading: CircleAvatar(
                                maxRadius: 18,
                                minRadius: 18,
                                backgroundImage: AssetImage(Iconss[index]),
                              ),
                              title: Text(
                                brands[index],
                                style: const TextStyle(
                                    fontWeight: FontWeight.w500),
                              ),
                              subtitle: Text(InvoiceNumber[index]),
                              trailing: Padding(
                                padding: const EdgeInsets.only(top: 13.0),
                                child: Column(children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left:30),
                                    child: Text(
                                      number[index],
                                      style: const TextStyle(
                                          color: Colors.blue,
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  Text(
                                    "29 Dec,2023",
                                    style: TextStyle(
                                        fontSize: 13, color: Colors.grey[600]),
                                  )
                                ]),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          right: 0,
                          child: Container(
                            decoration: const BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(12),
                                    bottomRight: Radius.circular(12))),
                            height: 70,
                            width: 56,
                            child: Padding(
                              padding: const EdgeInsets.only(top: 15.0),
                              child: (Column(
                                children: [
                                  Iconssss[index],
                                  Text(status[index])
                                ],
                              )),
                            ),
                          ),
                        )
                      ]),
                    ),
                  ),
                );
              },
            )
          ]),
        ),
      ),
    );
  }
}
