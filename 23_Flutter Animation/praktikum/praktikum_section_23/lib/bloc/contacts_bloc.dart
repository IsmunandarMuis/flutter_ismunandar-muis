import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:praktikum_section_23/models/contact.dart';

part 'contacts_event.dart';
part 'contacts_state.dart';

class ContactsBloc extends Bloc<ContactsEvent, ContactsState> {
  ContactsBloc() : super(const ContactsState()) {
    on<AddContactEvent>((event, emit) {
      final state = this.state;
      emit(ContactsState(
          contactList: List.from(state.contactList)..insert(0, event.contact)));
    });

    on<DeletedContactEvent>((event, emit) {
      final state = this.state;
      emit(ContactsState(
          contactList: List.from(state.contactList)..remove(event.contact)));
    });
  }
}
