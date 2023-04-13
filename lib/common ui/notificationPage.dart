import 'package:flutter/material.dart';

class NotificationPage extends StatelessWidget {

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
          child: Column(
            children: [
              const SizedBox(
                height: 55,
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
                    "Notifications",
                    style: TextStyle(
                        color: Colors.blue,
                        fontSize: 20,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const NotificationTile(
                imageicon: "assets/img/MyG.jpg",
                brandname: 'MyG Kakkanad',
                points: '128',
                NotificationMessage: "has approved your invoice of",
                time: "2 Minutes ago",
              ),
              const NotificationTile(
                imageicon: "assets/img/ayurvedh.jpg",
                brandname: 'Ayur Pharma',
                points: '600',
                NotificationMessage: "has approved your invoice of",
                time: "2 Minutes ago",
              ),
              const NotificationTile(
                imageicon: "assets/img/nike.png",
                brandname: 'Nike Edappally',
                points: '500',
                NotificationMessage: "has approved your invoice of",
                time: "Today 9:31",
              ),
              const NotificationTile(
                imageicon: "assets/img/puma.png",
                brandname: 'Puma Edappaly',
                points: '725',
                NotificationMessage: "has declined your invoice of",
                time: "Today 8:04",
              )
            ],
          ),
        ),
      ),
    );
  }
}

class NotificationTile extends StatelessWidget {
  final imageicon;
  final brandname;
  final points;
  final NotificationMessage;
  final time;
  const NotificationTile(
      {super.key,
        required this.imageicon,
        required this.brandname,
        required this.points, this.NotificationMessage, this.time,
      });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 7.0,left: 12,right: 12),
      child: Stack(
          children:[Container(
            height: 70,
            decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(12)),
            child: ListTile(
              leading: CircleAvatar(
                  backgroundImage: AssetImage(
                    imageicon,
                  )),
              title: Row(
                children: [
                  Text(
                    brandname,
                    style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(
                    width: 4,
                  ),
                  Text(
                    NotificationMessage,
                    style: const TextStyle(fontSize: 14 ,color: Colors.grey),
                  ),
                ],
              ),
              subtitle: Row(children: [
                Text(
                  points,
                  style: const TextStyle(
                      fontWeight: FontWeight.w700,
                      color: Colors.black,
                      fontSize: 16),
                ),
                const SizedBox(
                  width: 4,
                ),
                const Text("Points")
              ]),
            ),
          ),
            Positioned(
                right: 10,
                bottom: 5,
                child: Text(time,style: TextStyle(color: Colors.grey,fontSize: 12),))
          ]),
    );
  }
}