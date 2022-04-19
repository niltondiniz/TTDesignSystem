import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:the_design_system/src/shared/utils/input_formaters/decimal_input_formater.dart';
import 'package:the_design_system/the_design_system.dart';
import 'package:the_design_system/src/shared/app_colors.dart';
import 'package:the_design_system/src/shared/styles/input_styles.dart';
import 'package:the_design_system/src/shared/styles/text_styles_regular.dart';
import 'package:the_design_system/src/shared/utils/input_formaters/currency_input_formater.dart';
import 'package:the_design_system/src/shared/utils/input_validators.dart';
import 'package:the_design_system/src/shared/utils/mask_pattern.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class TheInput extends StatelessWidget {
  final String? hintText;
  final TextInputType textInputType;
  final TextEditingController controller;
  final TextInputFormatter? formatter;
  final bool? enabled;
  final Widget? prefixIcon;
  final Widget? sulfixIcon;
  final String? errorText;
  final bool Function(String) validate;
  final int minLines;
  final int? maxLines;
  final Color? color;
  final Function? onTap;
  final Function? onChanged;
  final Function? onFieldSubmitted;
  final bool? onFocus;
  final TextStyle? textStyle;
  final TextCapitalization? textCapitalization;

  const TheInput({
    Key? key,
    required this.controller,
    this.hintText,
    this.formatter,
    this.enabled,
    this.textInputType = TextInputType.text,
    this.prefixIcon,
    this.sulfixIcon,
    this.errorText = "",
    this.color = blueColor,
    required this.validate,
    required this.minLines,
    this.maxLines,
    this.onTap,
    this.onChanged,
    this.onFieldSubmitted,
    this.onFocus,
    this.textStyle,
    this.textCapitalization,
  }) : super(key: key);

  static get theTextInputType => null;
  static get theFormatter => null;
  static get thePrefixIcon => null;
  static get theSulfixIcon => null;
  static get theValidate => null;
  static get theMinLines => null;

  TheInput.body(
    this.hintText,
    this.controller, [
    this.enabled,
    this.errorText,
    this.color,
    this.onTap,
    this.onChanged,
    this.onFieldSubmitted,
    this.onFocus,
    this.textStyle,
    this.maxLines,
  ])  : textInputType = theTextInputType,
        formatter = theFormatter,
        prefixIcon = thePrefixIcon,
        sulfixIcon = theSulfixIcon,
        validate = theValidate,
        textCapitalization = TextCapitalization.none,
        minLines = theMinLines;

  TheInput.phoneInput(
    this.hintText,
    this.controller, [
    this.enabled,
    this.errorText = 'Informe um telefone válido',
    this.color,
    this.onTap,
    this.onChanged,
    this.onFieldSubmitted,
    this.onFocus,
    this.textStyle,
    this.maxLines,
  ])  : textInputType = TextInputType.phone,
        formatter = MaskTextInputFormatter(
          mask: maskPatternPhone,
        ),
        prefixIcon = Icon(Icons.phone_android),
        sulfixIcon = null,
        validate = isPhone,
        textCapitalization = TextCapitalization.none,
        minLines = 1;

  TheInput.moneyInput(
    this.hintText,
    this.controller, [
    this.enabled,
    this.errorText = 'Informe o valor da viagem',
    this.color,
    this.onTap,
    this.onChanged,
    this.onFieldSubmitted,
    this.onFocus,
    this.textStyle,
    this.maxLines,
  ])  : textInputType = TextInputType.phone,
        formatter = CurrencyInputFormatter(),
        prefixIcon = null,
        sulfixIcon = null,
        validate = noValidate,
        textCapitalization = TextCapitalization.none,
        minLines = 1;

  TheInput.decimalInput(
    this.hintText,
    this.controller, [
    this.enabled,
    this.errorText = '',
    this.color,
    this.onTap,
    this.onChanged,
    this.onFieldSubmitted,
    this.onFocus,
    this.textStyle,
    this.maxLines,
  ])  : textInputType = TextInputType.numberWithOptions(
          decimal: true,
        ),
        formatter = theFormatter,
        prefixIcon = null,
        sulfixIcon = null,
        validate = noValidate,
        textCapitalization = TextCapitalization.none,
        minLines = 1;

  TheInput.nameInput(
    this.hintText,
    this.controller, [
    this.enabled,
    this.errorText = 'Preencha o nome corretamente',
    this.color,
    this.onTap,
    this.onChanged,
    this.onFieldSubmitted,
    this.onFocus,
    this.textStyle,
    this.maxLines,
  ])  : textInputType = TextInputType.name,
        formatter = MaskTextInputFormatter(mask: maskPatternNoMask),
        prefixIcon = Icon(Icons.person),
        sulfixIcon = null,
        validate = isNotEmpty,
        textCapitalization = TextCapitalization.none,
        minLines = 1;

  TheInput.passwordInput(
    this.hintText,
    this.controller, [
    this.enabled,
    this.errorText = 'Este campo não pode ser vazio.',
    this.color,
    this.onTap,
    this.onChanged,
    this.onFieldSubmitted,
    this.onFocus,
    this.textStyle,
    this.maxLines = 1,
  ])  : textInputType = TextInputType.text,
        formatter = FilteringTextInputFormatter.singleLineFormatter,
        prefixIcon = Icon(Icons.lock_outline),
        sulfixIcon = null,
        validate = isNotEmpty,
        textCapitalization = TextCapitalization.none,
        minLines = 1;

  TheInput.numberInput(
    this.hintText,
    this.controller, [
    this.enabled,
    this.errorText = 'Este campo não pode ser vazio.',
    this.color,
    this.onTap,
    this.onChanged,
    this.onFieldSubmitted,
    this.onFocus,
    this.textStyle,
    this.maxLines,
  ])  : textInputType = TextInputType.number,
        formatter = FilteringTextInputFormatter.singleLineFormatter,
        prefixIcon = null,
        sulfixIcon = null,
        validate = isNotEmpty,
        textCapitalization = TextCapitalization.none,
        minLines = 1;

  TheInput.emailInput(
    this.hintText,
    this.controller, [
    this.enabled,
    this.errorText = 'Preencha o e-mail corretamente',
    this.color,
    this.onTap,
    this.onChanged,
    this.onFieldSubmitted,
    this.onFocus,
    this.textStyle,
    this.maxLines,
  ])  : textInputType = TextInputType.emailAddress,
        formatter = MaskTextInputFormatter(
          mask: maskPatternNoMask,
        ),
        prefixIcon = Icon(Icons.email),
        sulfixIcon = null,
        validate = isEmail,
        textCapitalization = TextCapitalization.none,
        minLines = 1;

  TheInput.operationCode(
    this.hintText,
    this.controller, [
    this.enabled,
    this.errorText = 'Código do Ativo',
    this.color,
    this.onTap,
    this.onChanged,
    this.onFieldSubmitted,
    this.onFocus,
    this.textStyle,
    this.maxLines,
  ])  : textInputType = TextInputType.text,
        formatter = MaskTextInputFormatter(
          mask: maskPatternNoMask,
        ),
        prefixIcon = null,
        sulfixIcon = null,
        validate = noValidate,
        minLines = 1,
        textCapitalization = TextCapitalization.characters;

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(
        maxHeight: 92,
        maxWidth: double.infinity,
        minHeight: 50,
        minWidth: double.infinity,
      ),
      child: TextFormField(
        validator: (value) {
          if (!this.validate(value!)) {
            return this.errorText;
          } else {
            return null;
          }
        },
        textCapitalization: this.textCapitalization!,
        obscureText: this.enabled == true,
        obscuringCharacter: "*",
        enabled: this.enabled,
        controller: this.controller,
        minLines: this.minLines,
        maxLines: this.maxLines ?? 5,
        inputFormatters: [this.formatter!],
        textAlignVertical: TextAlignVertical.center,
        keyboardType: textInputType,
        style: textStyle ?? h4RegularStyle,
        autofocus: onFocus ?? false,
        decoration: InputDecoration(
          filled: true,
          fillColor: this.enabled == false ? grey : whiteColor,
          focusedErrorBorder: focusedErrorBorder,
          errorBorder: errorBorder,
          enabledBorder: enabledBorder,
          disabledBorder: enabledBorder,
          focusedBorder: focusedBorder,
          labelText: this.hintText,
          isDense: true,
          hintText: this.hintText,
          hintStyle: h4RegularStyle,
          prefixIcon: this.prefixIcon,
          suffixIcon: this.sulfixIcon,
        ),
        onTap: onTap as void Function()?,
        onChanged: onChanged as void Function(String)?,
        onFieldSubmitted: onFieldSubmitted as void Function(String)?,
      ),
    );
  }
}
