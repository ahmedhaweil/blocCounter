import 'package:flutter_bloc/flutter_bloc.dart';

import 'blocEvents.dart';

class BlocCounter extends Bloc<BlocCounterEvents,double> {
  BlocCounter(double initialState) : super(0);

  @override
  Stream<double> mapEventToState(BlocCounterEvents event) async*{
    // TODO: implement mapEventToState
    switch(event){
      case BlocCounterEvents.increment:
        yield state+1;
        break;
      case BlocCounterEvents.decrement:
        yield state-1;
        break;
      case BlocCounterEvents.MOHAMED:
        yield 0;
        break;
    }
  }
/*
* Map =>{"key ":Value}
* {event = state}
*
* */
}