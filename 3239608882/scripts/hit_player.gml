if (my_hitboxID.attack == AT_NSPECIAL && my_hitboxID.hbox_num == 7 and hit_player_obj.bio_TIMER <= 250)
{
	hit_player_obj.bio = true;
    hit_player_obj.bio_ID = id; // optional, but HIGHLY recommended
	
	// the next variable is used for status effects that wear off or that do something based on a timer (e.g. Zetterburn fire)
	// replace 600 with the duration of your status effect before it wears off
	// replace 600 with 0 if you want the timer to count up from 0 and never wear off
	// (see "Various types of status effects" for more information)
	hit_player_obj.bio_TIMER = 300;
	
}

if (my_hitboxID.attack == AT_NSPECIAL && my_hitboxID.hbox_num == 5 and hit_player_obj.bio_TIMER <= 250)
{
	hit_player_obj.bio = true;
    hit_player_obj.bio_ID = id; // optional, but HIGHLY recommended
	
	// the next variable is used for status effects that wear off or that do something based on a timer (e.g. Zetterburn fire)
	// replace 600 with the duration of your status effect before it wears off
	// replace 600 with 0 if you want the timer to count up from 0 and never wear off
	// (see "Various types of status effects" for more information)
	hit_player_obj.bio_TIMER = 300;
	
}

if (my_hitboxID.attack == AT_NSPECIAL && my_hitboxID.hbox_num == 4)
{
	sound_play(sound_get("HEAL"));
	//apple_hit = true;
with hit_player_obj 
{
	//spawn_hit_fx( x - (0 * spr_dir), y - 2, 280);
	take_damage(player, -1, -6);
}
}

if (my_hitboxID.attack == AT_DATTACK && my_hitboxID.hbox_num == 1)
{
	    	hit_player_obj.x = x + 8 * spr_dir;
		    hit_player_obj.y = y - 10;
}

