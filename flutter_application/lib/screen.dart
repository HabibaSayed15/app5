import 'package:flutter/material.dart';
import 'package:flutter_application/model.dart';

// ignore: must_be_immutable
class Screen extends StatelessWidget {
  Screen({super.key});
// ignore: non_constant_identifier_names
  List<Model> Contacts = [
    Model(imgl: "assets/tulip.webp", name: "tulip", name2: "flower"),
    Model(imgl: "assets/sunflower.webp", name: "sunflower", name2: "flower"),
    Model(imgl: "assets/rose.webp", name: "rose", name2: "flower"),
    Model(imgl: "assets/marigold.webp", name: "marigold", name2: "flower"),
    Model(imgl: "assets/lotus.webp", name: "lotus", name2: "flower"),
    Model(imgl: "assets/lily.webp", name: "lily", name2: "flower"),
    Model(imgl: "assets/lavender.webp", name: "lavender", name2: "flower"),
    Model(imgl: "assets/jasmine.webp", name: "jasmine", name2: "flower"),
    Model(imgl: "assets/hibiscus.webp", name: "hibiscus", name2: "flower"),
    Model(imgl: "assets/daisy.webp", name: "daisy", name2: "flower"),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 43, 20, 215),
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          title: const Text(
            "Chats",
            style: TextStyle(fontSize: 25),
          ),
          actions: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.settings,
                  size: 30,
                ))
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("Favorite Contacts",
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.bold)),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 130,
                child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CircleAvatar(
                              radius: 40,
                              backgroundImage: AssetImage(Contacts[index].imgl),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Text(
                              Contacts[index].name,
                              style: const TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                      );
                    },
                    separatorBuilder: (context, index) {
                      return const SizedBox(
                        width: 10,
                      );
                    },
                    itemCount: Contacts.length),
              ),
              Expanded(
                  child: Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30)),
                ),
                child: ListView.separated(
                  itemBuilder: (BuildContext context, int index) {
                    return ListTile(
                      onTap: () {
                        
                      },
                       contentPadding: const EdgeInsets.all(0),
                        leading: CircleAvatar(
                          radius: 40,
                          
                         // backgroundImage: AssetImage(Contacts[index].imgl),
                          child: ClipRRect(borderRadius: BorderRadius.circular(30),
                            child: Image.asset(Contacts[index].imgl,
                            fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        title: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              Contacts[index].name,
                              style: const TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w500),
                            ),
                            const SizedBox(
                              width: 3,
                            ),
                            Text(Contacts[index].name2,
                                style: const TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.w500))
                          ],
                        ),
                        subtitle: const Text("good morning",
                            style: TextStyle(
                                fontSize: 15,
                                color: Color.fromARGB(255, 72, 72, 72))),
                                trailing: const Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Text("10:00 pm"),
                                ),
                                );
                  },
                  separatorBuilder: (BuildContext context, int index) {
                    return const SizedBox(
                      height: 10,
                    );
                  },
                  itemCount: Contacts.length,
                ),
              ))
            ],
          ),
        ),
      ),
    );
  }
}
