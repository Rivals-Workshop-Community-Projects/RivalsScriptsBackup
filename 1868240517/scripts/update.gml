//update
if state == PS_SPAWN {
	in_intro = 1;
    if attack_down && shield_down code_1 = 1;
    if attack_down && up_down code_2 = 4;
    if attack_down && left_down code_2 = 2;
    if attack_down && down_down code_2 = 0;
    if attack_down && jump_down code_3 = 1;
    if shield_down && !attack_down {
    	if !down_down && !up_down && !right_down && !left_down {
	    	code_4 = 1;
	    	//Slot 11 - Christmas
			set_color_profile_slot(1, 0, 159, 85, 41);
			set_color_profile_slot(1, 1, 240, 240, 240);
			set_color_profile_slot(1, 2, 240, 240, 240);
			set_article_color_slot(1, 2, 240, 240, 240);
			taunt_sfx = sound_get("hoho");
			set_window_value(AT_TAUNT, 1, AG_WINDOW_SFX, taunt_sfx);
    	}
    }
} else in_intro = false;
//player_color = get_player_color(player);

if move_cooldown[AT_NSPECIAL] == 20 {
	direc = darctan(-vsp/hsp)+180*(sign(hsp) == -1);
}

if !code_1 && get_gameplay_time() > 5 && get_gameplay_time() < shadow_end {
	shadow_y -= shadow_speed;
}
if !code_1 && in_intro {
	if get_gameplay_time() == 2 {
		draw_indicator = false;
		sound_play(sound_get("rocket_long"));
        anim_x = x;
        anim_y = y;
        intro_index = 0;
        index_offset = 0;
        index_mod = 6;
        s_adj = SD_Y_POS;
        s_dist = s_adj - get_stage_data(SD_TOP_BLASTZONE);
        if s_dist > -200 anim_y -= s_dist-150;
        else anim_y -= 450;
	}
	
	if abs(y-anim_y) > 10 {
		draw_indicator = false;
		anim_y += 15;
		index_offset = 0;
		index_mod = 6;
	} else if get_gameplay_time() > 5 && intro_index < 11 && index_mod < 10 {
		draw_indicator = false;
		anim_y = y;
		anim_x = x;
		index_offset = 7;
		index_mod = 5;
		if intro_index < index_offset {
			sound_play(asset_get("sfx_blow_heavy2"));
        	spawn_hit_fx(x,y,304);
		}
		
	} else {
		index_offset = 11;
        index_mod = 10;
        draw_indicator = true;
        state = PS_SPAWN;
        in_intro = false;
	}
	
	if intro_index < index_offset intro_index = index_offset;
    if index_mod != 0 intro_index = ((intro_index-index_offset+intro_speed) % index_mod)+index_offset;
}

/*
if !code_1 && index_mod < 11 { //&& player_color != 3
	
    if get_gameplay_time() == 2 {
    	draw_indicator = false;
    	sound_play(sound_get("rocket_long"));
        anim_x = x;
        anim_y = y;
        intro_index = 0;
        index_offset = 0;
        index_mod = 6;
        //sound_play(sound_get("hehe2"));
        if get_stage_data(SD_TOP_BLASTZONE)-s_adj > get_stage_data(SD_SIDE_BLASTZONE)-s_adj {
        s_dist = get_stage_data(SD_SIDE_BLASTZONE)-s_adj;
        }  else s_dist = get_stage_data(SD_TOP_BLASTZONE)-s_adj;
        if s_dist > 200 {
	        //anim_x -= s_dist*spr_dir;
	        anim_y -= s_dist;
        } else {
	        //anim_x -= 300*spr_dir;
	        anim_y -= 300;

        }
    }
    if abs(y-anim_y) > 10 {
        anim_y += 10;
        //anim_x += 10*spr_dir;
        index_offset = 0;
        index_mod = 6;
        draw_indicator = false;
    } else if get_gameplay_time() > 5 && intro_index < 10 {
    	draw_indicator = false;
    //	draw_indicator = true;
        anim_y = y;
        anim_x = x;
        index_offset = 7;
        index_mod = 4;
        if intro_index < index_offset {
        	sound_play(asset_get("sfx_blow_heavy2"));
        	spawn_hit_fx(x,y,304);
        }
    } else {
    	index_offset = 11;
        index_mod = 11;
        draw_indicator = true;
        
    }
    if intro_index < index_offset intro_index = index_offset;
    if index_mod != 0 intro_index = ((intro_index-index_offset+intro_speed) mod index_mod)+index_offset;
}
*/

if (attack == AT_NTHROW || state == PS_SPAWN) && window == 3 && get_gameplay_time() > 120 {
    set_state(PS_IDLE);
    attack = AT_JAB;
}

if state == PS_WALL_JUMP && state_timer == 1 nspecial_done = 0;

if player_color == 1 && code_4 && !code_3 {
	color_hsv=make_color_rgb(240,240,240); 
	//make hue shift every step + loop around
	if thrust_timer <= 16  {
		color_hsv=make_color_hsv(0,200,255); 
	}
	else if thrust_timer > 16 && thrust_timer < 32  {
		color_hsv=make_color_hsv(100,200,255); 
	}
	else if thrust_timer >= 32 {
		color_hsv=make_color_hsv(0,0,255); 
	}
	if color_hsv_old != color_hsv { 
		set_color_profile_slot(player_color,0,color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv));
		set_color_profile_slot(player_color,2,color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv));
		set_article_color_slot(0,color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv));
		set_character_color_slot(0,color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv));
		set_character_color_slot(2,color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv));
	}
	color_hsv_old = color_hsv;
	energy_clr[1] = color_hsv;
	//set the new color using rgb values from the gamemaker color
}

if code_3 { //Riped Kirby color code by Anguish
    hue += 1;
    if hue>255 hue-=255;
	//make hue shift every step + loop around
	color_rgb=make_color_rgb(240, 112, 160);
	//make a gamemaker color variable using kirby's default color (body)
	hue2=(color_get_hue(color_rgb)+hue) mod 255;
	//shift that colour by Hue, make sure it also loops
	color_hsv=make_color_hsv(hue2,color_get_saturation(color_rgb),color_get_value(color_rgb)); 
	//make a gamemaker color variable using the new hue
	if color_hsv_old != color_hsv { 
		set_color_profile_slot(player_color,0,color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv));
		set_color_profile_slot(player_color,2,color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv));
		set_article_color_slot(0,color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv));
		set_character_color_slot(0,color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv));
		set_character_color_slot(2,color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv));
	}
	//set the new color using rgb values from the gamemaker color
	color_hsv_old = color_hsv;
	energy_clr[player_color] = color_hsv;
}
if (!free) {
    nspecial_done = 0;
    uspecial_done = 0;
    if flight == flight_max flight--;
}

if flight_old != flight {
	if flight_old > flight {
		flight_old_timer = flight_old_time;
		sound_play(beep_sfx);
	}
	flight_old = flight;
	
}
//JAB PARRY
if state == PS_PRATLAND {
	if attack == AT_JAB {
		if (was_parried){
	        canBeStunned = false;
	        can_be_parried = false;
	        was_parried = false;
	        jab_parried = 1;
	    }
	} else {
		if instance_exists(disk) {
    	disk.hit_op = 0;
		}
	}
}
if state != 6 jab_parried = 0;
if jab_parried {
    if attack != AT_JAB {
	    canBeStunned = true;
	    can_be_parried = true;
	    was_parried = true;
	    jab_parried = 0;
    }
}
//Glitch Code
if player_color == 3 && glitch_switch == glitch_switch_frame {
	glitch_xp = glitch_x;
	glitch_yp = glitch_y;
	glitch_x_offp = glitch_x_off;
	glitch_y_offp = glitch_y_off;
	glitch_x = random_func_2(0,6,true);
	glitch_y = random_func_2(1,6,true)+1;
	glitch_x_off = random_func_2(2,6,true);
	glitch_y_off = random_func_2(3,6,true)+1;
	glitch_switch = 0;
	
} else glitch_switch++;
//
if draw_indicator == true && flight < flight_max {
	//Particles
	
	//Secret code for ALL particles & NO particles
	switch state {
	    case PS_DASH:
	    case PS_DOUBLE_JUMP:
	        thrust_rate = 2*code_2;
	        break;
	    case PS_ATTACK_GROUND:
	    case PS_ATTACK_AIR:
	        switch attack {
	            case AT_DATTACK:
	            case AT_UAIR:
	            case AT_DAIR:
	            case AT_USPECIAL:
	                thrust_rate = 3*code_2;
	                break;
	            case AT_USTRONG:
	            case AT_FSTRONG:
	            case AT_DSTRONG:
	                if window != 3 {
	                    thrust_rate = 4*code_2;
	                } else thrust_rate = 0;
	                break;
	            default:
	                thrust_rate = 1*code_2;
	                break;
	        }
	        break;
	    case PS_DEAD:
	    case PS_RESPAWN:
	        thrust_rate = 0;
	        break;
	    default:
	        thrust_rate = 1*code_2;
	        break;
	}
	if thrust_timer >= thrust_timer_max {
	    thrust_timer = 0;
	    thrust_num = 0;
	    thrust_num1 = 0;
	}
	
	thrust_timer += thrust_rate*thrust_frames;
	
	//front leg
	if (thrust_timer >= 3*thrust_timer_max/4 && thrust_num == 3)  { 
	    script_execute(scr_vfx_spawn,2,0);
	    thrust_num++;
	}
	//back ear
	if (thrust_timer <= 3*thrust_timer_max/4 && thrust_timer >= 2*thrust_timer_max/4 && thrust_num == 2)  { 
	    script_execute(scr_vfx_spawn,1,0);
	    thrust_num++;
	}
	//back leg
	if (thrust_timer <= 2*thrust_timer_max/4 && thrust_timer >= thrust_timer_max/4 && thrust_num == 1)  { 
	    script_execute(scr_vfx_spawn,3,0);
	    thrust_num++;
	}
	//front ear
	if (thrust_timer <= thrust_timer_max/4 && thrust_num == 0)  {
	    script_execute(scr_vfx_spawn,0,0);
	    thrust_num++;
	}
	
	//Disk Particles
	speen = 0;
    with disk {
        other.speen = id;
    }
	if speen != 0 {
	    if (thrust_timer <= thrust_timer_max/4 && thrust_num1 == 0)  {
	        thrust_num1++;
	        script_execute(scr_vfx_spawn,0,1);
	    }
	    if (thrust_timer <= 2*thrust_timer_max/4 && thrust_timer >= thrust_timer_max/4 && thrust_num1 == 1)  { 
	        thrust_num1++;
	        script_execute(scr_vfx_spawn,0,1);
	    }
	    if (thrust_timer <= 3*thrust_timer_max/4 && thrust_timer >= 2*thrust_timer_max/4 && thrust_num1 == 2)  { 
	        thrust_num1++;
	        script_execute(scr_vfx_spawn,0,1);
	    } 
	    if (thrust_timer >= 3*thrust_timer_max/4 && thrust_num1 == 3)  { 
	        thrust_num1++;
	        script_execute(scr_vfx_spawn,0,1);
	    }
	    if disk_sfx_bool == 1 {
	        disk_sfx_bool = 0;
	        script_execute(scr_vfx_spawn,0,2);
	    }
	}
}

//Outline code from Gustav
/*if player_color == 13 outline_color = [get_color_profile_slot_r(player_color,0), get_color_profile_slot_g(player_color,0), get_color_profile_slot_b(player_color,0)]; 
if got_gun < got_gun_max {
    got_gun++;
    ccode = round(sin(got_gun*3.14159/got_gun_max)*100)+100;
    outline_color = [color_get_red(energy_clr[player_color])*ccode,color_get_green(energy_clr[player_color])*ccode,color_get_blue(energy_clr[player_color])*ccode];
    init_shader();
    outline_color = [0,0,0];
    if player_color == 13 outline_color = [get_color_profile_slot_r(player_color,0), get_color_profile_slot_g(player_color,0), get_color_profile_slot_b(player_color,0)]; 
    
    
} else init_shader();*/
    

if (has_hit == 1 || ((state == 5 || state == 6) && hit_timer > 0)) hit_timer = hit_timer_max;
if hit_timer > 0 hit_timer--;

//End Animation Support
game_is_go = 0;
with oPlayer {
	if player != other.player {
		if get_player_stocks(player) != 0 other.game_is_go = 1;
	}
}

if !game_is_go && player_color == 3 {
	set_player_stocks(player,random_func_2(4,10,true)+1);
	set_player_damage(player,random_func_2(5,200,true)+1);
}

if player_color == 13 outline_color = [get_color_profile_slot_r(player_color,0), get_color_profile_slot_g(player_color,0), get_color_profile_slot_b(player_color,0)]; 
//Trummel Support

if trummelcodecneeded {
    trummelcodec = 17;
    trummelcodecmax = 6;
    trummelcodecsprite1 = sprite_get("idle");
    trummelcodecsprite2 = sprite_get("idle");

    //Page 0
    trummelcodecspeaker[0] = 1;
    trummelcodecexpression[0] = 0;

    trummelcodecline[0,1] = "That's R-00,";
    trummelcodecline[0,2] = "a jet-powered robotic";
    trummelcodecline[0,3] = "kangaroo from the";
    trummelcodecline[0,4] = "future!";

    //Page 1
    trummelcodecspeaker[1] = 2;
    trummelcodecexpression[1] = 0;

    trummelcodecline[1,1] = "...";
    trummelcodecline[1,2] = "";
    trummelcodecline[1,3] = "";
    trummelcodecline[1,4] = "";

    //Page 2
    trummelcodecspeaker[2] = 1;
    trummelcodecexpression[2] = 2;

    trummelcodecline[2,1] = "What, I DID read that";
    trummelcodecline[2,2] = "right. But they do look";
    trummelcodecline[2,3] = "a bit different";
    trummelcodecline[2,4] = "from the photo.";

    //Page 3
    trummelcodecspeaker[3] = 1;
    trummelcodecexpression[3] = 0;

    trummelcodecline[3,1] = "They have a lot of tools";
    trummelcodecline[3,2] = "to turn on a dime-";
    trummelcodecline[3,3] = "both in the air,";
    trummelcodecline[3,4] = "and on the ground.";

    //Page 4
    trummelcodecspeaker[4] = 1;
    trummelcodecexpression[4] = 0;

    trummelcodecline[4,1] = "R-00's also a heavy,";
    trummelcodecline[4,2] = "has a high top speed,";
    trummelcodecline[4,3] = "AND is floaty!";
    trummelcodecline[4,4] = "";

    //Page 5
    trummelcodecspeaker[5] = 2;
    trummelcodecexpression[5] = 0;

    trummelcodecline[5,1] = "sounds like this guy ";
    trummelcodecline[5,2] = "cheats";
    trummelcodecline[5,3] = "";
    trummelcodecline[5,4] = "";

    //Page 7
    trummelcodecspeaker[6] = 1;
    trummelcodecexpression[6] = 2;

    trummelcodecline[6,1] = "Included is a 50 page";
    trummelcodecline[6,2] = "essay on neutral-b alone..";
    trummelcodecline[6,3] = "We should probably just";
    trummelcodecline[6,4] = "fight and figure it out.";
}

if get_btt_data { //Get data for Break The Targets
	course_name = "R-00 Course";
	//Set the spawn properties
	respawn_point = [[29,50],[0,0],1];
	//Set the collision of the solid sprites to precise
	sprite_change_collision_mask("btt_solid",true, 0, 0, 0, 0, 0, 0 );  
	room_add(1,[
	    [ //Each Cell
	        [0,0], //Cell Coordinates
	        [
	        	//Targets
		        [10, 4, 55, 0, -5, [0, 0, 32, [[0,0],[0,-3]], 0, 0, 0, 0], [0]],
		        [10, 40, 30.5, 0, -5, [1, 0, 60, [[-10,0],[5,0]], 0, 0, 0, 0], [0]],
		        [10, 87, 46, 0, -5, [2, 0, 0, 0, 0, 0, 0, 0], [0]],
		        [10, 52, 44, 0, -5, [3, 0, 0, 0, 0, 0, 0, 0], [0]],
		        [10, 55, 75, 0, -5, [3, 0, 0, 0, 0, 0, 0, 0], [0]],
		        [10, 125, 55, 0, -5, [4, 0, 32, [[0,0],[0,-1]], 0, 0, 0, 0], [0]],
		        //Solid Ground
		    	[1, 2, 2, 2, 0, [sprite_get("btt_solid"), 0, 0, 0, 0, 0, 0, 0], [0]],
		    	//Plats
		    	[1, 46, 49, 1, 0, [sprite_get("btt_plat_64"), 0, 0, 0, 0, 0, 0, 0], [0]],
		    	[1, 64, 71, 1, 0, [sprite_get("btt_plat_64"), 0, 0, 0, 0, 0, 0, 0], [0]]
	            ]
	        ],
	    //Blastzones
	    [ //Each Cell
	        [0,1], //Cell Coordinates
	        [
	            [4, 0, 32, 0, 0, [4, 0, 0, 0, 0, 163*16, 20, 0], [0,0]]
	            ]
	        ],
	    [
	        [1,1],
	        [
	        	[4, 0, 32, 0, 0, [4, 0, 0, 0, 0, 163*16, 20, 0], [0,0]]
	            ]
	        ],
	    [ //Each Cell
	        [-1,1], //Cell Coordinates
	        [
	        	[4, 0, 32, 0, 0, [4, 0, 0, 0, 0, 163*16, 20, 0], [0,0]]
	            ]
	        ]
	    ]);
}

//Kirb Support
if swallowed {
    swallowed = 0;
    kirb_used = 0;
    with enemykirby {
        set_attack_value(AT_EXTRA_3, AG_CATEGORY, 2);
        set_attack_value(AT_EXTRA_3, AG_SPRITE, sprite_get("jump"));
        set_attack_value(AT_EXTRA_3, AG_AIR_SPRITE, sprite_get("jump"));
        set_attack_value(AT_EXTRA_3, AG_NUM_WINDOWS, 1);
        set_attack_value(AT_EXTRA_3, AG_HURTBOX_SPRITE, sprite_get("jump"));
        set_attack_value(AT_EXTRA_3, AG_HURTBOX_AIR_SPRITE, sprite_get("jump"));
        
        set_window_value(AT_EXTRA_3, 1, AG_WINDOW_LENGTH, 7);
        set_window_value(AT_EXTRA_3, 1, AG_WINDOW_ANIM_FRAMES, 1);
        
        set_window_value(AT_EXTRA_3, 2, AG_WINDOW_ANIM_FRAMES, 99765); //Arbitrary value in a dead window for checking
    }
}

if enemykirby != undefined { //if kirby is in a match & swallowed
    with oPlayer { //Run through all players
        if (state_cat == SC_GROUND_COMMITTED || state_cat == SC_GROUND_NEUTRAL) && move_cooldown[AT_EXTRA_3] == 0 {
            kirb_used_R00 = 0;
        }
        if ((state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) && attack == AT_EXTRA_3) {
            if (get_window_value(AT_EXTRA_3,2,AG_WINDOW_ANIM_FRAMES) == 99765 && kirb_used_R00 == 0) {
                kirb_used_R00 = 1;
                move_cooldown[AT_EXTRA_3] = 20;
                hsp = -hsp;
                vsp = - vsp;
                sound_play(other.switch_sfx);
            }
            
        }
    }
}

#define scr_vfx_spawn 
//argument0: which part emits the particle?
//  0: front ear
//  1: back ear
//  2: front foot
//  3: back foot
	xoff = 0;
	yoff = 0;
    do_every = 0;
    if argument1 == 0 {
        switch state {
            case PS_ATTACK_GROUND:
            case PS_ATTACK_AIR:
                switch attack {
                    case AT_DTILT:
                        if argument0 == 0 {
                            xoff = 8;
                            yoff = -51;
                        }
                        if argument0 == 1 {
                            xoff = 15;
                            yoff = -56;
                        }
                        break;
                    case AT_DATTACK:
                        if argument0 == 0 {
                            xoff = 14;
                            yoff = -60;
                        }
                        if argument0 == 1 {
                            xoff = 18;
                            yoff = -60;
                        }
                        if argument0 == 2 {
                            xoff = -12;
                            yoff = -18;
                        }
                        if argument0 == 3 {
                            xoff = -8;
                            yoff = -14;
                        }
                        break;
                    case AT_USTRONG:
                        if argument0 == 0 {
                            xoff = -4;
                            yoff = -66;
                        }
                        if argument0 == 1 {
                            xoff = 4;
                            yoff = -66;
                        }
                        if argument0 == 2 {
                            xoff = -12;
                            yoff = -18;
                        }
                        if argument0 == 3 {
                            xoff = -8;
                            yoff = -14;
                        }
                        break;
                    case AT_FSTRONG:
                        if argument0 == 0 {
                            xoff = -48;
                            yoff = -70;
                        }
                        if argument0 == 1 {
                            xoff = -34;
                            yoff = -78;
                        }
                        if argument0 == 2 {
                            xoff = -12;
                            yoff = -18;
                        }
                        if argument0 == 3 {
                            xoff = -8;
                            yoff = -14;
                        }
                        break;
                    default:
                        if argument0 == 0 {
                            xoff = -4;
                            yoff = -79;
                        }
                        if argument0 == 1 {
                            xoff = 4;
                            yoff = -83;
                        }
                        if argument0 == 2 {
                            xoff = -4;
                            yoff = -4;
                        }
                        if argument0 == 3 {
                            xoff = 4;
                            yoff = -4;
                        }
                        break;
                }
                break;
            case PS_CROUCH:
                if argument0 == 0 {
                    xoff = 8;
                    yoff = -51;
                }
                if argument0 == 1 {
                    xoff = 15;
                    yoff = -56;
                }
                if argument0 == 2 {
                    xoff = -4;
                    yoff = -4;
                }
                if argument0 == 3 {
                    xoff = 4;
                    yoff = -4;
                }
                break;
            //case PS_IDLE:
            //case PS_WALK:
            case PS_DASH:
                if argument0 == 0 {
                    xoff = 14;
                    yoff = -60;
                }
                if argument0 == 1 {
                    xoff = 18;
                    yoff = -60;
                }
                if argument0 == 2 {
                    xoff = -12;
                    yoff = -18;
                }
                if argument0 == 3 {
                    xoff = -8;
                    yoff = -14;
                }
                do_every = 1;
                break;
            default:
                if argument0 == 0 {
                    xoff = -4;
                    yoff = -79;
                }
                if argument0 == 1 {
                    xoff = 4;
                    yoff = -83;
                }
                if argument0 == 2 {
                    xoff = -4;
                    yoff = -4;
                }
                if argument0 == 3 {
                    xoff = 4;
                    yoff = -4;
                }
                break;
        }
        var th_vfx = instance_create(x+xoff*spr_dir,y+yoff,"obj_article3");
        with th_vfx {
            player_id = other.id;
            spr_dir = other.spr_dir;
            hsp = other.hsp/3-1.5*spr_dir;
            vsp = other.vsp/3-1;
        }
    }
    switch argument1 {
        case 1:
            var th_vfx = instance_create(speen.x,speen.y,"obj_article3");
            with th_vfx {
                player_id = other.id;
                spr_dir = other.disk.spr_dir;
                hsp = other.disk.hsp/3;
                vsp = other.disk.vsp/3;
                build_time = 50;
                //sprite_index = sprite_get("fspecial_spin_vfx");
            }
            break;
        case 2:
            var rep_time = 1;
            var thr_spe = 2;
            repeat (4) {
                var th_vfx = instance_create(x,y-30,"obj_article3");
                with th_vfx {
                    player_id = other.id;
                    spr_dir = other.disk.spr_dir;
                    if (rep_time == 1) {
                    hsp = thr_spe;
                    vsp = thr_spe;
                    }
                    if (rep_time == 2) {
                    hsp = -thr_spe;
                    vsp = thr_spe;
                    }
                    if (rep_time == 3) {
                    hsp = thr_spe;
                    vsp = -thr_spe;
                    }
                    if (rep_time == 4) {
                    hsp = -thr_spe;
                    vsp = -thr_spe;
                    }
                    build_time = 50;
                    sprite_index = sprite_get("fspecial_spin_vfx");
                }
                rep_time++;
            }
            break;
        case 3:
            var rep_time = 1;
            var thr_spe = 2;
            repeat (2) {
                var th_vfx = instance_create(reflect.x,reflect.y,"obj_article3");
                with th_vfx {
                    player_id = other.id;
                    spr_dir = other.disk.spr_dir;
                    if (rep_time == 1) {
                    hsp = other.thr_spe*spr_dir;
                    vsp =  other.thr_spe;
                    }
                    if (rep_time == 2) {
                    hsp =  other.thr_spe*spr_dir;
                    vsp = - other.thr_spe;
                    }
                    build_time = 50;
                    sprite_index = sprite_get("fspecial_spin_vfx");
                }
                rep_time++;
            }
            break;
    }
    
#define room_add(_room_id,room_data) //Adds a new room to the scene
with obj_stage_article if num == 5 {
	var _room_id_ind = array_find_index(array_room_ID,_room_id);
	if _room_id_ind == - 1 {
	    if debug print_debug("[RM] Adding... "+string(_room_id));
	    array_push(array_room_data,room_data);
	    array_push(array_room_ID,_room_id);
	} else {
	    array_room_data[_room_id_ind] = room_data;
	    array_room_ID[_room_id_ind] = _room_id;
	}
}