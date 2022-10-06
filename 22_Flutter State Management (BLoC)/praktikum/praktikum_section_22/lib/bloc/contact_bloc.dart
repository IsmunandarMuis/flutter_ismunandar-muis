import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:praktikum_section_22/models/contact_model.dart';

part 'contact_event.dart';
part 'contact_state.dart';

class ContactBloc extends Bloc<ContactEvent, ContactState> {
  ContactBloc() : super(ContactLoading()) {
    on<LoadContact>((event, emit) {
      emit(ContactLoaded(listContact: event.contact));
    });

    on<AddContact>((event, emit) {
      final state = this.state;
      if (state is ContactLoaded) {
        emit(ContactLoaded(
            listContact: List.from(state.listContact)
              ..insert(0, event.contact)));
      }
    });

    on<DeleteContact>((event, emit) {
      final state = this.state;
      if (state is ContactLoaded) {
        List<ContactModel> contacts = state.listContact.where((contact) {
          return contact.contactName != event.contact.contactName;
        }).toList();
        emit(ContactLoaded(listContact: contacts));
      }
    });
  }
}
