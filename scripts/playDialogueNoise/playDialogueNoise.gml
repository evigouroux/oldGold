function playDialogueNoise(voice){
	
	audio_sound_pitch(SFX_voice, voice + random_range(-0.1, 0.1));
	audio_play_sound(SFX_voice, 1, false);

}