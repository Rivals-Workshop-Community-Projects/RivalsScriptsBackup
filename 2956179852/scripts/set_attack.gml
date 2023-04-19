///#args attack // this line makes code editors not freak out for some reason

switch(attack){
    case AT_USPECIAL:
    	reset_attack_value(AT_USPECIAL, AG_CATEGORY);
        reset_hitbox_value(AT_USPECIAL, 2, HG_WIDTH);reset_hitbox_value(AT_USPECIAL, 2, HG_HEIGHT);
	    reset_hitbox_value(AT_USPECIAL, 3, HG_WIDTH);reset_hitbox_value(AT_USPECIAL, 3, HG_HEIGHT);
    break;
    case AT_DSTRONG:
    	set_attack_value(AT_DSTRONG, AG_NUM_WINDOWS, 8);
    break;
    case AT_TAUNT:
        if(down_down){
			set_attack_value(AT_TAUNT_2, AG_SPRITE, sprite_get("ftilt"));
			set_attack_value(AT_TAUNT_2, AG_HURTBOX_SPRITE, sprite_get("ftilt_hurt"));      	
            attack = AT_TAUNT_2;
            if(playercount > 1){
	            var closest_id = noone;
	            var closest_distance = -1;
	            with oPlayer if self != other && self.state != PS_DEAD{
	                if closest_id == noone {
	                    closest_id = self;
	                    closest_distance = point_distance(x, y, other.x, other.y);
	                }
	                else if point_distance(x, y, other.x, other.y) < closest_distance {
	                    closest_id = self;
	                    closest_distance = point_distance(x, y, other.x, other.y);
	                }
	            }
	            var gay_target = closest_id;
	            spr_dir = (gay_target.x - x) > 0 ? 1 : -1;
            }else{
            	set_attack_value(AT_TAUNT_2, AG_SPRITE, sprite_get("gay"));
            }
        }
        if(up_down && !free){
        	attack = AT_TAUNT_2;
        	window = 2;window_timer = 0;
			set_attack_value(AT_TAUNT_2, AG_SPRITE, sprite_get("no"));
			set_attack_value(AT_TAUNT_2, AG_HURTBOX_SPRITE, asset_get("ex_guy_hurt_box"));
        }
    break;
    case AT_DAIR:
    	dairhold = true;dairholdbounce = false;dair_whereami = false;
    	reset_attack_value(AT_DAIR, AG_NUM_WINDOWS);
    break;
    case AT_BAIR:
    	bairtoast = false;
    break;
}

// MunoPhone Touch code - don't touch
// should be at BOTTOM of file, but above any #define lines
muno_event_type = 2;
user_event(14);