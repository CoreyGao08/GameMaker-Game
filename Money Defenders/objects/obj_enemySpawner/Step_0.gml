/// @description Insert description here
// You can write your code in this editor
spawnTimer ++;
if (spawnTimer >= spawnTimerMax){
	//randomize spawnpoint
	randomize()
	var randomedge = irandom_range(0, 3);
	var ranx = 0;
	var rany = 0;
	switch (randomedge){
		case 0 :
			rany = random_range(0, room_height);
			break;
		case 1 :
			ranx = random_range(0, room_width);
			break;
		case 2 :
			ranx = room_width;
			rany = random_range(0, room_height)
			break;
		case 3 :
			rany = room_height;
			ranx = random_range(0, room_width);
			break;
	}
	
	instance_create_depth(ranx, rany,0, obj_enemy)
	spawnTimer = 0;	
}