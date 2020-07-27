import 'dart:html';

void main() {
  var output = querySelector('#output');
  var input = querySelector('#inputText') as InputElement;
  var button = querySelector('#submitButton');
  button.onClick.forEach((element) {
    var text = input.value;
    if (text.isNotEmpty) {
      input.value = '';
      output.children.add(newLI(text));
    }
  });
}

LIElement newLI(String itemText) => LIElement()..text = itemText;
