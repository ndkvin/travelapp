import 'package:bloc/bloc.dart';

class SeatCubit extends Cubit<List<String>> {
  SeatCubit() : super([]);

  void addSeat(String seatId) {
    print("prev ${state}");
    if(!isSelected(seatId)) {
      state.add(seatId);
      emit(List.of(state));
    } else {
      state.remove(seatId);
      emit(List.of(state));
    }
    print("next ${state}");
  }

  bool isSelected(String id) {
    if(state.contains(id)) {
      return true;
    }
    return false;
  }
}
