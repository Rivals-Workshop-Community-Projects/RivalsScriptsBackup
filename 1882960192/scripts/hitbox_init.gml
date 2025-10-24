//hitbox_init
smacked = false;
borked = false;
hitstop = 0;
old_vsp = 0;
old_hsp = 0;
landedground = false;
bounce = 3;

//G&W can't absorb explosion
if attack == AT_NSPECIAL {
	if hbox_num == 1 {
		hsp += player_id.hsp/5;
		vsp += player_id.vsp/10;
		damage += player_id.wblastcharge/10;
		kb_value += player_id.wblastcharge/10;
		hitpause += player_id.wblastcharge/10;
		hsp += player_id.wblastcharge/20*spr_dir;
		
		with orig_player_id {
			if !(joy_pad_idle) {
				if(joy_dir >= 30 && joy_dir <= 170) { //angled up
					other.hsp *= .5;
					other.vsp *= 1.4;
				}
				else 
				if(joy_dir <= 330 && joy_dir >= 190) { //angled down
					other.hsp *= 1.4;
					other.vsp *= .3;
				}
			}
		}
	}
	if hbox_num == 3 {
		hsp += player_id.hsp/10;
		vsp += player_id.vsp/10;
		
		with orig_player_id {
			if !(joy_pad_idle) {
				if(joy_dir >= 30 && joy_dir <= 170) { //angled up
					other.hsp *= .9;
					other.vsp *= 1.1;
				}
				else 
				if(joy_dir <= 330 && joy_dir >= 190) { //angled down
					other.hsp *= 1.1;
					other.vsp *= .9;
				}
			}
		}
	}
	if hbox_num == 2 {
	no_absorb = 1;
	proj_reflectable = 1;
	}
}