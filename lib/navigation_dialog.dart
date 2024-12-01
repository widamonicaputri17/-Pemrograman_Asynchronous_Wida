import 'package:flutter/material.dart';

class NavigationDialogScreen extends StatefulWidget {
  const NavigationDialogScreen({super.key});

  @override
  State<NavigationDialogScreen> createState() => _NavigationDialogScreenState();
}

class _NavigationDialogScreenState extends State<NavigationDialogScreen> {
  Color color = Colors.green.shade700;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color,
      appBar: AppBar(
        title: const Text('Navigation Dialog Screen'),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text('Change Color'),
          onPressed: () {
            _showColorDialog(context);
          },
        ),
      ),
    );
  }

  Future<void> _showColorDialog(BuildContext context) async {
    await showDialog(
      barrierDismissible: false,
      context: context,
      builder: (_) {
        return AlertDialog(
          title: const Text('Very important question'),
          content: const Text('Please choose a color'),
          actions: <Widget>[
            TextButton(
              child: const Text('Pink'),
              onPressed: () {
                setState(() {
                  color = Colors.pink.shade700;
                });
                Navigator.pop(context, color);
              },
            ),
            TextButton(
              child: const Text('Yellow'),
              onPressed: () {
                setState(() {
                  color = Colors.yellow.shade700;
                });
                Navigator.pop(context, color);
              },
            ),
            TextButton(
              child: const Text('Red'),
              onPressed: () {
                setState(() {
                  color = Colors.red.shade700;
                });
                Navigator.pop(context, color);
              },
            ),
          ],
        );
      },
    );
  }
}
