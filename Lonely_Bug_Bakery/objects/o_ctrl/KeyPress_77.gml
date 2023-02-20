if(room == rm_puzzle){
	if(!audio_is_playing(snd_board)){	
		audio_play_sound(snd_board,1,true);
		audio_stop_sound(snd_waltz);
	} else {
		audio_stop_sound(snd_waltz);
		audio_stop_sound(snd_board);
	}
} else{
	if(!audio_is_playing(snd_waltz)){	
		audio_play_sound(snd_waltz,1,true);
		audio_stop_sound(snd_board);
	} else {
		audio_stop_sound(snd_waltz);
		audio_stop_sound(snd_board);
	}
}
