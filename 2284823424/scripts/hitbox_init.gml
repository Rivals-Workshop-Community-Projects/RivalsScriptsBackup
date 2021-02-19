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