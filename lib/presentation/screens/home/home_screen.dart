import 'package:flutter/material.dart';
import 'package:widgets_app/config/menu/menu_items.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(appBar: AppBar(
      title: const Text('Flutter Widgets'),
    ),
    
    body: const _HomeView(),
    );
    
  }
}

class _HomeView extends StatelessWidget {
  const _HomeView();

  @override
  Widget build(BuildContext context) {
    
    return ListView.builder(
      physics: const BouncingScrollPhysics(),
      itemCount: appMenuItems.length,
      itemBuilder: (context, index) {
        final item = appMenuItems[index];
        return _CustomListTitle(menuItem: item);
      },

      
    );
  }
}

class _CustomListTitle extends StatelessWidget {
  const _CustomListTitle({
    required this.menuItem,
  });

  final MenuItem menuItem;

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return ListTile(
      trailing: const Icon(Icons.arrow_forward_ios_rounded),
      title: Text(menuItem.title),
    
      subtitle: Text(menuItem.subTitle),
      leading: Icon(menuItem.icon, color: colors.primary,),
      onTap: () {
       Navigator.pushNamed(context,menuItem.link );
      },

      
    );
  }
}