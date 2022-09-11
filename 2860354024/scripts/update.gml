//Strong Aerial cooldown

tpx_event = 4;
user_event(15);


air_strong = (!free || state == PS_WALL_JUMP) ? 0 : air_strong;
fspec_cd = (!free || state == PS_WALL_JUMP) ? 0 : fspec_cd;
uspec_cd = (!free || state == PS_WALL_JUMP) ? 0 : uspec_cd;
nspec_cd = (!free || state == PS_WALL_JUMP) ? 0 : nspec_cd;
dspec_cd = (!free) ? 0 : dspec_cd;


move_cooldown[AT_FSPECIAL] = fspec_cd; 
move_cooldown[AT_NSPECIAL] = nspec_cd; 
move_cooldown[AT_DSPECIAL] = dspec_cd; 
move_cooldown[AT_USPECIAL] = uspec_cd; 
move_cooldown[AT_FSTRONG_2] = air_strong;
move_cooldown[AT_USTRONG_2] = air_strong;
move_cooldown[AT_DSTRONG_2] = air_strong;

//1v1 Excite relief
var player_count = 0;
var enemy_singles = noone;
with (oPlayer){
    if (player != other.player){
        player_count++;
        enemy_singles = id;
    }

}

if (player_count == 1){
    if (enemy_singles.state == PS_RESPAWN){
    	if (enemy_singles.state_timer == 0)
    	excitement -= 20;
    	
        no_selfdmg = true;
    }else{
    	if (get_training_cpu_action() == CPU_FIGHT)
		no_selfdmg = false;
	}
    
    if (enemy_singles.state == PS_DEAD){
        if (nero_music && get_player_stocks( enemy_singles.player ) == 0 && nero_end_timer == 0)
        nero_end_timer = 60 * 3;
    }
    
}



//ammo gain
if (ammo < 3 && !smash_charging){
    reload_delay++;

    if (reload_delay == floor(reload_delay_default)){
        ammo++;
        reload_delay = 0;
    }
}

// print(string(exct_heal_cd) + "/" + string(exct_heal_cd_default));

if (jump_pressed && djumps == 1 && state_timer == 0)
    clear_button_buffer( PC_JUMP_PRESSED );

if (state_cat == SC_HITSTUN){
    move_cooldown[AT_DSTRONG_2] = 20;
}

//jump strong
if (state_cat == SC_AIR_NEUTRAL) || ((state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) && get_window_value(attack, window, AG_WINDOW_IASA) != 0){

    if (jump_pressed && djumps == 1 && move_cooldown[AT_DSTRONG_2] == 0 && ammo > 0){
        jump_strong_input = true;
        set_attack(AT_DAIR);
    }
}


//rainbow mako
if get_player_color(player) = 10 {
hue_offset+=hue_speed;
hue_offset=hue_offset mod 255; //keeps hue_offset within the 0-255 range


color_rgb=make_color_rgb(255 ,217 ,0 ); //input rgb values here, uses rgb to create a gamemaker colour variable
hue=(color_get_hue(color_rgb)+hue_offset) mod 255; //finds the hue and shifts it
color_hsv=make_color_hsv(hue,color_get_saturation(color_rgb),color_get_value(color_rgb)); //creates a new gamemaker colour variable using the shifted hue
set_color_profile_slot( 10, 1, color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv)); //uses that variable to set the slot's new colours
set_article_color_slot( 1, color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv),1);

init_shader();
}

//nero music

if (nero_end_timer == 60 * 3){
sound_stop(sound_get("nero_hijack_music"));
sound_play(sound_get("nero_end_music"));
nero_music_end = true;
}

if (nero_end_timer > 0){
nero_end_timer--;
}

if (nero_end_timer == 0 && nero_music_end){
nero_music = false;
nero_music_end = false;
}

//excitement

// if (excitement == 100){
    
//     if (state != PS_ATTACK_AIR && state != PS_ATTACK_GROUND && !excited)
//     set_attack(AT_EXTRA_1);

// }



    


if (excitement >= 50 && !excited){

    walk_speed = 4;
    dash_speed = 7;
    leave_ground_max = 8;
    max_jump_hsp = 8;
    air_max_speed = 7;
    air_accel = .36;
    wave_land_adj = 1.4;
    knockback_adj = 1.2;

    idle_anim_speed = .25;
    crouch_anim_speed = .25;
    walk_anim_speed = .3;
    dash_anim_speed = .3;

    excited = true;

}

if (excitement < 50 && excited){
    walk_speed          = def_walk_speed;        
    dash_speed          = def_dash_speed;        
    leave_ground_max    = def_leave_ground_max; 
    max_jump_hsp        = def_max_jump_hsp;  
    air_max_speed       = def_air_max_speed;     
    air_accel           = def_air_accel;    
    wave_land_adj       = def_wave_land_adj;     
    knockback_adj       = def_knockback_adj;     
    idle_anim_speed     = def_idle_anim_speed; 
    crouch_anim_speed   = def_crouch_anim_speed;
    walk_anim_speed     = def_walk_anim_speed; 
    dash_anim_speed     = def_dash_anim_speed; 

    reload_delay_default = 60 * 9;
    excited_timer = 0;

    excited = false;
    

    
}


if (excited){

    excited_timer++;
    air_strong = 0;
    reload_delay_default = 60 * 1.5;

    if (!hitpause) && !(state == PS_ATTACK_AIR && state == PS_ATTACK_GROUND && attack == AT_FSPECIAL && has_hit_player){

        if (get_gameplay_time() % 40 == 0 && !no_selfdmg)
        take_damage( player, -1, 1 );
    }

    if (excited_timer < 60 * 1)
    reload_delay = 0;

}

if (!excited){
    exct_heal_cd = (exct_heal_cd > 0) ? exct_heal_cd-1 : 0;
    
    if(exct_heal_cd == 0)
    exct_has_healed = false;
}

if (!hitpause)
excitement -= 0.005;

//cheats
// 

if (max_ammo)
    ammo = 3;


excitement = clamp(excitement,max_exct , 100);


//CPU Parry Extend

if (cpu_parry){

    with(oPlayer){
        if (other.player != player){
            if (temp_level > 0){
                if (state == PS_PARRY){
                    if (state_timer >= 1 && !invincible){
                        old_vsp = vsp;
                        old_hsp = hsp;

                        hitpause = true;
                        hitstop = 2;

                        if (hit_player_obj == other){
                            state_timer++;
                            hit_player_obj = noone;
                        }
                    }
                }
            }
        }
    }

}

//Reset Damage
if (dmg_reset_frame != 0){

    with(oPlayer){
        if (other.player != player){
            if (temp_level > 0){
				tab_max_dmg_frames = other.dmg_reset_frame;

				if (state_cat != SC_HITSTUN)
				hitstun = 0;

                if (hitstun == 0 && tab_actionable_timer != -1){
                	tab_actionable_timer++;
                	
                	if (tab_actionable_timer >= other.dmg_reset_frame){
                		tab_actionable_timer = -1;
                		set_player_damage( player, tab_starting_dmg );
                		//Put status effects/variables that you want reset here
                		burned = false;
                	}

                }else if (hitstun > 0){
                	tab_actionable_timer = 0;
                }
                
				if (tab_actionable_timer == 0 && state_cat != SC_HITSTUN){
                	tab_starting_dmg = get_player_damage(player);

                }
                
            }
        }
    }

}



//not attacking
if !((state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND)) && state_timer == 1 && attack == AT_TAUNT_2{
	sound_stop(asset_get("sfx_absa_8b"));
	sound_stop(sound_get("morbin"));
	sound_stop(sound_get("mako_hijack_music"));
}
