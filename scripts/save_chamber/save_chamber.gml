// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

//when we implement boxes, don't copy boxes from the same room
function save_chamber(id, side){
	var i;
	
	if (side < 0) {
		
			for(i = 0; i < 10 * 32; i += 32) {
				for(var j = 0; j < 32 * 10; j += 32) {
					var inst = instance_position(global.leftChamberX + j, global.leftChamberY + i, all);
				
					if (inst != noone and inst.object_index != obj_Player) {
					instance_create_layer(j, i + id * 10 * 32, "Instances", inst.object_index);
					}
				
					with(inst) {
						instance_destroy();
					}
				}
		
			}

	} else {
		for(i = 0; i < 10 * 32; i += 32) {
			for(var j = 32; j < 32 * 11; j += 32) {
				var inst = instance_position(global.rightChamberX + j, global.rightChamberY + i, all);
				
				if (inst != noone and inst.object_index != obj_Player) {
					instance_create_layer(j, i + id * 10 * 32, "Instances", inst.object_index);
				}
				
				with(inst) {
					instance_destroy();
				}
			}
		
		}
	}
	
}