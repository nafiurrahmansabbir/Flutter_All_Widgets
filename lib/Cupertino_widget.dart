import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Cupertino extends StatelessWidget {
  const Cupertino({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      home: CP(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class CP extends StatelessWidget {
  const CP({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        backgroundColor: Colors.amber,
        middle: Text('Copertino Hoem'),
        trailing: CupertinoButton(
          onPressed: () {},
          child: Icon(CupertinoIcons.add),
        ),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: CupertinoActivityIndicator(
                radius: 24,
              ),
            ),
            SizedBox(
              height: 50,
            ),
            CupertinoSwitch(value: false, onChanged: (value) {})
          ],
        ),
      ),
    );
  }
}
