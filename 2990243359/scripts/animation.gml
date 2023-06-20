
atime++
var name=sprite_get_name(sprite_index)
if im_gliding {
if state != PS_ATTACK_AIR
    {
        sprite_index=sprite_get("float")
        image_index=atime/8
    }
}

/*
if (state == PS_ATTACK_GROUND && attack == AT_JAB && window == 4 && window_timer == 0
	&& (place_meeting(x+40*spr_dir,y+10,asset_get("par_block")) 
	|| place_meeting(x+40*spr_dir,y+10,asset_get("par_jumpthrough")))){
	x += 30*spr_dir;
}*/
switch (state){
	case PS_ROLL_BACKWARD:
    case PS_ROLL_FORWARD:
    case PS_TECH_BACKWARD:
	case PS_TECH_FORWARD:
    	if (state_timer == 3 || state_timer == 6 || state_timer == 9 || state_timer == 12)  {
    		spawn_hit_fx( x, y, vfx_roll );
    	}
    break;
    case PS_AIR_DODGE:
    	if (state_timer == 3 || state_timer == 5 || state_timer == 7)  {
    		spawn_hit_fx( x, y, vfx_airdodge );
    	}
    break;
}

if (state = PS_RESPAWN){
    sprite_index = sprite_get("float"); 
    image_index=atime/8;
}