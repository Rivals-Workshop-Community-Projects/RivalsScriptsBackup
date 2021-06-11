//post_draw.gml

shader_start();

if (epinel_heavy_state) {
	//draw_sprite(epinel_sprite_heavy, 5000 - move_cooldown[AT_USPECIAL] / 2, x, y);
	draw_sprite(epinel_sprite_heavy, state_timer / 2, x, y);
}

if ((attack == AT_FSPECIAL || attack == AT_FSPECIAL_AIR) && window == 3 && (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR)) {
	var focusdist_x;
	var focusdist_y;
	if (attack == AT_FSPECIAL_AIR) {
		focusdist_x = (epinel_charge_timer * 9 + 30) / 2;
		focusdist_y = focusdist_x - 32;
	}
	else {
		focusdist_x = (epinel_charge_timer + 1) * 9 - 30;
		focusdist_y = -32;
	}
	draw_sprite_ext(sprite_get( "fspecial_indicator" ), (attack == AT_FSPECIAL_AIR), x + focusdist_x * spr_dir, y + focusdist_y, spr_dir * 2, 2, 0, c_white, 1);
}

with (obj_article3) {
	if (object_index != obj_article3 || player_id != other) continue;
	
	gpu_set_blendmode(bm_add); //bm_add
	draw_sprite_ext( sprite_get("dspecial_glow"), get_gameplay_time() / 5, x, 0, image_xscale, room_height / 200, 0, c_white, sqrt(image_alpha) * 0.33 );
	gpu_set_blendmode(bm_normal);
	//draw_sprite(sprite_get("plat_by_Gourami"), 0, x, y);
}


with (obj_article1)
{
	if (player_id != other || state < 101 || exist_timer <= 0 || exist_timer >= expire_time) continue;
	var fxscale = 1 - 0.5 * (state == 102);
    draw_sprite_ext( sprite_get("inertia_fx_by_NeXus"), exist_timer / 4, x, y, fxscale, fxscale, point_direction(0, 0, hsp, vsp), c_white, 1);
}


with (obj_article2)
{
	if (player_id != other) continue;
    draw_sprite_ext( sprite_get("dspecial_glow_health"), 0, x, y, 1, 1, 0, c_white, 0.5);
}

with (obj_article_platform)
{
	if (player_id != other) continue;
	draw_sprite_ext( sprite_get("dspecial_glow_health"), draw_timer / 5, x, y, min(1, crumble), 1, 0, c_white, draw_glow / 100);
}

shader_end();
/*
draw_debug_text(x, y-100, "upb cooldown: " + string(move_cooldown[AT_USPECIAL]));
draw_debug_text(x, y-120, "epinel_heavy_state: " + string(epinel_heavy_state));
draw_debug_text(x, y-140, "state: " + get_state_name(state));
draw_debug_text(x, y-160, "prev_state: " + get_state_name(prev_state));
draw_debug_text(x, y-180, "attack: " + string(attack));
draw_debug_text(x, y-200, "hitpause: " + string(hitpause));
draw_debug_text(x, y-220, "was_parried: " + string(was_parried));
draw_debug_text(x, y-240, "is_armored: " + string(epinel_is_armored));
*/

//munophone
//user_event(12);