import 'package:wathsapp_clone/model/menu_items.dart';

class MenuItems {
  static const List<MenuItem> items = [
    newGroup,
    newBrodcast,
    linkedDevices,
    starredMessages,
    settings
  ];
  static const newGroup = MenuItem(text: "New group");
  static const newBrodcast = MenuItem(text: "New Brodcast");
  static const linkedDevices = MenuItem(text: "Linked devices");
  static const starredMessages = MenuItem(text: "Starred Messages");
  static const settings = MenuItem(text: "Settings");
}

class CscTabs {
  static const List<CscTab> itmes = [
    chats,
    status,
    calls
  ];
  static const chats = CscTab(text: "CHAT");
  static const status = CscTab(text: "STATUS");
  static const calls = CscTab(text: "CALLS");
}
