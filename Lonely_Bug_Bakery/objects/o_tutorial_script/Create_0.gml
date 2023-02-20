line = 0;
displayText = "";
words = 0; 

function setLine(actor, line, action = undefined) {
	return {
		"actor": actor,
		"line": line,
		"action": action
	}
}

sceneScript = [
	setLine(undefined, "Press [Space] to advance dialouge!"),
	setLine(o_antastatia, "A thousand dollars? How can that be!", function(){
		oldAnt = instance_create_layer(-500, room_height - sprite_get_height(spr_antastatia) * 1.5, "layer_front_of_table", o_antastatia, {image_xscale : 1.5, image_yscale: 1.5})
		oldAnt.targetX = 256
		var spider = instance_create_layer(room_width + 500, room_height - sprite_get_height(spr_spider) * 1.25, "layer_front_of_table", o_ester_web, {image_xscale : -1.5, image_yscale: 1.5})
		spider.targetX = room_width - 400
	}),
	setLine(o_ester_web, "Well my dear, you see there was a minor... glitch in the documents with your loans"),
	setLine(o_ester_web, "Instead of a thousand easy payments of one dollar, it seems that you were put down for one easy payment of a thousand dollars"),
	setLine(o_ester_web, "Payment in thirty days"),
	setLine(o_antastatia, "But Ester, surely you see that is unreasonable: where am I to get a thousand dollars in a month?"),
	setLine(o_ester_web, "You run a bakery, do you not?"),	
	setLine(o_antastatia, "You know Ester same as me that I just about break even"),	
	setLine(o_ester_web, "Well, then I suggest you change that."),		
	setLine(o_ester_web, "Thirty days, Miss Antastatia."),		
	setLine(o_ester_web, "I strongly suggest having procured the money by then."),	
	setLine(o_antastatia, "...", function(){
		o_ester_web.targetX = room_width * 3;
	}),
	setLine(o_antastatia, "What ever shall I do?"),	
	setLine(o_antastatia, "..."),	
	setLine(o_antastatia, "Guess I better start baking."),	
	setLine(undefined, "...", function(){
		oldAnt.targetY = room_height + sprite_get_height(spr_antastatia) * 1.5;
		var newAnt = instance_create_layer(1959, room_height + 400, "layer_behind_table", o_antastatia, {image_xscale : -1})
		newAnt.targetY = 535;
	}),		
	setLine(undefined, "", function(){
		room_goto_next();
	}),	
]

function triggerNextLine() {
	var moment = sceneScript[line];
	
	if(!is_undefined(moment.action)){
		moment.action();
	}
	if(is_undefined(moment.actor)){
		show_debug_message("Undefined actor");
		with(o_actor){
			highlight = true;
		}
	} else{
		show_debug_message("Defined actor");
		with(o_actor){
			if(object_index == moment.actor){
				highlight = true;
			} else {
				highlight = false;
			}
		}
	}
	words = 0;
	displayText = moment.line;
	
	line += 1;
}

triggerNextLine();