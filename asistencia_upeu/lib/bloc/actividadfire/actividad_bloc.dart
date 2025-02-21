
import 'package:asistencia_upeu/modelo/ActividadModeloFire.dart';
import 'package:asistencia_upeu/repository/ActividadFireRepository.dart';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'actividad_event.dart';
part 'actividad_state.dart';

class ActividadBloc extends Bloc<ActividadEvent, ActividadState> {
  late final ActividadFireRepository _actividadRepository;

  ActividadBloc(this._actividadRepository) : super(ActividadInitialState()) {
    on<ActividadEvent>((event, emit) async{
      // TODO: implement event handler
      print("Bloc x");
      if(event is ListarActividadEvent){
        emit(ActividadLoadingState());
        try{
          print("pasox!!");
          List<ActividadModeloFire> PersonaList= await _actividadRepository.getActividad();
          emit(ActividadLoadedState(PersonaList));
        } catch(e){
          emit(ActividadError(e as Error)) ;
        }
      }else if(event is DeleteActividadEvent){
        try{
          await _actividadRepository.deleteActividad(event.actividad!.id);
          emit(ActividadLoadingState());
          List<ActividadModeloFire> PersonaList= await _actividadRepository.getActividad();
          emit(ActividadLoadedState(PersonaList));
        }catch(e){
          emit(ActividadError(e as Error));
        }
      }else if(event is CreateActividadEvent){
        try{
          await _actividadRepository.createActividad(event.actividad!);
          emit(ActividadLoadingState());
          List<ActividadModeloFire> PersonaList= await _actividadRepository.getActividad();
          emit(ActividadLoadedState(PersonaList));
        }catch(e){
          emit(ActividadError(e as Error));
        }
      }else if(event is UpdateActividadEvent){
        try{
          await _actividadRepository.updateActividad(event.actividad!.id, event.actividad!);
          emit(ActividadLoadingState());
          List<ActividadModeloFire> PersonaList= await _actividadRepository.getActividad();
          emit(ActividadLoadedState(PersonaList));
        }catch(e){
          emit(ActividadError(e as Error));
        }
      }
    });
  }
}
