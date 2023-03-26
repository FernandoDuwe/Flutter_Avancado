import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:mobx/mobx.dart';
part 'statsStore.g.dart';

class StatsStore = _StatsStore with _$StatsStore;

abstract class _StatsStore with Store {
  @observable
  int counter = 0;

  _StatsStore() {
    DocumentReference vrDoc = FirebaseFirestore.instance.collection("stats").doc("main");

    vrDoc.snapshots().listen((event) {
      this.counter = ((event.data() as Map<String, dynamic>)["counter"]);
    });
  }
}