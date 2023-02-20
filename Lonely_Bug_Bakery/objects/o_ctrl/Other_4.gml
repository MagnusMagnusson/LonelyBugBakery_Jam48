if(room == rm_puzzle){
	if(!audio_is_playing(snd_board)){	
		audio_play_sound(snd_board,1,true);
		audio_stop_sound(snd_waltz);
	}

} else{
	if(!audio_is_playing(snd_waltz)){	
		audio_play_sound(snd_waltz,1,true);
		audio_stop_sound(snd_board);
	}
}

if(room == rm_bakery_morning){
	var w = nextWeather(global.temp, global.weather);
	global.temp = w[0];
	global.weather = w[1];
	day = day + 1;
	
	with(o_ux_text_big){
		text = "Day " +string(o_ctrl.day) + ". What will you bake today? It is "

		switch(global.temp){
			case HOT : {
				text += "Hot and ";
				break;
			}
			case NORMAL : {
				text += "Temperate and ";
				break;
			}
			case COLD : {
				text += "Freezing and ";
				break;
			}
		}

		switch(global.weather){
			case SUNNY : {
				text += "Clear Sky ";
				break;
			}
			case CLOUDY : {
				text += "Overcast ";
				break;
			}
			case RAINY : {
				text += "Raining";
				break;
			}
			case STORM : {
				text += "Thunderstorm";
				break;
			}
		}
}


}

if(room == rm_bakery_day){
	var t = get_customer_count();
	for(i = 0; i < t; i++){
		instance_create_layer(-i * 600 * random_range(0.9,1.1), room_height - sprite_get_height(spr_antastatia) * 1.4, "Instances_2", o_customer);
	}
}

if(room == rm_bakery_morning || room == rm_bakery_day || room == rm_bakery_evening){
	switch(global.weather){
		case SUNNY : {
			layer_background_index(layer_get_id("Backgrounds_2"), 0)
			break;
		}
		case CLOUDY : {
			layer_background_index(layer_get_id("Backgrounds_2"), 1)
			break;
		}
		case RAINY : {
			layer_background_index(layer_get_id("Backgrounds_2"), 2)
			break;
		}
		case STORM : {
			layer_background_index(layer_get_id("Backgrounds_2"), 3)
			break;
		}
	}
}