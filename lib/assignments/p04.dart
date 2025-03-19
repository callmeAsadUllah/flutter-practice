import 'package:flutter/material.dart';

class P04 extends StatelessWidget {
  const P04({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                flex: 2,
                child: Text("Feature", textAlign: TextAlign.start),
              ),
              Expanded(
                flex: 1,
                child: Text("Basic", textAlign: TextAlign.center),
              ),
              Expanded(
                flex: 1,
                child: Text("Premium", textAlign: TextAlign.center),
              ),
            ],
          ),
          const Divider(),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,

            children: [
              Expanded(
                flex: 2,
                child: Text("Unlimited", textAlign: TextAlign.start),
              ),
              Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Image.asset(
                    "images/checkmark-svgrepo-com.png",
                    height: 20,
                    width: 20,
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Image.asset(
                    "images/checkmark-svgrepo-com.png",
                    height: 20,
                    width: 20,
                  ),
                ),
              ),
            ],
          ),
          const Divider(),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,

            children: [
              Expanded(
                flex: 2,
                child: Text("Support", textAlign: TextAlign.start),
              ),
              Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Image.asset(
                    "images/cross-mark-svgrepo-com.png",
                    height: 20,
                    width: 20,
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Image.asset(
                    "images/checkmark-svgrepo-com.png",
                    height: 20,
                    width: 20,
                  ),
                ),
              ),
            ],
          ),
          const Divider(),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                flex: 2,
                child: Text("Storage", textAlign: TextAlign.start),
              ),
              Expanded(
                flex: 1,
                child: Text("10 GB", textAlign: TextAlign.center),
              ),
              Expanded(
                flex: 1,
                child: Text("100 GB", textAlign: TextAlign.center),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
