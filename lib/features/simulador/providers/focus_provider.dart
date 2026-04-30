import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:just_audio/just_audio.dart';

class FocusTrack {
  final String name;
  final String assetPath;

  const FocusTrack({required this.name, required this.assetPath});
}

const FocusTrack _defaultTrack = FocusTrack(name: 'Lo-Fi', assetPath: 'assets/audio/lofi.mp3');

const List<FocusTrack> focusTracks = [
  _defaultTrack,
  FocusTrack(name: 'Ambient', assetPath: 'assets/audio/ambient.mp3'),
  FocusTrack(name: 'Piano', assetPath: 'assets/audio/piano.mp3'),
  FocusTrack(name: 'White Noise', assetPath: 'assets/audio/white_noise.mp3'),
];

class FocusState {
  final bool isEnabled;
  final bool isPlaying;
  final FocusTrack currentTrack;
  final double volume;

  const FocusState({
    this.isEnabled = false,
    this.isPlaying = false,
    this.currentTrack = _defaultTrack,
    this.volume = 0.5,
  });

  FocusState copyWith({
    bool? isEnabled,
    bool? isPlaying,
    FocusTrack? currentTrack,
    double? volume,
  }) {
    return FocusState(
      isEnabled: isEnabled ?? this.isEnabled,
      isPlaying: isPlaying ?? this.isPlaying,
      currentTrack: currentTrack ?? this.currentTrack,
      volume: volume ?? this.volume,
    );
  }
}

class FocusNotifier extends StateNotifier<FocusState> {
  final AudioPlayer _player = AudioPlayer();

  FocusNotifier() : super(const FocusState()) {
    _init();
  }

  void _init() {
    _player.setLoopMode(LoopMode.one);
    _player.setVolume(state.volume);
  }

  Future<void> toggleFocus() async {
    if (state.isEnabled) {
      await stop();
    } else {
      await start();
    }
  }

  Future<void> start() async {
    print("Iniciando Modo Enfoque con: ${state.currentTrack.assetPath}");
    state = state.copyWith(isEnabled: true, isPlaying: true);
    try {
      await _player.setAudioSource(AudioSource.asset(state.currentTrack.assetPath));
      await _player.play();
      print("Reproducción iniciada correctamente.");
    } catch (e) {
      print("Error CRÍTICO al cargar audio: $e");
    }
  }

  Future<void> stop() async {
    print("Deteniendo Modo Enfoque");
    await _player.stop();
    state = state.copyWith(isEnabled: false, isPlaying: false);
  }

  Future<void> setTrack(FocusTrack track) async {
    print("Cambiando pista a: ${track.name}");
    state = state.copyWith(currentTrack: track);
    if (state.isEnabled) {
      try {
        await _player.setAudioSource(AudioSource.asset(track.assetPath));
        if (state.isPlaying) await _player.play();
      } catch (e) {
        print("Error al cambiar pista: $e");
      }
    }
  }

  void setVolume(double volume) {
    state = state.copyWith(volume: volume);
    _player.setVolume(volume);
  }

  @override
  void dispose() {
    _player.dispose();
    super.dispose();
  }
}

final focusProvider = StateNotifierProvider<FocusNotifier, FocusState>((ref) {
  return FocusNotifier();
});
