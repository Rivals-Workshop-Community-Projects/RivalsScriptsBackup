switch (state){
    case PS_IDLE:
        //code here can change the sprite_index and image_index while in the idle state
    break;
    
    case PS_DOUBLE_JUMP:
    case PS_IDLE_AIR:
    if state == PS_DOUBLE_JUMP || (state == PS_IDLE_AIR && djumps != 0) {
        sprite_index = sprite_get("doublejump")
        image_index = floor(state_timer/2)
    }
    break;
    
    case PS_ATTACK_AIR:
    case PS_ATTACK_GROUND:
    switch attack {
    	case AT_FTILT:
    	if window == 2 {
    		image_index = window_timer <= 6 ? 2 : 3
    	}
    	switch fuse_item_shield_queue {
    		case 1: sprite_index = sprite_get("ftilt_wing") break;
    		case 2: sprite_index = sprite_get("ftilt_ruby") break;
    		case 3: sprite_index = sprite_get("ftilt_bomb") break;
    	}
    	break;
    	
    	case AT_FSPECIAL:
    	switch fuse_item_shield_queue {
    		case 1: sprite_index = sprite_get("fspecial_wing") break;
    		case 2: sprite_index = sprite_get("fspecial_ruby") break;
    		case 3: sprite_index = sprite_get("fspecial_bomb") break;
    	}
    	break;
    	
    	case AT_NAIR:
    	switch fuse_item_shield_queue {
    		case 1: sprite_index = sprite_get("nair_wing") break;
    		case 2: sprite_index = sprite_get("nair_ruby") break;
    		case 3: sprite_index = sprite_get("nair_bomb") break;
    	}
    	break;
    	
    	case AT_FSTRONG:
    	switch fuse_item_trident_queue {
    		case 1: sprite_index = sprite_get("fstrong_wing") break;
    		case 2: sprite_index = sprite_get("fstrong_ruby") break;
    		case 3: sprite_index = sprite_get("fstrong_bomb") break;
    	}
    	break;
    	
    	case AT_BAIR:
    	switch fuse_item_trident_queue {
    		case 1: sprite_index = sprite_get("bair_wing") break;
    		case 2: sprite_index = sprite_get("bair_ruby") break;
    		case 3: sprite_index = sprite_get("bair_bomb") break;
    	}
    	break;
    	
    	case AT_FAIR:
    	switch fuse_item_trident_queue {
    		case 1: sprite_index = sprite_get("fair_wing") break;
    		case 2: sprite_index = sprite_get("fair_ruby") break;
    		case 3: sprite_index = sprite_get("fair_bomb") break;
    	}
    	break;
    	
    	case AT_UTILT:
    	switch fuse_item_trident_queue {
    		case 1: sprite_index = sprite_get("utilt_wing") break;
    		case 2: sprite_index = sprite_get("utilt_ruby") break;
    		case 3: sprite_index = sprite_get("utilt_bomb") break;
    	}
    	break;
    }
    break;
    
    default: break;
}

//intro anim
var intro_time = get_gameplay_time();
if intro_time < 50 {
    sprite_index = asset_get("empty_sprite");
} else if intro_time < 60 {
    sprite_index = sprite_get("crouch");
    image_index = 1
}
if intro_time < 64 draw_indicator = false
else if intro_time == 64 draw_indicator = true

//visible = false