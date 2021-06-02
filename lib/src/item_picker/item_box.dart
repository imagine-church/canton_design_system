import 'package:canton_design_system/canton_design_system.dart';
import 'package:flutter/material.dart';

class ItemBox extends StatefulWidget {
  final Item item;
  final bool isSelected, isUsingSymbols;
  final VoidCallback onPressed;

  const ItemBox({
    Key key,
    @required this.item,
    this.isSelected,
    this.isUsingSymbols = false,
    this.onPressed,
  }) : super(key: key);

  const ItemBox.symbols({
    Key key,
    @required this.item,
    this.isSelected,
    this.isUsingSymbols = true,
    this.onPressed,
  }) : super(key: key);

  const ItemBox.nonSelectable({
    Key key,
    @required this.item,
    this.isSelected = false,
    this.isUsingSymbols = false,
    this.onPressed,
  }) : super(key: key);

  @override
  _ItemBoxState createState() => _ItemBoxState();
}

class _ItemBoxState extends State<ItemBox> {
  @override
  Widget build(BuildContext context) {
    bool _isSelected = widget.isSelected;

    bool isBoxTwo() {
      if ([false, null].contains(widget.item.boxTwo)) {
        return false;
      } else {
        return true;
      }
    }

    return GestureDetector(
      onTap: widget.onPressed,
      child: Material(
        shape: SquircleBorder(
          radius: isBoxTwo()
              ? BorderRadius.circular(50)
              : BorderRadius.circular(40),
        ),
        color: _isSelected
            ? isBoxTwo()
                ? Color(widget.item.color)
                : cantonGrey[200]
            : isBoxTwo()
                ? cantonGrey[200]
                : CantonColors.transparent,
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Container(
            width: isBoxTwo() ? (MediaQuery.of(context).size.width / 6.9) : 45,
            height: isBoxTwo() ? (MediaQuery.of(context).size.width / 6.9) : 45,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 45,
                  width: 45,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(widget.item.color ?? cantonGrey[400].value),
                  ),
                  child: Center(
                    child: isBoxTwo()
                        ? Text(
                            widget.item.symbol,
                            style: TextStyle(
                              fontFamily: 'Inter',
                              fontSize: 24,
                              color: cantonGrey[100],
                            ),
                          )
                        : widget.isUsingSymbols
                            ? Text(
                                widget.item.symbol,
                                style: TextStyle(
                                  fontFamily: 'Inter',
                                  fontSize: 32,
                                  color: cantonGrey[100],
                                ),
                              )
                            : Container(),
                  ),
                ),
                SizedBox(height: 5),
                isBoxTwo()
                    ? FittedBox(
                        fit: BoxFit.cover,
                        child: Text(
                          widget.item.label,
                          style: Theme.of(context).textTheme.bodyText2.copyWith(
                                color: _isSelected
                                    ? cantonGrey[100]
                                    : Color(cantonGrey[600].value),
                              ),
                        ),
                      )
                    : Container(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
