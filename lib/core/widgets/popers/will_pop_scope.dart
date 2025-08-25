// import 'dart:developer';
// import 'package:flutter/material.dart';

// import '../../../config/router/app_router.dart';
// import '../../constants/app_borders.dart';
// import 'dialog.dart';

// class PopScopeWidget extends StatelessWidget
// {
//   const PopScopeWidget({
//     super.key,
//     required this.child,
//     this.onWillPop,
//   });

//   final Widget child;
//   final Future<bool> Function()? onWillPop;

//   @override
//   Widget build(BuildContext context)
//   {
//     return PopScope(
//       canPop: false,
//       onPopInvoked: (didPop) async
//       {
//         if (didPop)
//         {
//           log('Screen Closed');
//           return;
//         }
//         final allowPop = await (onWillPop?.call() ?? _defaultBackHandler(context));
//         if (allowPop)
//         {
//           if (AppRouter.router.canPop())
//           {
//             AppRouter.router.pop();
//           }
//           else
//           {
//             final shouldExit = await _defaultBackHandler(context);
//             if (shouldExit)
//             {
//               await Navigator.of(context).maybePop();
//             }
//           }
//         }
//       },
//       child: child,
//     );
//   }

//   Future<bool> _defaultBackHandler(BuildContext context) async
//   {
//     final result = customAppDialog(
//       context: context,
//       shape: RoundedRectangleBorder(borderRadius: AppRadiuses.circular.xXXXXSmall),
//       content: const Column(
//         mainAxisSize: MainAxisSize.min,
//         crossAxisAlignment: CrossAxisAlignment.start
//       )
//     );
//     return result ?? false;
//   }
// }
