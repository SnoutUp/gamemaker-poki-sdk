#define MusicPlay
/// MusicPlay();
/// start game music

/// cancel all music stop timers
with (Demo) {
    alarm[0] = -1;
    
    if (!musicOn) return false;
}   

if (!audio_is_playing(sound_background)) {
    audio_play_sound(sound_background, 5, true);
}
audio_sound_gain(sound_background, 0.1, 10);     


#define MusicStop
/// MusicStop();
/// stop game music

if (audio_is_playing(sound_background)) {
    audio_stop_sound(sound_background); 
}

#define MusicStopDelayed
/// MusicStopDelayed(time);
/// call a timer or alarm to delay music stop a little bit
/// to avoid interruptions in case Poki ad fails

with (Demo) {
    alarm[0] = argument[0];
}   