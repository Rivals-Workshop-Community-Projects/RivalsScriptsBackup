//

current_sprite_set = dressed ? 1 : 0;

if (get_gameplay_time() = 20){
    snd_rng = random_func(0, 2, true);
    if(snd_rng = 0){
        set_victory_theme(sound_get("aerith_fanfare1"));
    }    if(snd_rng = 1){
        set_victory_theme(sound_get("aerith_fanfare2"));
    }
}

if(nspec_charge > 180){
    nspec_charge = 180;
}

if(nspec_charge == 180 && played_fanfare == false){
    if(state != PS_ATTACK_AIR and state != PS_ATTACK_GROUND){
    sound_play(sound_get("materia_select"), 0, noone, 1.2);
	white_flash_timer = 14;
	spawn_hit_fx(x+20*spr_dir, y-50, 301);     
    played_fanfare = true;
    }
}

if(nspec_charge == 180 && played_fanfare){
var cur_time = get_gameplay_time();
switch(curr_materia){
	case 0:
		if(color_phase){
    	color_timer+=4;
    	if(color_timer > 160){
        	color_phase = false;
    	}
	} else {
    	color_timer-=4;
    	if(color_timer < 4){
        color_phase = true;
    		}
		}
	rainbow_color = make_colour_hsv(105, color_timer, 255); //default rainbow	
	break;
	
	case 1:
		if(color_phase){
    	color_timer+=2;
    	if(color_timer > 120){
        	color_phase = false;
    	}
	} else {
    	color_timer-=2;
    	if(color_timer < 4){
        color_phase = true;
    		}
		}
	rainbow_color = make_colour_hsv(10, color_timer, 255-color_timer); //default rainbow
	//145
	break;
	
	case 2:
		if(color_phase){
    	color_timer+=3;
    	if(color_timer > 150){
        	color_phase = false;
    	}
	} else {
    	color_timer-=3;
    	if(color_timer < 4){
        color_phase = true;
    		}
		}
	rainbow_color = make_colour_hsv(225, color_timer, 255); //default rainbow
	break;
}
}

//vfx
with hit_fx_obj if player_id == other{
  if (hit_fx == other.holy_impact || hit_fx == other.holy_big_impact || hit_fx == other.gravity_impact || hit_fx == other.gravity_big_impact || hit_fx == other.death_impact || hit_fx == other.death_big_impact || hit_fx == other.break_vfx){
    depth = player_id.depth+1
  }
}

//death multihit
if(death_target != noone){
    switch(death_timer){
        case 32:
        case 24:
        case 16:
        if(death_owner == noone){
        create_hitbox(AT_NSPECIAL, 5, death_target.x, death_target.y-20);
        }else{
        var death1 = create_hitbox(AT_NSPECIAL, 5, death_target.x, death_target.y-20);    
        death1.player = death_owner;
        death1.hit_effect = 301;
        }
        break;
        
        case 4:
        if(death_owner == noone){
        create_hitbox(AT_NSPECIAL, 6, death_target.x, death_target.y-20);
        }else{
        var death2 = create_hitbox(AT_NSPECIAL, 6, death_target.x, death_target.y-20);    
        death2.player = death_owner;
        death2.hit_effect = 304;
        }
        death_target = noone;
        death_timer = 0;
        break;
    }    
}

if(death_target > 0){
     death_timer--;
}

if(move_cooldown[AT_DSPECIAL] != 2){
    move_cooldown[AT_DSPECIAL] = 2;
}

if(draw_materia > 0){
    draw_materia -= 0.01;
}

if(state != PS_ATTACK_AIR && state != PS_ATTACK_GROUND){
if(!materia_lockedin){
if(down_pressed || down_down){
    if(special_pressed || special_down){
        switch(materia_state){
            case 0:
            dspecial_activate();
            materia_state = 1;
            break;
            case 2:
            dspecial_activate();
            materia_state = 3;
            break;
            case 4:
            dspecial_activate();
            materia_state = 5;
            break;
        }
        }
    }
}
}

switch(materia_state){
    //switching states
            case 1://death start
            materia_state_timer++;
            if(materia_state_timer = 14){
            	color_phase = 0;
                    draw_materia = 1;
                materia_state = 2;
                materia_state_timer = 0;
                curr_materia = 1;
                //init_shader();
            }
            break;
            case 3: //grav start
            materia_state_timer++;
            if(materia_state_timer = 14){
            	color_phase = 0;
                    draw_materia = 1;
                materia_state = 4;
                materia_state_timer = 0;
                curr_materia = 2;
                //init_shader();
            }
            break;
            case 5: //holy start
            materia_state_timer++;
            if(materia_state_timer = 14){
            	color_phase = 0;
                    draw_materia = 1;
                materia_state = 0;
                materia_state_timer = 0;
                curr_materia = 0;
                //init_shader();
            }
            break;   
}

#define dspecial_activate
    materia_state_timer = 0;
    materia_lockedin = false;
    move_cooldown[AT_NSPECIAL] = 20;
    move_cooldown[AT_FSPECIAL] = 20;
    move_cooldown[AT_USPECIAL] = 20;
    sound_play(sound_get("cursor"));
    draw_materia = 2;