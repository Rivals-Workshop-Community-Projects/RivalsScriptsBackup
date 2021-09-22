//update
init_shader();

//数値変動
//---------------------------

//Intro
if(introend = false){
	if (introTimer2 < 1.5) {
	    introTimer2++;
	} else {
	    introTimer2 = 0;
	    introTimer++;
	}
	if (introTimer <= 5 && state_timer == 15){
		if((state != PS_IDLE) && (introstart = true)){
			if(random_intro == 0) sound_play(asset_get("sfx_spin"));
			if(random_intro == 1) sound_play(sound_get("intro2"));
		}
	}
}
//---------------------------

//バグ回避用
if(grabbedid != noone){
	grabbedid.ungrab++;
	if(grabbedid.ungrab == 2){
		grabbedid.visible = true; //掴みで相手が見えなくならない場合は、自由にこの行を削除してください。
		grabbedid.invincible = false; //掴みで相手が無敵にならない場合は、遠慮なくこの行を削除してください。
		grabbedid.state = PS_TUMBLE;
		grabbedid.ungrab = 0;
		grabbedid = noone;
	}
}

//待機リセット
if(state != PS_IDLE) rand_idle = 0;

if (state != PS_ATTACK_AIR and state != PS_ATTACK_GROUND){
	FS_alpha = 0;
	max_fall = 11;
}

//NB
if(NBalive != 0) NBalive -= 1;


//---------------------------


if (attack == AT_EXTRA_3 and window == 1)
{
	ex3cooltime = 30;
}
if(ex3cooltime != 0) ex3cooltime = ex3cooltime - 1;



//空上 ダブルジャンプでも解消
if (state == PS_DOUBLE_JUMP or !free or state == PS_WALL_JUMP) {
    move_cooldown[AT_UAIR] = 0;
}

//着地で頭空中攻撃のクールダウン解消
if(!free){
    move_cooldown[AT_NTHROW] = 0;
}


//ダメージで初期化
if (state_cat == SC_HITSTUN){
	fusion = false;
}



//tcoイラスト ランダム
TCOrand = random_func( 3, 3, true )
switch(TCOrand){
case 0: tcoart = sprite_get("tcoart1")
break;
case 1: tcoart = sprite_get("tcoart2")
break;
case 2: tcoart = sprite_get("tcoart3")
break;
}

//------------------------------------------------------------------------------
//体ありなし状態変化------------------------------------------------------------
//---------------------------
if (bodyless == false) {//身体あり
	hurtbox_spr = asset_get("ex_guy_hurt_box");
	crouchbox_spr = asset_get("ex_guy_crouch_box");
	idle_anim_speed = .1;
	crouch_anim_speed = .1;
	walk_anim_speed = .3;
	dash_anim_speed = .5;
	pratfall_anim_speed = .5;
	
	char_height = 52;
	walk_speed = 3;
	initial_dash_speed = 7;
	dash_speed = 6.0;
	jump_start_time = 5;
	jump_speed = 11;
	short_hop_speed = 8;
	djump_speed = 10;
	walljump_hsp = 7;
	walljump_vsp = 7;
	land_time = 4; //normal landing frames
	prat_land_time = 15;
	
	knockback_adj = 1.1; //1 = default, >1 = lighter, <1 = heavier
	
	
	bodyloss = false;
	
	//挑発
	set_attack_value(AT_TAUNT, AG_SPRITE, sprite_get("taunt"));
	set_attack_value(AT_TAUNT, AG_HURTBOX_SPRITE, asset_get("ex_guy_hurt_box"));
	//蓋ジャンプ----------------------------------------------------------------
	set_attack_value(AT_EXTRA_3, AG_SPRITE, sprite_get("ex03"));
	set_attack_value(AT_EXTRA_3, AG_HURTBOX_SPRITE, sprite_get("ex03_hurt"));
	set_attack_value(AT_EXTRA_3, AG_NUM_WINDOWS, 7);
	
	set_window_value(AT_EXTRA_3, 3, AG_WINDOW_TYPE, 10);
	set_window_value(AT_EXTRA_3, 3, AG_WINDOW_LENGTH, 12);
	set_window_value(AT_EXTRA_3, 3, AG_WINDOW_ANIM_FRAMES, 6);
	set_window_value(AT_EXTRA_3, 3, AG_WINDOW_ANIM_FRAME_START, 2);
	reset_window_value(AT_EXTRA_3, 3, AG_WINDOW_VSPEED);
	reset_window_value(AT_EXTRA_3, 3, AG_WINDOW_VSPEED_TYPE);
	set_window_value(AT_EXTRA_3, 3, AG_WINDOW_CUSTOM_GRAVITY, 4);
	//--------------------------------------------------------------------------
	//蓋投げ
	set_attack_value(AT_FSPECIAL, AG_SPRITE, sprite_get("fspecial"));
	set_attack_value(AT_FSPECIAL, AG_AIR_SPRITE, sprite_get("fspecial"));
	set_attack_value(AT_FSPECIAL, AG_HURTBOX_SPRITE, sprite_get("fspecial_hurt"));
	
	//上強----------------------------------------------------------------
	set_attack_value(AT_UTILT, AG_SPRITE, sprite_get("utilt"));
	set_attack_value(AT_UTILT, AG_HURTBOX_SPRITE, sprite_get("utilt_hurt"));
	
	reset_window_value(AT_UTILT, 1, AG_WINDOW_LENGTH);
	reset_window_value(AT_UTILT, 2, AG_WINDOW_LENGTH);
	reset_window_value(AT_UTILT, 3, AG_WINDOW_LENGTH);
	
	set_hitbox_value(AT_UTILT, 1, HG_PARENT_HITBOX, 1);
	set_hitbox_value(AT_UTILT, 1, HG_HITBOX_TYPE, 1);
	set_hitbox_value(AT_UTILT, 1, HG_WINDOW, 2);
	set_hitbox_value(AT_UTILT, 1, HG_LIFETIME, 3);
	set_hitbox_value(AT_UTILT, 1, HG_HITBOX_Y, -60);
	set_hitbox_value(AT_UTILT, 1, HG_WIDTH, 50);
	set_hitbox_value(AT_UTILT, 1, HG_HEIGHT, 60);
	set_hitbox_value(AT_UTILT, 1, HG_PRIORITY, 2);
	set_hitbox_value(AT_UTILT, 1, HG_DAMAGE, 5);
	set_hitbox_value(AT_UTILT, 1, HG_ANGLE, 90);
	set_hitbox_value(AT_UTILT, 1, HG_BASE_KNOCKBACK, 6);
	set_hitbox_value(AT_UTILT, 1, HG_KNOCKBACK_SCALING, .45);
	set_hitbox_value(AT_UTILT, 1, HG_BASE_HITPAUSE, 8);
	set_hitbox_value(AT_UTILT, 1, HG_HITPAUSE_SCALING, .35);

	//--------------------------------------------------------------------------
	//回避
	if (state == PS_ROLL_BACKWARD or state == PS_ROLL_FORWARD or state == PS_TECH_FORWARD or state == PS_TECH_BACKWARD){
   
	if state_timer == 1 {
    	sound_play(sound_get("portal1"));
    	spawn_hit_fx( x-24*spr_dir, y, portal1 );
	}
	if state_timer == 12 {
    	spawn_hit_fx( x+16*spr_dir, y, portal2 );
	}
	 
	 if state_timer < 9{
	     hsp = 0 * spr_dir
	 }
	 
	 if state_timer >= 9 and state_timer < 12 {
	     hsp = -50 * spr_dir;
	 }
	 if state_timer >= 4 and state_timer < 12 {
	     draw_indicator = false;
	 }
	  
	 if state_timer > 12 {
	    hsp = 0;
	    draw_indicator = true;
	 }
	 
	//tech roll animation frames
	techroll_startup_frames = 6;
	techroll_active_frames = 1;
	techroll_recovery_frames = 7;
	techroll_speed = 10;
	
	//airdodge animation frames
	air_dodge_startup_frames = 1;
	air_dodge_active_frames = 2;
	air_dodge_recovery_frames = 3;
	air_dodge_speed = 7.5;
	
	//roll animation frames
	roll_forward_startup_frames = 6;
	roll_forward_active_frames = 1;
	roll_forward_recovery_frames = 7;
	roll_back_startup_frames = 6;
	roll_back_active_frames = 1;
	roll_back_recovery_frames = 7;
	roll_forward_max = 9; //roll speed
	roll_backward_max = 9;
	//--------------------------------------------------------------------------
	 
}

}
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
if (bodyless == true) {//身体なし
	hurtbox_spr = asset_get("ex_guy_crouch_box");
	crouchbox_spr = asset_get("ex_guy_crouch_box");
	idle_anim_speed = .1;
	crouch_anim_speed = .1;
	walk_anim_speed = .125;
	dash_anim_speed = .3;
	pratfall_anim_speed = .5;
	
	char_height = 26;
	walk_speed = 2.5;
	initial_dash_speed = 5.0;
	dash_speed = 5.0;
	jump_start_time = 6;
	jump_speed = 9;
	short_hop_speed = 7;
	djump_speed = 8;
	walljump_hsp = 6;
	walljump_vsp = 5;
	land_time = 6; //normal landing frames
	prat_land_time = 15;

	knockback_adj = 1.3; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier
	
	//挑発
	set_attack_value(AT_TAUNT, AG_SPRITE, sprite_get("headless_taunt"));
	set_attack_value(AT_TAUNT, AG_HURTBOX_SPRITE, asset_get("ex_guy_crouch_box"));
	//蓋ジャンプ----------------------------------------------------------------
	if (hutaSP == false) {
	set_attack_value(AT_EXTRA_3, AG_SPRITE, sprite_get("headless_ex03"));
	set_attack_value(AT_EXTRA_3, AG_HURTBOX_SPRITE, sprite_get("headless_ex03_hurt"));
	set_attack_value(AT_EXTRA_3, AG_NUM_WINDOWS, 3);
	
	set_window_value(AT_EXTRA_3, 3, AG_WINDOW_TYPE, 7);//落下させる
	set_window_value(AT_EXTRA_3, 3, AG_WINDOW_LENGTH, 6);
	set_window_value(AT_EXTRA_3, 3, AG_WINDOW_ANIM_FRAMES, 6);
	set_window_value(AT_EXTRA_3, 3, AG_WINDOW_ANIM_FRAME_START, 2);
	set_window_value(AT_EXTRA_3, 3, AG_WINDOW_VSPEED, -8);
	set_window_value(AT_EXTRA_3, 3, AG_WINDOW_VSPEED_TYPE, 1);
	set_window_value(AT_EXTRA_3, 3, AG_WINDOW_CUSTOM_GRAVITY, 1);
	}
	if (hutaSP == true) {
	set_attack_value(AT_EXTRA_3, AG_SPRITE, sprite_get("headless_ex03"));
	set_attack_value(AT_EXTRA_3, AG_HURTBOX_SPRITE, sprite_get("headless_ex03_hurt"));
	set_attack_value(AT_EXTRA_3, AG_NUM_WINDOWS, 7);
	
	set_window_value(AT_EXTRA_3, 3, AG_WINDOW_TYPE, 10);//落下させる
	set_window_value(AT_EXTRA_3, 3, AG_WINDOW_LENGTH, 6);
	set_window_value(AT_EXTRA_3, 3, AG_WINDOW_ANIM_FRAMES, 6);
	set_window_value(AT_EXTRA_3, 3, AG_WINDOW_ANIM_FRAME_START, 2);
	reset_window_value(AT_EXTRA_3, 3, AG_WINDOW_VSPEED);
	reset_window_value(AT_EXTRA_3, 3, AG_WINDOW_VSPEED_TYPE);
	set_window_value(AT_EXTRA_3, 3, AG_WINDOW_CUSTOM_GRAVITY, 8);
	}
	//--------------------------------------------------------------------------
	//蓋投げ
	set_attack_value(AT_FSPECIAL, AG_SPRITE, sprite_get("headless_fspecial2"));
	set_attack_value(AT_FSPECIAL, AG_AIR_SPRITE, sprite_get("headless_fspecial2"));
	set_attack_value(AT_FSPECIAL, AG_HURTBOX_SPRITE, sprite_get("headless_fspecial2_hurt"));
	
	//上強----------------------------------------------------------------
	set_attack_value(AT_UTILT, AG_SPRITE, sprite_get("headless_utilt"));
	set_attack_value(AT_UTILT, AG_HURTBOX_SPRITE, sprite_get("headless_utilt_hurt"));
	
	set_window_value(AT_UTILT, 1, AG_WINDOW_LENGTH, 9);
	set_window_value(AT_UTILT, 2, AG_WINDOW_LENGTH, 2);
	set_window_value(AT_UTILT, 3, AG_WINDOW_LENGTH, 12);

	set_hitbox_value(AT_UTILT, 1, HG_PARENT_HITBOX, 1);
	set_hitbox_value(AT_UTILT, 1, HG_HITBOX_TYPE, 1);
	set_hitbox_value(AT_UTILT, 1, HG_WINDOW, 0);
	set_hitbox_value(AT_UTILT, 1, HG_LIFETIME, 3);
	set_hitbox_value(AT_UTILT, 1, HG_HITBOX_Y, -35);
	set_hitbox_value(AT_UTILT, 1, HG_WIDTH, 50);
	set_hitbox_value(AT_UTILT, 1, HG_HEIGHT, 50);
	set_hitbox_value(AT_UTILT, 1, HG_PRIORITY, 2);
	set_hitbox_value(AT_UTILT, 1, HG_DAMAGE, 3);
	set_hitbox_value(AT_UTILT, 1, HG_ANGLE, 90);
	set_hitbox_value(AT_UTILT, 1, HG_BASE_KNOCKBACK, 4);
	set_hitbox_value(AT_UTILT, 1, HG_KNOCKBACK_SCALING, .35);
	set_hitbox_value(AT_UTILT, 1, HG_BASE_HITPAUSE, 4);
	//set_hitbox_value(AT_UTILT, 1, HG_HITPAUSE_SCALING, .25);
	
	//--------------------------------------------------------------------------
	//回避
	//tech roll animation frames
	techroll_startup_frames = 2
	techroll_active_frames = 4;
	techroll_recovery_frames = 2;
	techroll_speed = 10;
	
	//airdodge animation frames
	air_dodge_startup_frames = 1;
	air_dodge_active_frames = 2;
	air_dodge_recovery_frames = 3;
	air_dodge_speed = 7.5;
	
	//roll animation frames
	roll_forward_startup_frames = 2;
	roll_forward_active_frames = 4;
	roll_forward_recovery_frames = 2;
	roll_back_startup_frames = 2;
	roll_back_active_frames = 4;
	roll_back_recovery_frames = 2;
	roll_forward_max = 9; //roll speed
	roll_backward_max = 9;
	//--------------------------------------------------------------------------
	
}
//---------------------------
//motion blur
	for(var i = array_length_1d(blur) - 1; i > 0; i--) {
		blur[@ i] = blur[i - 1];
	}
	blur[@ i] = [
		sprite_index,
		image_index,
		x,
		y,
		image_xscale,
		image_yscale,
		image_angle,
		image_blend,
		image_alpha,
	];
//---------------------------