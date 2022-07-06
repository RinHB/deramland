import 'dart:async';

import 'package:flutter/material.dart';

extension SafeSetStateExtension on State{
  FutureOr<void> safeSetState(FutureOr<dynamic> Function() fn) async{
    await fn();
    if(mounted && !context.debugDoingBuild &&context.owner?.debugBuilding==false){
      setState((){});
    }
    final Completer<void> completer =Completer<void>();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      completer.complete();
    });
    return completer.future;
  }
}