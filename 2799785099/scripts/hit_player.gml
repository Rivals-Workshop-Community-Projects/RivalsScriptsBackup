//hit_player - called when one of your hitboxes hits a player

if (my_hitboxID.attack == AT_JAB) {
	sound_play(sound_get("sfx_hit_sharp"));
}

if (my_hitboxID.attack == AT_FTILT) {
	sound_play(sound_get("sfx_hit_sharp1"));
}

if (my_hitboxID.attack == AT_UTILT) {
	sound_play(sound_get("sfx_hit_sharp"));
}

if (my_hitboxID.attack == AT_FAIR) {
	sound_play(sound_get("sfx_hit_sharp"));
}

if (my_hitboxID.attack == AT_DAIR) {
	sound_play(sound_get("sfx_hit_sharp2"));
}

if (my_hitboxID.attack == AT_DATTACK) {
	sound_play(asset_get("sfx_blow_medium2"));
}

if (my_hitboxID.attack == AT_DSPECIAL && my_hitboxID.hbox_num == 7) {
	sound_play(sound_get("sfx_hit_sharp2"));
}

if (my_hitboxID.attack == AT_UAIR) {
	sound_play(sound_get("sfx_hit_sharp1"));
}

if (my_hitboxID.attack == AT_USPECIAL) {
	if my_hitboxID.hbox_num == 1 || my_hitboxID.hbox_num == 2 {
		sound_play(asset_get("sfx_blow_medium2"));
	}
}

if (my_hitboxID.attack == AT_FSTRONG) {
	sound_play(sound_get("sfx_hit_sharp2"));
}

if (my_hitboxID.attack == AT_USTRONG) {
	if my_hitboxID.hbox_num == 1 {
	sound_play(sound_get("sfx_hit_sharp1"));
	}
	if my_hitboxID.hbox_num == 2 {
	sound_play(sound_get("sfx_hit_sharp2"));
	}
}

if (my_hitboxID.attack == AT_DSTRONG) {
	if my_hitboxID.hbox_num == 1 || my_hitboxID.hbox_num == 2 {
	sound_play(sound_get("sfx_hit_sharp"));
	}
	if my_hitboxID.hbox_num == 3 {
	sound_play(sound_get("sfx_hit_sharp2"));
	}
}

if (my_hitboxID.attack == AT_FSPECIAL) {
	sound_play(sound_get("sfx_hit_sharp1"));
}

if (my_hitboxID.attack == AT_NSPECIAL) {
	if my_hitboxID.hbox_num == 2 {
		sound_play(sound_get("sfx_hit_sharp2"));
	}
}

if (my_hitboxID.attack == AT_BAIR && my_hitboxID.hbox_num == 1) {
	sound_play(sound_get("sfx_hit_sharp2"));
}

if (my_hitboxID.attack == AT_NSPECIAL) {
	my_hitboxID.hittimer = 24;
	if (my_hitboxID.hbox_num == 1) {
		spawn_hit_fx(hit_player_obj.x+2*spr_dir,hit_player_obj.y,301);
			
		if my_hitboxID.has_hit && !my_hitboxID.was_parried {
			my_hitboxID.damage = 1;
			my_hitboxID.kb_value = 4;
			my_hitboxID.kb_scale = .25;
			my_hitboxID.kb_angle = 50;
			
			if !my_hitboxID.boomerstop {
				//my_hitboxID.hit_flipper = 4;
			}
		}
	}
	if (my_hitboxID.hbox_num == 2) {
		my_hitboxID.damage = 2;		
		spawn_hit_fx(hit_player_obj.x+2*spr_dir,hit_player_obj.y,304);
	}
}