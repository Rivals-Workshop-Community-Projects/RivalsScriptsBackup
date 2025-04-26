//B - Reversals
switch(attack){
	case AT_NSPECIAL:
	case AT_FSPECIAL:
	case AT_DSPECIAL:
	case AT_USPECIAL:
		trigger_b_reverse();
		break;
}



// per-attack logic

switch(attack){
	case AT_NSPECIAL:
		if(window == 1){
			if(window_timer == 8 && special_down){
				nspecial_charge++;
				window_timer -= 1;
			}
			if(window_timer >= 7 && shield_pressed){window = 3;window_timer = 0;}
			if(b_reversed == false && window_timer < 7)KoB_reverse();
			if(window_timer == phone_window_end){
				move_cooldown[attack] = 90;
				nspec_cloud = create_hitbox(attack,1,x+75*spr_dir,y-35);
				nspec_cloud.length+=round(nspecial_charge*.75);
				nspecial_charge = 0;
				sound_play(sound_get("extinguisher1"));
				var fx = spawn_hit_fx(x+80*spr_dir,y-5,fx_spray);fx.depth = depth - 1;
			}
		}	
	break;	
	case AT_USPECIAL:
	    if(window == 1 && !hitpause){
	    	if(position_meeting(x+45*spr_dir,y-1,asset_get("par_block"))){
	    		x-=50*spr_dir;
	    	}
	        if(window_timer == 1){sound_play(sound_get("pipe_suck"));grab_target = noone;move_cooldown[AT_USPECIAL] = 999;}
	        if(window_timer == 4){
	        	uspec_pipe = create_hitbox(attack,1,x+45*spr_dir,y-90);
	        	create_hitbox(attack,4,x,y-50);
	        	uspec_pipe.depth = depth + 1;
	        }
	        hsp*=.8;vsp *=.75;can_move = false;
	    	if(grab_target != noone){
	    		Grab(0,-40,2,4,grab_target,false);
	    		grab_target.force_depth = true;
	    		grab_target.depth = depth;
	    	}	        
	    }
	    if(window == 2){
	    	if(grab_target != noone){
	    		if(window_timer < 5){grab_target.hsp = 10*spr_dir;grab_target.vsp = -14;}
	    		grab_target.force_depth = true;
	    		grab_target.depth = depth;	    		
	    	}
	    }
	    if(window > 2){
	    	vsp*=.98;hsp*=.98;
	    }
	    if(window == 2 || window == 3 && window_timer < 2){
	    	if(window_timer % 4 == 0 && !hitpause)create_hitbox(attack,2,x,y);
	    }
	    if(window >= 2)set_attack_value(AT_USPECIAL, AG_CATEGORY, 1);
	    if(window >= 4)can_wall_jump = true;
	break;
	case AT_FSPECIAL:
		if(window == 1 && window_timer == 1)PlayVoiceClip("meatball",2);
		if(window == 2 && b_reversed == false){
	    	KoB_reverse();
		}		
		if(!hitpause){
			can_fast_fall = false;can_move = false;can_wall_jump = true;
	        if(window == 3){
		        if(!special_down || was_parried){
		        	window = 4;window_timer = 0;hsp *= 0.75;move_cooldown[AT_FSPECIAL] = 40;
		        }else{
		        	if(shield_pressed){window = 20;window_timer = 999;clear_button_buffer(PC_SHIELD_PRESSED);}
		        	var moving = false;
	        		if(right_down && spr_dir == 1 || left_down && spr_dir == -1){
	        			if(abs(hsp) < 6){
		        			hsp += 0.5*spr_dir;
		        		}moving = true;
	        		}else if(right_down && spr_dir == -1 || left_down && spr_dir == 1){
	        			hsp -= 0.75*spr_dir;
	        			if(hsp*spr_dir < 0){
	        				spr_dir = -spr_dir;
	        			}moving = true;
	        		}
		        	if(!moving){
			        	if(abs(hsp) < 6){
			        		if(abs(hsp) < 1){
			        			hsp += 0.1*spr_dir;
			        		}else if(abs(hsp) < 7){
			        			hsp += 0.6*spr_dir;
			        		}else{
			        			hsp += 0.05*spr_dir;
			        		}
			        	}
		        	}
		        	if(meatball_fill >= .8)hsp*=.9;
		        	if (position_meeting(x+30*spr_dir,y-5,asset_get("par_block")) || position_meeting(x+30*spr_dir,y-55,asset_get("par_block"))){
		        		hsp = -4*spr_dir;
		        		spr_dir*=-1;
		        	}	        	
		        	if(abs(hsp) > 1){meatball_fill+=(!free)?0.02:0.01;meatball_angle-=15*spr_dir;}
		        	meatball_fill = clamp(meatball_fill,0,1.4);
		        }
		        set_window_value(attack, 3, AG_WINDOW_LENGTH, 20-abs(hsp));
		        if(abs(hsp) < 1)set_window_value(attack, 3, AG_WINDOW_LENGTH, 1);
	        }
	        if(window == 4){
	        	if(window_timer == 6){
	        		if(free && fspecial_stall < 1){vsp -= 5;vsp = min(vsp, -5);fspecial_stall += 1;}
	        		if(meatball_fill < .4)meatball = create_hitbox(attack,2,x+45*spr_dir,y-35);
	        		if(meatball_fill >= .4 && meatball_fill < .8)meatball = create_hitbox(attack,3,x+45*spr_dir,y-35);
	        		if(meatball_fill >= .8 && meatball_fill < 1.2)meatball = create_hitbox(attack,4,x+45*spr_dir,y-35);
	        		if(meatball_fill >= 1.2)meatball = create_hitbox(attack,5,x+45*spr_dir,y-35);
	        		meatball_fill = 0;
		        	if(right_down && spr_dir == 1 || left_down && spr_dir == -1){
		        		if(up_down){
		        			meatball.hsp *= 1.5;meatball.vsp *= 1.2;
		        		}else{
		        			meatball.hsp *= 1.75;meatball.vsp *= 0.5;
		        		}
		        	}else if(right_down && spr_dir == -1 || left_down && spr_dir == 1){
		        		meatball.hsp *= -0.4;meatball.vsp *= 1.2;
		        	}else if(up_down){
		        		meatball.hsp *= 0.5;meatball.vsp *= 1.5;
		        	}else if(down_down){
		        		meatball.hsp *= 0.2;meatball.vsp *= 0.5;
		        	}	        		
	        	}
	        }
		    if(window == 2 || window == 3){
		    	if(jump_pressed && !free){
		        	vsp = -9;
		        	sound_play(asset_get("sfx_jumpground"));
		        	if(hsp > 0 && abs(hsp) >= 8){
		        		hsp = 8;
		        	}else if(hsp < 0 && abs(hsp) >= 8){
		        		hsp = -8;
		        	}
		    	}
		    }	        
		}
	break;
	case AT_DSPECIAL:
	    if(window == 1 && !hitpause){
	    	if(window_timer == 5){
				if(!shield_down && downspecialcharge > 0){window = 4;window_timer = 5;}	    		
	    	}
			if(window_timer == 6){
				create_hitbox(attack,1,x,y);
				create_hitbox(attack,2,x,y);
			}
	    	if(window_timer == phone_window_end){
	    		if(alt == 24){PlayVoiceClip("inside_mine");return;}
				var rand = random_func(0, 2, true);
		    	if(rand == 0){
					PlayVoiceClip("toast");
				}else if(rand == 1){
					PlayVoiceClip("toaster");
				}
	    	}			
	    }
	    if(window == 2){
			var horizontal = right_down - left_down;
			if(horizontal != 0)spr_dir = horizontal;
			if(!special_down){window++;window_timer = 0;}
	    	if(dspec_invinc > 0){
	    		if(!hitpause){
	    			dspec_invinc -= 1;
	    		}
	    	}else if(dspec_invinc == 0){
	    		dspec_invinc = -1;
	    	}else if(dspec_invinc < 0){
	    		dspec_invinc += 1;
	    	}
	    	if(dspec_invinc >= 0){
    			reset_window_value(AT_DSPECIAL, 2, AG_WINDOW_INVINCIBILITY);
    		}
	    }
	    if(window == 4 && !hitpause){
			if(window_timer == 6){
				sound_play(sound_get("toast_shoot"),false,noone,0.8);
				create_hitbox(attack,2,x,y);
				var toast = create_hitbox(AT_USTRONG,1,x+55*spr_dir,y-25);
				toast.toast_count = (downspecialcharge >= 30)+(downspecialcharge >= 60);
	        	if(phone_cheats[CHEAT_TOASTER] > 0)toast.toast_count = phone_cheats[CHEAT_TOASTER];
	        	hsp = (-8+(toast.toast_count*-4))*spr_dir;
	        	var explosionhitbox = create_hitbox(AT_DSPECIAL, 3, round(x+65*spr_dir), round(y-35));explosionhitbox.player = player;
	        	var explode = spawn_hit_fx(x+65*spr_dir,y-35,fx_explosion);explode.draw_angle = random_func(0, 360, true);				
				//toast.damageOverride = true;
				explosionhitbox.damage = ceil(explosionhitbox.damage+(downspecialcharge));explosionhitbox.kb_scale = explosionhitbox.kb_scale+(downspecialcharge/50);
				explosionhitbox.damage = min(explosionhitbox.damage,999);explosionhitbox.kb_scale = min(explosionhitbox.kb_scale,2);				
				//print(explosionhitbox.damage);print(explosionhitbox.kb_scale);
				sound_play(sound_get("dspecial_explode"),false,noone,1);shake_camera(10, 5);
				toast.spr_dir = spr_dir;
				toast.hsp = 9*spr_dir;toast.vsp *= 0.25;
				downspecialcharge = 0;
			}
	    	if(window_timer == phone_window_end){
				var rand = random_func(0, 2, true);
		    	if(rand == 0){
					PlayVoiceClip("toast");
				}else if(rand == 1){
					PlayVoiceClip("toaster");
				}
	    	}			
	    }
	break;	
	case AT_TAUNT:
		if((window == 1 || window == 5) && window_timer == 1 && !hitpause){
			sound_play(sound_get("paper"));
		}
		if(window == 2 && window_timer == 1 && !hitpause){
			voice = sound_play(sound_get("dear_pesky_plumbers"),false,noone,1.5);
		}
		if(window == 3 && window_timer == 1 && !hitpause){
			voice = sound_play(sound_get("we gotta find the princess"),false,noone,1.5);
		}
		if(window >= 2 && window < 5){
			if(taunt_pressed){
				window = 5;window_timer = 0;
				sound_stop(voice);
			}
		}
		if(window == 6){
			if(!taunt_pressed)cancelattack();
			if(window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){window_timer = 0;}
		}
		if(window < 6){
			if(attack_pressed){
				window = 6;window_timer = 0;clear_button_buffer(PC_ATTACK_PRESSED);
				PlayVoiceClip("smoke", 1.5);
			}
		}
	break;	
	case AT_TAUNT_2:
		if(window == 1){
			if(playercount > 1){
				var closest_id = noone;
		        var closest_distance = -1;
		        with oPlayer if self != other && self.state != PS_DEAD {
		            if closest_id == noone {
		                closest_id = self;
		                closest_distance = point_distance(x, y, other.x, other.y);
		            }
		            else if point_distance(x, y, other.x, other.y) < closest_distance {
		                closest_id = self;
		                closest_distance = point_distance(x, y, other.x, other.y);
		            }
		        }
		        var gay_target = closest_id;
		        spr_dir = (gay_target.x - x) > 0 ? 1 : -1;	
			}
			if(window_timer == 1 && !hitpause){
				voice = sound_play(sound_get("gay"),false,noone,1.1);
			}
		}
		if(window == 2){
			if(window_timer == 9 && !hitpause){
				voice = sound_play(sound_get("no"),false,noone,1.1);
			}			
		}
	break;
	case AT_FSTRONG:
		if(window == 1 && window_timer == 1 && !hitpause){
        	reset_hitbox_value(AT_FSTRONG, 2, HG_WIDTH);reset_hitbox_value(AT_FSTRONG, 2, HG_HEIGHT);
            var poof = spawn_hit_fx(x-45*spr_dir,y-45,fx_poof);poof.depth = depth-1;
            sound_play(sound_get("poof"))
            PlayVoiceClip("peach_boys");
            PlayVoiceClip("princess",2,false);
        }
        if(window == 2){
        	if(window_timer == phone_window_end)peach = create_hitbox(attack,1,x-45*spr_dir,y-45);
        }
        move_cooldown[AT_FSTRONG] = 10;
	break;
	case AT_USTRONG:
		if(window <= 2){
			reset_hitbox_value(AT_USTRONG, 1, HG_PROJECTILE_HSPEED);
			if(right_down)set_hitbox_value(AT_USTRONG, 1, HG_PROJECTILE_HSPEED, 3*spr_dir);
			if(left_down)set_hitbox_value(AT_USTRONG, 1, HG_PROJECTILE_HSPEED, -3*spr_dir);
			
			set_hitbox_value(AT_USTRONG, 1, HG_PROJECTILE_VSPEED, -12-(strong_charge/10));
		}
		if(window == 2 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) && !hitpause){
			sound_play(sound_get("toast_shoot"),false,noone,0.8);
			var rand = random_func(0, 2, true);
	    	if(rand == 0){
				PlayVoiceClip("toast");
			}else if(rand == 1){
				PlayVoiceClip("toaster");
			}
			var toast_proj = create_hitbox(attack,1,x+5*spr_dir,y-25);toast_proj.toast_type = (strong_charge>=30)?(strong_charge == 60)?2:0:1;toast_proj.image_index = toast_proj.toast_type;
		}
	break;
	case AT_DSTRONG:
		if(window == 7 && window_timer == 6 && !hitpause){
			var signhitbox = create_hitbox(attack,4,x+26*spr_dir,y);signhitbox.spr_dir = 1;
		}
		if(window == 8 && window_timer == 8 && has_hit && !hitpause){
			PlayVoiceClip("that oughta do it", 2);window = 9;window_timer = 0;
		}
		if(window >= 9){
			cancelattack();
		}
	break;
	case AT_FTILT:
        if(window == 1 && window_timer == 1 && !hitpause){
            PlayVoiceClip("look");
        }if(!attack_down && !right_stick_down && !left_stick_down)att_hold = false;
        if(window == 3 && (window_timer == 1 || window_timer == 7) && att_hold){
			if(left_down && spr_dir == 1 || right_down && spr_dir == -1){window_timer = 6;}else{if(window_timer > 1){PlayVoiceClip("look");}window_timer = 0;}
		}
    break;
    case AT_UTILT:
        if(!attack_down && !up_stick_down)att_hold = false;
        if(window == 3 && (window_timer == 1 && up_down || window_timer == 4) && att_hold){
			window_timer -= 1;
			if(window_timer == 3 && up_down)window_timer = 0;
		}
    break;
    case AT_DTILT:
        if(window == 1 && window_timer == 1 && !hitpause){
            var rand = random_func(0, 2, true);
	    	if(rand == 0){
				PlayVoiceClip("pennies", 1.5);
			}
        }
    break;
    case AT_DATTACK:
        if(window == 1 && window_timer == phone_window_end && !hitpause){
        	if(dattack_projectile_cooldown <= 0){set_num_hitboxes(AT_DATTACK, 2);dattack_projectile_cooldown = 55;}
        	else{set_num_hitboxes(AT_DATTACK, 1);}
			sound_play(asset_get("sfx_zetter_fireball_fire"))
		}
		if(window == 1){
			if(up_down){
				set_hitbox_value(AT_DATTACK, 2, HG_PROJECTILE_HSPEED, 2);
				set_hitbox_value(AT_DATTACK, 2, HG_PROJECTILE_VSPEED, -9);
			}else if(down_down){
				set_hitbox_value(AT_DATTACK, 2, HG_PROJECTILE_HSPEED, 5);
				set_hitbox_value(AT_DATTACK, 2, HG_PROJECTILE_VSPEED, 0);
			}else{
				reset_hitbox_value(AT_DATTACK, 2, HG_PROJECTILE_HSPEED);
				reset_hitbox_value(AT_DATTACK, 2, HG_PROJECTILE_VSPEED);
			}
		}
    break;
    case AT_UAIR:
    	if(window == 1 && window_timer == 1 && !hitpause){
            var rand = random_func(0, 2, true);
	    	if(rand == 0){
				PlayVoiceClip("pennies", 1.5);
			}else if(rand == 1){
				PlayVoiceClip("be careful", 1.5);
			}
        }
    	if(window == 2){
    		if(!hitpause && window_timer == 3){
    			pig_hb = create_hitbox(attack,1,x+20*spr_dir,y-40);pig_hb.hsp = hsp*1.25;var pighit = create_hitbox(attack,4,x+20*spr_dir,y-40);pig_hb.lastplayerhit = -1;
    			pig_hb.theotherhitbox = pighit;pighit.theotherhitbox = pig_hb;
    		}
    	}
    break;
    case AT_JAB:
        if(window == 1 && window_timer == 1){
            PlayVoiceClip("check out", 2);
        }
        if(window == 4 && window_timer == 1){
            PlayVoiceClip("the", 2);
        }
        if(window == 7 && window_timer == 1){
	    	PlayVoiceClip("enclosed_instruction_book");
        }    
    break;
    case AT_NAIR:
        if(window == 1 && window_timer == phone_window_end){
            PlayVoiceClip("book", 2);
        }
    break;
    case AT_DAIR:
		with(pHitBox){
			if(player_id == other && attack == AT_DAIR)other.dairhitbox = self;
	    }    
        if(window >= 3 && !attack_down && !down_stick_down && !strong_down){
			dairhold = false;
		}
        if(window == 3 && window_timer >= 10 && dairhold){
			window = 4;window_timer = 0;
		}
		if(window == 4){
			if(dairholdbounce){
				window = 5;window_timer = 0;set_attack_value(AT_DAIR, AG_NUM_WINDOWS, 6);
			}else if(free){
				if(window_timer == phone_window_end && dairhold){window_timer = 0;}
			}else{
				window = 7;window_timer = 0;set_attack_value(AT_DAIR, AG_NUM_WINDOWS, 8);
				destroy_hitboxes();attack_end();
				sound_play(asset_get("sfx_blow_heavy1"));shake_camera(5, 5);
			}
			set_attack_value(AT_DAIR, AG_CATEGORY, 2);
		}
		if(window == 4 || window == 5){
			set_attack_value(AT_DAIR, AG_CATEGORY, 2);
		}else if(window < 7){
			reset_attack_value(AT_DAIR, AG_CATEGORY);
		}
		if(window == 5){
			if(dairhold && window_timer == phone_window_end-1){window_timer = phone_window_end-2;}
			if(window_timer == phone_window_end){window = 6;window_timer = 0;}
			if(!free){
				window = 7;window_timer = 0;
				destroy_hitboxes();attack_end();
				sound_play(asset_get("sfx_blow_heavy1"));shake_camera(5, 5);
			}
		}else if(window == 6){
			cancelattack2();
		}else if(window == 7){
			if(dair_whereami){set_attack_value(AT_DAIR, AG_NUM_WINDOWS, 11);}
		}else if(window == 8){
			if(dair_whereami && window_timer == 4){
				window = 9;window_timer = 0;
				PlayVoiceClip("where am i", 2);
			}
		}else if(window >= 9){
			cancelattack();
		}if(window == 10){
			if(dairhold && window_timer == phone_window_end-1){window_timer = phone_window_end-2;}
		}
		if(DairBounce > 0 && free){
			DairBounce = 0;dair_whereami = true;
			if(window == 2){old_vsp = -12;vsp = -12;}
			else if(window >= 4){old_vsp = -8;vsp = -8;attack_end();}
		}
    break;
    case AT_BAIR:
    	if(window == 1 && window_timer == 1 && !hitpause){
            PlayVoiceClip("toast");
    	}
        if(window == 2 && window_timer == 2 && bairtoast && !hitpause){
        	reset_hitbox_value(AT_USTRONG, 1, HG_PROJECTILE_VSPEED);reset_hitbox_value(AT_USTRONG, 1, HG_PROJECTILE_HSPEED);
			var toast = create_hitbox(AT_USTRONG,1,x-25*spr_dir,y-75);toast.spr_dir = -spr_dir;toast.hsp = -8*spr_dir;toast.vsp *= 1;toast.toast_type = 1;toast.image_index = toast.toast_type;
        }
    break;
}
#define KoB_reverse
	// Does a sick and based reverse
	if((left_down && spr_dir == 1 || right_down && spr_dir == -1) && !b_reversed){
    	hsp = -hsp;spr_dir = -spr_dir;b_reversed = true;
	}

#define Grab(xpos, ypos, xsmooth, ysmooth, target, isproj)
	// Grab players/articles/projectiles
	if(instance_exists(target)){
	    if(isproj || (!isproj && (target.state != PS_DEAD && target.hitstun > 0))){
		    if (xsmooth != 0){
		        target.x += ((x + spr_dir * xpos) - target.x)/xsmooth;
		        target.hsp = 0;
		        target.old_hsp = 0;
		    }
		    if (ysmooth != 0){
		        target.y += ((y + ypos) - target.y)/ysmooth;
		        target.vsp = 0;
		        target.old_vsp = 0;
		    }
		    target.hitpause = true;
		    target.hitstop = 1;		    
	    }
	}
#define PlayVoiceClip
/// PlayVoiceClip(name,?volume,?stopprev)
	//Plays SFX
	if(!muted && !hitpause){
		if(argument_count>2?argument[2]!=false:true)sound_stop(voice);
		voice = sound_play(sound_get(argument[0]),false,noone,argument_count>1?argument[1]:1,("voicepitch" in self)?voicepitch:1);
		if(argument_count>1)sound_volume(voice, argument[1], 0);
	}

#define cancelattack
    if(attack_pressed || special_pressed || jump_pressed || shield_pressed || right_stick_pressed || left_stick_pressed || up_stick_pressed || down_stick_pressed
	|| right_strong_pressed || left_strong_pressed || up_strong_pressed || down_strong_pressed
	|| right_down || left_down || down_down || taunt_pressed){
		window = 20;sound_stop(voice);
	}
	
#define cancelattack2
    if(attack_pressed || special_pressed || jump_pressed || shield_pressed || right_stick_pressed || left_stick_pressed || up_stick_pressed || down_stick_pressed
	|| right_strong_pressed || left_strong_pressed || up_strong_pressed || down_strong_pressed || taunt_pressed){
		window = 20;sound_stop(voice);
	}