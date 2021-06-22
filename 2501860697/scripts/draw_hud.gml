user_event(11);

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

if venom_timer > 0 {
	var venom_full = sprite_get("meterred");
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


// draw_debug_text(x, y + 35, "Venom:" +string(venom));
// draw_debug_text(x, y + 55, "Venom stack:" +string(venom_stack));
// draw_debug_text(x, y + 15, "Venom_current:" +string(venom_current));
// draw_debug_text(x, y - 35, "Venom_recharge:" +string(venom_recharge));
// draw_debug_text(x, y - 55, "Venom_recharge_active:" +string(venom_recharge_active));
// draw_debug_text(x, y - 75, "Venom_timer:" +string(venom_timer));
// draw_debug_text(x, y - 95, "Charge" +string(charge));
// draw_debug_text(x, y - 115, "Dash Speed" +string(dash_speed));
// draw_debug_text(x, y - 135, "Initial Dash Speed" +string(initial_dash_speed));
// draw_debug_text(x, y - 155, "Walk Speed" +string(walk_speed));
// draw_debug_text(x, y - 175, "Moonwalk Accel" +string(moonwalk_accel));
// draw_debug_text(x, y - 195, "Max Jump Hsp" +string(max_jump_hsp));
// draw_debug_text(x, y - 215, "Air Max Speed" +string(air_max_speed));
// draw_debug_text(x, y - 235, "Air Dodge Speed" +string(air_dodge_speed));
// draw_debug_text(x, y - 255, "Roll Forward/Backward Max" +string(roll_forward_max));
// draw_debug_text(x, y - 275, "short:" +string(short));
// draw_debug_text(x, y - 295, "short_timer:" +string(short_timer));
// draw_debug_text(x, y - 315, "short_drain:" +string(short_drain));


// var venom_boost = (venom_timer / 100.0);
// venom_boost *= venom1_boost + (venom_stack * 0.25);
// draw_debug_text(x, y - 335, "venom_boost:" +string(venom_boost));