import 'package:aindria_project/common%20ui/secondPage.dart';
import 'package:flutter/material.dart';


class ApprovalPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30), color: Colors.blue),
          child: const Icon(
            Icons.download_rounded,
            color: Colors.white,
            size: 32,
          )),
      body: SingleChildScrollView(
          child: Container(
            height: 1000,
            width: double.infinity,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    colors: [Colors.purple.shade50, Colors.lightBlue.shade100])),
            child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(28.0),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SecondInvoicePage(),
                        ));
                  },
                  child: Container(
                    width: 28,
                    height: 28,
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
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Text("Invoice Approval Request"),
                  const SizedBox(
                    width: 20,
                  ),
                  Text(
                    "28 Dec 2022,19.30",
                    style: TextStyle(color: Colors.grey[600], fontSize: 13),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: Container(
                  height: 230,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.white70,
                      border: Border.all(width: 2, color: Colors.white)),
                  child: Stack(children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Invoice Amount of",
                        style: TextStyle(color: Colors.grey[600]),
                      ),
                    ),
                    Positioned(
                      top: 50,
                      left: 20,
                      child: Container(
                        height: 55,
                        width: 120,
                        decoration: BoxDecoration(
                            color: Colors.grey[200],
                            borderRadius: BorderRadius.circular(12),
                            border:
                            Border.all(width: 1, color: Colors.grey.shade300)),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 22.0),
                          child: Row(children: const [
                            Icon(
                              Icons.currency_rupee,
                              color: Colors.blue,
                              size: 22,
                            ),
                            Text(
                              "940",
                              style: TextStyle(
                                  color: Colors.blue,
                                  fontSize: 26,
                                  fontWeight: FontWeight.bold),
                            )
                          ]),
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 10.0, right: 10, top: 120),
                      child: Divider(
                        color: Colors.white,
                        thickness: 2,
                      ),
                    ),
                    Positioned(
                        right: 40,
                        top: 30,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Invoice Number",
                              style: TextStyle(color: Colors.grey[600]),
                            ),
                            const Text(
                              "9887546521",
                              style: TextStyle(
                                  fontSize: 22, fontWeight: FontWeight.w500),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Invoice Date",
                              style: TextStyle(color: Colors.grey[600]),
                            ),
                            const Text(
                              "29 Dec,2023",
                              style: TextStyle(
                                  fontSize: 22, fontWeight: FontWeight.w500),
                            )
                          ],
                        )),
                    Positioned(
                        bottom: 70,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Requested To",
                            style: TextStyle(color: Colors.grey[600]),
                          ),
                        )),
                    const Padding(
                      padding: EdgeInsets.only(top: 148.0),
                      child: ListTile(
                        leading: CircleAvatar(
                          maxRadius: 21,
                          minRadius: 21,
                          backgroundImage: AssetImage("assets/img/MyG.jpg"),
                        ),
                        title: Text(
                          "MyG Kakkanad",
                          style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                        ),
                        subtitle: Text("+91 9733737378"),
                        trailing: Icon(
                          Icons.phone,
                          color: Colors.blue,
                        ),
                      ),
                    ),
                  ]),
                ),
              ),
              const Divider(
                color: Colors.white,
                thickness: 2,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 18.0),
                child: Text("Invoice Copy", style: TextStyle(fontSize: 19)),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  height: 500,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.blue, width: 1)),
                  child: const Image(
                      fit: BoxFit.fill,
                      image: AssetImage("assets/img/einv-print-format.png")),
                ),
              )
            ]),
          )),
    );
  }
}