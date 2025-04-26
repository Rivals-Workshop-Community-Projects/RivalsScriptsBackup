//draw_hud.gml

if ("char_height" not in self) exit;

if (debug_display & get_match_setting(SET_PRACTICE))
{
    var mul = 16; //spacing
    
    draw_debug_text(temp_x+mul*0, temp_y+mul*-6, "Down + Taunt for Sparking Form!");
    draw_debug_text(temp_x+mul*0, temp_y+mul*-5, "Right + Taunt for Guardian Form!");
    draw_debug_text(temp_x+mul*0, temp_y+mul*-4, "Left + Taunt for Super Form!");
    draw_debug_text(temp_x+mul*0, temp_y+mul*-3, "Up + Taunt to disable active forms!");
}



//Saya HUD
var front_sprite = sprite_get("spr_meter_front");
var bg_sprite = sprite_get("spr_meter_back");
var mask_sprite = sprite_get("spr_meter_mask");
var fill_sprite = sprite_get("spr_meter_fill");



var dx = temp_x + 49;
var dy = temp_y - 62;

var form_state = 0;

if (is_sparking) {
    form_state = 1;
} else if (is_guardian) {
    form_state = 2;
} else if (is_super) {
    form_state = 3;
}

shader_start();
//Extra HUD Effects (Guardian)	
var guardian_flame_start = sprite_get("spr_meter_flame_start");
var guardian_flame_loop = sprite_get("spr_meter_flame_loop");
if (is_guardian)
{
    if (guardian_hud_timer > 0) draw_sprite_ext(guardian_flame_start, guardian_hud_start_frame/5, dx + 120, dy, -1, 1, 0, c_white, 1);
    else draw_sprite_ext(guardian_flame_loop, get_gameplay_time()/5, dx + 115, dy, -1, 1, 0, c_white, 1);
    
}
	
draw_sprite(bg_sprite, form_state, dx, dy);
	
maskHeader();
	
draw_sprite(mask_sprite, 0, dx, dy);
	
maskMidder();
	
var meter_off = floor(clamp(145 * (meter / meter_max), 0, 145));

draw_sprite_part(fill_sprite, 0, 0, 30, meter_off, 30, dx + 8, dy + 30);

maskFooter();

//Calculate Threshold Position
var threshold_x = dx + 8 + floor(145 * 0.3); // Position at 30% of the bar
var threshold_y1 = dy + 50; // Start slightly higher up
var threshold_y2 = dy + 60; // Shorter height to avoid text overlap

//Draw Black Outline 
draw_rectangle_color(threshold_x - 1, threshold_y1 - 1, threshold_x + 1, threshold_y2 + 1, 
    c_black, c_black, c_black, c_black, false);

//Draw White Threshold Line 
draw_rectangle_color(threshold_x, threshold_y1, threshold_x, threshold_y2, 
    c_white, c_white, c_white, c_white, false);

//Front of the HUD
draw_sprite(front_sprite, 0, dx, dy);


//Extra HUD Effects (Sparking)
var sparking_lightning = sprite_get("spr_meter_sparking_lightning");
if (is_sparking)
{
    draw_sprite(sparking_lightning, get_gameplay_time()/5, dx, dy);
}

shader_end();



#define maskHeader

gpu_set_blendenable(false);
gpu_set_colorwriteenable(false,false,false,true);
draw_set_alpha(0);
draw_rectangle_color(0, 0, room_width, room_height, c_white, c_white, c_white, c_white, false);
draw_set_alpha(1);



#define maskMidder

gpu_set_blendenable(true);
gpu_set_colorwriteenable(true,true,true,true);
gpu_set_blendmode_ext(bm_dest_alpha,bm_inv_dest_alpha);
gpu_set_alphatestenable(true);



#define maskFooter

gpu_set_alphatestenable(false);
gpu_set_blendmode(bm_normal);
draw_set_alpha(1);