money = 100;
grain = 0;
ice = 0;
tea = 0;
honey = 0;

sweetTeaPrice = 1 + teaCost + honeyCost; // tea + honey
iceTeaPrice = 1 + iceCost + teaCost; // ice + tea
spiceCakePrice = 1 + grainCost + teaCost; // tea + grain
honeyIceCreamPrice = 1 + honeyCost + iceCost; // ice + honey
coldBreadPrice = 1 + iceCost + grainCost; // ice + grain
honeyCakePrice = 1 + honeyCost + grainCost; // honey + grain

sweetTea = 0; // tea + honey
iceTea = 0; // ice + tea
spiceCake = 0; // tea + grain
honeyIce = 0; // ice + honey
coldBread = 0; // ice + grain
honeyCake = 0; // honey + grain



if(instance_number(o_ctrl) > 1){
	instance_destroy();
}

function usage(tile){
	switch(tile){
		case TILE.grain : {
			return honeyCake + coldBread + spiceCake;
			break;
		}
		case TILE.honey : {
			return honeyCake + sweetTea + honeyIce;
			break;
		}
		case TILE.ice : {
			return honeyIce + coldBread + iceTea;
			break;
		}
		case TILE.tea : {
			return iceTea + sweetTea + spiceCake;
			break;
		}
	}
}

function canAddMore(product){
	switch(product){
		case PRODUCT.cold_bread:{
			return usage(TILE.grain) < grain && usage(TILE.ice) < ice;
			break;
		}
		case PRODUCT.honey_cake:{
			return usage(TILE.grain) < grain && usage(TILE.honey) < honey;
			break;
		}
		case PRODUCT.honey_ice_cream:{
			return usage(TILE.honey) < honey && usage(TILE.ice) < ice;
			break;
		}
		case PRODUCT.ice_tea:{
			return usage(TILE.tea) < tea && usage(TILE.ice) < ice;
			break;
		}
		case PRODUCT.spice_bread:{
			return usage(TILE.grain) < grain && usage(TILE.tea) < tea;
			break;
		}		
		case PRODUCT.sweet_tea:{
			return usage(TILE.tea) < tea && usage(TILE.honey) < honey;
			break;
		}
	}
}