/// @description Insert description here
// You can write your code in this editor
var xaxis = keyboard_check(vk_right) - keyboard_check(vk_left);
var yaxis = keyboard_check(vk_down) - keyboard_check(vk_up);

message_x += xaxis;
message_y += yaxis;

var saxis = keyboard_check_pressed(ord("W")) - keyboard_check_pressed(ord("S"));
message_size = (min(8,max(1,message_size + (saxis * 0.25))));

if(keyboard_check_released(ord("N"))){
	show_numbers = !show_numbers;
}


if(keyboard_check_released(ord("E"))){
	show_eyes = !show_eyes;	
}

if(draw_directions){
	if(mouse_check_button_released(mb_left)){
		var in = instance_create_layer(mouse_x,mouse_y,"Instances", object_direction_draw);
		in.lead = true;
	}
} else {
	if(instance_exists(object_direction_draw)){
		instance_destroy(object_direction_draw);	
	}
}
