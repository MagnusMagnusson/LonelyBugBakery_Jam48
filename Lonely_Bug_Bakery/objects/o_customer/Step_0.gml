if(done && (x > room_width + 800 || x < 0)){
	instance_destroy();
}
if(!done && x > room_width * 0.66){
	done = true;
	var preferredCost = convertedCost(want)
	switch(want){
		case PRODUCT.cold_bread : {
			if(o_ctrl.coldBread > 0 && random(1) < (preferredCost / o_ctrl.coldBreadPrice)){
				o_ctrl.coldBread = max(0, o_ctrl.coldBread - 1);
				o_ctrl.money +=  o_ctrl.coldBreadPrice;
			} else {
				hspeed *= -1;
				image_xscale *= -1;
			}
			break;
		}
		case PRODUCT.spice_bread : {
			if(o_ctrl.spiceCake > 0 && random(1) < (preferredCost / o_ctrl.spiceCakePrice)){
				o_ctrl.spiceCake = max(0, o_ctrl.spiceCake - 1);
				o_ctrl.money +=  o_ctrl.spiceCakePrice;
			} else {
				hspeed *= -1;
				image_xscale *= -1;
			}
			break;
		}
		case PRODUCT.sweet_tea : {
			if(o_ctrl.sweetTea > 0 && random(1) < (preferredCost / o_ctrl.sweetTeaPrice)){
				o_ctrl.sweetTea = max(0, o_ctrl.sweetTea - 1);
				o_ctrl.money +=  o_ctrl.sweetTeaPrice;
			} else {
				hspeed *= -1;
				image_xscale *= -1;
			}
			break;
		}
		case PRODUCT.ice_tea : {
			if(o_ctrl.iceTea > 0 && random(1) < (preferredCost / o_ctrl.iceTeaPrice)){
				o_ctrl.iceTea = max(0, o_ctrl.iceTea - 1);
				o_ctrl.money +=  o_ctrl.iceTeaPrice;
			} else {
				hspeed *= -1;
				image_xscale *= -1;
			}
			break;
		}
		case PRODUCT.honey_cake : {
			if(o_ctrl.honeyCake > 0 && random(1) < (preferredCost / o_ctrl.honeyCakePrice)){
				o_ctrl.honeyCake = max(0, o_ctrl.honeyCake - 1);
				o_ctrl.money +=  o_ctrl.honeyCakePrice;
			} else {
				hspeed *= -1;
				image_xscale *= -1;
			}
			break;
		}
		case PRODUCT.honey_ice_cream : {
			if(o_ctrl.honeyIce > 0 && random(1) < (preferredCost / o_ctrl.honeyIceCreamPrice)){
				o_ctrl.honeyIce = max(0, o_ctrl.honeyIce - 1);
				o_ctrl.money +=  o_ctrl.honeyIceCreamPrice;
			} else {
				hspeed *= -1;
				image_xscale *= -1;
			}
			break;
		}
	}
}