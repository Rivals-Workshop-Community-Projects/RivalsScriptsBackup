//pre_draw.gml
//we use this script to draw under the player character, both text and sprites can be used here

shader_start(); //everything between this and shader_end(); will be affected by alts

//respawn platform - check if the player is either in the respawn state or taunting while in the respawn state
if (state == PS_RESPAWN || respawn_taunt > 0)
{
    draw_sprite_ext(sprite_get("plat_pre"), game_time * plat_speed, x, y, 2, 2, 0, c_white, 1);
}

// If there's an fspecial hitbox, draw a line to it
if ((attack == AT_FSPECIAL) && (grab_hitbox != noone) && (instance_exists(grab_hitbox))) {
	var x_origin = x + (spr_dir * 40);
	var x_distance = (grab_hitbox.x + (spr_dir * 20)) - x_origin;
	var x_scale = x_distance / 7;
	draw_sprite_ext(rope_image, 0,
				x_origin, y - 48, x_scale, 2, 0,
				c_white, 1);
}

shader_end();