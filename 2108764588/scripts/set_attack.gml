//set_attack

switch attack {
    case AT_TAUNT:
    taunt_times=0;
    taunt_infinite=false;
    clear_button_buffer( PC_TAUNT_PRESSED );
    break;
    
    case AT_BAIR:
    reset_attack_value(AT_BAIR, AG_CATEGORY);
    reset_attack_value(AT_BAIR, AG_LANDING_LAG);
    break;
    
    case AT_DAIR:
    if(abyssEnabled&&runeD){
        set_window_value(attack, 1, AG_WINDOW_LENGTH, 7);
        set_window_value(attack, 1, AG_WINDOW_SFX_FRAME, 4);
    } else {
        reset_window_value(attack, 1, AG_WINDOW_LENGTH);
        reset_window_value(attack, 1, AG_WINDOW_SFX_FRAME);
    }
    break;
    
    case AT_FSTRONG:
    if(abyssEnabled&&runeE){
        set_window_value(AT_FSTRONG, 2, AG_WINDOW_HSPEED, 11);
    } else {
        reset_window_value(AT_FSTRONG, 2, AG_WINDOW_HSPEED);
    }
    break;
    
    case AT_USPECIAL:
    reset_attack_value(attack, AG_NUM_WINDOWS);
    reset_attack_value(attack, AG_OFF_LEDGE);
    break;
    
    case AT_NSPECIAL:
    reset_attack_value(attack, AG_NUM_WINDOWS);
    reset_attack_value(AT_NSPECIAL, AG_CATEGORY);
    break;
    
    case AT_FSPECIAL:
    set_attack_value(AT_FSPECIAL, AG_NUM_WINDOWS, 3);
    clear_button_buffer( PC_SPECIAL_PRESSED );
    fspec_actionable_timer=0;
    fspec_full_charge_delay_timer=0;
    fspec_shield_buffer=false;
    fspec_special_buffer=false;
    fspec_effect_spawned=false;
    fspec_skip=fspecial_charge>=fspecial_max_charge;
    break;
    
    case AT_DSPECIAL:
    if(move_cooldown[AT_DSPECIAL]<=0){
        dspecial_initial_hsp=clamp(abs(previous_hsp1),5,15);
        reset_attack_value(AT_DSPECIAL, AG_CATEGORY);
        reset_attack_value(AT_DSPECIAL, AG_NUM_WINDOWS);
        reset_attack_value(AT_DSPECIAL, AG_LANDING_LAG);
        set_window_value(AT_DSPECIAL, 3, AG_WINDOW_HSPEED, 12);
        set_window_value(AT_DSPECIAL, 3, AG_WINDOW_VSPEED, 12);
        set_hitbox_value(AT_DSPECIAL, 1, HG_KNOCKBACK_SCALING, 0.5);
        set_hitbox_value(AT_DSPECIAL, 2, HG_KNOCKBACK_SCALING, 0.7);
        set_window_value(AT_DSPECIAL, 3, AG_WINDOW_VSPEED_TYPE, 1);
        set_window_value(AT_DSPECIAL, 3, AG_WINDOW_HSPEED_TYPE, 1);
        hsp=0;//clamp(hsp,-2,2);
        target_hsp=0;
    }
    break;
    
    case AT_DATTACK:
    set_window_value(AT_DATTACK, 2, AG_WINDOW_HSPEED, dash_speed);
    if(up_down){
        attack=AT_UTILT;
    } else if(down_down){
        attack=AT_DTILT;
        set_window_value(AT_DTILT, 2, AG_WINDOW_HSPEED, max(abs(hsp),dash_speed));
        set_window_value(AT_DTILT, 5, AG_WINDOW_HSPEED, max(abs(hsp),dash_speed));
        set_window_value(AT_DTILT, 5, AG_WINDOW_VSPEED, -10);
    }
    break;
    
    case AT_DTILT:
    set_window_value(AT_DTILT, 2, AG_WINDOW_HSPEED, max(abs(hsp),dash_speed));
    set_window_value(AT_DTILT, 5, AG_WINDOW_HSPEED, max(abs(hsp),dash_speed));
    set_window_value(AT_DTILT, 5, AG_WINDOW_VSPEED, -10);
    break;
}

if(attack==AT_USTRONG||attack==AT_FSTRONG||attack==AT_DSTRONG){
    if(hitpause){
        strong_boost=abs(hitpause_hsp)>=8;
    } else {
        strong_boost=abs(hsp)>=8;
    }
} else {
    strong_boost=false;
}

if(attack==AT_USPECIAL||attack==AT_NSPECIAL||attack==AT_DSPECIAL||attack==AT_EXTRA_1){
    if(hitpause){
        special_boost=abs(hitpause_hsp)>=8;
    } else {
        special_boost=abs(hsp)>=8;
    }
} else {
    special_boost=false;
}

var temp_boost = abs(hsp)>=8;

if(hitpause){
    temp_boost=abs(hitpause_hsp)>=8;
} else {
    temp_boost=abs(hsp)>=8;
}

if(strong_boost){
    set_window_value(attack, 1, AG_WINDOW_HAS_SFX, 1);
    set_window_value(attack, 1, AG_WINDOW_SFX, asset_get("sfx_ori_ustrong_charge"));
} else {
    reset_window_value(attack, 1, AG_WINDOW_HAS_SFX);
}

//speed based damage boost
var sbdb_active=true;
if(attack==AT_FSPECIAL||attack==AT_DSPECIAL||attack==AT_NSPECIAL){
    sbdb_active=false;
}

var speed_ana = hsp;
if(hitpause){
    speed_ana = hitpause_hsp;
}
    

for(var i=1;i<=get_num_hitboxes(attack);i++){
    reset_hitbox_value(attack,i,HG_VISUAL_EFFECT);
    if(attack==AT_BAIR&&i>3){
        sbdb_active=false;
    }
    if(get_hitbox_value(attack,i,HG_VISUAL_EFFECT)==1&&sbdb_active){
        reset_hitbox_value(attack,i,HG_DAMAGE);
        set_hitbox_value(attack,i,HG_DAMAGE,get_hitbox_value(attack,i,HG_DAMAGE)*(1+abs(speed_ana)/(15-3*(abyssEnabled&&runeK))/2));
        reset_hitbox_value(attack,i,HG_BASE_KNOCKBACK);
        reset_hitbox_value(attack,i,HG_KNOCKBACK_SCALING);
        reset_hitbox_value(attack,i,HG_BASE_HITPAUSE);
        if(strong_boost||(abyssEnabled&&runeN&&temp_boost)){
            set_hitbox_value(attack,i,HG_BASE_KNOCKBACK,get_hitbox_value(attack,i,HG_BASE_KNOCKBACK)+1+1*(abyssEnabled&&runeK));
            set_hitbox_value(attack,i,HG_KNOCKBACK_SCALING,get_hitbox_value(attack,i,HG_KNOCKBACK_SCALING)+0.2+0.2*(abyssEnabled&&runeK));
            if(strong_boost){
                if(attack!=AT_DSTRONG||i!=1){
                    set_hitbox_value(attack,i,HG_BASE_HITPAUSE,20);
                }
            }
        }
        switch (attack){
            case AT_USTRONG:
                if(strong_boost){
                    set_hitbox_value(attack,i,HG_VISUAL_EFFECT,strong_boost_hit);
                } else {
                    //set_hitbox_value(attack,i,HG_VISUAL_EFFECT,199);
                }
                if(strong_boost_indication_type&&strong_boost){
                    //spawn_hit_fx(x-6*spr_dir,y-4,strong_boost_indicator);
                    strong_boost_indication_x=x-6*spr_dir;
                    strong_boost_indication_y=y-30;
                    strong_boost_indication_timer=18;
                }
            break;
            case AT_FSTRONG:
                if(strong_boost){
                    set_hitbox_value(attack,i,HG_VISUAL_EFFECT,strong_boost_hit);
                } else {
                    //set_hitbox_value(attack,i,HG_VISUAL_EFFECT,199);
                }
                if(strong_boost_indication_type&&strong_boost){
                    //spawn_hit_fx(x-8*spr_dir,y-4,strong_boost_indicator);
                    strong_boost_indication_x=x-8*spr_dir;
                    strong_boost_indication_y=y-30;
                    strong_boost_indication_timer=18;
                }
            break;
            case AT_DSTRONG:
                if(strong_boost){
                    if(i!=1){
                        set_hitbox_value(attack,i,HG_VISUAL_EFFECT,strong_boost_hit);
                    }
                } else {
                    //set_hitbox_value(attack,i,HG_VISUAL_EFFECT,199);
                }
                if(strong_boost_indication_type&&strong_boost){
                    //spawn_hit_fx(x-6*spr_dir,y-4,strong_boost_indicator);
                    strong_boost_indication_x=x-6*spr_dir;
                    strong_boost_indication_y=y-30;
                    strong_boost_indication_timer=18;
                }
            break;
            case AT_FSPECIAL_AIR:
                set_hitbox_value(attack,i,HG_VISUAL_EFFECT,26);
            break;
        }
    }
}

if(attack==AT_JAB){
    set_hitbox_value(AT_JAB, 1, HG_ANGLE_FLIPPER, (sign(hsp*spr_dir)==-1)*5);
    set_hitbox_value(AT_JAB, 1, HG_BASE_KNOCKBACK, 3.5+(10*abs(hsp)/15));
}