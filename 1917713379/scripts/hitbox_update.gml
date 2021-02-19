//hitbox_update

mytotem = player_id.mytotem

if (attack == AT_FSPECIAL) {
	if hitbox_timer > 10 {
	hsp -= spr_dir*0.8
	}
	if hitbox_timer > 20 {
	kb_angle = 110
	}
	if ((mytotem != noone and place_meeting(x,y,mytotem))) and passthrough = 0{
		passthrough = 1
		sound_play(asset_get("sfx_abyss_hex_hit"))
		mytotem.hsp = sign(hsp)*10
		}
	if hitbox_timer = length-8 {
	sprite_index = sprite_get("fspecial_dead")
	image_index = 0
	}
	if hitbox_timer = length {
	player_id.gracex = x
	player_id.gracey = y
	player_id.gracetime = 11
	}
}

