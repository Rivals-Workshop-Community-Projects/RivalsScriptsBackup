//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}
switch(attack){
case AT_JAB:
	if (window == 3 || window == 6) && has_hit && !hitpause && wrath_meter >= 20{
	    can_special = true;
	    wrath_cancel = true;
    }
    //if window == 3 && window_timer == 4 && wrath == 1 && has_hit{
			//wrath_meter -=2
    //}
    if window == 4 && window_timer == 1 && wrath == 1{
        sound_play(asset_get("sfx_ori_bash_use"),false,noone,0.8,0.9);
    }
    if window == 4 && window_timer == 1{
        sound_play(sound_get("Hisako_Vacuum_Hit_3_04"),false,noone,0.8,1.1);
    }
    if window == 5 && window_timer == 2 && !hitpause{
        sound_play(sound_get("Hisako_Vacuum_Hit_3_04"),false,noone,0.8,1.0);
    }
    if window == 5 && window_timer == 5 && !hitpause{
        sound_play(sound_get("step7"),false,noone,1.0,1.0);
    }
	//if window == 6 && window_timer == 12{
        //wrath_meter -=5
    //}
break;

case AT_DATTACK:
	if (window == 3 || window == 5) && has_hit && !hitpause && wrath_meter >= 20{
	    can_special = true;
	    wrath_cancel = true;
    }
    if window == 3 && window_timer == 2 && wrath == 1{
        sound_play(asset_get("sfx_ori_bash_use"),false,noone,0.8,0.9);
    }
	//if window == 5 && window_timer == 12{
        //wrath_meter -=5
    //}
break;

case AT_FTILT:
    if window == 2 && window_timer == 2 && wrath == 1{
        sound_play(asset_get("sfx_ori_bash_use"),false,noone,0.8,0.9);
    }
    if (window == 3 || window == 4) && has_hit && !hitpause && wrath_meter >= 20{
	    can_special = true;
	    wrath_cancel = true;
    }
    //if window == 4 && window_timer == 12{
        //wrath_meter -=5
    //}
break;

case AT_UTILT:
	if clamp(window, 1, 4) == window
    {
        if (window == 3 and window_timer > 10)||(window == 4 and window_timer > 14) break;
        hud_offset = floor(lerp(hud_offset, 200, .1));
    }
	if window == 1 && window_timer == 4{
		sound_play(sound_get("Hisako_Vacuum_Hit_3_04"),false,noone,1.0,1.0);
	}
	if (window >= 4 && instance_exists(grabbed_player_obj)) 
		{
			//first, drop the grabbed player if this is the last window of the attack, or if they somehow escaped hitstun.
			if (window >= get_attack_value(attack, AG_NUM_WINDOWS)) { grabbed_player_obj = noone; }
			else if (grabbed_player_obj.state != PS_HITSTUN && grabbed_player_obj.state != PS_HITSTUN_LAND)
				grabbed_player_obj = noone;
			else 
			{
				grabbed_player_obj.spr_dir = -spr_dir;
				grabbed_player_obj.hitstop = 2;
				grabbed_player_obj.hitpause = true;
			}
		}
	if (window == 3 || window == 6) && has_hit && !hitpause && wrath_meter >= 20{
	    can_special = true;
	    wrath_cancel = true;
    }
	//if (window == 3 || window == 6) && window_timer == 10{
        //wrath_meter -=5
    //}
    if window == 4 && window_timer == 6{
    	sound_play(asset_get("sfx_ori_bash_use"),false,noone,0.8,0.9);
    }
break;

case AT_DTILT:
	if window == 2 && window_timer == 2 && has_hit{
		window = 4;
        window_timer = 0;
	}
	if (window == 4 || window == 6) && has_hit && !hitpause && wrath_meter >= 20{
	    can_special = true;
	    wrath_cancel = true;
    }
	if window == 4 && window_timer == 9{
        sound_play(sound_get("step7"),false,noone,1.0,1.0);
    }
break;

case AT_FSTRONG:
	if window == 4 || window == 5{
		focused_fury_timer -= 3.5
	}
	if (window == 6){
		focused_fury_timer = 1
		if (window_timer == 20){
        focused_fury_timer = 0
		}	
	}
    if window == 2 && window_timer == 1{
        sound_play(sound_get("step7"),false,noone,1.0,1.0);
    }
    if window == 4 && window_timer == 18{
    	sound_play(sound_get("Hisako_FX_Teleport_04"),false,noone,1.0,0.8);
    }
    if window == 5 && window_timer == 2 && wrath == 1{
        sound_play(asset_get("sfx_ori_bash_use"),false,noone,0.8,0.9);
    }
    if window == 5 && window_timer == 5{
    	sound_play(asset_get("sfx_frog_dstrong"),false,noone,1.0,0.9);
    }
break;

case AT_USTRONG:
	if window == 2{
		if window_timer == 1 && wrath == 1{
        sound_play(asset_get("sfx_ori_bash_use"),false,noone,0.8,0.9);
    	
			
		}
		if window_timer == 2{
			sound_play(asset_get("sfx_frog_uspecial_divekick"),false,noone,1.0,0.9);	
		}
	} 
    if (window == 4) && has_hit && focused_fury==1 && wrath_recharge_delay < 0{
        focused_fury_timer = 0
    }
    if clamp(window, 2, 4) == window
    {
        if window == 4 and window_timer > 14 break;
        hud_offset = floor(lerp(hud_offset, 250, .1));
    }
break;

case AT_DSTRONG:
	if window == 1 && window_timer == 4 && wrath == 1{
        sound_play(asset_get("sfx_ori_bash_use"),false,noone,0.8,0.9);
	}
	if window == 2 &&  window_timer == 2{
			sound_play(asset_get("sfx_bird_downspecial_end"),false,noone,1.0,0.9);	
			sound_play(asset_get("sfx_frog_uspecial_divekick"),false,noone,0.5,1.0);
		}
		
    if (window == 3) && has_hit && focused_fury==1 && wrath_recharge_delay < 0{
        focused_fury_timer = 0
    }
break;

case AT_NAIR:
	if (window == 2 && window_timer >= 3) && has_hit && !hitpause && wrath_meter >= 20{
	    can_special = true;
	    wrath_cancel = true;
    }
break;

case AT_FAIR:
	if (window == 1){
		fair_charge = 0
		wrath_land = 0
		if window_timer == 2{
			sound_play(sound_get("Hisako_LinkCharge_01"),false,noone,1.2);
		}
	}
	if (window == 2){
		can_fast_fall = false;
		vsp = lerp(vsp, 0, .1)
		if !(attack_down || strong_down || spr_dir == 1 && right_stick_down || spr_dir == -1 && left_stick_down)
            {
                window = 3;
                window_timer = 0;
            }
        if window_timer == 9{
        	++fair_charge
        }  
        if window_timer == 19{
        	++fair_charge
        }
	}
	if window == 3{
		sound_stop(sound_get("Hisako_LinkCharge_01"))
		vsp = lerp(vsp, 0, .1)
		if window_timer == 1{
			sound_play(sound_get("Hisako_Vacuum_Hit_3_04"),false,noone,0.8,1.0);
		}
		if window_timer == 2 && wrath == 1{
        	sound_play(asset_get("sfx_ori_bash_use"),false,noone,0.8,0.9);
    	}
		if window_timer == 4 {
			sound_play(asset_get("sfx_spin"),false,noone,1.0, 0.8);
		}
	}
	if window >= 4{
		can_fast_fall = true;
		can_wall_jump = true;
	}
	if window >= 4 && has_hit && !hitpause && wrath_meter >= 20{
	    can_special = true;
	    wrath_cancel = true;
    }
	//if window == 5 && window_timer == 14{
        //wrath_meter -=5
        //wrath_land = 1
    //}
    //if !free && wrath_land = 0 && !hitpause{
        //wrath_meter -=5
    //}
break;

case AT_BAIR:
	if (window == 1){
		wrath_land = 0
	}
	if window == 1 && window_timer == 6{
		sound_play(sound_get("step7"),false,noone,0.9,1.0);
		if wrath == 1{
        sound_play(asset_get("sfx_ori_bash_use"),false,noone,0.8,0.9);
    	}
	} 
	if window == 3 && has_hit && !hitpause && wrath_meter >= 20{
	    can_special = true;
	    wrath_cancel = true;
    }
    //if window == 3 && window_timer == 12{
        //wrath_meter -=5
        //wrath_land = 1
    //}
    //if !free && wrath_land = 0 && !hitpause{
        //wrath_meter -=5
    //}
break;

case AT_UAIR:
	if (window == 1){
		wrath_land = 0
	}
	if window == 3 && has_hit && !hitpause && wrath_meter >= 20{
	    can_special = true;
	    wrath_cancel = true;
    }
	//if (window == 3 && window_timer == 14) || (window == 6 && window_timer == 8){
        //wrath_meter -=5
        //wrath_land = 1
    //}
    //if !free && wrath_land = 0 && !hitpause{
        //wrath_meter -= 5
    //}
    if (window == 4){
    	can_fast_fall = false;
    	can_move = false;
    	if window_timer == 6{
    		sound_play(asset_get("sfx_ori_bash_use"),false,noone,0.8,0.9);
    	}
    }
break;

case AT_DAIR:
	if (window == 1){
		wrath_land = 0
	}
	if window == 1 && window_timer == 4 && wrath == 1{
        sound_play(asset_get("sfx_ori_bash_use"),false,noone,0.8,0.9);
    }
	if window == 3 && has_hit && !hitpause && wrath_meter >= 20{
	    can_special = true;
	    wrath_cancel = true;
    }
    //if window == 3 && window_timer == 12{
        //wrath_meter -=5
        //wrath_land = 1
    //}
    //if !free && wrath_land = 0 && !hitpause{
        //wrath_meter -=5
    //}
break;	

case AT_NSPECIAL:
	if wrath_meter >= 20 && wrath_visual_delay <= 0{
		wrath = 1;
	}
	trigger_wavebounce();
	move_cooldown[AT_NSPECIAL] = 30;
    if window == 1{
    	nspec_proj_charge = 0;
		if window_timer == 1 && wrath_cancel == true{
        	wrath_cancel = false;
        	if focused_fury == 1{
        		focused_fury = 0;
				focused_fury_timer = 0;
        	}else{
        		wrath_meter -=20
        	}
    	}
    	if window_timer == 2 && wrath == 1{
    		sound_play(asset_get("sfx_ori_dspecial_bash_miss"),false,noone,.4, 0.8);	
    	}
    	if window_timer == 4{
    		sound_play(sound_get("Hisako_LinkCharge_01"),false,noone,1.2);
    	}
    }  
    if window == 2{
    	if !(special_down){
            window = 3;
            window_timer = 0;
        }
        if window_timer == 14{
        	++nspec_proj_charge
        }
        if window_timer == 24{
        	++nspec_proj_charge
        }
    }
    if window == 3{
    	sound_stop(sound_get("Hisako_LinkCharge_01"))
    	if window_timer == 1{
    		sound_play(sound_get("Hisako_Getup_04"),false,noone,1.2);
    		if wrath == 1{
        		sound_play(asset_get("sfx_ori_bash_use"),false,noone,0.9,0.9);
    		}
    	}
    	//if window_timer >= 3 && free{
    		//vsp = -0.5;
    	//}
    	if (window_timer == 3){
           if nspec_proj_charge == 0 && wrath == 0{
           		create_hitbox(AT_NSPECIAL, 1, x+32*spr_dir, y-34);
           }
           if ((nspec_proj_charge == 1 && wrath == 0) || (nspec_proj_charge == 0 && wrath == 1)){
           		create_hitbox(AT_NSPECIAL, 2, x+32*spr_dir, y-34);
           }
           if ((nspec_proj_charge == 2 && wrath == 0) || (nspec_proj_charge == 1 && wrath == 1)){
           		create_hitbox(AT_NSPECIAL, 3, x+32*spr_dir, y-34);
           }
           if nspec_proj_charge == 2 && wrath == 1{
           		create_hitbox(AT_NSPECIAL, 4, x+32*spr_dir, y-34);
           }
    	}
    }
    if window == 4{
    	if !(special_down){
            window = 5;
            window_timer = 0;
        }
    }
    if (free && (window == 5 && window_timer >= 9 || window == 7 && window_timer >= 6) && !hitpause){
		vsp = -3;}
    if window == 6 && window_timer == 15 && wrath_meter >= 20 && !has_hit && focused_fury == 0{
    	wrath_meter -=5
    	wrath = 0;
    }
    if window == 8 && window_timer == 20 && wrath_meter >= 20 && !has_hit && focused_fury == 0{
    	wrath_meter -=5
    	wrath = 0;
    }
break;

case AT_FSPECIAL:
	if wrath_meter >= 20 && wrath_visual_delay <= 0{
		wrath = 1;
	}
    if window == 1 && window_timer == 1 && wrath_cancel == true{
        wrath_cancel = false;
        if focused_fury == 1{
        	focused_fury = 0;
			focused_fury_timer = 0;
        }else{
        	wrath_meter -=20
        }
    }
    if window <= 2{
    	if wrath == 1{
    		set_window_value(AT_FSPECIAL, 1, AG_WINDOW_INVINCIBILITY, 2);
			set_window_value(AT_FSPECIAL, 2, AG_WINDOW_INVINCIBILITY, 2);
			set_window_value(AT_FSPECIAL, 4, AG_WINDOW_INVINCIBILITY, 1);
    	}else{
    		set_window_value(AT_FSPECIAL, 1, AG_WINDOW_INVINCIBILITY, 0);
			set_window_value(AT_FSPECIAL, 2, AG_WINDOW_INVINCIBILITY, 0);
			set_window_value(AT_FSPECIAL, 4, AG_WINDOW_INVINCIBILITY, 1);
    	}
    }
    if window == 1 &&window_timer == 2 && wrath == 1{
    		sound_play(asset_get("sfx_ori_dspecial_bash_miss"),false,noone,.4, 0.8);	
    	}
    if window == 1 && window_timer == 4 && wrath == 1{
        sound_play(asset_get("sfx_ori_bash_use"),false,noone,0.8,0.9);
    }
    if (window == 1 && window_timer == 24) || (window == 2 && (window_timer == 7 || window_timer == 15)){
    	spawn_base_dust(x +90*spr_dir,y,"dash_start",1* spr_dir)
    	spawn_base_dust(x +140*spr_dir,y,"dash_start",1* spr_dir)
    	if wrath == 1{
    		spawn_base_dust(x +190*spr_dir,y,"dash_start",1* spr_dir)
    		spawn_base_dust(x +240*spr_dir,y,"dash_start",1* spr_dir)
    		spawn_base_dust(x +290*spr_dir,y,"dash_start",1* spr_dir)
    		spawn_base_dust(x +310*spr_dir,y,"dash",1* spr_dir)
    	}else{
    		spawn_base_dust(x +160*spr_dir,y,"dash",1* spr_dir)
    		spawn_base_dust(x +180*spr_dir,y,"dash",1* spr_dir)
    	}
    }
    if window == 2 && window_timer == 1{
		if wrath != 1{
			create_hitbox(AT_FSPECIAL, 8, x+32*spr_dir, y-4);
			create_hitbox(AT_FSPECIAL, 9, x+32*spr_dir, y-4);
		}else{
			create_hitbox(AT_FSPECIAL, 10, x+32*spr_dir, y-4);
		}
	}
	if window > 3{
		soft_armor = 99;
	}
    if window == 6{
    	if window_timer == 18{
    		sound_play(sound_get("Hisako_Vacuum_Hit_3_01"),false,noone,1.0);
    	}
    	if window_timer == 24{
    		sound_play(sound_get("Hisako_Vacuum_Hit_3_02"),false,noone,1.0);
    	}
    	if window_timer == 30{
    		sound_play(sound_get("Hisako_Vacuum_Hit_3_04"),false,noone,1.0);
    	}
    	if window_timer == 32{
    		sound_play(sound_get("Hisako_Vacuum_Hit_4_04"),false,noone,1.0);
    	}
    }
    if window == 3 && window_timer == 16 && wrath_meter >= 20 && !has_hit && focused_fury == 0{
    	wrath_meter -=8
    	wrath = 0;
    }
    
break;

case AT_USPECIAL:
	if wrath_meter >= 20 && wrath_visual_delay <= 0{
		wrath = 1;
	}
	can_wall_jump = true
    if (window == 1 && window_timer == 1){
        sound_play(sound_get("step7"),false,noone,0.9,1.0);
        if wrath == 1{
        	sound_play(asset_get("sfx_ori_spirit_flame_2"),false,noone,1.0,1.0);
        	sound_play(asset_get("sfx_ori_dspecial_bash_miss"),false,noone,.4, 0.8);	
        }
        times_through = 0;
        if wrath_cancel == true{
            wrath_cancel = false;
        	if focused_fury == 1{
        		focused_fury = 0;
				focused_fury_timer = 0;
        	}else{
        		wrath_meter -=20
        	}
        }
    }
    if window == 1 && window_timer == 3{
    	if (free){
			spawn_base_dust(x+10*spr_dir,y,"djump",1)	
		}
		if (!free){
			spawn_base_dust(x+10*spr_dir,y,"jump",1)
		}
		if wrath == 1{
    	sound_play(asset_get("sfx_ori_bash_use"),false,noone,0.8,0.9);
    	}
    }
    if window == 2 && window_timer == 6 && wrath == 1{
    	sound_play(sound_get("Hisako_Kata2_HV_05"),false,noone,1.0,0.8);
    }
    if (window == 4){
        set_window_value(AT_USPECIAL, 4, AG_WINDOW_TYPE, (has_hit) ? 1 : 7);
        if window_timer == 15 && wrath_meter >= 20 && !has_hit && focused_fury == 0{
        	wrath_meter -=3
        	wrath = 0;
        }
    }
break;

case AT_DSPECIAL:
	if wrath_meter >= 20 && wrath_visual_delay <= 0{
		wrath = 1;
	}
    if window == 1 && window_timer == 1 && wrath_cancel == true{
        wrath_cancel = false;
        if focused_fury == 1{
        	focused_fury = 0;
			focused_fury_timer = 0;
        }else{
        	wrath_meter -=20
        }
    }
    if window == 1 &&window_timer == 2 && wrath == 1{
    		sound_play(asset_get("sfx_ori_dspecial_bash_miss"),false,noone,.4, 0.8);	
    	}
    if window == 1 && window_timer == 4 && wrath == 1 && dspecial_wrath_delay == 0{
    	sound_play(asset_get("sfx_ori_bash_use"),false,noone,0.9,0.9);
		dspecial_wrath_delay = 1;
		dspecial_wrath_delay_timer = 60;
    		temp_jab_offset = jab_offset;
		    while (!collision_point(x+spr_dir*temp_jab_offset,y+1,asset_get("par_block"),true,true) && 
		           !collision_point(x+spr_dir*temp_jab_offset,y+1,asset_get("jumpthrough_32_obj"),true,true)) && 
		           !free && temp_jab_offset > -10 {
		        temp_jab_offset -= 1;
		    }
		    //if !collision_point(x+spr_dir*temp_jab_offset,y+1,asset_get("par_block"),true,true) temp_jab_offset = 0;
		    var jab_art = instance_create(x+spr_dir*temp_jab_offset,y,"obj_article1");
		    jab_art.att = AT_DSPECIAL;
		    //jab_art._init = 1;
    }
    if window == 2 && window_timer == 3 && !hitpause{
    	var vfx = spawn_hit_fx( x, y, dspecial_vfx );
            vfx.depth -= 20;
    	spawn_hit_fx( x, y, dspecial_vfx_bg );
    	if wrath == 1 && centipede_prevention == 0{
    		window = 4;
            window_timer = 0;
            centipede_prevention = 1;
            
    	}
    	
    	
    }
    if (window >= 3 && !was_parried){
        can_jump = true;
    }
    can_fast_fall = false;
    can_move = false
break;

case AT_TAUNT:
	if window == 2 && window_timer > 59 {
			if taunt_down{
                window = 2;
                window_timer = 0;
			}
            else {
            	window = 3;
                window_timer = 0;
            }
        }
    if window == 3 && window_timer == 18{
        sound_play(asset_get("sfx_ori_dspecial_bash_miss"),false,noone,.5, 0.8);
        //wrath_meter +=40
    }
    if clamp(window, 1, 3) == window
    		{
        	if (window == 3 and window_timer > 24) break;
        	hud_offset = floor(lerp(hud_offset, 400, .1));
    		}
break;
}
#define trigger_wavebounce() 
{
	if ((left_down and state_timer <= 5 and spr_dir == 1) or (right_down and state_timer <= 5 and spr_dir == -1) and (b_reversed == false)) {
    	hsp *= -1;
    	spr_dir *= -1;
    	b_reversed = true;
	} else if (state_timer == 6) {
    	b_reversed = false;
	}
}
#define spawn_base_dust
/// @param {undefined} x
/// @param {undefined} y
/// @param {undefined} name
/// @param {undefined} dir = 0
///spawn_base_dust(x, y, name, ?dir)
//This function spawns base cast dusts. Names can be found below.
var dlen; //dust_length value
var dfx; //dust_fx value
var dfg; //fg_sprite value
var dfa = 0; //draw_angle value
var dust_color = 0;
var x = argument[0], y = argument[1], name = argument[2];
var dir; if (argument_count > 3) dir = argument[3]; else dir = 0;

switch (name) {
    default: 
    case "dash_start":dlen = 21; dfx = 3; dfg = 2626; break;
    case "dash": dlen = 16; dfx = 4; dfg = 2656; break;
    case "jump": dlen = 12; dfx = 11; dfg = 2646; break;
    case "doublejump": 
    case "djump": dlen = 21; dfx = 2; dfg = 2624; break;
    case "walk": dlen = 12; dfx = 5; dfg = 2628; break;
    case "land": dlen = 24; dfx = 0; dfg = 2620; break;
    case "walljump": dlen = 24; dfx = 0; dfg = 2629; dfa = dir != 0 ? -90*dir : -90*spr_dir; break;
    case "n_wavedash": dlen = 24; dfx = 0; dfg = 2620; dust_color = 1; break;
    case "wavedash": dlen = 16; dfx = 4; dfg = 2656; dust_color = 1; break;
}
var newdust = spawn_dust_fx(x,y,asset_get("empty_sprite"),dlen);
newdust.dust_fx = dfx; //set the fx id
if dfg != -1 newdust.fg_sprite = dfg; //set the foreground sprite
newdust.dust_color = dust_color; //set the dust color
if dir != 0 newdust.spr_dir = dir; //set the spr_dir
newdust.draw_angle = dfa;
return newdust;