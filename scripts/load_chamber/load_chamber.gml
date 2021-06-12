// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

//when we implement boxes, don't copy boxes from the same room
function load_chamber(id, side){
	var i;
	
	if (side < 0) {
		global.leftChamberId = id;
			for(i = 0; i < 10 * 32; i += 32) {
				for(var j = 0; j < 32 * 10; j += 32) {
					
					if (global.leftChamberId != global.rightChamberId) {
						
						var inst = instance_position(j, i + id * 10 * 32, all);
				
						if (inst != noone and inst.object_index != obj_Player) {
							
								
						
									
						var o = instance_create_layer(global.leftChamberX + j, global.leftChamberY + i, "Instances", inst.object_index);
						if (object_get_name(inst.object_index) == "obj_door") {
							o.destination = inst.destination;
							o.orientation = inst.orientation;
							o.sprite_index = inst.sprite_index;
							//show_debug_message(o.orientation+" "+string(o.destination)+" "+string(o.sprite_index)); 
						}
							
						}
				
						with(inst) {
							instance_destroy();
						}
					} else {
						if (j == 0) {
							var inst = instance_position(j, i + id * 10 * 32, all);
							with(inst) {
							instance_destroy();
							}
					
						} else {
						var inst = instance_position(global.rightChamberX + j, global.rightChamberY + i, all);
						}
						if (inst != noone and inst.object_index != obj_Player) {
						var o = instance_create_layer(global.leftChamberX + j, global.leftChamberY + i, "Instances", inst.object_index);
						if (object_get_name(inst.object_index) == "obj_door") {
							o.destination = inst.destination;
							o.orientation = inst.orientation;
							o.sprite_index = inst.sprite_index;
							//show_debug_message(o.orientation+" "+string(o.destination)+" "+string(o.sprite_index)); 
						}
						}
					}
				}
		
			}
				
	} else {
		global.rightChamberId = id;
		for(i = 0; i < 10 * 32; i += 32) {
			for(var j = 32; j < 32 * 11; j += 32) {
				if (global.leftChamberId != global.rightChamberId) {
					var inst = instance_position(j, i + id * 10 * 32, all);
					//show_debug_message(string(inst.destination))
				
					if (inst != noone and inst.object_index != obj_Player) {
					var o = instance_create_layer(global.rightChamberX + j, global.rightChamberY + i, "Instances", inst.object_index);
					if (object_get_name(inst.object_index) == "obj_door") {
						//show_debug_message(object_get_name(inst.object_index));
							o.destination = inst.destination;
							o.orientation = inst.orientation;
							o.sprite_index = inst.sprite_index;
							//show_debug_message(o.orientation+" "+string(o.destination)+" "+string(o.sprite_index)); 
						}
					}
				
					with(inst) {
						instance_destroy();
					}
					
				} else {
						if (j == 32 * 10) {
							var inst = instance_position(j, i + id * 10 * 32, all);
							with(inst) {
								instance_destroy();
							}
					
						} else {
						var inst = instance_position(global.leftChamberX + j, global.leftChamberY + i, all);
						}
						if (inst != noone and inst.object_index != obj_Player) {
						var o = instance_create_layer(global.rightChamberX + j, global.rightChamberY + i, "Instances", inst.object_index);
						if (object_get_name(inst.object_index) == "obj_door") {
							o.destination = inst.destination;
							o.orientation = inst.orientation;
							o.sprite_index = inst.sprite_index;
							//show_debug_message(o.orientation+" "+string(o.destination)+" "+string(o.sprite_index)); 
						}
						}
					}
			}
		
		}
	}
	
}