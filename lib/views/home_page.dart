import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 36, horizontal: 20),
          child: Column(
            children: [
              const appbarcolumn(),
              const SizedBox(
                height: 20,
              ),
              const CustomButton(),
              
                const SizedBox(
                height: 20,
              ),
              Expanded(
                  child: ListView.builder(
                    itemCount: 5,
                itemBuilder: (context, index) 
                {
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 4),
                    child: Container(
                      color: Color.fromARGB(255, 35, 40, 44),
                      child: ListTile(leading:Text('dd') ,)),
                  );
                },
              ))
            ],
          ),
        ),
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.deepPurpleAccent,
      height: 40,
      width: double.infinity,
      child: TextButton.icon(
          onPressed: () {},
          icon: const Icon(
            Icons.add_box_sharp,
            color: Colors.white,
          ),
          label: const Text(
            'Add Task',
            style: TextStyle(color: Colors.white),
          )),
    );
  }
}

class appbarcolumn extends StatelessWidget {
  const appbarcolumn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: const [
            Text(
              'Tiny task,',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            Text(
              ' mightt',
              style: TextStyle(
                  fontSize: 30,
                  color: Colors.deepPurpleAccent,
                  fontWeight: FontWeight.bold),
            )
          ],
        ),
        Row(
          children: const [
            Text(
              'accomplishment',
              style: TextStyle(
                  fontSize: 30,
                  color: Colors.deepPurpleAccent,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              ' !!',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
          ],
        )
      ],
    );
  }
}
