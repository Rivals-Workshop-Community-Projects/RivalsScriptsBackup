#macro CL_DTHROW_TEAM 31
#macro CL_FSPECIAL_AIR 25

//Setting for visual hurtbox in training mode
if get_match_setting(SET_HITBOX_VIS) {
	draw_sprite_ext(mask_index,image_index,x,y,1,1,image_angle,c_green,0.5);
}

if (was_parried == true) {
	draw_sprite_ext(sprite_index,image_index,x,y,spr_dir,1,image_angle,c_dkgray,0.75);
}

// Draw Platform
if ((state == CL_DTHROW_TEAM || state == CL_FSPECIAL_AIR) && player_id.free == true) {
	if(state_timer = 10){ plat_temp_x = player_id.x + (20 * player_id.spr_dir); plat_temp_y = player_id.y - 10;}
	if(state_timer > 10){
	plat_exists = true;
	draw_sprite_ext(plat_clone_assist_sprite,get_gameplay_time()/6,plat_temp_x,plat_temp_y,1,1,0,c_white, (state_timer/10) - 1);
	}
}
// Remove platform
if(!(state == CL_DTHROW_TEAM || state == CL_FSPECIAL_AIR) && plat_exists == true){
	if(plat_despawn_timer <= 0){plat_exists = false;plat_despawn_timer = 10;}
	else {
		draw_sprite_ext(plat_clone_assist_sprite,get_gameplay_time()/6,plat_temp_x,plat_temp_y,1,1,0,c_white,((-1 * state_timer)/10) + 1);
		plat_despawn_timer--
	}
}
/*
if(draw_debug_hud == true){

draw_debug_text( x -20, y - 80,"Total Timer: " + string(article_total_timer));
draw_debug_text( x -20, y - 100,"" + string(""));
draw_debug_text( x -20, y - 120,"Article State: " + string(state));
draw_debug_text( x -20, y - 140,"Article State Timer: "+ string(state_timer));
draw_debug_text( x -20, y - 160,"hitstop" + string(hitstop));
draw_debug_text( x -20, y - 180,"" + string(""));
//draw_debug_text( x -20, y - 200,"clone_nspecial_cooldown: " + string(clone_nspecial_cooldown));
draw_debug_text( x -20, y - 220,"Free: " + string(free));
draw_debug_text( x -20, y - 240,"image_index " + string(image_index));
draw_debug_text( x -20, y - 260,"vsp: " + string(vsp));
draw_debug_text( x -20, y - 280,"hsp: " + string(hsp));
draw_debug_text( x -20, y - 300,"" + string(""));

}
*/
//Triangle/percentage from Ruber
draw_sprite_ext(sprite_get("indicator"), 0, x, y - 70, 1, 1, 0, get_player_hud_color(player), 1);
draw_set_font(asset_get("fName"));
draw_set_halign(fa_center);
draw_text_colour_outline(x - (spr_dir * 0), y - 80 - 15, string(clone_hud_text), get_player_hud_color(player),get_player_hud_color(player),1,c_black,c_black,1,2,10,1,1,0);
draw_text_colour_outline(x - (spr_dir * 0), y - 80 - 31, string(get_player_damage(player)) + "%", c_white,c_white,1,c_black,c_black,1,2,10,1,1,0);

// Draw off screen indicator
var offX = undefined;
var offY = undefined;
var offIndex = 0;
var offRot = 0;
if (x < view_get_xview() - 30) {
    offX = view_get_xview() + 35;
    if (y > view_get_yview() + view_get_hview() - 60) {
        offY = view_get_yview() + view_get_hview() - 85;
        offIndex = 1;
        offRot = -90;
    } else if (y < view_get_yview() + 35) {
        offY = view_get_yview() + 35;
        offIndex = 1;
        offRot = 180;
    } else {
        offY = y;
        offIndex = 0;
        offRot = -90;
    }
} else if (x > view_get_xview() + view_get_wview() + 30) {
    offX = view_get_xview() + view_get_wview() - 35;
    if (y > view_get_yview() + view_get_hview() - 60) {
        offY = view_get_yview() + view_get_hview() - 85;
        offIndex = 1;
        offRot = 0;
    } else if (y < view_get_yview() + 35) {
        offY = view_get_yview() + 35;
        offIndex = 1;
        offRot = 90;
    } else {
        offY = y;
        offIndex = 0;
        offRot = 90;
    }
} else if (y > view_get_yview() + view_get_hview() - 60) {
    offX = x;
    offY = view_get_yview() + view_get_hview() - 85;
    offIndex = 0;
    offRot = 0;
} else if (y < view_get_yview() + 35) {
    offX = x;
    offY = view_get_yview() + 35;
    offIndex = 0;
    offRot = 180;
}

if (offX != undefined) {
    draw_sprite_ext(sprite_get("offscreen_indicator"), offIndex, offX, offY, 1, 1, offRot, get_player_hud_color(player), 1);
    draw_sprite_ext(sprite_get("offscreen_clone"), 0, offX, offY, spr_dir, 1, 0, c_white, 1);
}

#define draw_text_colour_outline
///draw_text_colour_outline(x, y, string, textColor1, textColor2, textAlpha, outlineColor1, outlineColor2, outlineAlpha, outlineThickness, outlineQuality, xscale, yscale, angle);
//By Blokatt - @blokatt, blokatt.net
var i;
for (i = 0; i < 360; i += 360 / argument10){
    draw_text_transformed_color(argument0 + lengthdir_x(argument9, i), argument1 + lengthdir_y(argument9, i), string(argument2), argument11, argument12, argument13, argument6, argument6, argument7, argument7, argument8);
}
draw_text_transformed_color(argument0, argument1, string(argument2), argument11, argument12, argument13, argument3, argument3, argument4, argument4, argument5);
