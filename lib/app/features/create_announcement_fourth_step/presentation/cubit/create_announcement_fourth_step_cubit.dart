import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'create_announcement_fourth_step_state.dart';

class CreateAnnouncementFourthStepCubit extends Cubit<CreateAnnouncementFourthStepState> {
  CreateAnnouncementFourthStepCubit() : super(CreateAnnouncementFourthStepInitial());
}
