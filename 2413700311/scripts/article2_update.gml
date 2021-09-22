//article2_update
var huta1;

if (init == 0){
    init = 1;
}

lifetime = lifetime + 1;

//蓋踏みでステート変更
if(player_id.hutahit = true and state != 9){
	state = 8;
}


//攻撃判定
if(state == 0 or state == 1 or state == 10){
	if((hsp != 0 and hsp*objdir > 4) or (vsp != 0 and vsp < -4)){
	    with oPlayer {
	        if (id == other.player_id) {
	    		create_hitbox( AT_FSPECIAL, 1, other.x, other.y);
	    	}
	    }
    }
}

//------------------------------------------------------------------------------
//回転突進 state 0
if(state == 0 or state == 10){
    if(state_timer = 8){
        state_timer = 0;
    }else{//動かす
        state_timer++;
        image_index = floor(image_number*state_timer/(image_number*1));
    }

	
    if(state == 0) hsp = (9 * objdir);
    
    if(state == 10) vsp = -6;

    //停止用
    if(stop_timer = 8){
        state = 1;
    }else{//動かす
        stop_timer++;
    }
}

//停止  state 1
if(state == 1){
	
	player_id.hutahit  = false;
	player_id.hutahit2 = false;
	player_id.hutahit3 = false;
	
	//破壊
	with (player_id){
		if(state != PS_ROLL_BACKWARD and state != PS_ROLL_FORWARD and state != PS_TECH_FORWARD and state != PS_TECH_BACKWARD and state != PS_AIR_DODGE and state_cat != SC_HITSTUN){
		if (ex3cooltime == 0 && (point_distance( x, y-10, other.x, other.y )) < 32){
			sound_play(asset_get("sfx_blow_heavy2"));
			spawn_hit_fx( x, y, 302 );//エフェクト
			hutahit = true;
			

			
			if (((attack == AT_FSTRONG_2 or attack == AT_USTRONG_2 or attack == AT_DSTRONG) and window == 1) or (((attack == AT_NSPECIAL) and window <= 6) or (attack == AT_DSTRONG_2)) and window !=0){
				vsp = -14;
				sound_play(sound_get("miso_uair"));
				hutahit = true;
			}else{
				//下必殺蓋アタック
				if ((attack == AT_DSPECIAL and window > 3 ) or (attack == AT_DSPECIAL_AIR and window == 5 ) ){
					hutaSP = true;
					huta_life = 1;
				}else hutaSP = false;
				set_attack(AT_EXTRA_3);
			}
			attack_end();
		}
			
			if(attack == AT_DSPECIAL and window > 3) bodyless = true;
		}
	}
	
	//体用
	with (asset_get("pHitBox")){
	    if ((attack == AT_DSPECIAL_2 or attack == AT_FSPECIAL_2 or attack == AT_USPECIAL) or ((attack == AT_FSTRONG_2 or attack == AT_USTRONG_2 or attack == AT_DSTRONG_2) and (player_id.strong_charge > player_id.bodyshot))){
			if (player_id == other.player_id && (point_distance( x, y-10, other.x, other.y )) < 46){
				sound_play(asset_get("sfx_blow_heavy2"));
				spawn_hit_fx( x, y, 302 );//エフェクト
				sound_play(sound_get("miso_uair"));
				with (player_id){
					hutahit = true;
					hutahit2 = true;
				}
			}
		}
	}
	
	//体用
	with (asset_get("pHitBox")){
	    if (attack == AT_NSPECIAL){
			if (player_id == other.player_id && (point_distance( x, y-10, other.x, other.y )) < 32){
				sound_play(asset_get("sfx_blow_heavy2"));
				spawn_hit_fx( x, y, 302 );//エフェクト
				sound_play(sound_get("miso_uair"));
				with (player_id){
					hutahit = true;
					hutahit3 = true;
				}
			}
		}
	}

    if(state_timer = 35){
        state_timer = 0;
    }else{//動かす
        state_timer++;
        image_index = floor(image_number*state_timer/(image_number*4));
    }
    
    if(hsp != 0){
        hsp = (hsp - (0.5 * objdir));
    }else{
        hsp = 0;
    }
    
    if(vsp != 0){
        vsp = (vsp + 0.5);
    }else{
        vsp = 0;
    }
}



//ぼよん1
if(state == 8){
	lifetime = 100;
	player_id.hutahit = false;
	if(player_id.huta_life > 0) player_id.huta_life -= 1;
	if(player_id.huta_life == 1) sprite_index = sprite_get("fspecial_proj3");
	if(player_id.huta_life == 2) sprite_index = sprite_get("fspecial_proj2");
	state_timer = 27;
	state = 9;
}

//ぼよん2
if(state == 9){
    if(state_timer == 39){
    	//player_id.ex3cooltime = 0;
    	if(player_id.huta_life == 0){
	    	instance_destroy();
    	}
    	if(player_id.huta_life != 0){
    		player_id.hutahit = false;
    		state_timer = 0;
    		state = 1;
    	}
    }else{//動かす
        state_timer++;
        image_index = floor(image_number*state_timer/(image_number*3));
    }

}


//------------------------------------------------------------------------------

if((player_id.state == PS_ATTACK_AIR) or (player_id.state == PS_ATTACK_GROUND)){
	if (player_id.attack == AT_FSPECIAL or (player_id.bodyless == true and player_id.attack == AT_UTILT)){
		if (player_id.window == 1){
				player_id.hutahit  = false;
				player_id.hutahit2 = false;
				player_id.hutahit3 = false;
				instance_destroy();
				exit;
		}
	}
}

//時間で消す
    if ((lifetime = 460)){
        instance_destroy();
        exit;
    }
