import 'package:examplo_mvvm/UI/viewmodels/user_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


class UserListView extends StatefulWidget {
  const UserListView({super.key});

  @override
  State<UserListView> createState() => _UserListViewState();
}

class _UserListViewState extends State<UserListView> {
//setState, 
  @override
  void initState() {
    super.initState();
    // Llamamos al método para obtener los usuarios cuando la vista se inicializa
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Provider.of<UserViewModel>(context, listen: false).fetchUsers();
    });
  }

  @override
  Widget build(BuildContext context) {
  
    final userViewModel = Provider.of<UserViewModel>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Users (MVVM)'),
      ),
      body: _buildBody(userViewModel),
    );
  }

  Widget _buildBody(UserViewModel viewModel) {
    switch (viewModel.state) {
      case ViewState.busy:
        return const Center(child: CircularProgressIndicator());
      case ViewState.error:
        return Center(
          child: Text(viewModel.errorMessage ?? 'An unknown error occurred'),
        );
      case ViewState.idle:
        return ListView.builder(
          itemCount: viewModel.users.length,
          itemBuilder: (context, index) {
            final user = viewModel.users[index];
            return ListTile(
              title: Text(user.name),
              subtitle: Text(user.email),
            );
          },
        );
      default:
        return Container();
    }
  }
}