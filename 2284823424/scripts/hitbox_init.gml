hitpause_timer = 0;

if (attack == AT_USPECIAL && hbox_num == 2){
	image_index = 6;
	vsp = 8;
}

flaming = player_id.burned;
if player_id.burned && sprite_index == player_id.spr_fstrong_arrow{
	sound_play(player_id.sfx_minecraft_singe);
}

has_hit = false;



players_crossbowed = 0;



if attack == AT_NTHROW && hbox_num == 10{
	hitpause_timer_2 = 0;
	stored_hsp = 0;
	
	faster_speed = 10; // speed it reflects at
	speed_mult = 1.2; // multiplier for each consecutive hit back and forth
	
	max_bounces = 3; // max bounces for down-angled ver
	
	
	
	//BY SUPERSONIC
	
	hbox_group_2 = array_create(4,array_create(50,array_create(10,0))); //ew
	 
	hitstun = 0;
	hitstun_full = 0;
	 
	kb_adj = 1;
	kb_dir = 0;
	orig_knock = 0;
	
	hit_lockout = 0;
}