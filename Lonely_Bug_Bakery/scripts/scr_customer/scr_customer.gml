#macro BASE_CUSTOMER_COUNT 20
#macro STARTING_REPUTATION 20

function get_customer_count(){
	return 1 + round(BASE_CUSTOMER_COUNT 
	* ((1 + o_ctrl.reputation) / (5 + STARTING_REPUTATION)) 
	* (global.weather == STORM ? 0.05 : 1)
	* random_range(0.7, 1.3)
	)
}

/*
enum PRODUCT {
	none,
	sweet_tea,
	ice_tea,
	spice_bread,
	honey_cake,
	honey_ice_cream,
	cold_bread,
}
*/

function convertedCost(product){
	switch(product){
		case PRODUCT.sweet_tea : {
			return 2 + (honeyCost + teaCost);
		}
		case PRODUCT.ice_tea : {
			return 2 + (iceCost + teaCost);
		}
		case PRODUCT.spice_bread : {
			return 2 + (grainCost + teaCost);
		}
		case PRODUCT.honey_cake : {
			return 2 + (grainCost + honeyCost);
		}
		case PRODUCT.honey_ice_cream : {
			return 2 + (iceCost + honeyCost);
		}
		case PRODUCT.cold_bread : {
			return 2 + (grainCost + iceCost);
		}
	}
}

function get_customer_want(){
	var probMap = {};
	probMap[$ PRODUCT.sweet_tea] = 1.1 * (convertedCost(PRODUCT.sweet_tea) / o_ctrl.sweetTeaPrice);
	probMap[$ PRODUCT.ice_tea] = 1 * (convertedCost(PRODUCT.ice_tea) / o_ctrl.iceTeaPrice);
	probMap[$ PRODUCT.spice_bread] = 1 * (convertedCost(PRODUCT.spice_bread) / o_ctrl.spiceCakePrice);
	probMap[$ PRODUCT.honey_cake] = 1.5 * (convertedCost(PRODUCT.honey_cake) / o_ctrl.honeyCakePrice);
	probMap[$ PRODUCT.honey_ice_cream] = 1.5 * (convertedCost(PRODUCT.honey_ice_cream) / o_ctrl.honeyIceCreamPrice);
	probMap[$ PRODUCT.cold_bread] = 0.5 * (convertedCost(PRODUCT.cold_bread) / o_ctrl.coldBreadPrice);
	
	if(global.temp == COLD){
		probMap[$ PRODUCT.ice_tea] *= 0.1;
		probMap[$ PRODUCT.honey_ice_cream] *= 0.1;
		probMap[$ PRODUCT.cold_bread] *= 0.1;
	}
	
		
	if(global.temp == HOT){
		probMap[$ PRODUCT.honey_cake] *= 0.1;
		probMap[$ PRODUCT.spice_bread] *= 0.1;
		probMap[$ PRODUCT.sweet_tea] *= 0.1;
	}
	
	if(global.weather == SUNNY){
		probMap[$ PRODUCT.honey_cake] *= 0.1;
		probMap[$ PRODUCT.spice_bread] *= 0.1;
		probMap[$ PRODUCT.cold_bread] *= 0.1;
	}
	
	if(global.weather == RAINY){
		probMap[$ PRODUCT.ice_tea] *= 0.1;
		probMap[$ PRODUCT.sweet_tea] *= 0.1;
		probMap[$ PRODUCT.honey_ice_cream] *= 0.1;
	}
	
	if(global.weather == STORM){
		probMap[$ PRODUCT.ice_tea] *= 0.01;
		probMap[$ PRODUCT.sweet_tea] *= 0.01;
		probMap[$ PRODUCT.honey_ice_cream] *= 0.01;
	}
	
	var t =  
	+ probMap[$ PRODUCT.sweet_tea] 
	+ probMap[$ PRODUCT.ice_tea] 
	+ probMap[$ PRODUCT.spice_bread] 
	+ probMap[$ PRODUCT.honey_cake] 
	+ probMap[$ PRODUCT.honey_ice_cream] 
	+ probMap[$ PRODUCT.cold_bread];
	
	var r = random(t);
	var arr = tile_get_product();
	for(var i = 0; i < array_length(arr); i++){
		p = arr[i];
		if(r - probMap[$ p] <= 0){
			return p;
		} else{
			r -= probMap[$ p];
		}
	}
	return PRODUCT.none;
}