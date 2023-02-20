fakeScore = 0;
alarm[0] = room_speed/6;

map = {};
map[$ PRODUCT.sweet_tea] = o_ctrl.sweetTea;
map[$ PRODUCT.ice_tea] = o_ctrl.iceTea;
map[$ PRODUCT.honey_cake] = o_ctrl.honeyCake;
map[$ PRODUCT.honey_ice_cream] = o_ctrl.honeyIce;
map[$ PRODUCT.cold_bread] = o_ctrl.coldBread;
map[$ PRODUCT.spice_bread] = o_ctrl.spiceCake;
t = o_ctrl.spiceCake +  o_ctrl.coldBread + o_ctrl.honeyIce + o_ctrl.honeyCake + o_ctrl.iceTea + o_ctrl.sweetTea;