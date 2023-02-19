line = 0;
words = 0; 

function setLine(actor, line, action = undefined) = {
	return {
		"actor": actor,
		"line": line,
		"action": action
	}
}

script = [
	setLine(undefined, "Press [Space] to advance dialouge!", function(){
		var ant = instance_create_layer(-500, room_height - sprite_get_height(spr_antastatia) * 1.5, "layer_front_of_table", spr_antastatia, {image_xscale : 1.5, image_yscale: 1.5})
		ant.targetX = 
	}),
	setLine(o_antastatia, "A thousand dollars? How can that be!"),
	setLine(o_ester_web, "Well my dear, you see there was a minor... glitch in the documents with your loans"),
	setLine(o_ester_web, "Instead of a thousand easy payments of one dollar, it seems that you were put down for one easy payment of a thousand dollars"),
	setLine(o_ester_web, "Payment in thirty days"),
	setLine(o_antastatia, "But Ester, surely you see that is unreasonable: where am I to get a thousand dollars in a month?"),
	setLine(o_ester_web, "Payment in thirty days"),
]