//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}
switch(attack){
case AT_JAB:
	if window == 1 && window_timer == 1{
		sound_play(asset_get("sfx_ori_ustrong_charge"),false,noone,1.0, 1.0);
	}
	if window == 4 && window_timer == 1{
		sound_play(asset_get("sfx_ori_bash_launch"),false,noone,1.0, 1.0);
	}
break;	
case AT_FTILT:
	if window == 2 && window_timer == 2{
		sound_play(asset_get("sfx_swipe_heavy2"),false,noone,1.0, 1.0);
	}
break;
case AT_UTILT:
	if window == 1 && window_timer == 5{
		sound_play(asset_get("sfx_bird_sidespecial"));
	}
break;
case AT_FSTRONG:
	if window == 2 && window_timer == 6{
		sound_play(asset_get("sfx_forsburn_combust"),false,noone,.6);
		sound_play(asset_get("sfx_flare_razer"),false,noone,0.9);
	}
break;
case AT_DSTRONG:
	if window == 2 && window_timer == 4{
		sound_play(asset_get("sfx_hod_fspecial"),false,noone,1.0);
	}
break;
case AT_NAIR:
	if window == 1 && window_timer == 5{
		sound_play(asset_get("sfx_bird_sidespecial"),false,noone,1.0, 1.1);
	}
break;
case AT_FAIR:
	if window == 1 && window_timer == 3{
		sound_play(asset_get("sfx_bird_downspecial"),false,noone,0.9, 1.1);
	}
break;
case AT_BAIR:
	if window == 1 && window_timer == 1{
		sound_play(asset_get("sfx_ori_bash_launch"),false,noone,1.0, 1.1);
	}
break;
case AT_UAIR:
	if window == 1 && window_timer == 3{
		sound_play(asset_get("sfx_ori_bash_launch"),false,noone,1.0, 1.0);
	}
break;
case AT_DAIR:
	if window = 1{
		dair_forgiveness = 0
	}
	if window == 2 and dair_forgiveness >= dair_forgiveness_threshold and free and !was_parried
    {	
    	move_cooldown[AT_DAIR] = 40;
        can_jump = true;
        can_shield = true;
        if((special_down && up_down)){
			set_attack(AT_USPECIAL);
		}
    }
break

case AT_NSPECIAL:
	if window == 1 && window_timer == 7{
		sound_play(asset_get("sfx_ori_stomp_spin"),false,noone,1.0, 0.9);
		sound_play(asset_get("sfx_ori_bash_launch"),false,noone,1.0, 1.1);
	}
	if window == 2 && window_timer == 19{
		if QD_Charge != 2{
			QD_Charge++;
			if QD_Charge == 1{
				QD_article_1 = instance_create(x-60*spr_dir, y-70, "obj_article1");
				QD_article_1.QD_number = 1;
				sound_play(asset_get("sfx_frog_fspecial_charge_gained_1"));	
			}
			if QD_Charge == 2{
				QD_article_2 = instance_create(x-80*spr_dir, y-40, "obj_article1");
				QD_article_2.QD_number = 2;
				sound_play(asset_get("sfx_frog_fspecial_charge_gained_2"));	
			}
		}
	}
	if (window == 2 && window_timer == 12) and ((special_down and QD_Charge > 0) or (QD_Charge == 2)){
		QD_Charge--;
		spawn_hit_fx(x-8*spr_dir, y-40, hfx_QD_consume);
		if (instance_exists(QD_article_2)){
		   QD_article_2.image_index = 0;
		   QD_article_2.state = 3; 
		} 
		else if (instance_exists(QD_article_1)){
		   QD_article_1.image_index = 0;
		   QD_article_1.state = 3; 
		}
		sound_play(asset_get("sfx_frog_fspecial_charge_full"),false,noone,0.8);
		attack_end(); //call this when you cancel an attack, it resets hitboxes!
		set_attack(AT_NSPECIAL_2);{
			hurtboxID.sprite_index = sprite_get("nspecial_2_hurt");
			window_timer = 0;
		}
	}

break;
case AT_NSPECIAL_2:
	move_cooldown[AT_NSPECIAL] = 15;
	if window == 1 && window_timer == 1{
		sound_play(asset_get("sfx_zetter_fireball_fire"),false,noone,0.8);
	}
	if window == 2 {
        	var dspec_dir = right_down - left_down
        	if dspec_dir != 0 {
        		hsp = lerp(hsp, dspec_dir * 6, 0.2)
        	}
        	
        }
	if (free && window == 2 && !hitpause){
		vsp = -3;}
break;


case AT_FSPECIAL:
    move_cooldown[AT_FSPECIAL] = 30;
    can_fast_fall = false;
    if (window == 1 && window_timer == 8){
        sound_play(asset_get("sfx_zetter_fireball_fire"),false,noone,0.8);
    }
	if (free && window == 2){
		vsp = -3;}
	if (window == 3 && window_timer == 7) and special_down and QD_Charge > 0{
		QD_Charge--;
		spawn_hit_fx(x-8*spr_dir, y-40, hfx_QD_consume);
		if (instance_exists(QD_article_2)){
		   QD_article_2.image_index = 0;
		   QD_article_2.state = 3; 
		} 
		else if (instance_exists(QD_article_1)){
		   QD_article_1.image_index = 0;
		   QD_article_1.state = 3; 
		}
		sound_play(asset_get("sfx_frog_fspecial_charge_full"),false,noone,0.8);
		attack_end(); //call this when you cancel an attack, it resets hitboxes!
		set_attack(AT_FSPECIAL_2);{
			hurtboxID.sprite_index = sprite_get("fspecial_2_hurt");
			window_timer = 0;
		}
	}
break;
case AT_FSPECIAL_2:
	move_cooldown[AT_FSPECIAL] = 60;
	if (free && window == 2){
		vsp = -3;}
break;
case AT_USPECIAL:
	can_fast_fall = false;
	can_wall_jump = true;
    if window == 1 && window_timer == 7 {
		if special_down {
			window = 2;
			strong_charge = 1;
			window_timer = 0;
		}else{
			sound_play(asset_get("sfx_forsburn_reappear"));
		}
	}
	if window_timer == 1 && get_window_value(attack, window, AG_WINDOW_TYPE) == 69 && !hitpause {
		move_cooldown[AT_USPECIAL] = 2;
	}
	if window_timer == 12 && get_window_value(attack, window, AG_WINDOW_TYPE) == 69  and special_down and QD_Charge > 0{
		QD_Charge--;
		spawn_hit_fx(x-8*spr_dir, y-90, hfx_QD_consume);
		if (instance_exists(QD_article_2)){
		   QD_article_2.image_index = 0;
		   QD_article_2.state = 3; 
		} 
		else if (instance_exists(QD_article_1)){
		   QD_article_1.image_index = 0;
		   QD_article_1.state = 3; 
		}
		sound_play(asset_get("sfx_frog_fspecial_charge_full"),false,noone,0.8);
		attack_end(); //call this when you cancel an attack, it resets hitboxes!
		set_attack(AT_USPECIAL_2);{
			hurtboxID.sprite_index = sprite_get("uspecial_2_hurt");
			window_timer = 0;
		}
	}
break;
case AT_USPECIAL_2:
can_wall_jump = true;
if (window != 5) can_move = false; 
        can_fast_fall = false;
        switch (window)
        {
            case 1:
                if (!free && window_timer == 1)
                {
                    y -= 5;
                    free = true;
                }
			break;
            case 3:
                if (!free) set_state(PS_LANDING_LAG);
                if (window_timer == 5 && !hitpause)
                {
                    fly_dir = joy_pad_idle?90:joy_dir;
                    spr_angle = fly_dir - 90;
                    hsp = lengthdir_x(1, fly_dir);
                    vsp = lengthdir_y(1, fly_dir);
                    if ((left_pressed || left_down) && spr_dir == 1) spr_dir = -1; 
                    else if ((right_pressed || right_down) && spr_dir == -1) spr_dir = 1;
                }
                break;

            case 4:
                if (window == 4 && !hitpause)
                {
                    spr_angle = fly_dir - 90;
                    hsp = lengthdir_x(11, fly_dir);
                    vsp = lengthdir_y(11, fly_dir);
                    if (!free){ //set_state(PS_LANDING_LAG);
                        window = 6;    
                        vsp = -5
                        window_timer = 0;
                        spr_angle = 0;
                        move_cooldown[AT_USPECIAL] = 30;
                        hsp = clamp(hsp, -8, 8);
                        destroy_hitboxes();
                        spawn_hit_fx(x, y-32, fx_gus_flame_large);
						sound_play(asset_get("sfx_forsburn_combust"),false,noone,0.8);
                    }
                }
                break;

            case 6:
                if (window_timer == 1)
                {
                    hsp /= 4;
                    vsp /= 4;
                }
                break;
                
        }
break;

case AT_DSPECIAL:
	move_cooldown[AT_DSPECIAL] = 30;
	can_fast_fall = false;
	if (window == 1 && window_timer == 9){
		sound_play(asset_get("sfx_ori_bash_launch"),false,noone,1.0,1.1);
		if free{
			vsp = -3;	
		}
	}
	if (window == 2 && !has_hit){
		set_num_hitboxes(AT_DSPECIAL, 1);
    }
    if (window == 2 && has_hit){
    	set_num_hitboxes(AT_DSPECIAL, 3);
    }
    	if (window == 3 && window_timer == 3 && has_hit) and special_down and QD_Charge > 0{
		sound_play(asset_get("sfx_frog_fspecial_charge_full"),false,noone,0.8);
		QD_Charge--;
		spawn_hit_fx(x-8*spr_dir, y-40, hfx_QD_consume);
		if (instance_exists(QD_article_2)){
		   QD_article_2.image_index = 0;
		   QD_article_2.state = 3; 
		} 
		else if (instance_exists(QD_article_1)){
		   QD_article_1.image_index = 0;
		   QD_article_1.state = 3; 
		} 
		attack_end(); //call this when you cancel an attack, it resets hitboxes!
		set_attack(AT_DSPECIAL_2);{
			hurtboxID.sprite_index = sprite_get("dspecial_2_hurt");
			window_timer = 0;
		}
    }
break;

case AT_DSPECIAL_2:
	djumps = 0;
	can_move = false;
break;
case AT_TAUNT:
	if (window == 1 && window_timer == 9){
		sound_play(asset_get("sfx_zetter_fireball_fire"),false,noone,1.0,1.0);
		sound_play(asset_get("sfx_mol_uspec_launch"),false,noone,1.0,1.0);
		
	}
break;

}

