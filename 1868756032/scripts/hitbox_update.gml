if (attack == AT_FSPECIAL) {
	hsp *= 0.9
	vsp *= 0.9
}

if ((attack == AT_NSPECIAL_FROG) or (attack == AT_NSPECIAL_SYLV) or (attack == AT_NSPECIAL_ELLI) or (attack == AT_NSPECIAL_MAY)) and !free{
	instance_destroy()
}


if (attack == AT_NSPECIAL_ORCA) and !free {
	player_id.puddley = y
	player_id.puddlex = x
	player_id.createpuddle = 1
	instance_destroy()
}


if (attack == AT_NSPECIAL_SYLV) {
	proj_angle = point_direction(x, y, x+hsp, y+vsp)-90

	if (hbox_num == 2) {
		if hitbox_timer == 5 {
			create_hitbox( AT_NSPECIAL_SYLV, 3, x, y )
		}
		if hitbox_timer == 10 {
			create_hitbox( AT_NSPECIAL_SYLV, 3, x, y )
		}
		if hitbox_timer == 15 {
			create_hitbox( AT_NSPECIAL_SYLV, 3, x, y )
		}
		if hitbox_timer == 20 {
			create_hitbox( AT_NSPECIAL_SYLV, 3, x, y )
		}
	}

}

if (attack == AT_NSPECIAL_ABSA) {
	if (hitbox_timer == 105) {
		sound_play(asset_get("sfx_absa_kickhit"))
		create_hitbox( AT_NSPECIAL_ABSA, 2, x, y )
	}

}

if (attack == AT_NSPECIAL_ORCA) {
	proj_angle = point_direction(x, y, x+hsp, y+vsp)-45
	if !spr_dir proj_angle = point_direction(x, y, x+hsp, y+vsp)+225
}

if (attack == AT_NSPECIAL_SHOV){
	if hbox_num == 1 {
		player_id.hookx = x
		player_id.hooky = y
		if y > room_height-32 {
			player_id.window = 3
			player_id.window_timer = 0
			vsp = 0
			y -= 9
		}
		if player_id.window == 4 {
			create_hitbox( AT_NSPECIAL_SHOV, 2, x, y )
			instance_destroy()
		}
	}
	if hbox_num == 2 {
		if player_id.y > y {
			if sprite_index == sprite_get("hook_proj") {
				player_id.window = 5
				player_id.window_timer = 0
				instance_destroy()
			}
			else {
				player_id.window = 6
				player_id.window_timer = 0
				instance_destroy()
			}
		}
	}
	if (hbox_num == 3) and (hitbox_timer > 15) and place_meeting(x,y,player_id) {
		if sprite_index == sprite_get("maxim_spr") player_id.skheal = -10
		if sprite_index == sprite_get("melon_spr") player_id.skheal = -5
		sound_play(asset_get("sfx_fish_collect"))
		instance_destroy();
	}
}

if attack == AT_NSPECIAL_SHOV and (hbox_num = 1 or hbox_num = 2) and player_id.state != PS_ATTACK_AIR and player_id.state != PS_ATTACK_GROUND {
	instance_destroy();
}

if attack == AT_NSPECIAL_KRAG {
	while !instance_place(x, y, asset_get("par_block")) and !instance_place(x, y, asset_get("par_jumpthrough")){
		y += 1
		if y > room_height {
			instance_destroy()
		}
	}
	if hbox_num == 1 and hitbox_timer = 10 {
		create_hitbox( AT_NSPECIAL_KRAG, 2, x+50*spr_dir, y-32 )
		sound_play(asset_get("sfx_kragg_spike"))
	}
	if hbox_num == 2 and hitbox_timer = 10 {
		create_hitbox( AT_NSPECIAL_KRAG, 3, x+60*spr_dir, y-24 )
		sound_play(asset_get("sfx_kragg_spike"))
	}
}

