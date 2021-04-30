import 'package:canton_design_system/canton_design_system.dart';

class Toolbar extends StatelessWidget {
  const Toolbar({Key key, this.onSelected, this.selectedType})
      : super(key: key);

  final SmartTextType selectedType;
  final ValueChanged<SmartTextType> onSelected;

  @override
  Widget build(BuildContext context) {
    Color primaryColor = Theme.of(context).primaryColor;
    return PreferredSize(
      preferredSize: Size.fromHeight(56),
      child: Material(
        elevation: 4.0,
        color: CantonColors.bgCanvas,
        child: Row(
          children: <Widget>[
            CantonActionButton(
              icon: Icon(
                FeatherIcons.type,
                color: selectedType == SmartTextType.H1
                    ? primaryColor
                    : CantonColors.iconPrimary,
              ),
              onPressed: () => onSelected(SmartTextType.H1),
            ),
            CantonActionButton(
              icon: Icon(
                FeatherIcons.feather,
                color: selectedType == SmartTextType.QUOTE
                    ? primaryColor
                    : CantonColors.iconPrimary,
              ),
              onPressed: () => onSelected(SmartTextType.QUOTE),
            ),
            CantonActionButton(
              icon: Icon(
                FeatherIcons.list,
                color: selectedType == SmartTextType.BULLET
                    ? primaryColor
                    : CantonColors.iconPrimary,
              ),
              onPressed: () => onSelected(SmartTextType.BULLET),
            ),
          ],
        ),
      ),
    );
  }
}
