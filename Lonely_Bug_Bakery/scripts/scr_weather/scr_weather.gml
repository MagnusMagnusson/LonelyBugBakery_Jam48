#macro HOT 3
#macro NORMAL 2
#macro COLD 1


#macro SUNNY 4
#macro CLOUDY 3
#macro RAINY 2
#macro STORM 1


function nextWeather(temp, weather){
	var t, w;
	if(random(1) < 0.5){
		t = temp;
	} else{
		t = temp + choose(1,-1);
		if(t == COLD - 1){
			t = NORMAL;
		} else if (t == HOT + 1 ){
			t = NORMAL;
		}
	}
	
	if(random(1) < 0.5){
		w = temp;
	} else{
		w = weather + choose(1,-1);
		if(w == STORM - 1){
			w = RAINY;
		} else if (w == SUNNY + 1 ){
			w = CLOUDY;
		}
	}
	
	return [t,w];
}