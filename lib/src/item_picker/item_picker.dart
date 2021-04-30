import 'package:canton_design_system/canton_design_system.dart';
export 'item_picker.dart';
export 'canton_item_box.dart';
export 'item_customizations.dart';

class ItemPicker extends StatefulWidget {
  final ValueChanged<Item> onItemChange;
  final List<Item> items;
  final Item selectedItem, initialItem;
  final bool symbolPicker, horizonantalList;

  const ItemPicker({
    Key key,
    this.onItemChange,
    this.selectedItem,
    this.initialItem,
    this.items,
    this.symbolPicker,
    this.horizonantalList,
  }) : super(key: key);

  @override
  _ItemPickerState createState() => _ItemPickerState();
}

class _ItemPickerState extends State<ItemPicker> {
  Item _selectedItem;
  int _selectedColor;
  String _selectedSymbol;

  @override
  void initState() {
    super.initState();
    _initSelectedValue();
  }

  _initSelectedValue() {
    _selectedItem = widget.initialItem ?? widget.items[0];
    _selectedColor = tagColors[0].color;
    _selectedSymbol = emojiList[0].symbol;
  }

  void _onItemSelected(Item item) {
    return widget.onItemChange(item);
  }

  Widget gridList() {
    return SizedBox(
      height: 150,
      child: GridView.builder(
        itemCount: widget.items.length,
        scrollDirection: Axis.vertical,
        gridDelegate:
            new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 5),
        itemBuilder: (_, index) {
          return widget.symbolPicker
              ? ItemBox.symbols(
                  item: widget.items[index],
                  isSelected: _selectedSymbol == widget.items[index].symbol,
                  onPressed: () {
                    setState(() {
                      _selectedSymbol = widget.items[index].symbol;
                      _onItemSelected(widget.items[index]);
                    });
                  },
                )
              : ItemBox(
                  item: widget.items[index],
                  isSelected: _selectedColor == widget.items[index].color,
                  onPressed: () {
                    setState(() {
                      _selectedColor = widget.items[index].color;
                      _onItemSelected(widget.items[index]);
                    });
                  },
                );
        },
      ),
    );
  }

  Widget horizontalList() {
    return Expanded(
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: widget.items.length,
        separatorBuilder: (_, index) {
          return SizedBox(width: 7);
        },
        itemBuilder: (_, index) {
          return ItemBox(
            item: widget.items[index],
            isSelected: _selectedItem == widget.items[index],
            onPressed: () {
              setState(() {
                _selectedItem = widget.items[index];
                _selectedColor = widget.items[index].color;
                _onItemSelected(widget.items[index]);
              });
            },
          );
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return widget.horizonantalList ? horizontalList() : gridList();
  }
}
