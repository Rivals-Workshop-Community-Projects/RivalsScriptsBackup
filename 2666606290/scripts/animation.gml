// make the nametag go higher while ustrong's fist is raised
// if phone_attacking && attack == AT_USTRONG && window > 2 && !(window == 4 && window_timer > phone_window_end / 2){
// 	hud_offset = lerp(hud_offset, 180, 0.5);
// }


// fix weird jittering that can happen when it tries to return to 0
if abs(hud_offset) < 1{
	hud_offset = 0;
}

//placeholder hurtbox for attacks
// if (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR)
// {
// 	pHurtBox.sprite_index = asset_get("cat_hurtbox");
// }

//crouch dash into crouch transition
if (prev_state==PS_ATTACK_GROUND && state==PS_CROUCH && state_timer<4){
	image_index = 1;
	pHurtBox.sprite_index = asset_get("cat_crouchbox");
}

if (state == PS_ATTACK_GROUND && attack == AT_EXTRA_1){
	pHurtBox.sprite_index = asset_get("cat_crouchbox");
}





//auto turn animations
if (spr_dir != looking)
{
	switch (state){
		case PS_WALK_TURN:
		pHurtBox.sprite_index = sprite_get("idlehurtback");
		set_state(PS_WALK);
		break;
		case PS_WALK:
		pHurtBox.sprite_index = sprite_get("idlehurtback");
		sprite_index = sprite_get("walkback");
		image_index = animtimer;
		animtimer += 0.2;
		if (animtimer>4) animtimer=0;
		break;
		case PS_DASH_START:
		sprite_index = sprite_get("backdash");
		if (down_down && state_timer==4)
		set_state(PS_CROUCH);
		break;
	}
}else
{
	if (state == PS_IDLE)
	pHurtBox.sprite_index = asset_get("cat_hurtbox");
}


//change outline if electrified
if (electrified){
var col_r;
var col_g;
var col_b;
    
    switch (get_player_color( player )){
	
	case 8:
		col_r = get_color_profile_slot_r( get_player_color(player), 4);
		col_g = get_color_profile_slot_g( get_player_color(player), 4);
		col_b = get_color_profile_slot_b( get_player_color(player), 4);
	break;
	case 9:
		col_r = get_color_profile_slot_r( get_player_color(player), 7);
		col_g = get_color_profile_slot_g( get_player_color(player), 7);
		col_b = get_color_profile_slot_b( get_player_color(player), 7);
	break;
	case 10:
		col_r = get_color_profile_slot_r( get_player_color(player), 7);
		col_g = get_color_profile_slot_g( get_player_color(player), 7);
		col_b = get_color_profile_slot_b( get_player_color(player), 7);
	break;
	
	default:
	col_r = get_color_profile_slot_r( get_player_color(player), 4);
	col_g = get_color_profile_slot_g( get_player_color(player), 4);
	col_b = get_color_profile_slot_b( get_player_color(player), 4);
	break;
	
	
	}
    
    init_shader();
    outline_color = [col_r, col_g, col_b];
}

else{
init_shader();

switch (get_player_color( player )){
	
	case 8:
		outline_color = [26, 16, 16];
	break;
	case 9:
		outline_color = [35, 67, 49];
	break;
	case 10:
		outline_color = [207, 207, 207];
	break;
	
	default:
	outline_color = [ 0, 0, 0 ];
	break;
}


}









