import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'get_all_regions_state.dart';

class GetAllRegionsCubit extends Cubit<GetAllRegionsState> {
  GetAllRegionsCubit() : super(GetAllRegionsInitial());
}
