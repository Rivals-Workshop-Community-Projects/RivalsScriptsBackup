//hit_player
if (my_hitboxID.attack == AT_DSPECIAL){
    hit_player_obj.should_make_shockwave = false
}

if ((my_hitboxID.attack == AT_NSPECIAL)){
    hit_player_obj.should_make_shockwave = false
    if my_hitboxID.hbox_num == 2{
    if (!hit_player_obj.stagger) {
        sound_play(sound_get("se_common_dizzy_add")); // replace if using built-in SFX
    }
	hit_player_obj.stagger = true;
    hit_player_obj.stagger_ID = id; // optional, but HIGHLY recommended
	
	// the next variable is used for status effects that wear off or that do something based on a timer (e.g. Zetterburn fire)
	// replace 600 with the duration of your status effect before it wears off
	// replace 600 with 0 if you want the timer to count up from 0 and never wear off
	// (see "Various types of status effects" for more information)
	hit_player_obj.stagger_TIMER = 40;
}
}
if (my_hitboxID.attack != AT_NSPECIAL){
	hit_player_obj.stagger = false;
}

if (my_hitboxID.attack == 49 && my_hitboxID.hbox_num != 1){
    if spr_dir != hit_player_obj.spr_dir{
	x = hit_player_obj.x +(20*hit_player_obj.spr_dir)
    }
    if spr_dir == hit_player_obj.spr_dir{
	x = hit_player_obj.x -(20*hit_player_obj.spr_dir)
    }
}