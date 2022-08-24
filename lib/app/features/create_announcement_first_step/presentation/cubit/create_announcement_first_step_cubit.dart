import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'create_announcement_first_step_state.dart';

class CreateAnnouncementFirstStepCubit extends Cubit<CreateAnnouncementFirstStepState> {
  CreateAnnouncementFirstStepCubit() : super(CreateAnnouncementFirstStepInitial());
}
