import 'package:mobx/mobx.dart';
import 'package:mobx/mobx.dart';
part 'login-store.g.dart';

class LoginStore = _LoginStoreBase with _$LoginStore;

abstract class _LoginStoreBase with Store {
  @observable
  bool loading = false;

  @action
  void setLoading(_value) => loading = _value;
}
