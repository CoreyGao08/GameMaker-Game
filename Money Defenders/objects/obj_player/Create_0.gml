/// @description Insert description here
// You can write your code in this editor
spd = 10;
dir = Direction.Right; // 0= right, 1 = up, 2 = left, 3 = down

//shoot/spawn bullet
shoot_interval = 0.5;
shootTimerMax = shoot_interval * game_get_speed(gamespeed_fps);
shootTimer = 0;

