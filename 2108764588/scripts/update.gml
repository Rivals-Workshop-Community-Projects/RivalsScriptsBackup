//update.gml

//practice test from otto
if (get_training_cpu_action() != CPU_FIGHT && !playtest && !("is_ai" in self)) {
	practice = true;
}

if(get_gameplay_time()<=10){
	no_timer=get_game_timer()<=0;
}

show_spedometer=practice||sped_active;

if(state!=PS_ATTACK_GROUND||attack!=AT_TAUNT){
	taunt_infinite=false;
}

//for guide
if(taunt_infinite&&!guide_active){
	guide_active=true;
	guide_state=0;
	guide_timer=0;
	guide_menu_state=0;
	guide_menu_timer=0;
	guide_menu_alpha=0;
	guide_menu_selected=0;
	guide_menu_hold_delay=0;
	reset_text();
	guide_textbox=0;
	sound_play(asset_get("sfx_swipe_medium1"));
	hsp=0;
}
if(!taunt_infinite){
	guide_active=false;
	guide_head_active=false;
}

if(guide_active){
	if(taunt_pressed&&!special_pressed){
		taunt_infinite=false;
		sound_play(asset_get("mfx_return_cursor"));
	}
	switch guide_state {
		case 0: 
			guide_frame=floor(guide_timer*3/18);
			if(guide_timer>18) guide_state=1; 
		break;
		case 1: 
			guide_frame=3;
			if(attack_pressed){
				guide_state=2; 
				guide_timer=0;
				//sound_play(asset_get("sfx_blow_medium2"));
			} 
			if(special_pressed){
				taunt_infinite=false;
				clear_button_buffer(PC_SPECIAL_PRESSED);
				sound_play(asset_get("mfx_return_cursor"));
			}
		break;
		case 2: 
			guide_frame=3;
			if(guide_timer>7){ 
				guide_state=3; 
				guide_timer=0; 
			}
		break;
		case 3: 
			if(guide_timer==6){
				sound_play(asset_get("sfx_blow_medium2"));
			}
			guide_frame=floor(guide_timer*2/12)+4;
			if(guide_timer>12){ 
				guide_state=4;
				guide_menu_state=1;
				guide_menu_timer=0;
			} 
		break;
		case 4: 
			guide_frame=6;
			//if(guide_timer>12) guide_state=3; 
		break;
	}
	switch guide_menu_state {
		case 0://empty
			
		break;
		case 1://coming in
			guide_menu_alpha=guide_menu_timer*0.7/10;
			if(guide_menu_timer>10){
				guide_menu_state=2;
				guide_menu_timer=0;
			}
		break;
		case 2://base menu start
			determine_text();
			var effectivetimer = guide_menu_timer/1.5;
			for(var i=0; i<16; i++){
				if(effectivetimer>0){
					guide_writetext[i]=string_copy(guide_readtext[i],0,floor(effectivetimer));
				}
				effectivetimer-=string_length(guide_readtext[i]);
			}
			if(guide_menu_timer%6==0){
				sound_play(asset_get("mfx_coin"));
			}
			if(effectivetimer>0){
				guide_menu_state=3;
				guide_menu_timer=0;
				//guide_head_talking=false;
			}
			if(attack_pressed||special_pressed){
				clear_button_buffer(PC_ATTACK_PRESSED);
				clear_button_buffer(PC_SPECIAL_PRESSED);
				guide_menu_timer=99999;
				sound_play(asset_get("mfx_coin"));
			}
		break;
		case 3://menu
			var selections=6;
			if(up_down){
				if(up_pressed){
					clear_button_buffer(PC_UP_HARD_PRESSED);
					guide_menu_selected--;
					if(guide_menu_selected==-1){
						//guide_menu_selected+=selections;
						guide_menu_selected=selections+2;
					} else if(guide_menu_selected==selections+1){
						guide_menu_selected=selections-2;
					} else {
						guide_menu_selected=guide_menu_selected%selections;
					}
					sound_play(asset_get("mfx_move_cursor"));
				}
				guide_menu_hold_delay++;
				if(guide_menu_hold_delay>18){
					guide_menu_hold_delay2++;
					if(guide_menu_hold_delay2>=6){
						guide_menu_hold_delay2=0;
						guide_menu_selected--;
						if(guide_menu_selected==-1){
							//guide_menu_selected+=selections;
							guide_menu_selected=selections+2;
						} else if(guide_menu_selected==selections+1){
							guide_menu_selected=selections-2;
						} else {
							guide_menu_selected=guide_menu_selected%selections;
						}
						sound_play(asset_get("mfx_move_cursor"));
					}
				}
				//sound_play(asset_get("mfx_move_cursor"));
			} else if(down_down){
				if(down_pressed){
					clear_button_buffer(PC_DOWN_HARD_PRESSED);
					guide_menu_selected++;
					if(guide_menu_selected==selections+3){
						//guide_menu_selected+=selections;
						guide_menu_selected=0;
					} else if(guide_menu_selected==selections-1){
						guide_menu_selected=selections+2;
					} else {
						guide_menu_selected=guide_menu_selected%selections;
					}
					sound_play(asset_get("mfx_move_cursor"));
				}
				guide_menu_hold_delay++;
				if(guide_menu_hold_delay>18){
					guide_menu_hold_delay2++;
					if(guide_menu_hold_delay2>=6){
						guide_menu_hold_delay2=0;
						guide_menu_selected++;
						if(guide_menu_selected==selections+3){
							//guide_menu_selected+=selections;
							guide_menu_selected=0;
						} else if(guide_menu_selected==selections-1){
							guide_menu_selected=selections+2;
						} else {
							guide_menu_selected=guide_menu_selected%selections;
						}
						//guide_menu_selected=guide_menu_selected%selections;
						sound_play(asset_get("mfx_move_cursor"));
					}
				}
			} else {
				guide_menu_hold_delay=0;
			}
			if(attack_pressed){
				if(guide_menu_selected==selections+2){
					clear_button_buffer(PC_ATTACK_PRESSED);
					taunt_infinite=false;
					sound_play(asset_get("mfx_confirm"));
					guide_fd_active=!guide_fd_active;
				} else {
					clear_button_buffer(PC_ATTACK_PRESSED);
					reset_text();
					determine_textbox();
					guide_menu_state=4;
					guide_menu_timer=0;
					sound_play(asset_get("mfx_confirm"));
				}
			}
			if(special_pressed){
				taunt_infinite=false;
				clear_button_buffer(PC_SPECIAL_PRESSED);
				sound_play(asset_get("mfx_return_cursor"));
			}
		break;
		case 4:
			determine_text();
			var effectivetimer = guide_menu_timer/1.5;
			for(var i=0; i<16; i++){
				if(effectivetimer>0){
					guide_writetext[i]=string_copy(guide_readtext[i],0,floor(effectivetimer));
				}
				effectivetimer-=string_length(guide_readtext[i]);
			}
			if(guide_menu_timer%6==0){
				sound_play(asset_get("mfx_coin"));
			}
			if(effectivetimer>0){
				guide_menu_state=5;
				guide_menu_timer=0;
				//guide_head_talking=false;
			}
			if(attack_pressed||special_pressed){
				clear_button_buffer(PC_ATTACK_PRESSED);
				clear_button_buffer(PC_SPECIAL_PRESSED);
				guide_menu_timer=99999;
				sound_play(asset_get("mfx_coin"));
			}
		break;
		case 5:
			if(attack_pressed){
				clear_button_buffer(PC_ATTACK_PRESSED);
				reset_text();
				if(is_text_over()){
					guide_textbox=0;
					guide_menu_state=2;
					guide_menu_timer=0;
				} else {
					guide_textbox++;
					guide_menu_state=4;
					guide_menu_timer=0;
				}
				sound_play(asset_get("mfx_confirm"));
			}
			if(special_pressed){
				clear_button_buffer(PC_SPECIAL_PRESSED);
				reset_text();
				if(guide_textbox%50!=0){
					guide_textbox--;
					guide_menu_state=4;
					guide_menu_timer=0;
				} else {
					guide_textbox=0;
					guide_menu_state=2;
					guide_menu_timer=0;
				}
				sound_play(asset_get("mfx_return_cursor"));
			}
		break;
	}
	guide_timer++;
	guide_menu_timer++;
}

//walkturn taunt stuff
if(state==PS_WALK_TURN){
    walkturn_taunt_timer++;
    if(walkturn_taunt_timer<60){
        if(state_timer>.33){
            state_timer-=.33;
        }
    } else {
        if(state_timer>.80){
            state_timer-=.80;
        }
    }
} else {
    walkturn_taunt_timer=0;
}

//animation counter for strong boost particle effect
if(strong_boost_indication_timer>0){
    strong_boost_indication_timer--;
}

//defining a thing
if(hitpause){
    if(hitpause_hsp==0){
        hitpause_hsp=previous_hsp1;
        temping=hitpause_hsp;
    }
} else {
    hitpause_hsp=0;
}

if(state==PS_SPAWN){
    if(special_down){
        sped_active=true;
    }//*/
}

//resetting strong boost
if((state!=PS_ATTACK_GROUND&&state!=PS_ATTACK_AIR)||!(attack==AT_FSTRONG||attack==AT_USTRONG||attack==AT_DSTRONG)){
    strong_boost=false;
}

if((state!=PS_ATTACK_GROUND&&state!=PS_ATTACK_AIR)||!(attack==AT_USPECIAL||attack==AT_NSPECIAL||attack==AT_DSPECIAL||attack==AT_EXTRA_1)){
    special_boost=false;
}

//setting stuff for gradual speed transition
if (abyssEnabled&&runeL){
    tracking_dash_high=2*(reg_dash_speed);
} else {
    tracking_dash_high=ice_dash_speed;
}
tracking_dash_low=reg_dash_speed;

if((state_cat==SC_GROUND_NEUTRAL||state_cat==SC_GROUND_COMMITTED)&&state!=PS_SPAWN){
    var over=false;
    var speed_boost=false;
    var index = 0;
    var ac_in = 0;
    with obj_article1 {
    	if(player_id.url==other.url&&abs(y-other.y)<=2) {
        	if(other.x>=x+left_start-8&&other.x<x+left_start+length_total*16+8){
	        	over=true;
        	}
        	if(other.x>=x+left_start-16&&other.x<x+left_start+length_total*16+16){
	        	index=floor((other.x-(x+left_start))/16);
	        	for(var i=0;i<3;i++){
	        		ac_in=clamp(index-1+i,0,length_total-1);
	        		if(livetimer-ice[ac_in,0]>die_start||ice[ac_in,0]==-1){
	        			if(other.fspecial_charge<other.fspecial_max_charge){
		        			ice[ac_in,0]=livetimer;
		        			ice[ac_in,1]=other;
	        			}
	        		} else if((livetimer-ice[ac_in,0]>state_1_start)){
	        			ice[ac_in,0]=livetimer-state_1_start;
	        			speed_boost=true;
	        		}
	        	}
        	}
        }
    }
    if(fspecial_charge<fspecial_max_charge){
        if((!over)&&(!eating_ice)){//&&(!(abyssEnabled && (menuActive || timerActive)))){
            instance_create((floor((x)/16)*16)+8,y,"obj_article1");
        }
    }
    
    //applying the new speed
    if(speed_boost){
        dash_speed=ice_dash_speed;
    } else {
        dash_speed=reg_dash_speed;
    }
} else {
    dash_speed=reg_dash_speed;
}//*/

dash_turn_accel = dash_speed*2/(dash_turn_time-10);

//gradual dash speed change
if(dash_change_timer<=0){
    if(dash_previous!=dash_speed){
        dash_change_target=dash_speed<dash_previous;
        dash_change_timer=10;
    }
}
if(dash_change_timer>0){
    if(dash_speed!=dash_change_target*tracking_dash_low+!dash_change_target*tracking_dash_high){
        dash_change_target=dash_speed<dash_previous;
        dash_change_timer=10-dash_change_timer;
    }
    dash_change_timer--;
    if(dash_change_target==0){
        dash_speed=tracking_dash_high+(tracking_dash_low-tracking_dash_high)*dash_change_timer/10;
    } else {
        dash_speed=tracking_dash_low+(tracking_dash_high-tracking_dash_low)*dash_change_timer/10;
    }
}
dash_previous=dash_speed;

//gradual initial dash
if(state==PS_DASH_START){
    if(state_timer==0){
        moonwalk=false;
    }
    if((left_down==spr_dir||right_down==-spr_dir)&&state_timer<8){
        moonwalk=true;
        initial_dash_time=15;
    }
    if(!moonwalk){
        if(state_timer==0){
            dash_start_initial_hsp=clamp(previous_hsp2, -12, 12);
            initial_dash_time=abs((10*spr_dir-dash_start_initial_hsp)*12/10);
            if(initial_dash_time<10){
                initial_dash_time=10;
            }
            initial_dash_time/=1+0.5*(abyssEnabled&&runeF);
        }
        if(dash_start_initial_hsp==0){
            hsp=state_timer/initial_dash_time*dash_speed*spr_dir;
        } else if(dash_start_initial_hsp/abs(dash_start_initial_hsp)==spr_dir){
            hsp=state_timer/initial_dash_time*(dash_speed-abs(dash_start_initial_hsp))*spr_dir+dash_start_initial_hsp;
        } else {
            hsp=state_timer/initial_dash_time*(dash_speed+abs(dash_start_initial_hsp))*spr_dir+dash_start_initial_hsp;
        }
    } else {
        hsp=spr_dir*dash_speed-dash_speed/9.5*state_timer*moonwalk_accel*spr_dir;
        hsp=clamp(hsp, -12, 12);
    }
}

//setting friction for other states
if(state==PS_CROUCH){
    ground_friction=.15;
} else if(state==PS_PRATLAND||state==PS_PARRY){
    ground_friction=.3+0.2*(state==PS_PARRY);
} else if(state==PS_LANDING_LAG&&((attack==AT_DSPECIAL||attack==AT_BAIR)&&!has_hit)){
    ground_friction=1;
} else {
    ground_friction=.06;
}

//refreshing resources
if(!free||state==PS_RESPAWN||state_cat==SC_HITSTUN||state==PS_WALL_JUMP){
    can_uspecial=true;
    move_cooldown[AT_NSPECIAL]=0;
    move_cooldown[AT_FSPECIAL]=0;
    move_cooldown[AT_USPECIAL]=0;
    if(state==PS_RESPAWN){
        move_cooldown[AT_DSPECIAL]=0;
        fspecial_charge=0;
    }
}

//rainbow skin
if(get_player_color(player)==10){
    rainbows++;
    rainbows=rainbows%360;
    var temp_color=make_color_hsv(rainbows*255/360, 80*255/100, 255);
    set_color_profile_slot(10, 0, colour_get_red(temp_color), colour_get_green(temp_color), colour_get_blue(temp_color));
    var temp_color=make_color_hsv(rainbows*255/360, 8*255/100, 30*255/100);
    set_color_profile_slot(10, 1, colour_get_red(temp_color), colour_get_green(temp_color), colour_get_blue(temp_color));
    var temp_color=make_color_hsv(rainbows*255/360, 29*255/100, 90*255/100);
    set_color_profile_slot(10, 2, colour_get_red(temp_color), colour_get_green(temp_color), colour_get_blue(temp_color));
    var temp_color=make_color_hsv((rainbows+180)%360*255/360, 80*255/100, 255);
    set_color_profile_slot(10, 3, colour_get_red(temp_color), colour_get_green(temp_color), colour_get_blue(temp_color));
    if(rainbows%4==0){
        init_shader();
    }
}

//heavy hit sound
if(heavytimer>0){
    heavytimer--;
    if(heavytimer==52){
        sound_play(asset_get("sfx_ice_shatter_big"));
    }
    if(heavytimer==48){
        sound_play(asset_get("sfx_icehit_heavy2"));
    }
}

//chrsmas
if wearing_hat == 1 {
    if state != PS_SPAWN && state != PS_RESPAWN && state != PS_IDLE {
        wearing_hat = -1;
        var newfx = spawn_hit_fx(x, y, hit_fx_create(sprite_get("summer_toss"), 30));
        newfx.depth = depth-1;
    }
} else if wearing_hat == -1 {
    if state == PS_RESPAWN or state == PS_SPAWN {
    wearing_hat = 1;
    }
}

//trummel codec
if trummelcodecneeded{
    trummelcodec = 17;
    trummelcodecmax = 10;
    trummelcodecsprite1 = sprite_get("codecface");
    trummelcodecsprite2 = sprite_get("X");
    var page=0;

    //Page 0
    trummelcodecspeaker[0] = 1;
    trummelcodecexpression[0] = 0;

    trummelcodecline[page,1] = "Ah, I see we’ve ran into";
    trummelcodecline[page,2] = "Zerra. This ice-skating";
    trummelcodecline[page,3] = "bunny has got some real";
    trummelcodecline[page,4] = "speed behind her.";
    page++; 

    //Page 1
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 0;

    trummelcodecline[page,1] = "Too much if you ask me.";
    trummelcodecline[page,2] = "And, Ive heard that her";
    trummelcodecline[page,3] = "attacks are stronger the";
    trummelcodecline[page,4] = "faster she’s going, too.";
    page++; 
    
    //Page 2
    trummelcodecspeaker[page] = 2;
    trummelcodecexpression[page] = 0;

    trummelcodecline[page,1] = "hmm";
    trummelcodecline[page,2] = "something about this";
    trummelcodecline[page,3] = "situation feels ...";
    trummelcodecline[page,4] = "familiar";
    page++; 
    
    //Page 3
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 2;

    trummelcodecline[page,1] = "Well, she leaves behind";
    trummelcodecline[page,2] = "a trail of ice whenever";
    trummelcodecline[page,3] = "she's on the ground.";
    trummelcodecline[page,4] = "But it's not Etalus ice";
    page++; 
    
    //Page 4
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 5;

    trummelcodecline[page,1] = "Running on this ice makes";
    trummelcodecline[page,2] = "her way faster than she";
    trummelcodecline[page,3] = "already is.";
    trummelcodecline[page,4] = "Too fast. Broken.";
    page++; 
    
    //Page 5
    trummelcodecspeaker[page] = 2;
    trummelcodecexpression[page] = 0;

    trummelcodecline[page,1] = "i feel like ...";
    trummelcodecline[page,2] = "";
    trummelcodecline[page,3] = "ive just been in this";
    trummelcodecline[page,4] = "place before";
    page++; 
    
    //Page 6
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 1;

    trummelcodecline[page,1] = "But, she has no projectiles";
    trummelcodecline[page,2] = "or large disjoints, so she";
    trummelcodecline[page,3] = "has to approach us and";
    trummelcodecline[page,4] = "initiate the interaction";
    page++; 
    
    //Page 7
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 3;

    trummelcodecline[page,1] = "So, all we have to do is";
    trummelcodecline[page,2] = "use our projectiles and";
    trummelcodecline[page,3] = "superior stage control";
    trummelcodecline[page,4] = "to keep her from us.";
    page++; 
    
    //Page 8
    trummelcodecspeaker[page] = 2;
    trummelcodecexpression[page] = 0;

    trummelcodecline[page,1] = "deja vu";
    trummelcodecline[page,2] = "";
    trummelcodecline[page,3] = "";
    trummelcodecline[page,4] = "";
    page++; 
    
    //Page 9
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 4;

    trummelcodecline[page,1] = ". . .";
    trummelcodecline[page,2] = "";
    trummelcodecline[page,3] = "";
    trummelcodecline[page,4] = "";
    page++; 
    
    //Page 10
    trummelcodecspeaker[page] = 3;
    trummelcodecexpression[page] = 0;

    trummelcodecline[page,1] = ". . .";
    trummelcodecline[page,2] = "";
    trummelcodecline[page,3] = "";
    trummelcodecline[page,4] = "";
    page++; 

}

//oldhsp stuff
previous_hsp2=previous_hsp1;
previous_hsp1=hsp;

//rune thing
if(abs(hsp)>8){
    /*if(runeM){
        super_armor=true;
    }//*/
    if(runeO){
        create_hitbox( AT_DATTACK, 2, x, y );
        //attack_end();
    }
}

//utilt char height thing
if(attack==AT_UTILT&&state==PS_ATTACK_GROUND){
    if(window==3){
        char_height=ease_linear( 52, 96, window_timer, get_window_value(attack, window, AG_WINDOW_LENGTH) );
    } else if(window==4){
        char_height=96;
    } else if(window==5&&window_timer<get_window_value(attack, window, AG_WINDOW_LENGTH)){
        char_height=ease_linear( 96, 52, window_timer, get_window_value(attack, window, AG_WINDOW_LENGTH) );
    } else {
        char_height=52
    }
} else {
    char_height=52;
}

//game ended check taken from valkyrie
if gameOver() {
	gameEnded = 1
}

if(state!=PS_DEAD&&state!=PS_RESPAWN&&state!=PS_SPAWN&&!gameEnded){
    total_speed+=(hitpause*(abs(hitpause_hsp))+(!hitpause*(abs(hsp))));
    speed_frames++;
}

if(amber_startHug){
	with(amber_herObj){
		set_attack_value(AT_EXTRA_3, AG_NUM_WINDOWS, 4);
		set_attack_value(AT_EXTRA_3, AG_CATEGORY, 2);
		set_attack_value(AT_EXTRA_3, AG_HURTBOX_SPRITE, asset_get("ex_guy_hurt_box"));
		
		set_window_value(AT_EXTRA_3, 1, AG_WINDOW_LENGTH, 24);
		set_window_value(AT_EXTRA_3, 1, AG_WINDOW_ANIM_FRAMES, 6);
		set_window_value(AT_EXTRA_3, 1, AG_WINDOW_ANIM_FRAME_START, 0);
		set_window_value(AT_EXTRA_3, 1, AG_WINDOW_HAS_SFX, 1);
		set_window_value(AT_EXTRA_3, 1, AG_WINDOW_SFX, asset_get("sfx_spin"));
		
		set_window_value(AT_EXTRA_3, 2, AG_WINDOW_LENGTH, 20);
		set_window_value(AT_EXTRA_3, 2, AG_WINDOW_ANIM_FRAMES, 4);
		set_window_value(AT_EXTRA_3, 2, AG_WINDOW_ANIM_FRAME_START, 6);
		set_window_value(AT_EXTRA_3, 2, AG_WINDOW_HAS_SFX, 1);
		set_window_value(AT_EXTRA_3, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));
		
		set_window_value(AT_EXTRA_3, 3, AG_WINDOW_LENGTH, 21);
		set_window_value(AT_EXTRA_3, 3, AG_WINDOW_ANIM_FRAMES, 3);
		set_window_value(AT_EXTRA_3, 3, AG_WINDOW_ANIM_FRAME_START, 10);
		
		set_window_value(AT_EXTRA_3, 4, AG_WINDOW_LENGTH, 12);
		set_window_value(AT_EXTRA_3, 4, AG_WINDOW_ANIM_FRAMES, 2);
		set_window_value(AT_EXTRA_3, 4, AG_WINDOW_ANIM_FRAME_START, 13);
		
		amberHugState = 2; 
	}
	oPlayerHugAmberState = 2;
	
	amber_startHug=false;
}
#define gameOver
var stocks = [-1, -1, -1, -1];
var damage = [-1, -1, -1, -1];
with(asset_get("oPlayer")){
    stocks[get_player_team(player)-1] = max(0,stocks[get_player_team(player)-1]);
    damage[get_player_team(player)-1] = max(0,damage[get_player_team(player)-1]);
    stocks[get_player_team(player)-1] += get_player_stocks(player);
    damage[get_player_team(player)-1] += get_player_damage(player);
}
for(var i = 0; i < 4; i++){
    for(var i2 = 0; i2 < 4; i2++){
        if(stocks[i2] == -1){break;}
        if(stocks[i2] == 0 || (get_game_timer() <= 0 && !no_timer && stocks[i] > stocks[i2]) || (get_game_timer() <= 0 && !no_timer && stocks[i] == stocks[i2] && damage[i] < damage[i2])){
            stocks[i2] = 0;
            damage[i2] = 0;
        }
    }
}
var players = 0;
for(var i = 0; i < 4; i++){
    if(stocks[i] > 0){
        players++;
        if(players >= 2){
            return false;
        }
    }
}
return true;
#define determine_text
for(var i; i<16; i++){
	guide_readtext[i]="";
	guide_writetext[i]="";
}
switch guide_textbox {
	case 0:
		guide_readtext[0]="Available Tips:";
		guide_readtext[2]="Mechanics";
		guide_readtext[3]="Specials";
		guide_readtext[4]="Normals / Strongs";
		guide_readtext[5]="Combos / Tech";
		guide_readtext[6]="Changelog";
		if(guide_fd_active){
			guide_readtext[10]="Deactivate Framedata Viewer";
		} else {
			guide_readtext[10]="Activate Framedata Viewer";
		}
		//the opponent?
	break;
	case 50:
		guide_readtext[0]="The first thing you might notice is that, because of";
		guide_readtext[1]="the skates, you have very low friction. Very useful";
		guide_readtext[2]="during grounded attacks. This also comes with the";
		guide_readtext[3]="consequence of not having a normal dashstart, and"; 
		guide_readtext[4]="having to accelerate to top speed instead of instantly"; 
		guide_readtext[5]="getting there.";
	break;
	case 51:
		guide_readtext[0]="Another thing to note is the trail of ice left behind";
		guide_readtext[1]="by travelling on the ground. That ice drastically";
		guide_readtext[2]="increases your dash speed from a little slow to faster";
		guide_readtext[3]="than all of the normal rivals. The ice isn’t active"; 
		guide_readtext[4]="immediately though, and it doesn’t stay around forever"; 
		guide_readtext[5]="either, so it’s best to skate back over ice to refresh";
		guide_readtext[6]="it without having to make it new.";
	break;
	case 52:
		guide_readtext[0]="The last major mechanic is when moving above 8 speed";
		guide_readtext[1]="(shown on the speedometer,) strongs see a dramatic";
		guide_readtext[2]="increase in power, making them excellent kill moves.";
		guide_readtext[3]="Along with that, all moves that hit with the skates"; 
		guide_readtext[4]="scale in damage based on your speed, maxing out at a"; 
		guide_readtext[5]="multiplier of x2 at 15 speed.";
	break;
	case 100:
		guide_readtext[0]="Nspecial’s prime purpose is to reverse your speed. Its";
		guide_readtext[1]="two main uses are starting/extending combos, and ";
		guide_readtext[2]="recovering. If you hold special after the turn motion,";
		guide_readtext[3]="a little kick comes out, providing a hitbox, but";
		guide_readtext[4]="greatly increasing endlag.";
	break;
	case 101:
		guide_readtext[0]="Fspecial is a charge kick. During charge, you";
		guide_readtext[1]="accelerate forward (faster if you’re on ice.) Charge";
		guide_readtext[2]="can be cancelled by pressing special to release the";
		guide_readtext[3]="kick early, parry to end the move, or jump to jump";
		guide_readtext[4]="out of it. It’s easy to send yourself catapulting";
		guide_readtext[5]="off the stage with this move, so be careful  when you";
		guide_readtext[6]="use it. Having Fspecial fully charged causes you to not";
		guide_readtext[7]="make ice anymore, so don't just camp for charge.";
	break;
	case 102:
		guide_readtext[0]="Uspecial is a soaring axe kick. Pressing attack or";
		guide_readtext[1]="special after the rising part of the move will send";
		guide_readtext[2]="you hurdling downward with a spike hitbox. You ";
		guide_readtext[3]="conserve your horizontal speed with this move and can";
		guide_readtext[4]="reverse it too. You can also hitfall the rising part";
		guide_readtext[5]="of the move for a combo starter with great vertical";
		guide_readtext[6]="range.";
	break;
	case 103:
		guide_readtext[0]="Dspecial is a flip jump/kick. Pressing attack or";
		guide_readtext[1]="special after a certain point in the flip will make";
		guide_readtext[2]="you do a kick at a diagonal angle. Holding down during";
		guide_readtext[3]="the flip will cause you to go through platforms.";
	break;
	case 150:
		guide_readtext[0]="Jab hit 1 and 2 has knockback that scales with your";
		guide_readtext[1]="speed so that it connctes better into the final hit.";
		guide_readtext[2]="";
		guide_readtext[3]="ftilt, utilt, and dstrong all have command grab like";
		guide_readtext[4]="properties, making the second hit always connect.";
		guide_readtext[5]="";
		guide_readtext[6]="dtilt has a second kick activated by pressing attack";
		guide_readtext[7]="during the endlag of the move.";
	break;
	case 151:
		guide_readtext[0]="dash attack is jump-cancellable on hit.";
		guide_readtext[1]="";
		guide_readtext[2]="bair is angleable up and down, changing both vertical";
		guide_readtext[3]="and horizontal speed";
		guide_readtext[4]="";
		guide_readtext[5]="uair, fair and dair all have a tiny boost forward";
		guide_readtext[6]="making up for the speed lost through friction";
		guide_readtext[7]="";
	break;
	/*case 200:
		guide_readtext[0]="coming later";
	break;//*/
	case 200:
		guide_readtext[0]="learn them urself, dummy ;)";
	break;
	case 250:
		guide_readtext[0]="fix - utilt, ftilt, and dstrong no longer interact";
		guide_readtext[1]="       strangely with armor";
		guide_readtext[2]="";
		guide_readtext[3]="";
		guide_readtext[4]="";
		guide_readtext[5]="";
		guide_readtext[6]="";
		guide_readtext[7]="";
		guide_readtext[8]="";
		guide_readtext[9]="";
		guide_readtext[10]="";
		guide_readtext[11]="";
	break;
	/*case 251:
		guide_readtext[0]="";
		guide_readtext[1]="";
		guide_readtext[2]="";
		guide_readtext[3]="";
		guide_readtext[4]="";
		guide_readtext[5]="";
	break;//*/
	case 251:
		guide_readtext[0]="All previous patch notes are on the steam page";
	break;
	default:
		guide_readtext[0]="";
		guide_readtext[1]="";
		guide_readtext[2]="";
		guide_readtext[3]="";
	break
}
return;
#define reset_text
for(var i; i<16; i++){
	guide_readtext[i]="";
	guide_writetext[i]="";
}
#define determine_textbox
/*switch guide_menu_slected {
	case 0: textbox=20 break;
}//*/
guide_textbox=(guide_menu_selected+1)*50;
#define is_text_over
switch guide_textbox {
	case 52: 
		return true; 
	break;
	case 103: 
		return true; 
	break;
	case 151: 
		return true; 
	break;
	case 200: 
		return true; 
	break;
	case 251: 
		return true; 
	break;
	default:
		return false;
	break;
}