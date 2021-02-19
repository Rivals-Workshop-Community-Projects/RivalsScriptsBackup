//animation
switch (state){
    case PS_SPAWN:
	    if index_mod < 11 sprite_index = asset_get("empty_sprite");
    case PS_DASH:
    case PS_DASH_TURN:
    	if hurtboxID.sprite_index != hurtbox_dash_spr hurtboxID.sprite_index = hurtbox_dash_spr;
        break;
    default: 
        if hurtboxID.sprite_index == hurtbox_dash_spr hurtboxID.sprite_index = hurtb_spr;
        break;
}
/*
if get_player_color(player) == 3 && state != 5 && state != 6 {
	if random_func_2(1,2,true) == 1 && glitch_switch == glitch_switch_frame {
		set_index = random_func_2(0,20,true);
	} else if glitch_switch != glitch_switch_frame set_index = image_index;
	if glitch_switch >= glitch_switch_frame-6 image_index = set_index;
}
*/