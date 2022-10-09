import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:praktikum_section_22/models/contact_model.dart';

part 'contact_event.dart';
part 'contact_state.dart';

class ContactBloc extends Bloc<ContactEvent, ContactState> {
  ContactBloc() : super(ContactInitial()) {
    on<AddContact>((event, emit) async {
      emit(ContactLoading());
      await Future.delayed(const Duration(seconds: 1));

      List<ContactModel> listContact = List.from(state.listContact)
        ..add(event.contact);

      emit(SuccessAdded());

      emit(ContactLoaded(listContact: listContact));
    });

    on<DeleteContact>((event, emit) async {
      emit(ContactLoading());
      await Future.delayed(const Duration(seconds: 1));

      emit(ContactLoaded(
          listContact: List.from(state.listContact)..remove(event.contact)));
    });
  }
}
