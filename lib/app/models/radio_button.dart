import 'package:mobx/mobx.dart';
part 'radio_button.g.dart';

class RadioButton = RadioButtonBase with _$RadioButton;

abstract class RadioButtonBase with Store {
  @observable
  int value = -1;
  @action
  void changeCurrentSelectedItem({required int selectedItem}) => value = selectedItem;
}
