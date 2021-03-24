//article2_update
//debug
var huta1;

if (init == 0){
    init = 1;
}

lifetime = lifetime + 1;


//蓋踏みでステート変更
if((player_id.attack == AT_EXTRA_3 or player_id.hutahit = true) and state != 9){
	state = 8;
}


//攻撃判定
if((state == 0 or state == 1) and hsp != 0 and hsp*objdir > 4){
    with oPlayer {
        if (id == other.player_id) {
    		create_hitbox( AT_FSPECIAL, 1, other.x, other.y);
    	}
    }
}

//------------------------------------------------------------------------------
//回転突進 state 0
if(state == 0){
    if(state_timer = 8){
        state_timer = 0;
    }else{//動かす
        state_timer++;
        image_index = floor(image_number*state_timer/(image_number*1));
    }

    hsp = (9 * objdir);

    //停止用
    if(stop_timer = 8){
        state = 1;
    }else{//動かす
        stop_timer++;
    }
}

//停止  state 1
if(state == 1){
	
	//破壊
	with (player_id){
		if(state != PS_ROLL_BACKWARD and state != PS_ROLL_FORWARD and state != PS_TECH_FORWARD and state != PS_TECH_BACKWARD and state != PS_AIR_DODGE){
		if (ex3cooltime == 0 && (point_distance( x, y-10, other.x, other.y )) < 32){
			sound_play(asset_get("sfx_blow_heavy2"));
			spawn_hit_fx( x, y, 302 );//エフェクト
			if(attack == AT_DSPECIAL){
				if((spr_dir == 1 and left_down) or (spr_dir == -1 and right_down)){
					set_window_value(AT_EXTRA_3, 1, AG_WINDOW_HSPEED, 0);
					set_window_value(AT_EXTRA_3, 1, AG_WINDOW_HSPEED_TYPE, 1);
				}
			}
			if (((attack == AT_FSTRONG_2 or attack == AT_USTRONG_2 or attack == AT_DSTRONG) and window == 1) or (((attack == AT_NSPECIAL) and window <= 3) or (attack == AT_DSTRONG_2)) and window !=0){
				vsp = -14;
				sound_play(sound_get("miso_uair"));
				hutahit = true;
			}else{
				//下必殺蓋アタック
				if ((attack == AT_DSPECIAL and window > 3 ) or (attack == AT_DSPECIAL_AIR and window == 5 ) ){
					hutaSP = true;
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
	
	//state7へ
	/*
	if(player_id.attack == AT_JAB){//ここ変える
		state_timer = 40;
		state = 7;
	}
	*/
	
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
}

//縦回転攻撃
if(state == 7){
	hsp = 0
    if(state_timer = 80){
        instance_destroy();
        //exit;
    }else{//動かす
        state_timer++;
        image_index = floor(image_number*state_timer/(image_number*3));
    }
    
    if((state_timer = 48)or(state_timer = 54)or(state_timer = 60)or(state_timer = 66)){
    	sound_play(asset_get("sfx_swipe_weak1"));
        with oPlayer {
        	if (id == other.player_id) {
    			create_hitbox( AT_DSPECIAL_2, 2, other.x, other.y);
        	}
        }
    }
}

//ぼよん1
if(state == 8){
	state_timer = 27;
	state = 9;
	player_id.hutahit = false;
}

//ぼよん2
if(state == 9){
    if(state_timer = 39){
    	player_id.ex3cooltime = 0;
        instance_destroy();
        //exit;
    }else{//動かす
        state_timer++;
        image_index = floor(image_number*state_timer/(image_number*3));
    }

}


//------------------------------------------------------------------------------

if((player_id.state == PS_ATTACK_AIR) or (player_id.state == PS_ATTACK_GROUND)){
	if (player_id.attack == AT_FSPECIAL){
		if (player_id.window == 1){
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
