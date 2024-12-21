import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ButtonsScreen extends StatelessWidget {
  static const String name = 'buttons_screen';

  const ButtonsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Botones'),
      ),
      body: const _ButtonsView(),
      floatingActionButton: FloatingActionButton( onPressed: () {
        context.pop();
      },
      child: const Icon(Icons.arrow_back_ios_new_rounded),
      ),
    );
  }
}

class _ButtonsView extends StatelessWidget {
  const _ButtonsView();

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Wrap(
          spacing: 10,
          alignment: WrapAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {}, child: const Text('ElevatedButton')),
            const ElevatedButton(onPressed: null, child: Text('Disabled')),
            ElevatedButton.icon(
                onPressed: () {},
                label: const Text('ElevatedButton.icon'),
                icon: const Icon(Icons.add)),
            FilledButton(onPressed: () {}, child: const Text('FilledButton')),
            FilledButton.icon(
                onPressed: () {},
                label: const Text('FilledButton.icon'),
                icon: const Icon(Icons.add)),
            OutlinedButton(
                onPressed: () {}, child: const Text('OutlinedButton')),
            OutlinedButton.icon(
                onPressed: () {},
                label: const Text('OutlinedButton.icon'),
                icon: const Icon(Icons.add)),
            TextButton(onPressed: () {}, child: const Text('TextButton')),
            TextButton.icon(
                onPressed: () {},
                label: const Text('TextButton.icon'),
                icon: const Icon(Icons.add)),
            IconButton(onPressed: () {}, icon: const Icon(Icons.add)),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.app_registration),
              style: ButtonStyle(
                backgroundColor: WidgetStateProperty.all(colors.primary),
                iconColor: WidgetStateProperty.all(Colors.white),
              ),
            ),
            const CustomBotton(),
          ],
        ),
      ),
    );
  }
}


class CustomBotton extends StatelessWidget {

  const CustomBotton({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Material(
        color: colors.primary,
        child: InkWell(
          onTap: () {},
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
            child: Text("hOLA mUNDO", style: TextStyle(
              color: Colors.white,
            ),)),
        ),
      ),
    );
  }
}
