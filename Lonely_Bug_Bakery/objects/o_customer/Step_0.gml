if(done && (x > room_width + 800 || x < 0)){
	instance_destroy();
}
if(!done && x > room_width * 0.66){
	done = true;
	var preferredCost = convertedCost(want)
	var pRatio;
	switch(want){
		case PRODUCT.cold_bread : {
			pRatio = (preferredCost / o_ctrl.coldBreadPrice);
			if(o_ctrl.coldBread > 0 && random(1) < pRatio){
				o_ctrl.coldBread = max(0, o_ctrl.coldBread - 1);
				o_ctrl.money +=  o_ctrl.coldBreadPrice;
			} else {
				hspeed *= -1;
				image_xscale *= -1;
				o_ctrl.reputation -= 0.1;
				audio_play_sound(snd_disgruntled,2,false);
			}
			break;
		}
		case PRODUCT.spice_bread : {
			pRatio = (preferredCost / o_ctrl.spiceCakePrice);
			if(o_ctrl.spiceCake > 0 && random(1) < pRatio){
				o_ctrl.spiceCake = max(0, o_ctrl.spiceCake - 1);
				o_ctrl.money +=  o_ctrl.spiceCakePrice;
			} else {
				hspeed *= -1;
				image_xscale *= -1;
				o_ctrl.reputation -= 0.1;
				audio_play_sound(snd_disgruntled,2,false);
			}
			break;
		}
		case PRODUCT.sweet_tea : {
			pRatio = (preferredCost / o_ctrl.sweetTeaPrice)
			if(o_ctrl.sweetTea > 0 && random(1) < pRatio){
				o_ctrl.sweetTea = max(0, o_ctrl.sweetTea - 1);
				o_ctrl.money +=  o_ctrl.sweetTeaPrice;
			} else {
				hspeed *= -1;
				image_xscale *= -1;
				o_ctrl.reputation -= 0.1;
				audio_play_sound(snd_disgruntled,2,false);
			}
			break;
		}
		case PRODUCT.ice_tea : {
			pRatio = (preferredCost / o_ctrl.iceTeaPrice)
			if(o_ctrl.iceTea > 0 && random(1) < pRatio){
				o_ctrl.iceTea = max(0, o_ctrl.iceTea - 1);
				o_ctrl.money +=  o_ctrl.iceTeaPrice;
			} else {
				hspeed *= -1;
				image_xscale *= -1;
				o_ctrl.reputation -= 0.1;
				audio_play_sound(snd_disgruntled,2,false);
			}
			break;
		}
		case PRODUCT.honey_cake : {
			pRatio = (preferredCost / o_ctrl.honeyCakePrice)
			if(o_ctrl.honeyCake > 0 && random(1) < pRatio){
				o_ctrl.honeyCake = max(0, o_ctrl.honeyCake - 1);
				o_ctrl.money +=  o_ctrl.honeyCakePrice;
			} else {
				hspeed *= -1;
				image_xscale *= -1;
				o_ctrl.reputation -= 0.1;
				audio_play_sound(snd_disgruntled,2,false);
			}
			break;
		}
		case PRODUCT.honey_ice_cream : {
			pRatio = (preferredCost / o_ctrl.honeyIceCreamPrice);
			if(o_ctrl.honeyIce > 0 && random(1) < pRatio){
				o_ctrl.honeyIce = max(0, o_ctrl.honeyIce - 1);
				o_ctrl.money +=  o_ctrl.honeyIceCreamPrice;
			} else {
				hspeed *= -1;
				image_xscale *= -1;
				o_ctrl.reputation -= 0.1;
				audio_play_sound(snd_disgruntled,2,false);
			}
			break;
		}
	}
	
	if(image_xscale > 0) { //Sold
		audio_play_sound(snd_cash,2,false)
		o_ctrl.reputation += o_ctrl.quality * pRatio
		if(o_ctrl.quality < 0.25){
			o_ctrl.reputation -= choose(0,0,0,0.05,0.1, 0.15);
		}
	}
}