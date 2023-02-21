import 'package:flutter/cupertino.dart';
import 'package:flutter_custom_cards/flutter_custom_cards.dart';

class PiggyBankWidget extends StatefulWidget {
  final int? index;
  final IconData? iconData;
  final String? name;
  final bool? isSelected;
  final VoidCallback? onTap;

  const PiggyBankWidget(
      {Key? key,
      this.index,
      this.iconData,
      this.name,
      this.isSelected,
      this.onTap})
      : super(key: key);

  @override
  State<PiggyBankWidget> createState() => _PiggyBankWidgetState();
}

class _PiggyBankWidgetState extends State<PiggyBankWidget> {
  @override
  Widget build(BuildContext context) {
    return CustomCard(
      onTap: widget.onTap,
      width: 68,
      height: 122,
      borderRadius: 50,
      color: const Color(0xFFDDEFE8),
      child: Column(children: [
        CustomCard(
          child: Icon(widget.iconData, size: 27),
          color: Color(0xFFDDEFE8),
          borderRadius: 30,
          borderColor: Color(0xFFAEE5DB),
          elevation: 0,
        ),
        const Padding(padding: EdgeInsetsDirectional.only(top: 20)),
        Text(
          widget.name!,
          style: TextStyle(fontSize: 12),
        )
      ]),
    );
  }
}
