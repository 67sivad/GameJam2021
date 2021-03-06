// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

//when we implement boxes, don't copy boxes from the same room
function save_chamber(id, side){
	var i;
	//if (global.leftChamberId == global.rightChamberId) {return;}
	
	if (side < 0) {
		for(i = 0; i < 10 * 32; i += 32) {
				for(var j = 0; j < 32 * 10; j += 32) {
					position_destroy(j, i + id * 10 * 32);
				
				}
		}
		
			for(i = 0; i < 10 * 32; i += 32) {
				for(var j = 0; j < 32 * 10; j += 32) {
					var block = instance_position(global.leftChamberX + j, global.leftChamberY + i, obj_block);
						if (block != noone) {
							var o = instance_create_layer(j, i + id * 10 * 32, "WiresAndBoxes", block.object_index);
							with(block) {
								instance_destroy();
							}
						}
						
						var wire = instance_position(global.leftChamberX + j, global.leftChamberY + i, obj_wire);
						if (wire != noone) {
							var o = instance_create_layer(j, i + id * 10 * 32, "WiresAndBoxes", wire.object_index);
							o.current = wire.current;
							with(wire) {
								instance_destroy();
							}
						}
					var inst = instance_position(global.leftChamberX + j, global.leftChamberY + i, all);
				
					if (inst != noone and inst.object_index != obj_Player) {
					var o = instance_create_layer(j, i + id * 10 * 32, "Instances", inst.object_index);
					if (inst.object_index == obj_door) {
							o.destination = inst.destination;
							o.orientation = inst.orientation;
							o.sprite_index = inst.sprite_index;
						}else{
							o.image_index=inst.image_index;
							
						}
						if (inst.object_index == obj_wire or inst.object_index == obj_button or inst.object_index == obj_wall_trigger) {
								o.current = inst.current;
							
							}
						
					
				
					with(inst) {
						instance_destroy();
					}
					}
				}
		
			}

	} else {
		for(i = 0; i < 10 * 32; i += 32) {
			for(var j = 32; j < 32 * 11; j += 32) {
				position_destroy(j, i + id * 10 * 32);
			}
		}
		for(i = 0; i < 10 * 32; i += 32) {
			for(var j = 32; j < 32 * 11; j += 32) {
				var block = instance_position(global.rightChamberX + j, global.rightChamberY + i, obj_block);
						if (block != noone) {
							var o = instance_create_layer(j, i + id * 10 * 32, "WiresAndBoxes", block.object_index);
							with(block) {
								instance_destroy();
							}
						}
						var wire = instance_position(global.rightChamberX + j, global.rightChamberY + i, obj_wire);
						if (wire != noone) {
							var o = instance_create_layer(j, i + id * 10 * 32, "WiresAndBoxes", wire.object_index);
							o.current = wire.current;
							with(wire) {
								instance_destroy();
							}
						}
				var inst = instance_position(global.rightChamberX + j, global.rightChamberY + i, all);
				
				if (inst != noone and inst.object_index != obj_Player) {
					var o = instance_create_layer(j, i + id * 10 * 32, "Instances", inst.object_index);
					if (object_get_name(inst.object_index) == "obj_door") {
							o.destination = inst.destination;
							o.orientation = inst.orientation;
							o.sprite_index = inst.sprite_index;
							//show_debug_message(o.orientation+" "+string(o.destination)+" "+string(o.sprite_index)); 
						}else{
							o.image_index=inst.image_index;
						}
					if (inst.object_index == obj_wire or inst.object_index == obj_button or inst.object_index == obj_wall_trigger) {
								o.current = inst.current;
							
							}
						
				
				
				with(inst) {
					instance_destroy();
				}
				}
			}
		
		}
	}
	column_restore(id, side);
	
}