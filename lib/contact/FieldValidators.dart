import 'dart:async';

class FieldValidators {
  final nameValidator = new StreamTransformer<String, String>.fromHandlers(
      handleData: (data, sink) {
    String value = data.trim();
    value.isNotEmpty
        ? sink.add(value)
        : sink.addError("O campo nome não pode ser vazio");
  });

  final emailValidator = new StreamTransformer<String, String>.fromHandlers(
      handleData: (data, sink) {
    String value = data.trim();
    value.isNotEmpty
        ? sink.add(value)
        : sink.addError("O campo email não pode ser vazio");
  });

  final phoneValidator = new StreamTransformer<String, String>.fromHandlers(
      handleData: (data, sink) {
    String value = data.trim();
    if (!value.isNotEmpty) {
    } else {
      sink.add(value);
    }
  });

  final companyValidator = new StreamTransformer<String, String>.fromHandlers(
      handleData: (data, sink) {
    String value = data.trim();
    value.isNotEmpty
        ? sink.add(value)
        : sink.addError("O campo company não pode ser vazio");
  });

  final messageValidator = new StreamTransformer<String, String>.fromHandlers(
      handleData: (data, sink) {
    String value = data.trim();
    value.isNotEmpty
        ? sink.add(value)
        : sink.addError("O campo message não pode ser vazio");
  });
}
