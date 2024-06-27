/// @description Insert description here
// You can write your code in this editor
var camera = view_camera[0]

var camera_width = camera_get_view_width(camera);
var camera_height = camera_get_view_height(camera);

camera_set_view_pos(camera, obj_player.x - camera_width/2, obj_player.y - camera_height/2);
