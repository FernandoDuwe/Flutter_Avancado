import 'package:exercicio17/models/userModel.dart';
import 'package:exercicio17/states/userState.dart';
import 'package:exercicio17/stores/userStore.dart';
import 'package:exercicio17/viewModels/homePageViewModel.dart';
import 'package:exercicio17/widgets/editUserButton.dart';
import 'package:exercicio17/widgets/logOffButton.dart';
import 'package:exercicio17/widgets/onlineButton.dart';
import 'package:exercicio17/widgets/onlineIndicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Página Inicial"),
        actions: [
          OnlineButton(),
          EditUserButton(),
        ],
      ),
      body: StoreConnector<UserState, HomePageViewModel>(
        converter: (store) =>
            HomePageViewModel(store.state.user.name, store.state.user.isOnline),
        builder: (context, vm) {
          return ListView(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Olá, " + vm.userName),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: OnlineIndicator(isOnline: vm.isOnline),
                  ),
                  Text(vm.isOnline ? "online" : "offline",
                      style: TextStyle(color: Colors.blueGrey, fontSize: 10))
                ],
              ),
            ],
          );
        },
      ),
      floatingActionButton: LogOffButton(),
    );
  }
}
