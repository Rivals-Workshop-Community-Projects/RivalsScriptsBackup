var me = self;
var owner = orig_player_id;

if hitstop == 1{
	hsp = old_hsp;
	vsp = old_vsp;
}
else if hitstop > 1{
	hsp = 0;
	vsp = 0;
}
if(hsp > 0) spr_dir = 1;
if(hsp < 0) spr_dir = -1;

if(instance_exists(rock_hitbox) && rock_hitbox.destroyed || place_meeting(x, y, asset_get("plasma_field_obj"))) {
	sound_play(asset_get("sfx_kragg_rock_shatter"));
	with owner spawn_hit_fx(me.x, me.y, dspec_destroy);
	instance_destroy(self);
	exit;
}

if owner.my_grab_id != self{
	sprite_index = sprite_get("a_rock");
	if free && !hitstop{
		rock_hitbox = create_hitbox(AT_DSPECIAL_2, 2, round(x + (-2 * spr_dir) + hsp), round(y + -14 + vsp));
		rock_hitbox.player = launcher;
		rock_hitbox.spr_dir = spr_dir;
		if(hsp != 0) {
			rock_hitbox.kb_angle = 361;
			rock_hitbox.kb_value = 8;
		} else if(vsp < 0) {
			rock_hitbox.kb_angle = 90;
			rock_hitbox.kb_value = 7;
		} else {
			rock_hitbox.kb_angle = 270;
			rock_hitbox.kb_value = 6;
		}
		for (var h = 0; h < array_length(rock_hitbox.can_hit); h++;){
			rock_hitbox.can_hit[h] = attack_hits[h];
			// if launcher == h rock_hitbox.can_hit[h] = false;
		}
		
		mask_index = sprite_get("a_rock_ground_detection");
		var col = (place_meeting(x, y + vsp, asset_get("par_block")) || place_meeting(x, y + vsp, asset_get("par_jumpthrough")));
		mask_index = sprite_get("a_rock_hurt");
		var rush_col = (vsp > 0 && instance_exists(player_id.uspec_rush) && place_meeting(x, y + vsp + 2, player_id.uspec_rush));
		var col_off = 8;
		if col != 0 && col != noone && (col == place_meeting(x, y + vsp, asset_get("par_block")) || (col == place_meeting(x, y + vsp, asset_get("par_jumpthrough")) && y - (vsp + col_off) < col.y && vsp > 0)){
			mask_index = sprite_get("a_rock_hurt");
			while place_meeting(x, y, asset_get("par_jumpthrough")) y--;
			while !place_meeting(x, y, asset_get("par_block")) && !place_meeting(x, y, asset_get("par_jumpthrough")) y++;
			landed = true;
			free = false;
			hsp = 0;
			vsp = 0;
			sound_play(asset_get("sfx_kragg_rock_land"));
		}
		else {
			mask_index = asset_get("empty_sprite");
			landed = false;
			free = true;
			vsp = clamp(vsp + grav, -99, max_fall);
			if(rush_col){
				sound_play(sound_get("rush_spring"));
				vsp = -12;
				hsp = 0;
			}
		}
	}
	else if vsp >= 0 && !hitstop{
		mask_index = sprite_get("a_rock_hurt");
		if !landed{
			sound_play(asset_get("sfx_kragg_rock_land"));
			landed = true;
		}
		hsp = 0;
		vsp = 0;
		for (var h = 0; h < array_length(attack_hits); h++;) attack_hits[h] = true;
	}
}
else{
	sprite_index = (owner.state == PS_ATTACK_GROUND || owner.state == PS_ATTACK_GROUND) && owner.attack == AT_DSPECIAL? asset_get("empty_sprite"):sprite_get("a_rock");
	mask_index = asset_get("empty_sprite");
	hsp = 0;
	vsp = 0;
}

if(hitstop && mask_index == sprite_get("a_rock_ground_detection")) mask_index = sprite_get("a_rock_hurt");

else if(!hitstop && rock_damage_alpha > 0) rock_damage_alpha -= .05;

if y >= get_stage_data(SD_BOTTOM_BLASTZONE_Y) + 200{
	sound_play(asset_get("sfx_kragg_rock_shatter"));
	with owner spawn_hit_fx(me.x, me.y, dspec_destroy);
	instance_destroy(self);
	exit;
}