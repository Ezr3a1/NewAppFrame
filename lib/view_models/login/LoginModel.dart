import 'package:newappframe/provider/view_state_model.dart';
import 'package:newappframe/services/auth/AuthService.dart';

class LoginModel extends ViewStateModel {
  Future<bool> login() async {
    setBusy();
    try {
      var user = await AuthService.login();
      setIdle();
      return true;
    } catch (e, s) {
      setError(e,s);
      return false;
    }
  }

  Future<bool> logout() async {
    setBusy();
    try {

      setIdle();
      return true;
    } catch (e, s) {
      setError(e,s);
      return false;
    }
  }
}