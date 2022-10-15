import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:praktikum_26/model/api/contact_repository.dart';
import 'package:praktikum_26/model/contact.dart';

part 'contact_event.dart';
part 'contact_state.dart';

class ContactBloc extends Bloc<ContactEvent, ContactState> {
  final ContactRepository _repository;
  ContactBloc(this._repository) : super(ContactInitial()) {
    on<GetContact>((event, emit) async {
      try {
        emit(LoadingState());
        final result = await _repository.getContact();
        print("disini");
        emit(LoadedContactState(contacts: result));
      } catch (e) {
        emit(ErrorContactState(message: e.toString()));
      }
    });

    on<AddContact>((event, emit) async {
      try {
        emit(LoadingState());

        await _repository.addContact(event.contact);
      } catch (e) {
        emit(ErrorContactState(message: e.toString()));
      }
    });

    on<DeleteContact>((event, emit) async {
      try {
        emit(LoadingState());

        await _repository.deleteContact(phoneNumber: event.id);
      } catch (e) {
        print(e.toString());
        emit(ErrorContactState(message: e.toString()));
      }
    });
  }
}
