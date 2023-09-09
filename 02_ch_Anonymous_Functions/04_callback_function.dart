class Button {
  Button({
    required this.title,
    required this.onPressed,
  });

  final String title;
  final void Function() onPressed;
}

void main() {
  final myButton = Button(
      title: "Click me!",
      onPressed: () {
        print('Clicked');
      });

  myButton.onPressed();
  myButton.onPressed.call();

  final myWidget = MyWidget(onTouch: (x) => print('Screen touch at $x'));

  myWidget.onTouch(3.14);

  final anotherWidget =
      AnotherWidget(timeStamp: () => DateTime.now().toIso8601String());

  final timeStamp = anotherWidget.timeStamp?.call();
  print(timeStamp);

  // State Management
  final manager = StateManager();
  final myButton2 = Button(
      title: "State ManageMent Button", onPressed: manager.handleButtonClick);
}

class MyWidget {
  MyWidget({
    required this.onTouch,
  });

  final void Function(double xPosition) onTouch;
}

class AnotherWidget {
  AnotherWidget({
    this.timeStamp,
  });
  final String Function()? timeStamp;
}

class StateManager {
  int _counter = 0;
  void handleButtonClick() {
    _counter++;
  }
}
