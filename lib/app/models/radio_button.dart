import 'package:mobx/mobx.dart';
import 'package:wassiet/generated/l10n.dart';
part 'radio_button.g.dart';

class RadioButton = RadioButtonBase with _$RadioButton;

abstract class RadioButtonBase with Store {
  @observable
  String selectedItemName = S.current.country;
  @action
  void changeCurrentSelectedItem({required String name}) => selectedItemName = name;
}
