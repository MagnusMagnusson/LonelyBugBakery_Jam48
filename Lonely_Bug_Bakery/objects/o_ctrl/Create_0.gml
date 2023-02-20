money = 100;
grain = 0;
ice = 0;
tea = 0;
honey = 0;

sweetTeaPrice = 1 + teaCost + honeyCost; // tea + honey
iceTeaPrice = 1 + iceCost + teaCost; // ice + tea
spiceCakePrice = 1 + grainCost + teaCost; // tea + grain

honeyIceCream = 1 + honeyCost + iceCost; // ice + honey
coldBread = 1 + iceCost + grainCost; // ice + grain
honeyCake = 1 + honeyCost + grainCost; // honey + grain

if(instance_number(o_ctrl) > 1){
	instance_destroy();
}