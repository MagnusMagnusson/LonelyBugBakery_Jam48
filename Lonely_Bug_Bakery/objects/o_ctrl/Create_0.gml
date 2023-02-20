money = 50;
grain = 5;
ice = 5;
tea = 5;
honey = 5;

randomize(); 

sweetTeaPrice = 2 + teaCost + honeyCost; // tea + honey
iceTeaPrice = 2 + iceCost + teaCost; // ice + tea
spiceCakePrice = 2 + grainCost + teaCost; // tea + grain
honeyIceCreamPrice = 2 + honeyCost + iceCost; // ice + honey
coldBreadPrice = 2 + iceCost + grainCost; // ice + grain
honeyCakePrice = 2 + honeyCost + grainCost; // honey + grain

sweetTea = 0; // tea + honey
iceTea = 0; // ice + tea
spiceCake = 0; // tea + grain
honeyIce = 0; // ice + honey
coldBread = 0; // ice + grain
honeyCake = 0; // honey + grain
day = 0;
reputation = 20;
quality = 1;


if(instance_number(o_ctrl) > 1){
	instance_destroy();
}

global.temp = NORMAL;
global.weather = CLOUDY;
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

function canAddMore(product, amount){
	switch(product){
		case PRODUCT.cold_bread:{
			return usage(TILE.grain) + amount <= grain && usage(TILE.ice) + amount <= ice;
			break;
		}
		case PRODUCT.honey_cake:{
			return usage(TILE.grain) + amount <= grain && usage(TILE.honey) + amount <= honey;
			break;
		}
		case PRODUCT.honey_ice_cream:{
			return usage(TILE.honey) + amount <= honey && usage(TILE.ice) + amount <= ice;
			break;
		}
		case PRODUCT.ice_tea:{
			return usage(TILE.tea) + amount <= tea && usage(TILE.ice) + amount <= ice;
			break;
		}
		case PRODUCT.spice_bread:{
			return usage(TILE.grain) + amount <= grain && usage(TILE.tea) + amount <= tea;
			break;
		}		
		case PRODUCT.sweet_tea:{
			return usage(TILE.tea)  + amount<= tea && usage(TILE.honey) + amount <= honey;
			break;
		}
	}
}

finishPuzzle = function(){
	quality = overallQuality(o_board.board.quality, o_board.board.startCount, 5);
	with(o_tile){
		switch(tile){
			case TILE.ice:{
				if(o_ctrl.iceTea > 0){
					o_ctrl.iceTea -= 0.25;
				}
				if(o_ctrl.honeyIce > 0){
					o_ctrl.honeyIce -= 0.25;
				} 
				if(o_ctrl.coldBread > 0){
					o_ctrl.coldBread -= 0.25;
				}
				break;
			}			
			case TILE.grain:{
				if(o_ctrl.spiceCake > 0){
					o_ctrl.spiceCake -= 0.25;
				}
				if(o_ctrl.coldBread > 0){
					o_ctrl.coldBread -= 0.25;
				} 
				if(o_ctrl.honeyCake > 0){
					o_ctrl.honeyCake -= 0.25;
				}
				break;
			}
			case TILE.honey:{
				if(o_ctrl.sweetTea > 0){
					o_ctrl.sweetTea -= 0.25;
				}
				if(o_ctrl.honeyIce > 0){
					o_ctrl.honeyIce -= 0.25;
				} 
				if(o_ctrl.honeyCake > 0){
					o_ctrl.honeyCake -= 0.25;
				}
				break;
			}			
			case TILE.tea:{
				if(o_ctrl.sweetTea > 0){
					o_ctrl.sweetTea -= 0.25;
				}
				if(o_ctrl.iceTea > 0){
					o_ctrl.iceTea -= 0.25;
				} 
				if(o_ctrl.spiceCake > 0){
					o_ctrl.spiceCake -= 0.25;
				}
				break;
			}
		}
	}
	room_goto(rm_bakery_day);
}