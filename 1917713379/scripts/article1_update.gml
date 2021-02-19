//article1_update


image_index += 0.15

if collision_circle(x,y,32,asset_get("pHitBox"),true,false) {
	offender = collision_circle(x,y,32,asset_get("pHitBox"),true,false)
	if offender.throws_rock == 1 {
		hsp = lengthdir_x(offender.kb_value*2,offender.kb_angle)*offender.player_id.spr_dir
		vsp = lengthdir_y(offender.kb_value*2,offender.kb_angle)
		offender.player_id.has_hit = 1
	}
}

//funny code :)
hsp *= 0.95
vsp *= 0.95


if position_meeting(x, y, asset_get("plasma_field_obj")) and state = 0{
	state = 1
	sound_play(asset_get("sfx_clairen_hit_med"));
	deathtimer = 0
}

if state = 1{
	if mode = 0 {
	sprite_index = sprite_get("nspecial_detonate_heal");
	}
	image_index -= 0.05
	deathtimer += 1
	if deathtimer >= 16 {
		if player_id.mytotem = self player_id.mytotem = noone
		instance_destroy()
	}
}

