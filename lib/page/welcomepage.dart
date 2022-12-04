import 'package:flutter/material.dart';

class welcomepage extends StatelessWidget {
  const welcomepage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Material App Bar'),
        ),
        body: Container(
            child: Column(
          children: [
            TextField(
              // controller attribute.
              //controller: controller_object_name,
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Enter your Phone Number"),
            ),
            ElevatedButton(
                onPressed: () {
                  //Navigator for next page.
                  /*Navigator.of(context).push(
                    MaterialPageRoute(
                        //Builder for the nextpage class's constructor.
                        builder: (context) => nextpage(
                              name: _name.text,
                              email: _email.text,
                              phoneno: _phoneno.text,
                            )),
                  );*/
                },
                child: Text("SEND")),
          ],
        )),
      ),
    );
  }
}
