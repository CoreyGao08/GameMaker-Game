/// @description Insert description here
// You can write your code in this editor
global.PAUSE = false;

timeSeconds = 0;

function pop_up_menu(){
	var pop_up_menu_LayerID = layer_get_id("pop_up_menu");
	layer_set_visible(pop_up_menu_LayerID, true);
	
	var camera = view_camera[0];
	var createx = camera_get_view_x(camera);
	var createy = camera_get_view_y(camera);
	instance_create_layer(createx + 224,createy = 160,pop_up_menu_LayerID,Object11);
	instance_create_layer(createx + 448,createy = 160,pop_up_menu_LayerID,Object11);
	instance_create_layer(createx + 672,createy = 160,pop_up_menu_LayerID,Object11);
}
