import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../providers/focus_provider.dart';

class FocusToggleButton extends ConsumerWidget {
  const FocusToggleButton({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final focusState = ref.watch(focusProvider);

    return PopupMenuButton<FocusTrack>(
      icon: Icon(
        focusState.isEnabled ? Icons.headset_rounded : Icons.headset_off_outlined,
        color: focusState.isEnabled ? Colors.blue : Colors.white,
      ),
      tooltip: 'Modo Enfoque',
      onSelected: (track) {
        if (!focusState.isEnabled) {
          ref.read(focusProvider.notifier).toggleFocus();
        }
        ref.read(focusProvider.notifier).setTrack(track);
      },
      itemBuilder: (context) => [
        PopupMenuItem(
          enabled: false,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text('Modo Enfoque', style: TextStyle(fontWeight: FontWeight.bold)),
              Switch(
                value: focusState.isEnabled,
                onChanged: (_) {
                  ref.read(focusProvider.notifier).toggleFocus();
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
        const PopupMenuDivider(),
        ...focusTracks.map((track) => PopupMenuItem(
          value: track,
          child: Row(
            children: [
              Icon(
                Icons.music_note_rounded,
                size: 18,
                color: focusState.currentTrack == track ? Colors.blue : Colors.grey,
              ),
              const SizedBox(width: 12),
              Text(
                track.name,
                style: TextStyle(
                  color: focusState.currentTrack == track ? Colors.blue : null,
                  fontWeight: focusState.currentTrack == track ? FontWeight.bold : null,
                ),
              ),
            ],
          ),
        )),
      ],
    );
  }
}
