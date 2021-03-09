init_shader();
//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}

//
if (bodyless == false){
	headdie = false;
}

//当たり判定更新用
if (attack == AT_EXTRA_2){
    hurtboxID.sprite_index = get_attack_value(AT_EXTRA_2, AG_HURTBOX_SPRITE);
}
if (attack == AT_EXTRA_3){
    hurtboxID.sprite_index = get_attack_value(AT_EXTRA_3, AG_HURTBOX_SPRITE);
}

//------------------------------------------------------------------------------
//ドッキング
if(fusion = true){
	fusion = false;
	set_attack( AT_EXTRA_2 );//フュージョン用に変える
	
}

if (attack == AT_EXTRA_2){
	    if (window == 1 && window_timer == 1){
			spawn_hit_fx( x, y-24, light_Fx );
			sound_play( asset_get("sfx_zetter_shine"));
		}
}

//------------------------------------------------------------------------------
//下スマ　飛び上がり距離

if (attack == AT_DSTRONG){
	dstr_jump = -6 + ((strong_charge /10 )*-1);
	
	set_window_value( AT_DSTRONG, 3, AG_WINDOW_VSPEED, dstr_jump );
	set_window_value( AT_DSTRONG, 5, AG_WINDOW_VSPEED, dstr_jump/1.5 );
}

//------------------------------------------------------------------------------
//蓋ジャンプ

if (attack == AT_EXTRA_3){
	can_wall_jump = true;
	
	
	if (window == 4 && window_timer == 1){
		destroy_hitboxes();
	}
}

//------------------------------------------------------------------------------
//当たったらキャンセル可
/*
if (attack == AT_DATTACK){
	if(has_hit_player){
		can_jump = true;
		can_strong = true;
		can_ustrong = true;
	}
}
*/

if (attack == AT_UTILT){
	if(has_hit_player){
		can_jump = true;
	}
}

//------------------------------------------------------------------------------
//チェーンソー
if (attack == AT_NSPECIAL){
	if (window == 1){ //初期化
		if(window_timer == 1) {
			FBcharge = 0;
		}
	}
	
	    if (window == 3){ //ループ
			if (special_down) {
				if(window_timer == 8) {
					window_timer = 0;
					FBcharge += 1
					
						if(FBcharge == 8){//時間経過
							window_timer = 0;
							window = 7;
							FBcharge = 0;	
						}
				}
			}
			if (!special_down){	
				if(window_timer == 8) {
					window_timer = 0;
					window = 7;
					FBcharge = 0;
				}
			}
			
	   		if(has_hit_player){//ヒットした場合
				window_timer = 0;
				window = 4;
			}
	    }

	    
	    if (window == 4){//ヒット
	    	if(window_timer == 16) {
				window_timer = 0;
				window = 5;
	    	}
	    }
	    
	    if (window == 5){//ヒット余韻
	    	if(window_timer == 10) {
				window_timer = 0;
				window = 6;
	    	}
	    }
	    
	    if ((window == 6) or (window == 7)){
			if(window_timer == 6) {
				window_timer = 0;
				window = 8;
			}
	    }
	    
	    //高速落下不可
		can_fast_fall = false;
}

//------------------------------------------------------------------------------
//NAIR
if (attack == AT_NAIR){
	if(window == 1) nair_combo = 0;
	
	if ((window == 4) or (window == 8) or (window == 12)){
			if(window_timer == 8) {
				window_timer = 0;
				window = 13;
		}
	}
	
	
	if(window == 3 or window == 4){
		if(nair_combo == 0 and attack_pressed){
				nair_combo = 1;
				window_timer = 0;
				window = 5;
		}
	}
				
	if(window == 7 or window == 8){
		if(nair_combo == 1 and attack_pressed){
				nair_combo = 2;
				window_timer = 0;
				window = 9;
		}
	}
}



//------------------------------------------------------------------------------
//横B　蓋飛ばし

if (attack == AT_FSPECIAL){
	if (window == 2 && window_timer == 1){
		move_cooldown[AT_FSPECIAL] = 30;
		
			var huta1 = instance_create(x+30*spr_dir, y-30, "obj_article2");
	        huta1.player_id = player_id;
	        huta1.player = player;
	        huta1.spr_dir = spr_dir;
		}
}

//------------------------------------------------------------------------------
//下必殺 頭飛ばし
if (attack == AT_DSPECIAL){
	    if (window == 2 && window_timer == 1){
			spawn_hit_fx( x-50*spr_dir, y-50, doppio_Fx );
			sound_play( asset_get("sfx_zetter_shine"));
		}
		
	
	if (window == 4 && window_timer == 1 && bodyless = false){
			var misobody = instance_create(x, y+0, "obj_article1");
	        misobody.player_id = player_id;
	        misobody.player = player;
	        misobody.spr_dir = spr_dir;
	        misobody.hsp = 0;
	        misobody.vsp = 0;
	}
		
	if (window == 4){
        bodyless = true;	
	}
}

//------------------------------------------------------------------------------
//空中下必殺 頭飛ばし
if (attack == AT_DSPECIAL_AIR){
	    if (window == 2 && window_timer == 1){
			spawn_hit_fx( x + 12 * spr_dir, y -46, doppio_Fx );
			sound_play( asset_get("sfx_zetter_shine"));
		}
		
		if (window == 4 && window_timer == 2){
			create_hitbox(AT_USPECIAL, 1, x, y+12);
			sound_play( asset_get("sfx_spin"));
		}
		
		if (window == 5){
        	bodyless = true;
        	
        		if (window_timer == 10){ //Loop
					window_timer = 0;
        		}
        		
        		if(has_hit_player){//ヒットした場合
					window_timer = 0;
					window = 6;
				}
        	
        	if(!free && !(window == 6)){
        		destroy_hitboxes();
        		window = 7;
        	}
		}
		
		if (window == 6){//ヒット
			if(window_timer == 1) {
				destroy_hitboxes();
				hsp = 0;
			}
	    }
		
		//高速落下不可
		can_fast_fall = false;
}

//------------------------------------------------------------------------------
//頭分離
if (attack == AT_USPECIAL){
    if (window == 2){
        bodyless = true;
    }
    if (window == 4){
    	can_wall_jump = true;
    	//can_attack = true;
    	//can_special = true;
    }
}

//------------------------------------------------------------------------------
//下スマ 光るエフェクト
if (attack == AT_DSTRONG){
	    if (window == 5 && window_timer == 1){
			spawn_hit_fx( x, y-12, doppio_Fx );
		}
		
		//高速落下不可
		can_fast_fall = false;
}

//------------------------------------------------------------------------------
//空前 着地後も鳴らす為こちらに
if (attack == AT_FAIR){
	if(window = 5 && window_timer == 1){
		sound_play( asset_get("sfx_swipe_heavy2"));
	}
}

//------------------------------------------------------------------------------
//空後 爆発エフェクト
if (attack == AT_BAIR){
	    if (window == 3 && window_timer == 1){
			spawn_hit_fx( x-35*spr_dir, y-25, bair_Fx );
		}
		
		//高速落下不可
		can_fast_fall = false;
}

//------------------------------------------------------------------------------
//空下 着地後も鳴らす
if (attack == AT_DAIR){
	if(window = 2 or window = 8){
		if(window_timer == 2){
			sound_play( asset_get("sfx_swipe_medium1"));
		}
	}
	if(window = 5 or window = 11){
		if(window_timer == 2){
			sound_play( asset_get("sfx_swipe_medium2"));
		}
	}
			
		//高速落下不可
		can_fast_fall = false;
}

//------------------------------------------------------------------------------
//上強クールダウン発生
if (attack == AT_UAIR){
	if(window = 2){
		move_cooldown[AT_UAIR] = 100;
	}
}

//------------------------------------------------------------------------------
//頭分離空中攻撃クールダウン発生
if (attack == AT_NTHROW){
	if(window = 2){
		move_cooldown[AT_NTHROW] = 14;
	}
}

//------------------------------------------------------------------------------
//頭分離横スマ　

if ((attack == AT_FSTRONG_2)){
	if(has_hit_player){
		can_special = true;
	}
	
	
	if(window = 4){
	    if((bodyloss = true) and (strong_charge > bodyshot) and (!hitpause)){
	    	var misobody = instance_create(x+26, y-26, "obj_article1");
	        misobody.player_id = player_id;
	        misobody.player = player;
	        misobody.spr_dir = spr_dir;
		}
	}
}

//------------------------------------------------------------------------------
//頭分離上スマ　

if ((attack == AT_USTRONG_2)){
	if(has_hit_player){
		can_special = true;
	}
	
	
	if(window = 4){
	    if((bodyloss = true) and (strong_charge > bodyshot) and (!hitpause)){
	    	var misobody = instance_create(x, y-60, "obj_article1");
	        misobody.player_id = player_id;
	        misobody.player = player;
	        misobody.spr_dir = spr_dir;

		}
	}
}

//------------------------------------------------------------------------------
//頭分離下スマ　

if ((attack == AT_DSTRONG_2)){
	if(has_hit_player){
		can_special = true;
	}
	//初期化
	if(window = 1) reset_window_value( AT_DSTRONG_2, 5, AG_WINDOW_ANIM_FRAME_START );
	
	if(window = 5){
		if((bodyloss = true) and (strong_charge > bodyshot)){
			set_window_value(AT_DSTRONG_2, 5, AG_WINDOW_ANIM_FRAME_START, 15);
		}
	}
	
	if(window = 6){
	    if((bodyloss = true) and (strong_charge > bodyshot) and (!hitpause)){
	    	var misobody = instance_create(x+20*spr_dir, y-56, "obj_article1");
	        misobody.player_id = player_id;
	        misobody.player = player;
	        misobody.spr_dir = spr_dir;
		}
	}
	
	if(window = 7) move_cooldown[AT_DSTRONG_2] = 20;
}

//------------------------------------------------------------------------------
//頭分離下必殺　体攻撃指示

if (attack == AT_DSPECIAL_2){
	if(window = 5){
		move_cooldown[AT_DSPECIAL_2] = 18;
	}

}

//------------------------------------------------------------------------------
//頭分離必殺　体爆発指示

if (attack == AT_NSPECIAL_2){
	if(window = 3){
		body_explo = true;
		move_cooldown[AT_NSPECIAL_2] = 36;
	}

}
//------------------------------------------------------------------------------
//挑発連打
if ((attack == AT_TAUNT) or (attack == AT_TAUNT_2)){
	if (window > 1){
		if (taunt_pressed){
			window = 2;
		}
	}
	if (window == 2 && window_timer == 1) {
		sound_stop(sound_get("airhorn"));
	}
	if (window == 2 && window_timer == 2) {
		sound_play(sound_get("airhorn"));
	}
}








