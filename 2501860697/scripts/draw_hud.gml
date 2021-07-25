user_event(11);

if ("venom" in self){ 

if venom = 3 {
	draw_sprite(sprite_get("charge"), 3, temp_x + 130, temp_y - 47);
} else if venom = 2 {
	draw_sprite(sprite_get("charge"), 2, temp_x + 130, temp_y - 47);
} else if venom = 1 {
	draw_sprite(sprite_get("charge"), 1, temp_x + 130, temp_y - 47);
} else if venom = 0 {
	draw_sprite(sprite_get("charge"), 0, temp_x + 130, temp_y - 47);
}

if venom_timer > 0 && venom_current = 3 {
	draw_sprite(sprite_get("chargeuse"), 3, temp_x + 130, temp_y - 47);
} else if venom_current = 2 {
	draw_sprite(sprite_get("chargeuse"), 2, temp_x + 130, temp_y - 47);
} else if venom_current = 1 {
	draw_sprite(sprite_get("chargeuse"), 1, temp_x + 130, temp_y - 47);
} else if venom = 0 {
	draw_sprite(sprite_get("chargeuse"), 0, temp_x + 130, temp_y - 47);
}

var charge_full = sprite_get("meterblue");
var charge_height = sprite_get_height(charge_full);
var charge_width = sprite_get_width(charge_full);

var charge_percentage = charge / 100;

shader_start();
draw_sprite(sprite_get("meterempty"),0, temp_x + 20, temp_y - 40);
draw_sprite_part(charge_full,charge_anim, 0, 0, charge_width * charge_percentage, charge_height, temp_x + 34, temp_y - 26);

shader_end();



if venom_timer > 0 && venom_stack == 1 {
	var venom_full = sprite_get("meterred");
var venom_height = sprite_get_height(charge_full);
var venom_width = sprite_get_width(charge_full);

var venom_percentage = venom_timer / 100;

shader_start();
draw_sprite(sprite_get("meterempty"),0, temp_x + 20, temp_y - 40);
draw_sprite_part(venom_full,venom_anim, 0, 0, venom_width * venom_percentage, venom_height, temp_x + 34, temp_y - 26);

shader_end();
}

if venom_timer > 0 && venom_stack == 2 {
	var venom_full = sprite_get("meterdarkblue");
var venom_height = sprite_get_height(charge_full);
var venom_width = sprite_get_width(charge_full);

var venom_percentage = venom_timer / 100;

shader_start();
draw_sprite(sprite_get("meterempty"),0, temp_x + 20, temp_y - 40);
draw_sprite_part(venom_full,venom_anim, 0, 0, venom_width * venom_percentage, venom_height, temp_x + 34, temp_y - 26);

shader_end();
}

if venom_timer > 0 && venom_stack == 3 {
	var venom_full = sprite_get("meternotpink");
var venom_height = sprite_get_height(charge_full);
var venom_width = sprite_get_width(charge_full);

var venom_percentage = venom_timer / 100;

shader_start();
draw_sprite(sprite_get("meterempty"),0, temp_x + 20, temp_y - 40);
draw_sprite_part(venom_full,venom_anim, 0, 0, venom_width * venom_percentage, venom_height, temp_x + 34, temp_y - 26);

shader_end();
}


if short_timer < 99.9 && short_timer != 0 {
	var short_full = sprite_get("meterpink");
var short_height = sprite_get_height(charge_full);
var short_width = sprite_get_width(charge_full);

var short_percentage = short_timer / 100;

shader_start();
draw_sprite(sprite_get("meterempty"),0, temp_x + 20, temp_y - 40);
draw_sprite_part(short_full,short_anim, 0, 0, short_width * short_percentage, short_height, temp_x + 34, temp_y - 26);

shader_end();
}
}