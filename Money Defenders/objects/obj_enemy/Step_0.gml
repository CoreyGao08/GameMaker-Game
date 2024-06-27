/// @description Insert description here
// You can write your code in this editor
if (global.PAUSE){
	speed = 0;
	return;
}

var player_x = obj_player.x;
var player_y = obj_player.y;

if (distance_to_point(player_x, player_y) > spd){
	move_towards_point(player_x, player_y, spd)
}else{
	speed = 0;	
}

if (hp <= 0){
	var deathDisplay = instance_create_depth(x,y,0,obj_spriteDisplaceONCE);
	deathDisplay.sprite_index = spr_enemyDeath
	instance_destroy();
}
//taking coin from player/damage
//damage timer
damageTimer ++;
if (damageTimer >= damageTimerMax){
	if (place_meeting(x,y,obj_player)){
	global.COIN -= damage;
	damageTimer = 0;	
	}
else{
	damageTimer = 0;
}
}
