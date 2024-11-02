import 'package:redux/redux.dart';
import 'package:redux_example/reducers/carrinho_reducer.dart';
import 'package:redux_example/states/carrinho_state.dart';

final Store<CarrinhoState> carrinhoStore = Store<CarrinhoState>(
    carrinhoStateReducer, initialState: CarrinhoState(products: []));