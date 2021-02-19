if (my_hitboxID.attack == AT_NSPECIAL && "am_ball" not in my_hitboxID) exit;

my_hitboxID.has_hit = true;
my_hitboxID.hitpause_timer = hit_player_obj.hitstop_full;

if (my_hitboxID.attack == AT_NSPECIAL){
	my_hitboxID.hsp = 0;
	my_hitboxID.vsp = 0;
	
	if my_hitboxID.state == 4{
		my_hitboxID.hitbox_timer = my_hitboxID.length + 10;
	}
}

if (my_hitboxID.type == 1) melee_hit_player = hit_player_obj;



with my_hitboxID if ("am_ball" in self){
	sound_play(other.sfx_ball_hit_added);
	spawn_hit_fx(x, y, player_id.vfx_hit_med);
}