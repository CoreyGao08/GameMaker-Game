/// @description Insert description here
// You can write your code in this editor
if (global.PAUSE){
	return;
}

// x bullet movement
if (dir = Direction.Right){
	x += spd;
}
if (dir = Direction.Left){
	x -= spd;
}
// y bullet movement
if (dir = Direction.Up){
	y -= spd;
}
if (dir = Direction.Down){
	y += spd;
}


if (x < 0 or x > room_width or y < 0 or y > room_height){
	instance_destroy();
}

if (place_meeting(x, y, obj_enemy)){
	var instance = instance_place(x, y, obj_enemy);
	instance.hp -= damage;
	instance_destroy();
}