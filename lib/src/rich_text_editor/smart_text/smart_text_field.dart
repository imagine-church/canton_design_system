import 'package:canton_design_system/canton_design_system.dart';

class SmartTextField extends StatelessWidget {
  const SmartTextField(
      {Key key,
      this.type,
      this.controller,
      this.focusNode,
      this.autoFocus,
      this.onChanged})
      : super(key: key);

  final SmartTextType type;
  final TextEditingController controller;
  final FocusNode focusNode;
  final bool autoFocus;
  final void Function(String) onChanged;

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: TextField(
        controller: controller,
        focusNode: focusNode,
        autofocus: autoFocus ?? true,
        keyboardType: TextInputType.multiline,
        maxLines: null,
        cursorColor: Theme.of(context).primaryColor,
        textAlign: type.align,
        onChanged: onChanged,
        decoration: InputDecoration(
          border: InputBorder.none,
          prefixText: type.prefix,
          prefixStyle: type.textStyle,
          isDense: true,
          contentPadding: type.padding,
        ),
        style: type.textStyle,
      ),
    );
  }
}
