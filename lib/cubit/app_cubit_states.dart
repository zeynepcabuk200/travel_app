import 'package:equatable/equatable.dart';
import 'package:travel_app/model/data_model.dart';

abstract class AppCubitStates extends Equatable{

}
class InitialState extends AppCubitStates{
  @override
  // TODO: implement props
  List<Object?> get props => [];

}
class WelcomeState extends AppCubitStates{
  @override
  // TODO: implement props
  List<Object?> get props => [];

}
class LoadingState extends AppCubitStates{
  @override
  // TODO: implement props
  List<Object?> get props => [];

}
class LoadedState extends AppCubitStates{
  LoadedState(this.places
  );
  final List<DataModel> places;
  @override
  // TODO: implement props
  List<Object?> get props => [];

}