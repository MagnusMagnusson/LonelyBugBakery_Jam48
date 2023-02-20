text = "More Cold Bread"

action = function(){
	if(o_ctrl.canAddMore(PRODUCT.cold_bread)){
		o_ctrl.coldBread++;
	}
}