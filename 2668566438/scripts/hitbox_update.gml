if attack == AT_NSPECIAL {
	if(hitbox_timer == 30){
		destroyed = true;
	}
	if(hbox_num == 2){
		if(spr_dir == -1){
			proj_angle = -10;
		}else{
			proj_angle = 10;
		}
	}
	if(hbox_num == 3){
		if(spr_dir == -1){
			proj_angle = -15;
		}else{
			proj_angle = 15;
		}
	}
}
if(attack == AT_DSPECIAL){
    if(free){
    	if hitbox_timer == length hitbox_timer--;    
    }
    if(hitbox_timer % 3 == 0){
    	spawn_hit_fx(x,y,player_id.fx_sludge_trail);
    }
    if(!free){
        hsp = 0;
        vsp = 0;
        if(player == orig_player){
        if(!player_id.puddle_exists){
                player_id.puddle_hb = instance_create( x, y, "obj_article1" );
                player_id.puddle_exists = true;
            }
        }
        destroyed = true;
        //spawn_hit_fx(x + 10 *spr_dir,y,6)
        sound_play(asset_get("sfx_watergun_splash"))
    }
if (y >= (get_stage_data(SD_Y_POS) + get_stage_data(SD_BOTTOM_BLASTZONE))) {
        destroyed = true;
    }
}

if (attack == AT_DSTRONG){
    if(hbox_num == 3){
        hsp *= 0.99;
        if(!free){
            destroyed = true;
        }
        if(hitbox_timer == 900 || destroyed){
            sound_play(asset_get("sfx_waterhit_heavy"));
        }
	    if(hitbox_timer % 3 == 0){
	    	spawn_hit_fx(x,y,player_id.fx_sludge_trail);
	    }
    }
}
var refresh_time = 5;
if attack == AT_FSPECIAL {
	if(!player_id.up_down || !player_id.down_down){
		x = player_id.x + 44*player_id.spr_dir + hsp;
		y = player_id.y - 36 + vsp;		
	}if(player_id.down_down){
		x = player_id.x + 44*player_id.spr_dir + hsp;
		y = player_id.y - 25 + vsp;			
	}if(player_id.up_down){
		x = player_id.x + 26*player_id.spr_dir + hsp;
		y = player_id.y - 50 + vsp;
	}
	if(hbox_num == 1){
	    if (hitbox_timer % refresh_time == 0) for (var i = 0; i < 20; i++){
	        can_hit[i] = 1;
	       
	    }
	}
    if(player_id.window == 3){
    	destroyed = true;
    }
}