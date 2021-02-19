
switch (state){
    case PS_IDLE:
        //code here can change the sprite_index and image_index while in the idle state
    break;
    case 5:
    case 6:
        switch (attack) {
            case AT_USPECIAL:
                if (image_index >= 5 && image_index <= 8 && window < 4) {
                    if (scanline_frame < 10 - scanline_speed) {
                        u_scanlines = true;
                        scanline_frame += scanline_speed;
                    } else {
                        u_scanlines = false;
                    }
                    soft_armor = 9999;
                    suppress_stage_music(0, 1);
                } else {
                    soft_armor = 0;
                }
                if (window == 4) {
                    sprite_index = sprite_get("uspecial_spawn");
                    hurtboxID.sprite_index = sprite_get("uspecial_spawn_hurt")
                }
                break;
            case AT_EXTRA_2:
                if (window == 2) {
                    sprite_index = sprite_get("dashstop");
                }
            case AT_FSTRONG:
            	if (image_index >= 7 && image_index <= 15) {
            	    if (scanline_frame < 10 - scanline_speed) {
            	        scanlines = true;
            	        scanline_frame += scanline_speed;
            	    } else {
            	        scanlines = false;
            	    }
            		soft_armor = 9999;
            		suppress_stage_music(0, 1);
            	} else {
            	    scanlines = false;
            	    soft_armor = 0;
            	}
            	break;
            case AT_USTRONG:
                if (image_index >= 5 && image_index <= 13) {
            	    if (scanline_frame < 10 - scanline_speed) {
            	        v_scanlines = true;
            	        scanline_frame += scanline_speed;
            	    } else {
            	        v_scanlines = false;
            	    }
            		soft_armor = 9999;
            		suppress_stage_music(0, 1);
            	} else {
            	    v_scanlines = false;
            	    soft_armor = 0;
            	}
                break;
        }
        break;
    default: 
        break;
}

/*if end_timer < 140 {
    depth = -100;
    char_height = dspec_char_height;
    sprite_index = sprite_get("dspecial");
    image_index = 12;
    set_player_damage(player,random_func_2(0,200,true));
    set_player_stocks(player,random_func_2(0,98,true)+1);
    //image_xscale = (140-end_timer)/4;
    //image_yscale = (140-end_timer)/4;
    //my_hurtboxID = asset_get("empty_sprite");
}*/