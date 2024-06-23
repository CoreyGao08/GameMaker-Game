/// @description Insert description here
// You can write your code in this editor
spawnTimer ++;
if (spawnTimer >= spawnTimerMax){
	instance_create_depth(x, y,0, obj_enemy)
	spawnTimer = 0;	
}