text = "More Ice-Tea"

action = function(){
	if(o_ctrl.canAddMore(PRODUCT.ice_tea)){
		o_ctrl.iceTea++;
	}
}