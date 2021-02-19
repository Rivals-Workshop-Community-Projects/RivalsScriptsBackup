// attack_update

//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL || attack == AT_FSPECIAL_AIR){
    trigger_b_reverse();
}

switch attack {
    case AT_DATTACK:
    if(has_hit&&!was_parried){
        can_jump=true;
    }
    if(was_parried){
        hsp=0;
    } else if(window==2&&!hitpause){
        hsp=dash_speed*spr_dir;
    }
    break;
    
    case AT_FSPECIAL:
    can_wall_jump=true;
    if(window==2){
        if(fspec_actionable_timer==0){
            sound_play(asset_get("sfx_shop_open"));
        }
        if(special_pressed){
            fspec_special_buffer=true;
        }
        if(shield_pressed){
            fspec_shield_buffer=true;
        }
        grav=0.52;
        fspec_actionable_timer++;
        can_move=false;
        var fspec_first_charge_barrier = fspecial_max_charge*1/4;
        var fspec_second_charge_barrier = fspecial_max_charge*2/4;
        var fspec_third_charge_barrier = fspecial_max_charge*3/4;
        var fspec_final_charge_barrier = fspecial_max_charge;
        var next_charge = fspecial_charge+5;//clamp(abs(hsp),0,10);
        if(fspecial_charge<fspec_first_charge_barrier&&next_charge>=fspec_first_charge_barrier){
            sound_play(asset_get("mfx_star"));
        } else if(fspecial_charge<fspec_second_charge_barrier&&next_charge>=fspec_second_charge_barrier){
            sound_play(asset_get("mfx_star"));
        } else if(fspecial_charge<fspec_third_charge_barrier&&next_charge>=fspec_third_charge_barrier){
            sound_play(asset_get("mfx_star"));
        } else if(fspecial_charge<fspec_final_charge_barrier&&next_charge>=fspec_final_charge_barrier){
            sound_play(asset_get("sfx_shop_buy"));
        }
        fspecial_charge=next_charge;
        hsp+=0.2*spr_dir*dash_speed/7.5;
        if(fspecial_charge>=fspecial_max_charge){
            fspec_full_charge_delay_timer++;
        }
        if(fspec_actionable_timer>=fspec_actionable_time){
            can_jump=true;
            if(fspec_shield_buffer||(fspecial_charge>=fspecial_max_charge&&fspec_full_charge_delay_timer>=fspec_full_charge_delay)){
                window=3;
                window_timer=0;
            }
            if(fspec_special_buffer){
                if(fspecial_charge<fspecial_max_charge){
                    set_attack_value(AT_FSPECIAL, AG_NUM_WINDOWS, 6);
                    window=4;
                } else {
                    set_attack_value(AT_FSPECIAL, AG_NUM_WINDOWS, 9);
                    window=7;
                }
                window_timer=0;
                fspecial_charge=0;
                hsp+=4*spr_dir;
            }
        }
        if(fspec_skip){
            if(fspecial_charge<fspecial_max_charge){
                set_attack_value(AT_FSPECIAL, AG_NUM_WINDOWS, 6);
                window=4;
            } else {
                set_attack_value(AT_FSPECIAL, AG_NUM_WINDOWS, 9);
                window=7;
            }
            window_timer=0;
            fspecial_charge=0;
            hsp+=4*spr_dir;
        }
    }
    if(window==3){
        can_jump=true;
        //fspecial_charge=
    }
    if((window==8&&window_timer==get_window_value(attack,window,AG_WINDOW_LENGTH)||has_hit&&window==8)&&!fspec_effect_spawned){
        if(!has_hit){
            spawn_hit_fx(x,y,fspecial_explosion_late);
        }
        fspec_effect_spawned=true;
    }
    break;
    
    case AT_NSPECIAL:
    move_cooldown[AT_NSPECIAL]=90;
    if(window==1){
        initial_nspecial_hsp=clamp(abs(hsp),5,500);
        set_window_value(attack, 2, AG_WINDOW_LENGTH, floor(25/initial_nspecial_hsp));
        set_window_value(attack, 3, AG_WINDOW_LENGTH, floor(50/initial_nspecial_hsp));
        if(window_timer==get_window_value(attack, window, AG_WINDOW_LENGTH)){
            spr_dir*=-1;
        }
    } else if(window==2){
        if(window_timer==1){
            set_hitbox_value(AT_NSPECIAL, 1, HG_DAMAGE, 4+(4*initial_nspecial_hsp/15));
            set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_KNOCKBACK, 3+(13*initial_nspecial_hsp/15));
            set_hitbox_value(AT_NSPECIAL, 1, HG_KNOCKBACK_SCALING, 0.2);
            
            set_hitbox_value(AT_NSPECIAL, 2, HG_DAMAGE, 7+(7*initial_nspecial_hsp/15));
            set_hitbox_value(AT_NSPECIAL, 2, HG_BASE_KNOCKBACK, 6+(6*initial_nspecial_hsp/15));
            set_hitbox_value(AT_NSPECIAL, 2, HG_KNOCKBACK_SCALING, 0.4+(0.6*initial_nspecial_hsp/15));
        }
    } else if(window==3&&window_timer==get_window_value(attack, window, AG_WINDOW_LENGTH)){
        //hsp=initial_nspecial_hsp*spr_dir;
        set_window_value(AT_NSPECIAL, 4, AG_WINDOW_HSPEED, initial_nspecial_hsp);
        if(special_down){
            window=4;
            window_timer=300;
            set_attack_value(attack, AG_NUM_WINDOWS, 7);
            set_window_value(AT_NSPECIAL, 5, AG_WINDOW_HSPEED, initial_nspecial_hsp);
        }
        var newfx=spawn_hit_fx(x+16*spr_dir,y,ice_pole_break);
        newfx.depth=depth-1;
    } else if(window==5){
        if(free){
            set_attack_value(AT_NSPECIAL, AG_CATEGORY, 1);
        }
    }
    break;
    
    case AT_USPECIAL:
    can_fast_fall=false;
    if(window==1&&window_timer==get_window_value(attack,window,AG_WINDOW_LENGTH)){
        hsp=clamp(abs(hsp),5,15)*spr_dir;
        set_window_value(AT_USPECIAL, 2, AG_WINDOW_HSPEED, abs(hsp));
        set_window_value(AT_USPECIAL, 2, AG_WINDOW_VSPEED, -15-abs(hsp)*runeC);
        set_hitbox_value(AT_USPECIAL, 1, HG_ANGLE, point_direction(0,0,abs(hsp),-15));
        set_hitbox_value(AT_USPECIAL, 2, HG_ANGLE, point_direction(0,0,abs(hsp),-15));
        set_hitbox_value(AT_USPECIAL, 5, HG_ANGLE, point_direction(0,0,abs(hsp)+5,-15));
        uspecial_times=0;
        move_cooldown[AT_USPECIAL]=9999;
    }
    if(window==2){
        //can_move=false;
        can_fast_fall=true;
        if(vsp>2){
            set_window_value(AT_USPECIAL, 2, AG_WINDOW_TYPE, 7);
            set_attack_value(AT_USPECIAL, AG_NUM_WINDOWS, 2);
        } else {
            reset_window_value(AT_USPECIAL, 2, AG_WINDOW_TYPE);
        }
    }
    if(window==3){
        vsp=clamp(vsp,-7,100);
    }
    if((window==2&&window_timer>1)||window==3){
        set_attack_value(AT_USPECIAL, AG_CATEGORY, 1);
    } else {
        reset_attack_value(AT_USPECIAL, AG_CATEGORY);
    }
    if(window==3&&window_timer>=6){
        //can_attack=true; //this is too much
        if(special_pressed||attack_pressed){
            window=4;
            window_timer=0;
            set_attack_value(attack, AG_NUM_WINDOWS, 6);
            set_attack_value(attack, AG_OFF_LEDGE, 0);
            //hsp+=4*spr_dir;
        }
    }
    if(window==4&&window_timer==get_window_value(attack,window,AG_WINDOW_LENGTH)){
        hsp+=4*spr_dir;
        set_hitbox_value(AT_USPECIAL, 3, HG_ANGLE, point_direction(0,0,abs(hsp),20));
        move_cooldown[AT_USPECIAL]=0;
    }
    if(window==5&&!hitpause){
        uspecial_times++;
        if(uspecial_times>25){
            can_attack=true;
            can_special=true;
            can_jump=true;
            can_shield=true;
        }
    }
    if(window==5&&!free){
        window=6;
        window_timer=0;
        sound_play(asset_get("sfx_ice_nspecial_hit_ground"));
        hsp/=2;
    }
    if(window>2){
        can_wall_jump=true;
    }
    break;
    
    case AT_DSPECIAL:
    if(!free&&(window>1||window_timer>1)){
        var speed_boost=false;
        with (asset_get("obj_article1")){
            if(player_id.url==other.url&&abs(y-other.y)<=2){
            	if(other.x>=x+left_start-16&&other.x<x+left_start+length_total*16+16){
    	        	var index=floor((other.x-(x+left_start))/16);
    	        	for(var i=0;i<3;i++){
    	        		var ac_in=clamp(index-1+i,0,length_total-1);
    	        		if((livetimer-ice[ac_in,0]>state_1_start)&&!(livetimer-ice[ac_in,0]>die_start||ice[ac_in,0]==-1)){
    	        			ice[ac_in,0]=livetimer-state_1_start;
    	        			speed_boost=true;
    	        		}
    	        	}
            	}
            }
        }
        if(speed_boost){
            if (abyssEnabled&&runeL){
                dash_speed=2*(reg_dash_speed);
            } else {
                dash_speed=ice_dash_speed;
            }
        } else {
            dash_speed=reg_dash_speed;
        }
        //hsp/=5;
        hsp=clamp(hsp,-dash_speed,dash_speed);
        set_attack_value(AT_DSPECIAL, AG_CATEGORY, 1);
        set_window_value(AT_DSPECIAL, 3, AG_WINDOW_VSPEED_TYPE, 2);
        set_window_value(AT_DSPECIAL, 3, AG_WINDOW_HSPEED_TYPE, 2);
        set_window_value(AT_DSPECIAL, 3, AG_WINDOW_VSPEED, 0);
        set_window_value(AT_DSPECIAL, 3, AG_WINDOW_HSPEED, 0);
    } else {
        if(down_down){
            fall_through=true;
        }
        can_move=false;
        can_wall_jump=true;
        if(window==1){
            if(left_down){
                target_hsp-=0.05;
            }
            if(right_down){
                target_hsp+=0.05;
            }
            if(window_timer<30){
                target_hsp+=cos(window_timer*3.14/40)/2*spr_dir;
                hsp=target_hsp;
                if(window_timer<5){
                    vsp-=4;
                } else if(window_timer==5){
                    vsp=-11;
                    move_cooldown[AT_DSPECIAL]=90;
                }
            }
            grav=.63;
            if(window_timer>16&&(special_pressed||attack_pressed)){
                set_attack_value(AT_DSPECIAL, AG_NUM_WINDOWS, 3);
                if(left_down){
                    spr_dir=-1;
                }
                if(right_down){
                    spr_dir=1;
                }
                window=2;
                window_timer=0;
            }
        }
        if(window==3){
            fall_through=false;
            if(has_hit){
                set_attack_value(AT_DSPECIAL, AG_LANDING_LAG, 4);
            }
            hsp*=0.99;
            vsp*=0.99;
        }
        if(runeI){
            can_jump=true;
        }
    }
    if(has_hit){
        move_cooldown[AT_DSPECIAL]=0;
    }
    break;
    
    case AT_JAB:
    if(window==4&&window_timer==1){
        //hsp+=4*spr_dir;
        set_hitbox_value(AT_JAB, 2, HG_ANGLE_FLIPPER, (sign(hsp*spr_dir)==-1)*5);
        set_hitbox_value(AT_JAB, 2, HG_BASE_KNOCKBACK, 4+(10*hsp*spr_dir/15));
    }
    if(window==7&&window_timer==1){
        set_hitbox_value(AT_JAB, 3, HG_ANGLE_FLIPPER, (sign(hsp*spr_dir)==-1)*5);
    }
    break;
    
    case AT_BAIR:
    if(window==1&&window_timer==get_window_value(attack,window,AG_WINDOW_LENGTH)&&!hitpause){
        spawn_hit_fx(x-52*spr_dir,y-16,bair_iceplosion);
        create_hitbox( AT_BAIR, 7, x-52*spr_dir, y-16 );
    }
    if(window==2&&window_timer==1&&!hitpause){
        if(down_down){
            vsp=0;
            hsp=10*spr_dir;
        } else if(up_down){
            vsp=-6.5;
            hsp=8.5*spr_dir;
        } else {
            vsp=-3.5;
            hsp=9.5*spr_dir;
        }
    }
    if(!free){
        //hsp/=5;
        set_attack_value(AT_BAIR, AG_CATEGORY, 1);
    }
    if(has_hit){
        set_attack_value(AT_DSPECIAL, AG_LANDING_LAG, 4);
    }
    break;
    
    case AT_DTILT:
    can_fast_fall=false;
    hsp=clamp(hsp,-12,12);
    if window == 1 { buffered_dtilt2 = false; clear_button_buffer(PC_ATTACK_PRESSED);  clear_button_buffer(PC_DOWN_STICK_PRESSED);}
    if (attack_pressed||down_stick_pressed) && (window == 2 || window == 3) buffered_dtilt2 = true;
    if(((attack_pressed||down_stick_pressed||buffered_dtilt2)&&((window==3&&window_timer<13))&&!was_parried)||(free&&window<4)){
        window=4;
        window_timer=0;
        destroy_hitboxes();
    }
    if(window>4&&vsp>0){
        set_attack_value(AT_DTILT, AG_CATEGORY, 1);
    } else {
        set_attack_value(AT_DTILT, AG_CATEGORY, 2);
    }
    if(was_parried){
        hsp=0;
    }
    break;
    
    case AT_TAUNT:
    if(window==3&&window_timer==get_window_value(attack, window, AG_WINDOW_LENGTH)){
        taunt_times++;
        if(taunt_times<2||taunt_down||taunt_infinite){
            window=1;
            window_timer=get_window_value(attack, 1, AG_WINDOW_LENGTH);
        }//*/
    }
    if(special_pressed&&practice&&secret&&!taunt_infinite){
        taunt_infinite=true;
        clear_button_buffer(PC_SPECIAL_PRESSED);
    }
    set_window_value(AT_TAUNT, 1, AG_WINDOW_HAS_SFX, !taunt_infinite);
    set_window_value(AT_TAUNT, 2, AG_WINDOW_HAS_SFX, !taunt_infinite);
    set_window_value(AT_TAUNT, 3, AG_WINDOW_HAS_SFX, !taunt_infinite);
    break;
}

//utilt command grab assist
if (attack==AT_UTILT && window == 3 && has_hit_player && meleetarget != noone && !hitpause){
    if meleetarget.state_cat == SC_HITSTUN {
        meleetarget.hsp=-meleetarget.x + ease_linear(meleetarget.x, x+12*sign(hsp), window_timer, get_window_value(attack, window, AG_WINDOW_LENGTH));
        meleetarget.vsp=-meleetarget.y + ease_linear(meleetarget.y, y-44, window_timer, get_window_value(attack, window, AG_WINDOW_LENGTH));                                     
    }
}

//ftilt command grab assist
if (attack==AT_FTILT && window == 3 && has_hit_player && meleetarget != noone && !hitpause){
    if meleetarget.state_cat == SC_HITSTUN {
        meleetarget.hsp=-meleetarget.x + ease_linear(meleetarget.x, x+60*spr_dir, window_timer, 5);
        meleetarget.vsp=-meleetarget.y + ease_linear(meleetarget.y, y-14, window_timer, 5);
    }
    /*meleetarget.state=PS_HITSTUN;
    meleetarget.hitstun=12;
    meleetarget.hitstun_full=12;//*/
}

if (attack==AT_DSTRONG && window == 4 && has_hit_player && meleetarget != noone && !hitpause){
    if meleetarget.state_cat == SC_HITSTUN {
        meleetarget.x=ease_linear(meleetarget.x, x+30*spr_dir, window_timer, 5);
        //meleetarget.hsp=clamp(-meleetarget.x + ease_linear(meleetarget.x, x+60*spr_dir, window_timer, 4), -8-40*(window_timer<=2), 8+40*(window_timer<=2));
        meleetarget.vsp=-meleetarget.y + ease_linear(meleetarget.y, y, window_timer, 4);
    }
}

//ledge-cancel rune
if(runeM){
    if(has_hit){
        set_attack_value(attack, AG_OFF_LEDGE, 1);
    } else {
        reset_attack_value(attack, AG_OFF_LEDGE);
    }
}//*/