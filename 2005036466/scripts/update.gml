if wearing_hat == 1 {
	if state != PS_SPAWN && state != PS_RESPAWN && state != PS_IDLE {
		wearing_hat = -1;
		var newfx = spawn_hit_fx(x, y, fx_sprites[1]);
		newfx.depth = depth-1;
	}
} else if wearing_hat == -1 {
	if state == PS_RESPAWN or state == PS_SPAWN {
	wearing_hat = 1;
	}
}

//Cancel VFX shit
if (cancel_effect_timer > 0 and hitstop == 0)
	{
	cancel_effect_timer -= 1;
	}

if (state_cat == SC_HITSTUN)
	{
	cancel_effect_timer = 0;
	}

//If you ain't attacking, you ain't cancelling. Sorry, I don't make the rules.
if (state != PS_ATTACK_GROUND and state != PS_ATTACK_AIR and babymode == 0)
	{
	cancelable_active = false;
	}

// Funny
if url != 2005036466{
	sound_play(sound_get("laugh_track"));
}

if get_gameplay_time() < 120 {
	if get_player_color(player) == 5 && taunt_pressed{
	  set_color_profile_slot( 5, 0, 200, 203, 204 ); //Dark Fur
	  set_color_profile_slot( 5, 1, 228, 227, 227 ); //Light Fur
	  set_color_profile_slot( 5, 2, 53, 252, 252 ); //Eye
	  set_color_profile_slot( 5, 3, 34, 35, 38 ); //Hair
	  set_color_profile_slot( 5, 4, 115, 207, 225 ); //Metal
	  set_color_profile_slot( 5, 5, 81, 77, 76 ); //Boots
	  set_color_profile_slot( 5, 6, 53, 54, 54 ); //Pants
	  set_color_profile_slot( 5, 7, 255, 156, 207 ); //Tanktop
	}
	if get_player_color(player) == 10 && jump_pressed{
	  set_color_profile_slot( 10, 0, 255, 162, 0 ); //Dark Fur
	  set_color_profile_slot( 10, 1, 255, 219, 162 ); //Light Fur
	  set_color_profile_slot( 10, 2, 203, 243, 130 ); //Eye
	  set_color_profile_slot( 10, 3, 121, 65, 0 ); //Hair
	  set_color_profile_slot( 10, 4, 178, 178, 178 ); //Metal
	  set_color_profile_slot( 10, 5, 178, 178, 178 ); //Boots
	  set_color_profile_slot( 10, 6, 48, 97, 65 ); //Pants
	  set_color_profile_slot( 10, 7, 178, 178, 178 ); //Tanktop
	}
	if shield_pressed{
		clear_button_buffer(PC_SHIELD_PRESSED);
		if babymode == 0{
			babymode = 1;
		} else {
			babymode = 0;
		}
	}
}

if get_gameplay_time() <= 2{
  if (attack_pressed){
    clear_button_buffer(PC_ATTACK_PRESSED);
  }
}

if (state == PS_WALL_JUMP){
  move_cooldown[AT_DSPECIAL] = 0;
  move_cooldown[AT_DSPECIAL_AIR] = 0;
  move_cooldown[AT_FSPECIAL] = 0;
  move_cooldown[AT_FSPECIAL_AIR] = 0;
}

/*
if (state == PS_PARRY_START && down_down and move_cooldown[AT_DTHROW] == 0) {
	set_attack(AT_DTHROW);
}
*/

/*
if (free and joy_pad_idle and (special_pressed) and move_cooldown[AT_NSPECIAL_AIR] == 0 && state_cat != SC_AIR_COMMITTED){
  set_attack(AT_NSPECIAL_AIR);
}
else if (!free and joy_pad_idle and (special_pressed) and state_cat != SC_GROUND_COMMITTED){
  set_attack(AT_NSPECIAL);
}
*/

// Get Stage Data
if stagedata_stuff == 18541{
	shadowloxo = true;
}

if (state_cat == SC_HITSTUN or state == PS_WALL_JUMP)
  {
  do_final_kick = false;
  }

//Code for side-B's grab.
if (grabbedid != noone && !hit_player_obj.clone) {
	grabbedid.ungrab++;
	if (grabbedid.ungrab == 120) {
		grabbedid.state = PS_TUMBLE;
		grabbedid.ungrab = 0;
		grabbedid.invincible = false;
		grabbedid = noone;
	}
}

// DSpecial Sprite change
if attack == AT_DSPECIAL_AIR{
  if window == 2 or (window == 3 && window_timer < 10){
    // Right
    if spr_dir == 1{
      spr_angle = 330;
    }
    // Left
    if spr_dir == -1{
      spr_angle = 30;
    }
  } else {
    spr_angle = 0;
  }
}

if (state != PS_ATTACK_AIR or (state == PS_ATTACK_AIR and attack != AT_DSPECIAL_AIR)){
	spr_angle = 0;
}

// Practice Mode Functionality
if (get_gameplay_time() >= 140){

    timer2 = get_game_timer();
    if (timer1 == timer2 && timer1 != 0 && !practice){
        practice = true;
        hide_help = false;
    }
}

var opponentsurl = 0;


if (opponentsurl != 17){/*
    if (opponentsurl - 1 < 15 && opponentsurl - 1 > 0){
        subject = opponentsurl - 1;
    }
    else if (opponentsurl == url){
        subject = 30;
    }
    else{
        switch(opponentsurl){
            case 1904437331:	//Astra
                subject = 16;
                break;
            case 1943759600:	//Olympia
                subject = 17;
                break;
            case 1913517643:	//Pomme
                subject = 18;
                break;
            case 1968068304:	//Epinel
                subject = 19;
                break;
            case 1871989159:	//Mollo
                subject = 20;
                break;
			case 1867608473:	// Kris
				subject = 21;
				break;
			case 1917713379:	// Valk
				subject = 22;
				break;
			case 1868240517:	// R-00
				subject = 23;
				break;
			case 1892030667:	// Gustav
				subject = 24;
				break;
			case 1924848558:	// Mechlair (URL DONE)
				subject = 25;
				break;
			case 1869304273:	// Kyoko
				subject = 26;
				break;
			case 1872745659:	// Riki
				subject = 27;
				break;
			case 1865940669:	// BWAHH [D:]
				subject = 28;
				break;
			case 1869814191:	// sans
				subject = 29;
				break;
			case 1905208125:	// Hime (URL DONE)
				subject = 31;
				break;
			case 1933111975:	// woag
				subject = 32;
				break;
			case 1917856427:	// LIZ GANG
				subject = 33;
				break;
            case 1879724331:	// Aigis 1 (URL DONE)
                subject = 34;
                break;
            case 2005122629 :	// Aigis 2
                subject = 34;
                break;
            case 1911293127:	// FNaF
                subject = 1987;
                break;
            default:
                subject = 15;
                break;
        }
    }*/


}


//#region New codec code (all of it is in this region)
if spawn_timer > 1 {
	with(oPlayer){
	  if (id != other.id){
	    opponentsurl = url;
    }
	}
}

// Remove practice and replace it with the Stage URL check when that goes live.

if (num_players < 3 && codec_active == 0 && (practice || shadowloxo)){
  if (down_down && taunt_pressed){
    set_attack(AT_FTHROW);
  }
  if (attack == AT_FTHROW && window == 3 && window_timer == 6){
  	subject = 0;
    for (var i = 0; i < array_length(subjects); i++) {
    	if (subjects[i] == opponentsurl) {
    		subject = i;
    		break;
    	}
    }
    codec_active = 1;
  }
}


// Codec is going active.
if codec_active == 1{
	codec_visible = 1;
	cur_text = 0;
	animate++;
	if animate == 3{
		codecbg_timer = codecbg_timer + 1;
		animate = 0;
	}

	if codecbg_timer == 1 && animate == 0{
	    if subject != 1987{
	      sound_play(sound_get("sfx_codec_start"), false, 0);
	    } else {
	      sound_play(sound_get("sfx_phoneguy_start"), false, 0);
	    }
	}

	if codecbg_timer == 49{
		animate = 0;
		codec_active = 2;
	}
}

// Codec Active
if codec_active == 2{
	bwoop_visible = 1;
	codecbg_timer = 49;
	animate++;
	if animate == 3{
		bwoop_timer = bwoop_timer + 1;
		animate = 0;
	}

	if bwoop_timer == 12{
		animate = 4;
		bwoop_timer = 12;
		faces_visible = true;
	}

	if faces_visible{
		animate_blink++;
		if (animate_blink == 4){
			blink++;
			animate_blink = 0;
		}

		if (blink == 24){
			blink = 0;
		}

		// Penny is speaking
		if penny_speaker== 1{
			animate_lipflaps++;

			if animate_lipflaps == 6{
				lipflaps++;
				animate_lipflaps = 0;
			}

			if lipflaps == 3{
				lipflaps = 0;
			}

		}

		if penny_speaker== 2{
			animate_lipflaps++;

			if animate_lipflaps == 6{
				lipflaps2++;
				animate_lipflaps = 0;
			}

			if lipflaps2 == 3{
				lipflaps2 = 0;
			}

		}

		if penny_speaker== 0{
			animate_lipflaps = 0;
			lipflaps = 0;
			lipflaps2 = 0;
		}
	}
}

if codec_active == 3{
	animate++;
	if bwoop_timer == 13 && animate == 1{
		sound_play(sound_get("sfx_codec_end"), false, 0);
	}
	if animate == 3 && bwoop_visible == 1{
		bwoop_timer = bwoop_timer + 1;
		animate = 0;
	}
	else if animate == 3 && bwoop_visible == 0{
		codecbg_timer = codecbg_timer + 1;
		animate = 0;
	}

	if bwoop_timer == 14{
		faces_visible = false;
	}

	if bwoop_timer == 17{
		bwoop_visible = 0;
	}

	if codecbg_timer == 52{
		codec_visible = 0;
		codec_active = 4;
	}
	suppress_stage_music( 1, 0.1 );
}

if codec_active == 4{
	blink = 0;
	lipflaps = 0;
	lipflaps2 = 0;
	codec_visible = 0;
	bwoop_visible = 0;
	faces_visible = false;
	begin_speaking = false;
	penny_speaker= 0;
	panel = 0;
	maxpanels = 0;
	speaker1 = "penny";
	speaker2 = "forza";
}

if faces_visible {
	var panelarr = codec_panels[@ subject];                                 //  get the subject's panel array
	maxpanels = array_length(codec_panels[@ subject]);                      //  get the length of the panel array
	codectimerbs++;                                                         //  increment the codec timer
	if (panel < maxpanels) {
		var cur_panel = panelarr[panel];                                      //  if the panel is less than maxpanels, get the panel contents
		var text_amt = array_length(cur_panel[3]);                            //  get the length of the text array
		if (codectimerbs == 1) {                                              //  if codectimerbs is 1, reset the current text and play the audio.
			cur_text = 0;
			cur_audio = sound_play(cur_panel[4]);
			penny_speaker = cur_panel[1];
			speaker2 = cur_panel[2];
		}
		if (cur_text < text_amt && codectimerbs == cur_panel[3,cur_text][0]) {//  if the current text is within the text array
			codectext = cur_panel[3,cur_text][1];                               //  and the frame matches the timer, display
			cur_text++;                                                         //  the text and increment the cur_text variable.
		} else if (codectimerbs == cur_panel[0]) {                            //  if the current text *isn't* within the array,
			penny_speaker = 0;                                                  //  stop the sound when the timer matches the panel duration...
			sound_stop(cur_audio);
		} else if (codectimerbs == cur_panel[0]+13) {                         //  and do the death check 13 frames later.
			if (speaker1 == "static" && subject != clamp(subject,1,2)) {                         //  if penny ded and not already in the death codec:
				panel = 0;                                                        //  - reset the panel,
        cur_text = 0;                                                     //  - current text,
				codectimerbs = -13;                                               //  - timer,
				if (subjects[subject] != "1905208125"){
					subject = 1;
				} else {
					subject = 2;
				}							                                                    //  - switch the codec to the death codec,
        animate = 0;                                                      //  - and reset the animate timer.
			} else {                                                            //  otherwise, increment the panel as normal.
				panel++;
				codectimerbs = 0;
				animate = 0;
			}
		}
	} else {
		if codec_active != 3 {
			codec_active = 3;
			animate = 0;
		}
	}
}
//#endregion

#endregion

#region // Abyss Rune goes here
if abyssEnabled
{
  if runeC && runeD && runeI && runeK{
    trumarvel = true;

    if !xfactor_used{
      if (attack == AT_TAUNT && window == 3 && !xfactor_is_active){
        xfactor_timelimit = 350;
        xfactor_is_active = true;
      }
      if xfactor_timelimit > 0{
        outline_color = [151, 15, 23];
        init_shader();
        xfactor_timelimit -= .25;
      }
      if xfactor_timelimit == 0{
        xfactor_is_active = false;
        xfactor_used = true;
        outline_color = [0, 0, 0];
        init_shader();
      }
    }

    if xfactor_used{
      xfactor_lvl = 0;
      xfactor_timer = get_gameplay_time() / 6;
      idle_anim_speed = .15;
      crouch_anim_speed = .1;
      walk_anim_speed = .175;
      dash_anim_speed = .2;
      pratfall_anim_speed = .25;

      walk_speed = 2.5;
      initial_dash_speed = 6.75;
      dash_speed = 6.5;

      jump_start_time = 5;
      jump_speed = 11.5;
      short_hop_speed = 7;
      djump_speed = 12.5;
      air_friction = .03;

      land_time = 5; //normal landing frames

      techroll_speed = 10;

      air_dodge_speed = 7.5;

      roll_forward_max = 9; //roll speed
      roll_backward_max = 9;
    }
    if (get_player_stocks( player ) == 1 && !xfactor_used){
      xfactor_lvl = 3;
      xfactor_timer = get_gameplay_time() / 6;
    }
    if (get_player_stocks( player ) == 2 && !xfactor_used){
      xfactor_lvl = 2;
      xfactor_timer = get_gameplay_time() / 7;
    }
    if (get_player_stocks( player ) >= 3 && !xfactor_used){
      xfactor_lvl = 1;
      xfactor_timer = get_gameplay_time() / 10;
    }

    if xfactor_timelimit > 0{
      if xfactor_lvl == 1{
        idle_anim_speed = .2;
        crouch_anim_speed = .15;
        walk_anim_speed = .18;
        dash_anim_speed = .25;
        pratfall_anim_speed = .3;

        walk_speed = 2.625;
        initial_dash_speed = 7.0875;
        dash_speed = 6.825;

        jump_speed = 12.075;
        short_hop_speed = 7.35;
        djump_speed = 13.125;
        air_friction = .0285;

        techroll_speed = 10.5;

        air_dodge_speed = 7.875;

        roll_forward_max = 9.45; //roll speed
        roll_backward_max = 9.45;
      }
      else if xfactor_lvl == 2{
        idle_anim_speed = .25;
        crouch_anim_speed = .2;
        walk_anim_speed = .275;
        dash_anim_speed = .3;
        pratfall_anim_speed = .35;

        walk_speed = 2.75;
        initial_dash_speed = 7.425;
        dash_speed = 7.15;

        jump_start_time = 4;
        jump_speed = 12.65;
        short_hop_speed = 7.7;
        djump_speed = 13.75;
        air_friction = .027;

        land_time = 4; //normal landing frames

        techroll_speed = 11;

        air_dodge_speed = 8.25;

        roll_forward_max = 9.9; //roll speed
        roll_backward_max = 9.9;
      }
      else if xfactor_lvl == 3{
        idle_anim_speed = .3;
        crouch_anim_speed = .25;
        walk_anim_speed = .325;
        dash_anim_speed = .35;
        pratfall_anim_speed = .4;

        walk_speed = 2.875;
        initial_dash_speed = 7.7625;
        dash_speed = 7.475;

        jump_start_time = 4;
        jump_speed = 13.225;
        short_hop_speed = 8.05;
        djump_speed = 14.375;
        air_friction = .0255;

        land_time = 4; //normal landing frames

        techroll_speed = 11.5;

        air_dodge_speed = 8.625;

        roll_forward_max = 10.35; //roll speed
        roll_backward_max = 10.35;
      }
      else {
        idle_anim_speed = .15;
        crouch_anim_speed = .1;
        walk_anim_speed = .175;
        dash_anim_speed = .2;
        pratfall_anim_speed = .25;

        walk_speed = 2.5;
        initial_dash_speed = 6.75;
        dash_speed = 6.5;

        jump_start_time = 5;
        jump_speed = 11.5;
        short_hop_speed = 7;
        djump_speed = 12.5;
        air_friction = .03;

        land_time = 5; //normal landing frames

        techroll_speed = 10;

        air_dodge_speed = 7.5;

        roll_forward_max = 9; //roll speed
        roll_backward_max = 9;
      }
    }
  }

  // More Up Strong Sweetspot
	/*
  if runeA{
		set_num_hitboxes(AT_USTRONG,11);

		set_hitbox_value(AT_USTRONG, 1, HG_PRIORITY, 2);

  } else {
		set_num_hitboxes(AT_USTRONG,10);

		set_hitbox_value(AT_USTRONG, 1, HG_PRIORITY, 1);
	}
*/

  // Jabs and Tilts are Dash Cancellable
  if runeB{
    if (attack == AT_JAB && window >= 4){
      if left_hard_pressed{
        hsp = -7;
        attack_end();
        destroy_hitboxes();
        set_attack(AT_DSTRONG_2);
      }
      if right_hard_pressed{
        hsp = 7;
        attack_end();
        destroy_hitboxes();
        set_attack(AT_DSTRONG_2);
      }
    }

    if (attack == AT_DATTACK && window >= 2 && has_hit_player){
      if left_hard_pressed{
        hsp = -7;
        attack_end();
        destroy_hitboxes();
        set_attack(AT_DSTRONG_2);
      }
      if right_hard_pressed{
        hsp = 7;
        attack_end();
        destroy_hitboxes();
        set_attack(AT_DSTRONG_2);
      }
    }

    if (attack == AT_FTILT && window >= 2){
      if left_hard_pressed{
        hsp = -7;
        attack_end();
        destroy_hitboxes();
        set_attack(AT_DSTRONG_2);
      }
      if right_hard_pressed{
        hsp = 7;
        attack_end();
        destroy_hitboxes();
        set_attack(AT_DSTRONG_2);
      }
    }

    if (attack == AT_UTILT && window >= 2){
      if left_hard_pressed{
        hsp = -7;
        attack_end();
        destroy_hitboxes();
        set_attack(AT_DSTRONG_2);
      }
      if right_hard_pressed{
        hsp = 7;
        attack_end();
        destroy_hitboxes();
        set_attack(AT_DSTRONG_2);
      }
    }

    if (attack == AT_DTILT && window >= 2){
      if left_hard_pressed{
        hsp = -7;
        attack_end();
        destroy_hitboxes();
        set_attack(AT_DSTRONG_2);
      }
      if right_hard_pressed{
        hsp = 7;
        attack_end();
        destroy_hitboxes();
        set_attack(AT_DSTRONG_2);
      }
    }
  }

  // DSpecial has half of the startup
  if runeC {
    set_window_value(AT_DSPECIAL, 1, AG_WINDOW_LENGTH, 3);
    set_window_value(AT_DSPECIAL_AIR, 1, AG_WINDOW_LENGTH, 4);
  } else {
    set_window_value(AT_DSPECIAL, 1, AG_WINDOW_LENGTH, 6);
    set_window_value(AT_DSPECIAL_AIR, 1, AG_WINDOW_LENGTH, 8);
  }

  // Marvel Mode
  if runeD {
    air_dodge_speed = 8;
    air_dodge_startup_frames = 0;
    air_dodge_active_frames = 4;
    air_dodge_recovery_frames = 2;

    if (state == PS_JUMPSQUAT){
      if (down_down){
          jump_speed = 16;
        }
      }

    if (state == PS_LAND or state == PS_LANDING_LAG){
      if runeE && runeD{
        jump_speed = 10.5;
      } else {
        jump_speed = 11.5;
      }
    }

    if (state == PS_DASH or state == PS_DASH_START or state == PS_DASH_STOP){
      if (shield_pressed){
        set_state(PS_WAVELAND);
      }
    }

    if (state == PS_AIR_DODGE  && state_timer == 13) {
       set_attack( PS_IDLE_AIR );
            has_airdodge = false;

    }

    if state == PS_AIR_DODGE{
      if attack_pressed{
        set_state(PS_IDLE_AIR);
      }
    }
    if free && has_hit_player{
      if shield_pressed{
        set_state(PS_AIR_DODGE);
      }
    }
  } else {
    //default attributes. this part is optional but you should have it for compatibility with
    //the random rune mode.
    air_dodge_speed = 7.5;
    air_dodge_startup_frames = 1;
    air_dodge_active_frames = 3;
    air_dodge_recovery_frames = 2;
    if state == PS_AIR_DODGE{

    }
  }

  // Terry Speed.
  if runeE {
    walk_speed = 3.2;
    dash_anim_speed = .25;
    initial_dash_speed = 6.90;
    dash_speed = 6.65;
    jump_speed = 10.5;
    short_hop_speed = 7.9;
    djump_speed = 11.5;
    roll_forward_max = 8.8;
    roll_backward_max = 8.8;
  }

  // Terry Weight
  if runeF {
    knockback_adj = .925;
  }

  // LEVEL 2
  // Falco Laser Reppuken
  if runeG{
    set_hitbox_value(AT_NSPECIAL, 1, HG_FORCE_FLINCH, 1);
  } else {
    set_hitbox_value(AT_NSPECIAL, 1, HG_FORCE_FLINCH, 0);
  }

  // That rune you totally didn't steal from olympia.
  if runeH {
    if (attack == AT_NAIR || attack == AT_FAIR || attack == AT_BAIR || attack == AT_UAIR || attack == AT_DAIR){
      if has_hit_player{
        if joy_pad_idle && attack_pressed{
          set_attack(AT_NAIR);
        }
        if spr_dir == -1{
          if left_down && attack_pressed{
            set_attack(AT_FAIR);
          }
          else if right_down && attack_pressed{
            set_attack(AT_BAIR);
          }
        } else {
          if left_down && attack_pressed{
            set_attack(AT_BAIR);
          }
          else if right_down && attack_pressed{
            set_attack(AT_FAIR);
          }
        }
        if up_down && attack_pressed{
          set_attack(AT_UAIR);
        }
        if down_down && attack_pressed{
          set_attack(AT_DAIR);
        }
        can_jump = true;
      }
    }
  }

  // Aerials are now on the same tier as Specials?
  if runeI {
    if (attack == AT_FSTRONG || attack == AT_USTRONG || attack == AT_DSTRONG){
      if has_hit_player && free{
        if joy_pad_idle && attack_pressed{
          set_attack(AT_NAIR);
        }
        if spr_dir == -1{
          if left_down && attack_pressed{
            set_attack(AT_FAIR);
          }
          else if right_down && attack_pressed{
            set_attack(AT_BAIR);
          }
        } else {
          if left_down && attack_pressed{
            set_attack(AT_BAIR);
          }
          else if right_down && attack_pressed{
            set_attack(AT_FAIR);
          }
        }
        if up_down && attack_pressed{
          set_attack(AT_UAIR);
        }
        if down_down && attack_pressed{
          set_attack(AT_DAIR);
        }
        can_jump = true;
      }
      else if has_hit_player && !free{
        can_jump = true;
      }
    }
  }

  // FSpecial goes NYOOM
  if runeJ{
    set_window_value(AT_FSPECIAL, 2, AG_WINDOW_HSPEED, 16);
		set_window_value(AT_FSPECIAL, 2, AG_WINDOW_HSPEED, 16);
  }

  // FOOT DIVE
  if runeK{
    if special_down && window == 1 && window_timer >= 6{
      set_window_value(AT_DSPECIAL_AIR, 1, AG_WINDOW_HAS_SFX, 1);
      set_window_value(AT_DSPECIAL_AIR, 1, AG_WINDOW_SFX, sound_get("sfx_whensmahvel"));
      set_window_value(AT_DSPECIAL_AIR, 1, AG_WINDOW_SFX_FRAME, 2);

      set_num_hitboxes(AT_DSPECIAL_AIR,1);

      set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_PARENT_HITBOX, 1);
      set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_HITBOX_TYPE, 1);
      set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_WINDOW, 2);
      set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_LIFETIME, 14);
      set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_HITBOX_X, 22);
      set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_HITBOX_Y, -14);
      set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_WIDTH, 60);
      set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_HEIGHT, 60);
      set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_SHAPE, 0);
      set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_PRIORITY, 1);
      set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_DAMAGE, 8);
      set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_ANGLE, 275);
      set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_ANGLE_FLIPPER, 6);
      set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_BASE_KNOCKBACK, 5.5);
      set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_KNOCKBACK_SCALING, 1.25);
      set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_BASE_HITPAUSE, 12);
      set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_HITPAUSE_SCALING, .5);
      set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_VISUAL_EFFECT_Y_OFFSET, -10);
      set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
      set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_HITBOX_GROUP, 1);
    } else {
      set_window_value(AT_DSPECIAL_AIR, 1, AG_WINDOW_HAS_SFX, 1);
      set_window_value(AT_DSPECIAL_AIR, 1, AG_WINDOW_SFX, sound_get("sfx_whensmahvel"));
      set_window_value(AT_DSPECIAL_AIR, 1, AG_WINDOW_SFX_FRAME, 2);

      set_num_hitboxes(AT_DSPECIAL_AIR,1);

      set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_PARENT_HITBOX, 1);
      set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_HITBOX_TYPE, 1);
      set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_WINDOW, 2);
      set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_LIFETIME, 14);
      set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_HITBOX_X, 22);
      set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_HITBOX_Y, -14);
      set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_WIDTH, 60);
      set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_HEIGHT, 60);
      set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_SHAPE, 0);
      set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_PRIORITY, 1);
      set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_DAMAGE, 6);
      set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_ANGLE, 75);
      set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_ANGLE_FLIPPER, 6);
      set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_BASE_KNOCKBACK, 4);
      set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_KNOCKBACK_SCALING, 1);
      set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_BASE_HITPAUSE, 12);
      set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_HITPAUSE_SCALING, .5);
      set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_VISUAL_EFFECT_Y_OFFSET, -10);
      set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
      set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_HITBOX_GROUP, 1);
    }

    if (attack == AT_DSPECIAL_AIR && has_hit_player){
      set_attack(PS_IDLE_AIR);
      old_vsp = -7;
      old_hsp = -4;
    }
    else if (attack == AT_DSPECIAL_AIR && !has_hit_player) {
      old_vsp = 0;
      old_hsp = 0;
    }
  }

  // Strongs and Specials are dash cancellable
  if runeL{
    if (attack == AT_NSPECIAL && window >= 2){
      if left_hard_pressed{
        hsp = -7;
        attack_end();
        destroy_hitboxes();
        set_attack(AT_DSTRONG_2);
      }
      if right_hard_pressed{
        hsp = 7;
        attack_end();
        destroy_hitboxes();
        set_attack(AT_DSTRONG_2);
      }
    }

    if ((attack == AT_FSPECIAL or attack == AT_FSPECIAL_AIR) && window == 1){
      if left_hard_pressed{
        hsp = -7;
        attack_end();
        destroy_hitboxes();
        set_attack(AT_DSTRONG_2);
      }
      if right_hard_pressed{
        hsp = 7;
        attack_end();
        destroy_hitboxes();
        set_attack(AT_DSTRONG_2);
      }
    }

    if (attack == AT_USPECIAL && window == 1){
      if left_hard_pressed{
        hsp = -7;
        attack_end();
        destroy_hitboxes();
        set_attack(AT_DSTRONG_2);
      }
      if right_hard_pressed{
        hsp = 7;
        attack_end();
        destroy_hitboxes();
        set_attack(AT_DSTRONG_2);
      }
    }

    if (attack == AT_DSPECIAL && window >= 2){
      if left_hard_pressed{
        hsp = -7;
        attack_end();
        destroy_hitboxes();
        set_attack(AT_DSTRONG_2);
      }
      if right_hard_pressed{
        hsp = 7;
        attack_end();
        destroy_hitboxes();
        set_attack(AT_DSTRONG_2);
      }
    }

    if (attack == AT_DSPECIAL_AIR && window >= 2){
      if left_hard_pressed{
        hsp = -7;
        attack_end();
        destroy_hitboxes();
        set_attack(AT_DSTRONG_2);
      }
      if right_hard_pressed{
        hsp = 7;
        attack_end();
        destroy_hitboxes();
        set_attack(AT_DSTRONG_2);
      }
    }

    if (attack == AT_USTRONG && window >= 6){
      if left_hard_pressed{
        hsp = -7;
        attack_end();
        destroy_hitboxes();
        set_attack(AT_DSTRONG_2);
      }
      if right_hard_pressed{
        hsp = 7;
        attack_end();
        destroy_hitboxes();
        set_attack(AT_DSTRONG_2);
      }
    }

    if (attack == AT_DSTRONG && window >= 2){
      if left_hard_pressed{
        hsp = -7;
        attack_end();
        destroy_hitboxes();
        set_attack(AT_DSTRONG_2);
      }
      if right_hard_pressed{
        hsp = 7;
        attack_end();
        destroy_hitboxes();
        set_attack(AT_DSTRONG_2);
      }
    }

    if (attack == AT_FSTRONG && window >= 2){
      if left_hard_pressed{
        hsp = -7;
        attack_end();
        destroy_hitboxes();
        set_attack(AT_DSTRONG_2);
      }
      if right_hard_pressed{
        hsp = 7;
        attack_end();
        destroy_hitboxes();
        set_attack(AT_DSTRONG_2);
      }
    }
  }

	if runeM{
		if (attack == AT_FSPECIAL_AIR && has_hit_player){
			djumps = 0;
		}
	}
}
#endregion

// Trummel and Alto Codec goes here
if trummelcodecneeded {
	if codec_active < 4{
	    trummelcodec = 17;
	    trummelcodecmax = 24;
	    trummelcodecsprite1 = sprite_get("empty_sprite");
	    trummelcodecsprite2 = sprite_get("empty_sprite");
	    page = 0;

	    //Page 0
	    trummelcodecspeaker[page] = 2;
	    trummelcodecexpression[page] = 0;

	    trummelcodecline[page,1] = "how come they can talk";
	    trummelcodecline[page,2] = "but we cant";
	    trummelcodecline[page,3] = "";
	    trummelcodecline[page,4] = "";
	    page++;

	    //Page 1
	    trummelcodecspeaker[page] = 1;
	    trummelcodecexpression[page] = 2;

	    trummelcodecline[page,1] = "Probably because they ";
	    trummelcodecline[page,2] = "have a microphone.";
	    trummelcodecline[page,3] = "";
	    trummelcodecline[page,4] = "";
	    page++;

	    //Page 2
	    trummelcodecspeaker[page] = 1;
	    trummelcodecexpression[page] = 0;

	    trummelcodecline[page,1] = "We can always use";
	    trummelcodecline[page,2] = "#voice-chat-general.";
	    trummelcodecline[page,3] = "";
	    trummelcodecline[page,4] = "";
	    page++;

	    //Page 3
	    trummelcodecspeaker[page] = 2;
	    trummelcodecexpression[page] = 0;

	    trummelcodecline[page,1] = "nah";
	    trummelcodecline[page,2] = "";
	    trummelcodecline[page,3] = "who is that dog anyways";
	    trummelcodecline[page,4] = "";
	    page++;

	    //Page 4
	    trummelcodecspeaker[page] = 1;
	    trummelcodecexpression[page] = 1;

	    trummelcodecline[page,1] = "That would be Penny";
	    trummelcodecline[page,2] = "Shiba. She often goes";
	    trummelcodecline[page,3] = "by Patches-";
	    trummelcodecline[page,4] = "";
	    page++;

	    //Page 5
	    trummelcodecspeaker[page] = 1;
	    trummelcodecexpression[page] = 0;

	    trummelcodecline[page,1] = "due to her...";
	    trummelcodecline[page,2] = "";
	    trummelcodecline[page,3] = "";
	    trummelcodecline[page,4] = "";
	    page++;

	    //Page 6
	    trummelcodecspeaker[page] = 1;
	    trummelcodecexpression[page] = 5;

	    trummelcodecline[page,1] = "Injuries.";
	    trummelcodecline[page,2] = "";
	    trummelcodecline[page,3] = "";
	    trummelcodecline[page,4] = "";
	    page++;

	    //Page 7
	    trummelcodecspeaker[page] = 1;
	    trummelcodecexpression[page] = 0;

	    trummelcodecline[page,1] = "She used to work under";
	    trummelcodecline[page,2] = "Emperor Loxodont, serving";
	    trummelcodecline[page,3] = "in the police force of";
	    trummelcodecline[page,4] = "Neo Fire Capital.";
	    page++;

	    //Page 8
	    trummelcodecspeaker[page] = 1;
	    trummelcodecexpression[page] = 5;

	    trummelcodecline[page,1] = "During a mission to stop";
	    trummelcodecline[page,2] = "some rioters, and save";
	    trummelcodecline[page,3] = "civilians, she was caught";
	    trummelcodecline[page,4] = "in an explosion.";
	    page++;

	    //Page 9
	    trummelcodecspeaker[page] = 1;
	    trummelcodecexpression[page] = 5;

	    trummelcodecline[page,1] = "After she recovered...";
	    trummelcodecline[page,2] = "";
	    trummelcodecline[page,3] = "She was a joke to her";
	    trummelcodecline[page,4] = "fellow police officers.";
	    page++;

	    //Page 10
	    trummelcodecspeaker[page] = 1;
	    trummelcodecexpression[page] = 5;

	    trummelcodecline[page,1] = "So, with her faith in";
	    trummelcodecline[page,2] = "Loxodont lost... She";
	    trummelcodecline[page,3] = "and her friend, Forza,";
	    trummelcodecline[page,4] = "made a break for it.";
	    page++;

	    //Page 11
	    trummelcodecspeaker[page] = 1;
	    trummelcodecexpression[page] = 4;

	    trummelcodecline[page,1] = "Now they work as";
	    trummelcodecline[page,2] = "bounty hunters.";
	    trummelcodecline[page,3] = "Sometimes acting as";
	    trummelcodecline[page,4] = "chaos agents.";
	    page++;

	    //Page 12
	    trummelcodecspeaker[page] = 2;
	    trummelcodecexpression[page] = 0;

	    trummelcodecline[page,1] = "does her metal arm help";
	    trummelcodecline[page,2] = "her in combat";
	    trummelcodecline[page,3] = "";
	    trummelcodecline[page,4] = "like light punch";
	    page++;

	    //Page 13
	    trummelcodecspeaker[page] = 1;
	    trummelcodecexpression[page] = 1;

	    trummelcodecline[page,1] = "Actually, it can build a";
	    trummelcodecline[page,2] = "kinetic charge and fire it";
	    trummelcodecline[page,3] = "off in contained bursts";
	    trummelcodecline[page,4] = "of energy.";
	    page++;

	    //Page 14
	    trummelcodecspeaker[page] = 2;
	    trummelcodecexpression[page] = 0;

	    trummelcodecline[page,1] = "medium punch";
	    trummelcodecline[page,2] = "";
	    trummelcodecline[page,3] = "";
	    trummelcodecline[page,4] = "";
	    page++;

	    //Page 15
	    trummelcodecspeaker[page] = 1;
	    trummelcodecexpression[page] = 0;

	    trummelcodecline[page,1] = "She can also use it to";
	    trummelcodecline[page,2] = "pack a powerful flurry";
	    trummelcodecline[page,3] = "of blows.";
	    trummelcodecline[page,4] = "";
	    page++;

	    //Page 16
	    trummelcodecspeaker[page] = 2;
	    trummelcodecexpression[page] = 0;

	    trummelcodecline[page,1] = "light kick";
	    trummelcodecline[page,2] = "";
	    trummelcodecline[page,3] = "";
	    trummelcodecline[page,4] = "";
	    page++;

	    //Page 17
	    trummelcodecspeaker[page] = 1;
	    trummelcodecexpression[page] = 4;

	    trummelcodecline[page,1] = "Trummel...";
	    trummelcodecline[page,2] = "";
	    trummelcodecline[page,3] = "";
	    trummelcodecline[page,4] = "";
	    page++;

	    //Page 18
	    trummelcodecspeaker[page] = 2;
	    trummelcodecexpression[page] = 0;

	    trummelcodecline[page,1] = "heavy punch";
	    trummelcodecline[page,2] = "";
	    trummelcodecline[page,3] = "";
	    trummelcodecline[page,4] = "";
	    page++;

	    //Page 19
	    trummelcodecspeaker[page] = 1;
	    trummelcodecexpression[page] = 4;

	    trummelcodecline[page,1] = "TRUMMEL!";
	    trummelcodecline[page,2] = "";
	    trummelcodecline[page,3] = "";
	    trummelcodecline[page,4] = "";
	    page++;

	    //Page 20
	    trummelcodecspeaker[page] = 2;
	    trummelcodecexpression[page] = 0;

	    trummelcodecline[page,1] = "...";
	    trummelcodecline[page,2] = "";
	    trummelcodecline[page,3] = "";
	    trummelcodecline[page,4] = "";
	    page++;

	    //Page 21
	    trummelcodecspeaker[page] = 1;
	    trummelcodecexpression[page] = 4;

	    trummelcodecline[page,1] = "...";
	    trummelcodecline[page,2] = "";
	    trummelcodecline[page,3] = "";
	    trummelcodecline[page,4] = "";
	    page++;

	    //Page 22
	    trummelcodecspeaker[page] = 2;
	    trummelcodecexpression[page] = 0;

	    trummelcodecline[page,1] = "...";
	    trummelcodecline[page,2] = "";
	    trummelcodecline[page,3] = "";
	    trummelcodecline[page,4] = "";
	    page++;

	    //Page 23
	    trummelcodecspeaker[page] = 1;
	    trummelcodecexpression[page] = 1;

	    trummelcodecline[page,1] = "Oh thank goodness-";
	    trummelcodecline[page,2] = "";
	    trummelcodecline[page,3] = "";
	    trummelcodecline[page,4] = "";
	    page++;

	    //Page 24
	    trummelcodecspeaker[page] = 2;
	    trummelcodecexpression[page] = 0;

	    trummelcodecline[page,1] = "hold diagonal whichever";
	    trummelcodecline[page,2] = "way you are heckin going";
	    trummelcodecline[page,3] = "you only hit X hecking up";
	    trummelcodecline[page,4] = "hecking heavy kick you cant do it on the ground motherhecker that crap dont work lets start the motherhecker off right ah ahhh ohh ohhh drop that crap wait do it motherhecker ohhh ohh ohhh hows it taste keep the rhythm up if you heck up the rhythm the motherheckin combo will drop motherhecker keep that mother heckin crap up";
	    page++;
	} else if codec_active == 4 {
		  trummelcodec = 17;
	    trummelcodecmax = 14;
	    trummelcodecsprite1 = sprite_get("empty_sprite");
	    trummelcodecsprite2 = sprite_get("empty_sprite");
	    page = 0;

	    //Page 0
	    trummelcodecspeaker[page] = 2;
	    trummelcodecexpression[page] = 0;

	    trummelcodecline[page,1] = "alto";
	    trummelcodecline[page,2] = "";
	    trummelcodecline[page,3] = "";
	    trummelcodecline[page,4] = "i want to have a voice";
	    page++;

	    //Page 1
	    trummelcodecspeaker[page] = 1;
	    trummelcodecexpression[page] = 2;

	    trummelcodecline[page,1] = "Trummel, we don't have";
	    trummelcodecline[page,2] = "the funding for that.";
	    trummelcodecline[page,3] = "";
	    trummelcodecline[page,4] = "";
	    page++;

	    //Page 2
	    trummelcodecspeaker[page] = 1;
	    trummelcodecexpression[page] = 0;

	    trummelcodecline[page,1] = "Besides, it would be";
	    trummelcodecline[page,2] = "kind of weird for us";
	    trummelcodecline[page,3] = "to suddenly start";
	    trummelcodecline[page,4] = "talking.";
	    page++;

	    //Page 3
	    trummelcodecspeaker[page] = 2;
	    trummelcodecexpression[page] = 0;

	    trummelcodecline[page,1] = "...";
	    trummelcodecline[page,2] = "";
	    trummelcodecline[page,3] = "";
	    trummelcodecline[page,4] = "";
	    page++;

	    //Page 4
	    trummelcodecspeaker[page] = 1;
	    trummelcodecexpression[page] = 0;

	    trummelcodecline[page,1] = "Trummel?";
	    trummelcodecline[page,2] = "";
	    trummelcodecline[page,3] = "";
	    trummelcodecline[page,4] = "";
	    page++;

	    //Page 5
	    trummelcodecspeaker[page] = 2;
	    trummelcodecexpression[page] = 0;

	    trummelcodecline[page,1] = "...";
	    trummelcodecline[page,2] = "";
	    trummelcodecline[page,3] = "";
	    trummelcodecline[page,4] = "";
	    page++;

	    //Page 6
	    trummelcodecspeaker[page] = 1;
	    trummelcodecexpression[page] = 2;

	    trummelcodecline[page,1] = "Earth to Trum.";
	    trummelcodecline[page,2] = "";
	    trummelcodecline[page,3] = "";
	    trummelcodecline[page,4] = "";
	    page++;

	    //Page 7
	    trummelcodecspeaker[page] = 2;
	    trummelcodecexpression[page] = 0;

	    trummelcodecline[page,1] = "...";
	    trummelcodecline[page,2] = "";
	    trummelcodecline[page,3] = "";
	    trummelcodecline[page,4] = "";
	    page++;

	    //Page 8
	    trummelcodecspeaker[page] = 2;
	    trummelcodecexpression[page] = 5;

	    trummelcodecline[page,1] = "almost done";
	    trummelcodecline[page,2] = "";
	    trummelcodecline[page,3] = "";
	    trummelcodecline[page,4] = "";
	    page++;

	    //Page 9
	    trummelcodecspeaker[page] = 1;
	    trummelcodecexpression[page] = 1;

	    trummelcodecline[page,1] = "Almost done doing";
	    trummelcodecline[page,2] = "what?";
	    trummelcodecline[page,3] = "";
	    trummelcodecline[page,4] = "";
	    page++;

	    //Page 10
	    trummelcodecspeaker[page] = 2;
	    trummelcodecexpression[page] = 5;

	    trummelcodecline[page,1] = "i figured out a way";
	    trummelcodecline[page,2] = "to let us speak";
	    trummelcodecline[page,3] = "";
	    trummelcodecline[page,4] = "";
	    page++;

	    //Page 11
	    trummelcodecspeaker[page] = 1;
	    trummelcodecexpression[page] = 5;

	    trummelcodecline[page,1] = "TRUMMEL NO!";
	    trummelcodecline[page,2] = "";
	    trummelcodecline[page,3] = "";
	    trummelcodecline[page,4] = "";
	    page++;

	    //Page 12
	    trummelcodecspeaker[page] = 2;
	    trummelcodecexpression[page] = 0;

	    trummelcodecline[page,1] = "woag";
	    trummelcodecline[page,2] = "";
	    trummelcodecline[page,3] = "";
	    trummelcodecline[page,4] = "";
	    page++;

	    //Page 13
	    trummelcodecspeaker[page] = 2;
	    trummelcodecexpression[page] = 0;

	    trummelcodecline[page,1] = "see? it worked.";
	    trummelcodecline[page,2] = "";
	    trummelcodecline[page,3] = "";
	    trummelcodecline[page,4] = "";
	    page++;

	    //Page 14
	    trummelcodecspeaker[page] = 1;
	    trummelcodecexpression[page] = 5;

	    trummelcodecline[page,1] = "*sigh*";
	    trummelcodecline[page,2] = "";
	    trummelcodecline[page,3] = "scared me for";
	    trummelcodecline[page,4] = "a second there.";
	    page++;

		if (trummelcodec_id.codecindex == 3 or trummelcodec_id.codecindex == 5 or trummelcodec_id.codecindex == 7 or trummelcodec_id.codecindex == 10){
			if trummelcodec_id.codectimer2 <= 1 && trummelcodec_id.currentcodecline == 1{
				sound_play(sound_get("sfx_typing"));
			}
		}
		if (trummelcodec_id.codecindex == 4 or trummelcodec_id.codecindex == 6 or trummelcodec_id.codecindex == 8 or trummelcodec_id.codecindex == 11){
			if trummelcodec_id.codectimer2 <= 1 && trummelcodec_id.currentcodecline == 1{
				sound_stop(sound_get("sfx_typing"));
			}
		}
		if trummelcodec_id.codecindex == 12{
			if trummelcodec_id.codectimer2 <= 1 && trummelcodec_id.currentcodecline == 1{
				sound_play(sound_get("sfx_hahawoag"));
			}
		}
		if trummelcodec_id.codecindex == 13{
			if trummelcodec_id.codectimer2 <= 1 && trummelcodec_id.currentcodecline == 1{
				sound_play(sound_get("laugh_track"));
			}
		}

	}
}

if codec_active == 4{



	if trummelcodecneeded{



	}
}
// Otto Functionality
var do_otto_interaction = false; //sets a variable that can be accessed from inside the with statement

with(asset_get("oPlayer")){
    if ("i_am_otto_the_billiard_biker" in self && bobble_id == other.id && bike){ //bike is the variable for if otto is on his bike
        do_otto_interaction = true;
    }
}

// Poyo Functionality goes here
//We forgot kirby functionality, fight me.

//Blur code we currently don't have permission to use.
//Blur thing - Move back all other frames
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
