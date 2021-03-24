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
	
	//高速落下不可
	can_fast_fall = false;
	
	    if (window == 1 && window_timer == 1){
			spawn_hit_fx( x, y-24, light_Fx );
			sound_play( asset_get("sfx_zetter_shine"));
		}
		
		//ちょっと移動できる
		if(window  == 1 ){
			if (!joy_pad_idle){
	            hsp += lengthdir_x(1, joy_dir);
	            vsp += lengthdir_y(1, joy_dir);
	        } else {
	            hsp *= .3;
	            vsp *= .3;
	        }
	        var fly_dir = point_direction(0,0,hsp,vsp);
	        var fly_dist = point_distance(0,0,hsp,vsp);
	        var max_speed = 4;
	        if (fly_dist > max_speed){
	            hsp = lengthdir_x(max_speed, fly_dir);
	            vsp = lengthdir_y(max_speed, fly_dir);
	        }
		}
		
		if(window  == 4 ){
			move_cooldown[AT_DSPECIAL_AIR] = 30;
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

if (attack == AT_EXTRA_1){
	if(has_hit_player){
		can_special = true;
	}
}


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
	if (window == 1 && window_timer == 1){
		reset_window_value( AT_EXTRA_3, 1, AG_WINDOW_HSPEED );
		reset_window_value( AT_EXTRA_3, 1, AG_WINDOW_HSPEED_TYPE );
	}
	
	    if (window == 2 && window_timer == 1){
			spawn_hit_fx( x-50*spr_dir, y-50, doppio_Fx );
			sound_play( asset_get("sfx_zetter_shine"));
		}
		
	
	if (window == 3 && window_timer == 3 && bodyless = false){
			var misobody = instance_create(x, y+0, "obj_article1");
	        misobody.player_id = player_id;
	        misobody.player = player;
	        misobody.spr_dir = spr_dir;
	        misobody.hsp = 0;
	        misobody.vsp = 0;
	}
		
	if (window > 3){
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
	if(has_hit_player and window >= 5 and (!hitpause)){
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
	if(has_hit_player and window >= 4 and window_timer >= 6 and (!hitpause)){
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
	if(has_hit_player and window > 5  and (!hitpause)){
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

//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
//Final Smash

if (attack == 49 && (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND)){
    if (window >= 5 && grabbedid != noone){
	grabbedid.ungrab = 0;
        //window_timer = 1; //この行を削除すると、グラブの長さをウィンドウの長さに制限することができます。
        grabbedid.invincible = true; //この行を削除すると、掴まれたプレイヤーがヒット可能になります。
        //grabbedid.visible = false; //この行を削除すると、掴まれたプレイヤーが見えなくなります。
        grabbedid.x = x + spr_dir * 70; //掴まれたプレイヤーxをプレーヤーyからの相対位置に設定
        grabbedid.y = y;				//掴まれたプレーヤーyをプレーヤーyからの相対位置に設定
        grabbedid.spr_dir = -spr_dir; //掴まれたプレイヤーと向き合う
        grabbedid.wrap_time = 6000;
        grabbedid.state = PS_WRAPPED;
        
        if(window == 13 and window_timer == 0){
        	grabbedid.invincible = false;
        }
        if(window == 13 and window_timer == 1){ //このif条件を、掴みを解除したい内容に置き換えます。
            grabbedid.state = PS_WRAPPED;
            grabbedid = noone;
        }
    }
}

if (attack == 49){
	can_move = false;
	can_fast_fall = false;
	
	if(has_hit){
		set_hitbox_value(49, 1, HG_WIDTH, 0);
		set_hitbox_value(49, 1, HG_HEIGHT, 0);
	}
	
	if (window == 1){
		//初期化
		reset_hitbox_value(49, 1, HG_WIDTH);
		reset_hitbox_value(49, 1, HG_HEIGHT);
		
		FS_alpha = 0;
		fog_start = false;
		fog_timer = 0;
		jmp_start = false;
		jmp_y = 200;
		break_start = false;
		break_timer = 0;
		
		fs_hit_scale = 10;
		fs_hit_y = 50;//調整用
		
		fs_loop_count = 0;
		
		enemy_x = 470;
		enemy_y = 370;
		
		atk_start = false;
		atk_sub[0] = 0;
		atk_x[0] = 0;
		atk_y[0] = 0;
		atk_xs[0] = 1;
		atk_ys[0] = 1;
		atk_rot[0] = 0;
		atk_alpha[0] = 0;
		
		atk_sub[1] = 0;
		atk_x[1] = 0;
		atk_y[1] = 0;
		atk_xs[1] = 1;
		atk_ys[1] = 1;
		atk_rot[1] = 0;
		atk_alpha[1] = 0;
		
		do_sub[0] = 0;
		do_x[0] = 0;
		do_y[0] = 0;
		do_alpha[0] = 0;
		
		do_sub[1] = 0;
		do_x[1] = 0;
		do_y[1] = 0;
		do_alpha[1] = 0;
		
		shine_start = 0;
		shine_sub = 0;
		shine_xs = 3;
		shine_ys = 3;
		shine_rot = 0;
		
		hit_sub[0] = 0;
		hit_x[0] = 0;
		hit_y[0] = 0;
		hit_xs[0] = 1;
		hit_ys[0] = 1;
		hit_rot[0] = 0;
		hit_alpha[0] = 0;
	}
	
	if (window == 5){
		if(has_hit){
			window = 9;
		}
	}
	
	if (window == 9){//煙
		FS_alpha = (window_timer/6)*0.1;
		
		if(window_timer == 54) fog_start = true;
		if(window_timer == 57) fog_timer = 1;
		if(window_timer == 60){
			sound_play( asset_get("sfx_ell_big_missile_fire"));
			fog_timer = 2;
			window = 10
			window_timer = 0;
		}
		
	}
	if (window == 10){
		//煙
		if(window_timer == 8) fog_timer = 3;
		if(window_timer == 11) fog_timer = 4;
		if(window_timer == 14) fog_timer = 5;
		if(window_timer == 16) fog_start = false;
		
		//ジャンプ
		if(window_timer == 1) jmp_start = true;
		//溜め------------------------------------------------------
		if(window_timer == 15) jmp_timer = 1;
		if(window_timer == 17) jmp_timer = 2;
		if(window_timer == 21) jmp_timer = 3;
		//ジャンプスタート
		if(window_timer == 29) sound_play( asset_get("sfx_charge_blade_swing"));
		if(window_timer == 30) jmp_timer = 4;
		if(window_timer == 32) jmp_timer = 5;
		if(window_timer == 34) jmp_timer = 6;
		if(window_timer >= 31 and window_timer <= 50 ) jmp_y -= 55;
		if(window_timer == 50) jmp_start = false;
		//---------------------------------------------------------
		//画面割り
		if(window_timer == 46) break_start = true;
		if(window_timer == 47) break_timer = 1;
		if(window_timer == 48) break_timer = 0;
		if(window_timer == 49) break_timer = 1;
		if(window_timer == 50) break_timer = 0;
		if(window_timer == 51) break_timer = 1;
		if(window_timer == 51) sound_play( asset_get("mfx_map_open"));
		if(window_timer == 54) break_timer = 2;
		if(window_timer == 60) break_timer = 3;
		if(window_timer == 62) break_timer = 4;
		if(window_timer == 64) break_timer = 5;
		if(window_timer == 90){
			window = 11;
			window_timer = 0;
		}
	}
	//All-out
	if (window == 11){
		if(window_timer == 1){
			break_start = false;
			atk_start = true;
		}
		if(window_timer > 5 and fs_hit_scale != 0){
				fs_hit_scale -= 2;
				fs_hit_y -= 5;
		}
		
		//----------------------------------------------------------------------------------------------------------------------------------------
		if(window_timer == 6){//------------------------------------------------------------------------------------------------------------------
			sound_play( asset_get("sfx_swipe_medium1"));
			atk_sub[0] = 0;//1
			atk_x[0] = 900;
			atk_y[0] = 8;
			atk_xs[0] = 1;
			atk_ys[0] = 1;
			atk_rot[0] = -30;
			atk_alpha[0] = 1;//出現
			
			fs_shake_r = -2;
			
			atk_sub[1] = 0;//No4 4
			atk_x[1] = 550;
			atk_y[1] = 180;
			atk_rot[1] = -160;
			atk_alpha[1] = 1;//出現
			
			do_sub[1] = 1;//do3-------loopstart
			do_x[1] = 290;
			do_y[1] = 60 - 4;
			do_alpha[1] = 1;
			
			//hiteff
			hit_sub[0] = 0;//1_1
			hit_x[0] = 320;
			hit_y[0] = 220;
			hit_xs[0] = 3;
			hit_ys[0] = 3;
			hit_rot[0] = 0;
			hit_alpha[0] = 1;
			
			//hiteff
			hit_sub[1] = 0;//5_end
			hit_alpha[1] = 0;
		}
		if(window_timer == 8){//-----------------------------------------------
			atk_sub[0] = 0;//2
			atk_x[0] = 560;
			atk_y[0] = 220;
			atk_rot[0] = 0;
			
			fs_shake_x = 2;
			fs_shake_y = -2;
			
			atk_sub[1] = 0;//No4 5
			atk_x[1] = 620;
			atk_y[1] = -40;
			atk_rot[1] = -140;
			
			do_alpha[1] = 0;//do3----end
			
			//hiteff
			hit_sub[0] = 1;//1_2
		}
		if(window_timer == 10){//-----------------------------------------------
			sound_play( asset_get("sfx_blow_heavy2"));
			atk_sub[0] = 1;//3
			atk_x[0] = 460;
			atk_y[0] = 240;
			atk_rot[0] = 0;
			
			do_sub[0] = 0;//do1-------start
			do_x[0] = 120;
			do_y[0] = 280;
			do_alpha[0] = 1;
			
			fs_shake_x = -2;//------------------r1
			fs_shake_y = -2;
			fs_shake_r = 4;
			
			atk_alpha[1] = 0;//5 消去
			
			//hiteff
			hit_sub[0] = 2;//1_3

			hit_sub[1] = 0;//2_1
			hit_x[1] = 720;
			hit_y[1] = 90;
			hit_xs[1] = 4;
			hit_ys[1] = 4;
			hit_rot[1] = 90;
			hit_alpha[1] = 1;
			
			//damage
			take_damage( hit_player, player, fs_dmg );
		}
		if(window_timer == 12){//-----------------------------------------------
			atk_sub[0] = 0;//4
			atk_x[0] = 310;
			atk_y[0] = 190;
			atk_rot[0] = -90;
			
			fs_shake_r = 2;
			
			do_sub[0] = 0;//do1
			do_y[0] -= 2;
			do_alpha[0] = 1;
			
			//sound_play( asset_get("sfx_swipe_heavy1"));
			atk_sub[1] = 0;//1
			atk_x[1] = 300;
			atk_y[1] = -60;
			atk_xs[1] = -1;
			atk_ys[1] = 1;
			atk_rot[1] = -10;
			atk_alpha[1] = 1;//出現

			//hiteff
			hit_sub[0] = 3;//1_4
			
			hit_sub[1] = 1;//2_2
		}
		if(window_timer == 14){//-----------------------------------------------
			atk_sub[0] = 0;//5
			atk_x[0] = 20;
			atk_y[0] = -14;
			atk_rot[0] = -70;
			
			fs_shake_x = 3;
			fs_shake_y = 2;
			
			do_sub[0] = 1;//do1
			do_y[0] -= 2;
			do_alpha[0] = 1;
			
			atk_sub[1] = 0;//2
			atk_x[1] = 450;
			atk_y[1] = 170;
			atk_rot[1] = -20;
			
			//hiteff
			hit_sub[0] = 4;//1_5
			
			hit_sub[1] = 2;//2_3
			
			hit_sub[2] = 0;//3_1
			hit_x[2] = 620;
			hit_y[2] = 400;
			hit_xs[2] = 3;
			hit_ys[2] = 3;
			hit_rot[2] = 180;
			hit_alpha[2] = 1;
		}
		if(window_timer == 16){//-----------------------------------------------
			atk_alpha[0] = 0;//消去
			
			fs_shake_x = 0;//------------------r2
			fs_shake_y = 2;
			fs_shake_r = -4;
			
			do_alpha[0] = 0;//do1----end
			
			sound_play( asset_get("sfx_blow_heavy1"));
			atk_sub[1] = 1;//3
			atk_x[1] = 540;
			atk_y[1] = 250;
			atk_rot[1] = -30;
			
			//hiteff
			hit_sub[0] = 0;//1_end
			hit_alpha[0] = 0;
			
			hit_sub[1] = 3;//2_4
			
			hit_sub[2] = 1;//3_2

			//damage
			take_damage( hit_player, player, fs_dmg );
		}
		if(window_timer == 18){//-----------------------------------------------
			
			atk_sub[1] = 0;//4
			atk_x[1] = 620;
			atk_y[1] = 300;
			atk_rot[1] = 60;
			
			fs_shake_r = -2;
			
			//No3
			sound_play( asset_get("sfx_swipe_medium1"));
			atk_sub[0] = 0;//1
			atk_x[0] = 50;
			atk_y[0] = 500;
			atk_xs[0] = -1;
			atk_ys[0] = 1;
			atk_rot[0] = 90;
			atk_alpha[0] = 1;//出現
			
			//hiteff
			hit_sub[1] = 4;//2_5
			
			hit_sub[2] = 2;//3_3
			
			hit_sub[0] = 0;//4_1
			hit_x[0] = 140;
			hit_y[0] = 50;
			hit_xs[0] = 5;
			hit_ys[0] = 5;
			hit_rot[0] = 270;
			hit_alpha[0] = 1;
		}
		if(window_timer == 20){//-----------------------------------------------
			
			atk_sub[1] = 0;//5
			atk_x[1] = 980;
			atk_y[1] = 280;
			atk_rot[1] = 40;
			
			fs_shake_x = -2;
			fs_shake_y = 0;
			
			atk_sub[0] = 0;//2
			atk_x[0] = 310;
			atk_y[0] = 330;
			atk_rot[0] = 60;
			
			//hiteff
			hit_sub[1] = 0;//2_end
			hit_alpha[1] = 0;
			
			hit_sub[2] = 3;//3_4
			
			hit_sub[0] = 1;//4_2
		}
		if(window_timer == 22){//-----------------------------------------------
			atk_alpha[1] = 0;//消去
			
			fs_shake_x = 2;//------------------r3
			fs_shake_y = -3;
			fs_shake_r = 4;
			
			sound_play( asset_get("sfx_shovel_hit_med2"));
			atk_sub[0] = 1;//3
			atk_x[0] = 400;
			atk_y[0] = 250;
			atk_rot[0] = 45;
			
			do_sub[1] = 0;//do2-------start
			do_x[1] = 660;
			do_y[1] = 180;
			do_alpha[1] = 1;
			
			//hiteff
			hit_sub[2] = 4;//3_5
			
			hit_sub[0] = 2;//4_3
			
			hit_sub[1] = 0;//5_1
			hit_x[1] = 520;
			hit_y[1] = 440;
			hit_xs[1] = 3;
			hit_ys[1] = 3;
			hit_rot[1] = 0;
			hit_alpha[1] = 1;

			//damage
			take_damage( hit_player, player, fs_dmg );
			
			if(fs_loop_count == 3){
				shine_start = 1;
				shine_xs = 1;
				shine_ys = 1;
				shine_rot = 0;
				sound_play( sound_get("fs_flash"));
			}
		}
		if(window_timer == 24){//-----------------------------------------------
			atk_sub[0] = 0;//4
			atk_x[0] = 470;
			atk_y[0] = 180;
			atk_rot[0] = 130;
			
			fs_shake_r = 2;
			
			//No4
			//sound_play( asset_get("sfx_swipe_heavy1"));
			atk_sub[1] = 0;//1
			atk_x[1] = 780;
			atk_y[1] = 600;
			atk_xs[1] = 1;
			atk_ys[1] = 1;
			atk_rot[1] = -100;
			atk_alpha[1] = 1;//出現

			do_sub[1] = 0;//do2
			do_y[1] -= 2;
			do_alpha[1] = 1;
			
			//hiteff
			hit_sub[2] = 0;//3_end
			hit_alpha[2] = 0;
			
			hit_sub[0] = 3;//4_4
			
			hit_sub[1] = 1;//5_2
			
			if(fs_loop_count == 3){
				shine_xs = 2;
				shine_ys = 2;
				shine_rot += 120;
			}
		}
		if(window_timer == 26){//-----------------------------------------------
			atk_sub[0] = 0;//5
			atk_x[0] = 535;
			atk_y[0] = -50;
			atk_rot[0] = 110;
			
			fs_shake_x = 0;
			fs_shake_y = -2;
			
			atk_sub[1] = 0;//2
			atk_x[1] = 600;
			atk_y[1] = 400;
			atk_rot[1] = -90;
			
			do_sub[1] = 1;//do2
			do_y[1] -= 2;
			do_alpha[1] = 1;
			
			//hiteff
			hit_sub[0] = 4;//4_5
			
			hit_sub[1] = 2;//5_3
			
			if(fs_loop_count == 3){
				shine_xs = 4;
				shine_ys = 4;
				shine_rot += 120;
			}
		}
		if(window_timer == 28){//-----------------------------------------------
			atk_alpha[0] = 0;//消去
			
			fs_shake_x = -2;//------------------r4
			fs_shake_y = 2;
			fs_shake_r = -4;
			
			sound_play( asset_get("sfx_blow_medium2"));
			atk_sub[1] = 1;//3
			atk_x[1] = 560;
			atk_y[1] = 280;
			atk_rot[1] = -80;
			
			//do_alpha[1] = 0;//do2----end
			do_sub[1] = 0;//do3-------start
			do_x[1] = 290;
			do_y[1] = 60;
			do_alpha[1] = 1;
			
			//hiteff
			hit_sub[0] = 0;//4_end
			hit_alpha[0] = 0;
			
			hit_sub[1] = 3;//5_4
			
			//damage
			take_damage( hit_player, player, fs_dmg );
			
			if(fs_loop_count == 3){
				shine_xs = 10;
				shine_ys = 10;
				shine_rot += 120;
			}
		}
		if(window_timer == 30){//-----------------------------------------------
			atk_sub[1] = 0;//No4 4
			atk_x[1] = 550;
			atk_y[1] = 180;
			atk_rot[1] = -160;
			atk_alpha[1] = 1;//出現
			
			do_sub[1] = 0;//do3
			do_y[1] -= 2;
			do_alpha[1] = 1;
			
			//hiteff
			hit_sub[1] = 4;//5_5
			
			if(fs_loop_count == 3){
				shine_start = 2;
				shine_sub = 0;
				shine_xs = 1;
				shine_ys = 1;
				shine_rot = 0;
			}
			
			fs_loop_count += 1;
			window_timer = 5;
		}
		if(fs_loop_count == 4){//移行-------------------------------------------
			window = 12;
			window_timer = 0;
			fs_camera_y = 0;//初期化
		}
	}
	//--------------------------------------------------------------------------
	if(window == 12){//finish
	
		//床
		atk_x[0] = 480;
		atk_y[0] = 660 + fs_camera_y;
		
		//敵
		enemy_x = 240;
		enemy_y = 470 + fs_camera_y;
		fs_hit_x = 0;
		fs_hit_y = 0;
		fs_hit_scale = 0;
		fs_shake_r = atk_rot[0];
	//-------------------------------------------------------------------------
		if(window_timer == 1){//-----------------------------------------------
			atk_start  = false;
			
			fs_camera_y = 400;
			
			//初期化
			atk_sub[1] = 0;
			atk_x[1] = 520;
			atk_y[1] = -350;
			atk_xs[1] = 8;
			atk_ys[1] = 8;
			atk_rot[1] = 0;
			atk_alpha[1] = 1;
			
			atk_rot[0] = -2;
			
			hit_alpha[0] = 0;
			hit_alpha[2] = 0;
			
			blo_timer = 0;//血
			blo_x = 0;
			blo_y = 0;
			blo_alpha = 0;
		}
		//移行終わり
		if(window_timer == 6){//-----------------------------------------------
			shine_start = 2;
			shine_sub = 0;
		}
		if(window_timer == 8){
			shine_sub = 1;
		}
		if(window_timer == 10){
			shine_sub = 2;
		}
		if(window_timer == 12){
			shine_sub = 3;
		}
		if(window_timer == 14){
			shine_start = 0;
			shine_sub = 0;
		}//---------------------------------------------------------------------
		//---------------------------------------------------------------------
		if(window_timer == 18){
			atk_y[1] = -100;
			fs_camera_y = 400;
			atk_rot[0] = -2;
		}
		if(window_timer == 19){
			atk_y[1] = 100;
			fs_camera_y = 100;
		}
		if(window_timer == 20){
			atk_y[1] = 200;
			fs_camera_y = -60;
		}
		if(window_timer == 21){
			atk_y[1] = 250;
			fs_camera_y = -70;
		}
		if(window_timer == 22){
			atk_sub[1] = 1;
			fs_camera_y = -75;
			atk_rot[0] = -1.8;
		}
		if(window_timer == 23){
			fs_camera_y = -80;
			atk_rot[0] = -1.7;
		}
		if(window_timer == 24){
			fs_camera_y = -82;
			atk_rot[0] = -1.6;
		}
		if(window_timer == 25){
			fs_camera_y = -84;
			atk_rot[0] = -1.2;
		}
		if(window_timer == 28){
			atk_sub[1] = 2;
			atk_xs[1] = 8;
			atk_x[1] = 520;
			atk_y[1] = 250;
			fs_camera_y = -82;
			atk_rot[0] = -1;
		}
		if(window_timer == 29){
			atk_xs[1] = 8.2;
			atk_x[1] = 525;
			atk_y[1] = 245;
			fs_camera_y = -78;
			atk_rot[0] = -0.6;
		}
		if(window_timer == 30){
			atk_xs[1] = 8.6;
			atk_x[1] = 540;
			atk_y[1] = 220;
			fs_camera_y = -70;
			atk_rot[0] = 0.2;
		}
		if(window_timer == 31){
			atk_sub[1] = 3;
			atk_xs[1] = 9;
			atk_x[1] = 560;
			atk_y[1] = 190;
			fs_camera_y = -58;
			atk_rot[0] = 0.6;
		}
		if(window_timer == 32){
			atk_xs[1] = 10;
			atk_x[1] = 600;
			atk_y[1] = 170;
			fs_camera_y = -37;
			atk_rot[0] = 1;
		}
		if(window_timer == 33){
			atk_xs[1] = 12;
			atk_x[1] = 610;
			atk_y[1] = 140;
			fs_camera_y = -10;
			atk_rot[0] = 1.4;
		}
		if(window_timer == 34){
			atk_sub[1] = 5;
			atk_xs[1] = 14;
			atk_x[1] = 580;
			atk_y[1] = 120;
			fs_camera_y = 0;
			atk_rot[0] = 1.5;
		}
		if(window_timer == 35){
			sound_play( sound_get("fs_finish"));
			hit_x[0] = 720;
			hit_y[0] = 590;
			hit_alpha[0] = 1;
			atk_alpha[1] = 0;
			hit_alpha[2] = 0.5;
			
			hit_x[1] = 715;//白
			hit_y[1] = 595;
			hit_x[2] = 740;//影 
			hit_y[2] = 600;

			fs_r2 = 8;
			atk_rot[0] = 1.6;
			
			blo_x = 220;
			blo_y = 400;
			blo_alpha = 1;
		}
		if(window_timer >= 35) blo_timer += 0.5;
		if(window_timer == 36){
			fs_r2 = 11;
		}
		if(window_timer == 37){
			fs_r2 = 13;
		}
		if(window_timer == 36 or window_timer == 40 or window_timer == 44 or window_timer == 48 or window_timer == 52 or window_timer == 56 or window_timer == 60 or window_timer == 64 or window_timer == 68 or window_timer == 72){
			hit_x[0] += 1;
			hit_y[0] -= 1;
			
			pot_rot += 0.1;
			atk_rot[0] += 0.1;
			
			hit_x[1] += 2;//白
			hit_y[1] -= 2;
			hit_x[2] += 1;//影 
		}
		if(window_timer == 74){//終わり
			window = 13;
			FS_alpha = 0;
			window_timer = 0;
		}	
	}
	if(window == 13){
		if(window_timer == 20){
			window = 8;
			window_timer = 0;
		}
	}
	
}




//------------------------------------------------------------------------------
