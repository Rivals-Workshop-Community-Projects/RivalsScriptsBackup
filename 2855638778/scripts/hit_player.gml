//you hit them :)

// what move you just hit the opponent with
var hitmove = my_hitboxID.attack;

// fair actually plays two sound effects overlapping
if (hitmove = AT_FAIR) {
	sound_play(asset_get("sfx_blow_medium3"), false, noone, 0.75, 1);
}

// while buff is not active
// adds meter depending on damage dealt
if (buff_active == false) {
	var buffadd = my_hitboxID.damage;
	 
	buff_current = buff_current + buffadd;
	
	// cant be above buff_max
	if (buff_current > buff_max) {
		buff_current = buff_max;
	}
}

// while buff is active
// adds +3 to your attack
// exceptions are RJ fstrong (it's a full crit), 
// the first hit of RJ bair,
// the rockets of fspecial and dstrong (the explosion minicrits)
if (buff_active == true) {
	if !(blastjumping && (hitmove = AT_FSTRONG || hitmove = AT_BAIR)) {
		if !(hitmove = AT_FSPECIAL || hitmove = AT_DSTRONG) {
			if !(hitmove = AT_JAB & my_hitboxID.hbox_num == 1) {
				sound_play(sound_get("crit_hit_mini"), false, noone, 0.75, 1);
					with hit_player_obj {
					take_damage( player, player, 3 );
				}
			}
		}
	}
}

// RJ fstrong handler
// deals 6 extra damage, plays crit sound, cool crit vfx that was hell to get working
if (blastjumping) {
	if (hitmove = AT_FSTRONG) {
	var hitplayerx = 0;
	var hitplayery = 0;
		
	with hit_player_obj {
		take_damage( player, player, 4 ); // prev; 6
		hitplayerx = x;
		hitplayery = y;
	}
		
	if (spr_dir == 1) {
		spawn_hit_fx(hitplayerx, hitplayery, crit_vfx);
	}
	else {
		spawn_hit_fx(hitplayerx, hitplayery, crit_vfx_mirror);
	}
		
		//spawn_dust_fx( x, y, critsprite, 12 ); // this doesn't work.
		sound_play(sound_get("crit_hit"), false, noone, 1, 1);
	}
}

