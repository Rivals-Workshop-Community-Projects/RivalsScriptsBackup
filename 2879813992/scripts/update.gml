if(state_cat == SC_HITSTUN || state == PS_RESPAWN){
    has_shield = true;
}

if(move_cooldown[AT_DSPECIAL] != 2){
    move_cooldown[AT_DSPECIAL] = 2;
}

if(ftilt_cooldown > 0){
    ftilt_cooldown--;
}

if(!materia_lockedin){
if(down_pressed || down_down){
    if(special_pressed || special_down){
        switch(materia_state){
            case 0:
            case 6:
            dspecial_activate();
            materia_state = 1;
            break;
            case 2:
            case 8:
            dspecial_activate();
            materia_state = 3;
            break;
            case 4:
            case 10:
            dspecial_activate();
            materia_state = 5;
            break;
        }
        }
    }
}else{
if(down_pressed || down_down){
    if(special_pressed || special_down){
            switch(materia_state){
            //turn off
            case 2:
            if(turn_off_timer > 30){
                reset_materia_stats(); 
                materia_fire_cooldown = 660;
                materia_state = 7;
                dspecial_deactivate();                
            }
            break;
            case 4:
            if(turn_off_timer > 30){
                reset_materia_stats(); 
                materia_ice_cooldown = 660;
                materia_state = 9;
                dspecial_deactivate();               
            }
            break;
            case 6:
            if(turn_off_timer > 15){
                reset_materia_stats(); 
                materia_elec_cooldown = 660;
                materia_state = 11;
                dspecial_deactivate();              
            }
            break;  
            }
            turn_off_timer++;
        }else{
            turn_off_timer = 0;
        }
    }
}

switch(materia_state){
    //switching states
            case 1://fire start
            materia_state_timer++;
            if(materia_state_timer = 14){
                if(materia_fire_cooldown == 0){
                    draw_materia = 1;
                materia_currhp = 30;
                materia_state = 2;
                materia_state_timer = 0;
                init_shader();
                }else{
                dspecial_deactivate();
                materia_state = 7;
                }
            }
            break;
            case 3: //ice start
            materia_state_timer++;
            if(materia_state_timer = 14){
                if(materia_ice_cooldown == 0){
                    draw_materia = 1;
                materia_currhp = 30;
                materia_state = 4;
                materia_state_timer = 0;
                init_shader();
                }else{
                dspecial_deactivate();
                materia_state = 9;
                }
            }
            break;
            case 5: //elec start
            materia_state_timer++;
            if(materia_state_timer = 14){
                if(materia_elec_cooldown == 0){
                    draw_materia = 1;
                materia_currhp = 30;
                materia_state = 6;
                materia_state_timer = 0;
                init_shader();
                }else{
                dspecial_deactivate();
                materia_state = 11;
                }
            }
            break;   

//monado states  
            case 2://fire
            materia_timer++;
            if(materia_timer > 16){
                if(!materia_lockedin){
                white_flash_timer = 10;
                curr_materia = 1;
                fire_materia_stats(); 
                sound_play(sound_get("materia_select"));
                materia_lockedin = true;
                }
    var materia_outline = (sin((get_gameplay_time() - 100) * 0.04) * -100) + 150
    outline_color = [ materia_outline * 1, 0, 0];
    init_shader();
            }if(materia_timer > 436 || materia_currhp <= 0){
                reset_materia_stats(); 
                materia_fire_cooldown = 660;
                materia_state = 7;
                dspecial_deactivate();
            }
    
            break;
            case 4://ice
            materia_timer++;
            if(materia_timer > 16){
                if(!materia_lockedin){
                white_flash_timer = 10;
                curr_materia = 2;
                ice_materia_stats(); 
                sound_play(sound_get("materia_select"));
                materia_lockedin = true;
                }
    var materia_outline = (sin((get_gameplay_time() - 100) * 0.04) * -100) + 150
    outline_color = [ 0, materia_outline * 0.5, materia_outline * 1.5];
    init_shader();
            }if(materia_timer > 436 || materia_currhp <= 0){
                reset_materia_stats(); 
                materia_ice_cooldown = 660;
                materia_state = 9;
                dspecial_deactivate();
            }
            break;
            case 6:// elec
            materia_timer++;
            if(materia_timer > 16){
                if(!materia_lockedin){
                white_flash_timer = 10;
                curr_materia = 3;
                elec_materia_stats(); 
                sound_play(sound_get("materia_select"));
                materia_lockedin = true;
                }
    var materia_outline = (sin((get_gameplay_time() - 100) * 0.04) * -100) + 150
    outline_color = [ materia_outline * 0.65, materia_outline * 0.5, 0];
    init_shader();
            }if(materia_timer > 436 || materia_currhp <= 0){
                reset_materia_stats(); 
                materia_elec_cooldown = 660;
                materia_state = 11;
                dspecial_deactivate();
            }
            break;

//materia turn off   
            case 7://fire off
            materia_state_timer++;
            if(materia_state_timer = 14){
                draw_materia = 1;
                materia_currhp = 0;
                materia_state = 8;
                curr_materia = 0;
                materia_state_timer = 0;
            }
            break;
            case 9://ice off
            materia_state_timer++;
            if(materia_state_timer = 14){
                draw_materia = 1;
                materia_currhp = 0;
                materia_state = 10;
                curr_materia = 0;
                materia_state_timer = 0;
            }
            break;
            case 11://elec off
            materia_state_timer++;
            if(materia_state_timer = 14){
                draw_materia = 1;
                materia_currhp = 0;
                materia_state = 0;
                curr_materia = 0;
                materia_state_timer = 0;
            }
            break;
}

if(materia_fire_cooldown > 0){
    materia_fire_cooldown--;
}if(materia_ice_cooldown > 0){
    materia_ice_cooldown--;
}if(materia_elec_cooldown > 0){
    materia_elec_cooldown--;
}
if(draw_materia > 0){
    draw_materia -= 0.01;
}

if (get_gameplay_time() = 20){
    snd_rng = random_func(0, 2, true);
    if(snd_rng = 0){
        set_victory_theme(sound_get("aerith_fanfare1"));
    }    if(snd_rng = 1){
        set_victory_theme(sound_get("aerith_fanfare2"));
    }
}

if(materia_currhp < 0){
    materia_currhp = 0;
}

if(shield_plat_aerith != 0){
        if(!shield_plat_aerith.on_shield){
    if(!free){
   has_shield = true; 
    }
        }
}else{
    if(!free){
    has_shield = true;     
    }
}

#define reset_materia_stats 
print("resetting stats");
walk_speed          = 3.25;
initial_dash_speed  = 6.75;		
dash_speed          = 5.75;
air_max_speed       = 4.6;
knockback_adj       = 1.1;
materia_damage_buff = 0;
materia_kb_buff = 0;
#define fire_materia_stats 
print("loaded fire stats");
knockback_adj       = 1.2;
materia_damage_buff = 4;
#define ice_materia_stats 
print("loaded ice stats");
walk_speed          = 3;
initial_dash_speed  = 6;		
dash_speed          = 4.75;
air_max_speed       = 3.6;
knockback_adj       = 0.95;
materia_damage_buff = -2;
#define elec_materia_stats 
print("loaded elec stats");
walk_speed          = 5;
initial_dash_speed  = 9.5;		
dash_speed          = 8;
air_max_speed       = 6;
knockback_adj       = 1.2;

#define dspecial_activate
    materia_state_timer = 0;
    materia_timer = 0;
    materia_lockedin = false;
    move_cooldown[AT_NSPECIAL] = 20;
    move_cooldown[AT_FSPECIAL] = 20;
    move_cooldown[AT_USPECIAL] = 20;
    sound_play(sound_get("cursor"));
    draw_materia = 2;
    materia_currhp = 0;
    materia_boost_num = 0;
    
#define dspecial_deactivate
sound_play(sound_get("59"));
materia_boost_num = 0;
draw_materia = 1;
materia_currhp = 0;
materia_lockedin = false;
curr_materia = 0;
materia_state_timer = 0;
outline_color = [0, 0, 0]; 
init_shader();