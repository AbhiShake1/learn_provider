import 'package:flutter/material.dart';
import 'package:learn_provider/commons/routes.dart';

Widget navigationButtons(BuildContext context) => Row(
      children: [
        RaisedButton(
          onPressed: () =>
              Navigator.pushReplacementNamed(context, changeNotifierPageRoute),
          child: const Text('Change Notifier'),
        ),
        RaisedButton(
          onPressed: () =>
              Navigator.pushReplacementNamed(context, stateNotifierPageRoute),
          child: const Text('State Notifier'),
        ),
        RaisedButton(
          onPressed: () =>
              Navigator.pushReplacementNamed(context, futurePageRoute),
          child: const Text('Future'),
        ),
      ],
    );
