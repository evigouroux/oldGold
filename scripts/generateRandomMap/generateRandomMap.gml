
function generateRandomMap(){


	// Ajout des noeuds
	for (var i = 0; i < gridSize; i++) {
		for (var j = 0; j < gridSize; j++) {
			xPlace = room_width/gridSize/2 + i * (room_width/gridSize) + irandom_range(-dUnit*2, dUnit*2);
			yPlace = room_width/gridSize/2 + j * (room_width/gridSize) + irandom_range(-dUnit*2, dUnit*2);
			
			var nearestNode =  instance_nearest(xPlace, yPlace, obj_roadNode);
			
			if (nearestNode != noone && point_distance(xPlace, yPlace, nearestNode.x, nearestNode.y) <= dUnit*2.5 ) {
				continue;
			}	
			
			if (xPlace > dUnit && xPlace < room_width - dUnit && yPlace > dUnit && yPlace < room_width - dUnit) {
				instance_create_depth(xPlace, yPlace, -10, obj_roadNode);
			}
		}	
	}

	// Liaison de chaque tile avec son noeud le plus proche
	with (obj_tile) {
		masterNode = instance_nearest(x, y, obj_roadNode);
		array_push(masterNode.tiles, id);
	}
}