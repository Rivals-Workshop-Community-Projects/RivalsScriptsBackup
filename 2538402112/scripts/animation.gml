switch (state){
    case PS_PRATLAND:
		//this complicated math allows the player to animate properly when in pratland
		var timer_to_index_math = state_timer / clamp(parry_distance * 8.8, 60, 110);
		if (extended_parry_lag) image_index = lerp(0, image_number, timer_to_index_math);
		break;
	case PS_TUMBLE:
    case PS_HITSTUN_LAND:
        hurt_img = 5;
        break;
    case PS_WRAPPED:
    case PS_FROZEN:
    case PS_FLASHED:
    case PS_CRYSTALIZED:
        hurt_img = 1;
        break;
    case PS_BURIED:
        hurt_img = 2;
        break;
}
if state_cat == SC_HITSTUN{
    if !(hurt_img == 5 && free){
        sprite_index = sprite_get("hurt");
        image_index = hurt_img;
    }
}