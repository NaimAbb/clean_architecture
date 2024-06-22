import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:clean_architecture/src/app/presentation/widgets/app_text_field_widget.dart';
import 'package:clean_architecture/src/core/styles/colors_constant.dart';

class AppSearchTextFieldWidget extends StatefulWidget {
  final void Function(String? value)? onChanged;
  final VoidCallback onClear;

  const AppSearchTextFieldWidget({
    super.key,
    required this.onChanged,
    required this.onClear,
  });

  @override
  State<AppSearchTextFieldWidget> createState() =>
      _AppSearchTextFieldWidgetState();
}

class _AppSearchTextFieldWidgetState extends State<AppSearchTextFieldWidget> {
  // text editing controller.
  late final TextEditingController _textEditingController =
      TextEditingController();

  // clear icon flag.
  bool _showClearIcon = false;

  // on clear icon tapped.
  void onClearIconTapped() {
    _textEditingController.clear();
    setState(() {
      _showClearIcon = false;
    });
    widget.onClear();
  }

  @override
  Widget build(BuildContext context) {
    return AppTextFieldWidget(
      controller: _textEditingController,
      hintText: 'Search...',
      suffix: Padding(
          padding: EdgeInsets.all(10.h),
          child: _showClearIcon
              ? InkWell(
                  onTap: onClearIconTapped,
                  child: Icon(
                    CupertinoIcons.xmark_circle_fill,
                    color: ColorsConstants.red,
                    size: 25.h,
                  ),
                )
              : Container()
          // SvgPicture.asset(
          //         AssetsConstants.searchVector,
          //         colorFilter:
          //             ColorFilter.mode('darkGrey_white'.th, BlendMode.srcIn),
          //       ),
          ),
      onChanged: (value) {
        if (value == null || value.isEmpty) {
          setState(() {
            _showClearIcon = false;
          });
        } else {
          setState(() {
            _showClearIcon = true;
          });
        }
        widget.onChanged!(value);
      },
    );
  }

  // dispose.
  @override
  void dispose() {
    _textEditingController.dispose();
    super.dispose();
  }
}
