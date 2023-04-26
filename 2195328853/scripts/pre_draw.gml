// pre-draw

with(obj_article1){
	if("BlueBlobBall" in self && BlueBlobBall && player_id == other && player != orig_player){
	    depth = other.depth-1;
    	outline();
	}
}
with(obj_article2){
	if("BlueBlobCloud" in self && BlueBlobCloud && player_id == other && player != orig_player){
    	outline();
	}
}

if(alt == 23 || alt == 24){
    if(state == PS_LAND || state == PS_LANDING_LAG || state == PS_JUMPSQUAT){
        draw_sprite_ext(sprite_get("idle_crown"), image_index, x, y+20, spr_dir*(small_sprites+1), 1*small_sprites+1, 0, c_white, 1);
    }else if(state == PS_CROUCH || state == PS_WAVELAND){
        draw_sprite_ext(sprite_get("idle_crown"), image_index, x, y+34, spr_dir*(small_sprites+1), 1*small_sprites+1, 0, c_white, 1);
    }else{
        if(state != PS_ATTACK_AIR && state != PS_ATTACK_GROUND){
            draw_sprite_ext(sprite_get("idle_crown"), image_index, x, y, spr_dir*(small_sprites+1), 1*small_sprites+1, 0, c_white, 1);
        }else{
            if(attack != AT_FTILT && attack != AT_UTILT && attack != AT_DTILT){
                draw_sprite_ext(sprite_get("idle_crown"), image_index, x, y, spr_dir*(small_sprites+1), 1*small_sprites+1, 0, c_white, 1);
            }
        }
    }
}


#define outline
    gpu_set_fog(1, get_player_hud_color(player), 0, 1);
	draw_sprite_ext(sprite_index, image_index, x+2, y+2, spr_dir, 1, 0, c_white, 1);
	draw_sprite_ext(sprite_index, image_index, x-2, y+2, spr_dir, 1, 0, c_white, 1);
	draw_sprite_ext(sprite_index, image_index, x-2, y-2, spr_dir, 1, 0, c_white, 1);
	draw_sprite_ext(sprite_index, image_index, x+2, y-2, spr_dir, 1, 0, c_white, 1);
	gpu_set_fog(false, c_white, 1, 1);