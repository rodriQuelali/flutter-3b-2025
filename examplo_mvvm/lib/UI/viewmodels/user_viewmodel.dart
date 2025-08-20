import 'package:examplo_mvvm/data/models/user_model.dart';
import 'package:examplo_mvvm/data/repositories/user_repository.dart';
import 'package:flutter/material.dart';



enum ViewState { idle, busy, error }

class UserViewModel extends ChangeNotifier {
  final UserRepository _repository = UserRepository();

  List<User> _users = [];
  List<User> get users => _users;

  ViewState _state = ViewState.idle;
  ViewState get state => _state;

  String? _errorMessage;
  String? get errorMessage => _errorMessage;

  void _setState(ViewState viewState) {
    _state = viewState;
    notifyListeners();
  }

  void _setUsers(List<User> users) {
    _users = users;
    notifyListeners();
  }

  void _setErrorMessage(String message) {
    _errorMessage = message;
    notifyListeners();
  }

  Future<void> fetchUsers() async {
    _setState(ViewState.busy); // Estado de carga
    try {
      final userList = await _repository.getUsers();
      _setUsers(userList);
      _setState(ViewState.idle); // Estado normal
    } catch (e) {
      _setErrorMessage(e.toString());
      _setState(ViewState.error); // Estado de error
    }
  }
}