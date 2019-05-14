import 'field_validators.dart';
import 'package:rxdart/rxdart.dart';

class ContactBloc with FieldValidators {

  
  final _nameController = new BehaviorSubject<String>();
  Observable<String> get nameFlux =>
      _nameController.stream.transform(nameValidator);
  Sink<String> get nameEvent => _nameController.sink;

  final _emailController = new BehaviorSubject<String>();
  Observable<String> get emailFlux =>
      _emailController.stream.transform(emailValidator);
  Sink<String> get emailEvent => _emailController.sink;

  final _phoneController = new BehaviorSubject<String>();
  Observable<String> get phoneFlux =>
      _phoneController.stream.transform(phoneValidator);
  Sink<String> get phoneEvent => _phoneController.sink;

  final _companyController = new BehaviorSubject<String>();
  Observable<String> get companyFlux =>
      _companyController.stream.transform(companyValidator);
  Sink<String> get companyEvent => _companyController.sink;

  final _messageController = new BehaviorSubject<String>();
  Observable<String> get messageFlux =>
      _messageController.stream.transform(messageValidator);
  Sink<String> get messageEvent => _messageController.sink;

  ContactBloc();

/// envia todos os dados do formulário
  void submit() {
    
  }

/// combina todos as streams, pra dai liberar o botão de logar
  Observable<bool> get validate => Observable
  .combineLatest(
[nameFlux, emailFlux, phoneFlux, companyFlux, messageFlux], (e) => true);

  void dispose() {
    _nameController.close();
    _emailController.close();
    _phoneController.close();
    _companyController.close();
    _messageController.close();
  }
}
