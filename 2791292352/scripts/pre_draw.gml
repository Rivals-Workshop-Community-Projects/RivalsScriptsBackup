if hex_alpha > 0 {
shader_start();
draw_sprite_ext(sprite_get("hex_galaxy"), 0, view_get_xview() + 480, view_get_yview() + 270, 2, 2, get_gameplay_time()*20%360, c_white, hex_alpha);
shader_end();

//player layers
with oPlayer {
    if self != other {
        force_depth = true;
        depth = other.depth-1;
    }
}

}

if instance_exists (pHitBox) {
shader_start();
	with pHitBox {
		if player_id = other.id && attack = AT_USPECIAL {
			draw_sprite_ext(sprite_get("uspecial_wind_over"), image_index, x, y, spr_dir, 1, proj_angle, c_white, 1);
		}
    }
shader_end();
}