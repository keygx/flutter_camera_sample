import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class LoadingHUD extends HookConsumerWidget {
  const LoadingHUD({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(loadingHUDStateProvider);

    return state
        ? Stack(
            children: [
              child,
              BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 0.4, sigmaY: 0.4),
                child: const Opacity(
                  opacity: 0.4,
                  child: ModalBarrier(dismissible: false, color: Colors.black),
                ),
              ),
              const Center(
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(Colors.blue),
                  strokeWidth: 4.0,
                ),
              ),
            ],
          )
        : child;
  }
}

final loadingHUDStateProvider = StateProvider<bool>((ref) => false);
