import 'package:examplo_mvvm/UI/viewmodels/user_viewmodel.dart';
import 'package:examplo_mvvm/UI/views/user_list_view.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MVVM Example',
      home: ChangeNotifierProvider(
        create: (context) => UserViewModel(),
        child: const UserListView(),
      ),
    );
  }
}