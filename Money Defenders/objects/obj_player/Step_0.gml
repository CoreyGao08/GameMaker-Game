/// @description Insert description here
// You can write your code in this editor
if (global.PAUSE){
	return;
}


if (global.COIN <= 0){
	room_goto(rm_start)
}



if (x > 0 and x  < room_width and y > 0 and y < room_height){
}	

// x movement
if (keyboard_check(ord("A"))){
	x = x - spd
	dir = Direction.Left;
}

if (keyboard_check(ord("D"))){
	x = x + spd	
	dir = Direction.Right;
}

// y movement
if (keyboard_check(ord("W"))){
	y = y - spd	
	dir = Direction.Up;
}

if (keyboard_check(ord("S"))){
	y = y + spd
	dir = Direction.Down;
}

x = clamp(x, 0,room_width);
y = clamp(y, 0, room_height);

//shoot bullet
shootTimer ++;
if (shootTimer >= shootTimerMax){
	shootTimer = 0;	
	var bullet = instance_create_depth(x, y,0,obj_bullet);
	with(bullet){
		dir = obj_player.dir
	}
}
// pick up coins
if (place_meeting(x,y,obj_coin)){
	var instance = instance_place(x,y,obj_coin);
	with(instance){
		instance_destroy()
	}
	global.COIN = global.COIN + 10
}


