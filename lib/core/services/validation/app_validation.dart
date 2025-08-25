
import '../../../config/i18n/generated/l10n.dart';
import '../../extensions/string.dart';


abstract class AppValidation
{
  AppValidation._();

  static String? emailValidation(String? value)
  {
    try
    {
      if (value == null || value.isEmpty)
      {
        return S.current.emailIsRequired;
      }
      if (!value.contains('@'))
      {
        return S.current.invalidEmailSymbol;
      }
      if (!value.emailEndsWithDomain)
      {
        return S.current.invalidEmailDomain;
      }
      if (!value.isEmail)
      {
        return S.current.enterEmail;
      }
      return null;
    }
    catch (e)
    {
      return '${S.current.emailFailureValidation} ${e.toString()}';
    }
  }

  static String? fullNameValidation(String? value)
  {
    try
    {
      if (value == null || value.trim().isEmpty)
      {
        return S.current.fullNameIsRequired;
      }
      if (!value.isFullName)
      {
        return S.current.fullNameinvalid;
      }
      return null;
    }
    catch (e)
    {
      return '${S.current.fullNameValidationFailure} ${e.toString()}';
    }
  }

  static String? passwordValidation(String? value)
  {
    try
    {
      final password = value ?? '';
      if (password.isEmpty)
      {
        return S.current.passwordIsRequired;
      }
      if (!password.passwordIsLongEnough)
      {
        return S.current.passwordLength8Character;
      }
      if (!password.passwordHasUpperCase)
      {
        return S.current.passwordOneUpperCase;
      }
      if (!password.passwordHasLowerCase)
      {
        return S.current.passwordOneLowerCase;
      }
      if (!password.passwordHasDigit)
      {
        return S.current.passwordOneNumber;
      }
      if (!password.passwordHasSpecialChar)
      {
        return S.current.passwordOneSpecialCharacter;
      }
      if (!password.hasValidPassword)
      {
        return S.current.invalidPassword;
      }
      return null;
    }
    catch (e)
    {
      return '${S.current.passwordValidationFailure} ${e.toString()}';
    }
  }

  static String? phoneNumberValidation(String? value)
  {
  try
  {
    final cleanedValue = value?.convertNumbers;
    if (cleanedValue == null || cleanedValue.isEmpty)
    {
      return S.current.phoneNumberIsRequired;
    }
    if (!cleanedValue.isPhoneNumber)
    {
      if (cleanedValue.isFullPhoneLength)
      {
        return S.current.unsupportedPhoneNumber;
      }
      return S.current.invalidPhoneNumber;
    }
    return null;
  }
  on Exception catch (e)
  {
    return e.toString();
  }
}

}


