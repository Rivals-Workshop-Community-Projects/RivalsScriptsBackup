// code for kamehameha


// if (enemy_hitboxID.attack == AT_FSPECIAL && (enemy_hitboxID.hbox_num == 2) && enemy_hitboxID.orig_player == player){


// jc_object = instance_create( hit_player_obj.x, hit_player_obj.y - 40, "obj_article1" );
// jc_object.jc_buff = true;
// jc_object.jc_fspec_buff = true;
// jc_object.parried = hit_player;
// }

if enemy_hitboxID.attack == AT_NSPECIAL && enemy_hitboxID.orig_player == player {
	jc_hit = true;
}

if (hit_player_obj != id){

	if (hit_player_obj.trick_stack > 0){
		
	if (enemy_hitboxID.attack != hit_player_obj.trick_last_attack){
		
	
	
	if (hit_player_obj.trick_last_attack != enemy_hitboxID.attack){
		
	if  (enemy_hitboxID.type == 2 && trick_lockout == trick_lockout_max)
	hit_player_obj.trick_stack -= 1;
	else if (enemy_hitboxID.type == 1)
	hit_player_obj.trick_stack -= 2;
	
	hit_player_obj.trick_last_attack = enemy_hitboxID.attack;
	}
	
	trick_lockout = trick_lockout_max;
	
	}
	
	
	
	if (hit_player_obj.trick_stack < 0)
	hit_player_obj.trick_stack = 0;
	
	
	}

	

hit_player_obj.trick_deterioration = hit_player_obj.trick_deter_default;


if (style_meter || sparda){
	if (floor(hit_player_obj.trick_stack) == 0){
			if (hit_player_obj.styled_on > 1){
				sound_play(sound_get("dismal"));
			}
	}


}

}


