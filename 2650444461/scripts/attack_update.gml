// attack_update

//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}

if (attack == AT_NSPECIAL){
    can_fast_fall = false;
    if(window == 2){
        if(!special_down && !shield_down){
            window = 3;window_timer = 0;
        }else if(shield_down){
            window = 6;window_timer = 0;
        }else{
            nspecialcharge += 1;
            nspecialcharge = min(nspecialcharge,40);
        }
        if(nspecialcharge >= 40){
            set_window_value(AT_NSPECIAL, 4, AG_WINDOW_LENGTH, 40);
        }else if(nspecialcharge >= 20){
            set_window_value(AT_NSPECIAL, 4, AG_WINDOW_LENGTH, 20);
            if(nspecialcharge == 20){
                outline_timer = 50;
            }
        }else{
            reset_window_value(AT_NSPECIAL, 4, AG_WINDOW_LENGTH);
        }
    }else if(window == 3){
        vsp *= 0.5;
        if(window_timer == get_window_value(AT_NSPECIAL, 3, AG_WINDOW_LENGTH)){
            nspecialcharge2 = nspecialcharge;nspecialcharge = 0;can_move = false;
            //if(nspecialcharge2 <= 90){
                create_hitbox(AT_NSPECIAL,1,x+25*spr_dir,y-15);hsp -= 0.5*spr_dir;
                sound_play(sound_get("Bubble"));
            //}
        }
    }else if(window == 4){
        vsp *= 0.5;//can_move = false;
        //if(nspecialcharge2 <= 90){
            if(window_timer % 4 == 0){
                create_hitbox(AT_NSPECIAL,1,x+25*spr_dir,y-15);hsp -= 0.5*spr_dir;
                sound_play(sound_get("Bubble"));
            }
        //}
    }
}else if (attack == AT_FSPECIAL){
	can_fast_fall = false;
	if(window == 1 || window == 3){
	    can_move = false;
    }
    if(window == 1 || window == 2 && window_timer < 14){
    	with(pHitBox){
	    	if(type == 2 && "amMudkip" in player_id && attack == AT_DSPECIAL){
	        	var dist = point_distance(other.x+25*other.spr_dir, other.y-15, x, y); //distance
	        	if(dist <= 50){
	                with(other){
	                	set_attack_value(AT_FSPECIAL, AG_SPRITE, sprite_get("fspecial_muddy"));
						set_attack_value(AT_FSPECIAL, AG_AIR_SPRITE, sprite_get("fspecial_air_muddy"));
						set_hitbox_value(AT_FSPECIAL, 8, HG_DAMAGE, 8);set_hitbox_value(AT_FSPECIAL, 8, HG_BASE_HITPAUSE, 15);set_hitbox_value(AT_FSPECIAL, 8, HG_ANGLE, 361);
						set_hitbox_value(AT_FSPECIAL, 8, HG_BASE_KNOCKBACK, 9);set_hitbox_value(AT_FSPECIAL, 8, HG_KNOCKBACK_SCALING, 1.05);
	                }destroyed = true;		 
	        	}
	    	}
    	}
    }
    if(window == 1 && window_timer == 12 && !hitpause){
    	if(free){
    		if(!fspecialcooldown){
	    		vsp = -6;
	    	}else{
	    		vsp = -2;
	    	}
    	}
        sound_play(sound_get("Surf"));
    }if(window == 3){
	    hsp *= 0.95;
	    if(window_timer >= 15){
	    	fspecialcooldown = true;
	    }
    }
    //if(window >= 2 && window <= 5){
		if(vsp > -4){
			grav = 0.3;
			if(vsp > 2 && !fspecialcooldown){
			    vsp *= 0.95;
			}
		}
    //}
}else if (attack == AT_USPECIAL){
	can_fast_fall = false;
	if(window == 1){
		if(window_timer <= 4){
			if(upb_dir == 1 && right_down || upb_dir == -1 && left_down){
				spr_dir = -upb_dir;
			}else{
				spr_dir = upb_dir;
			}
			if (spr_dir == 1){
				set_hitbox_value(AT_USPECIAL, 1, HG_WIDTH, 370);set_hitbox_value(AT_USPECIAL, 2, HG_WIDTH, 380);
				set_hitbox_value(AT_USPECIAL, 3, HG_WIDTH, 402);set_hitbox_value(AT_USPECIAL, 4, HG_WIDTH, 420);
			}else if (spr_dir == -1){
				set_hitbox_value(AT_USPECIAL, 1, HG_WIDTH, -370);set_hitbox_value(AT_USPECIAL, 2, HG_WIDTH, -380);
				set_hitbox_value(AT_USPECIAL, 3, HG_WIDTH, -402);set_hitbox_value(AT_USPECIAL, 4, HG_WIDTH, -420);
			}
		}
    	if(window_timer == 10 && !hitpause){
	    	hsp *= 0.1;move_cooldown[AT_USPECIAL] = 999;
	    	upb_hitbox = create_hitbox(AT_USPECIAL,1,x+28*spr_dir,y+40);
	        sound_play(sound_get("Hydro Pump"));
	    }
    }
	if(window == 2){
	    can_move = false;
	    if(window_timer == 2 && !hitpause){
	    	upb_hitbox = create_hitbox(AT_USPECIAL,2,x+38*spr_dir,y+64);
	    }else if(window_timer == 4 && !hitpause){
	    	upb_hitbox = create_hitbox(AT_USPECIAL,3,x+42*spr_dir,y+80);
	    }else if(window_timer == 6 && !hitpause){
	    	upb_hitbox = create_hitbox(AT_USPECIAL,4,x+46*spr_dir,y+90);
	    }
    }
}else if (attack == AT_DSPECIAL){
    can_fast_fall = false;
    if(window == 2){
	    grav = 0.08;
		if(vsp > 2){
			vsp *= 0.9;
		}
		if(window_timer == 5 && !hitpause){
			sound_play(sound_get("Mud Sport"));
			spawn_hit_fx(x+20*spr_dir,y-15,fx_mudsplash);spawn_hit_fx(x-20*spr_dir,y-15,fx_mudsplash);
			spawn_hit_fx(x+20*spr_dir,y-50,fx_mudsplash);spawn_hit_fx(x-20*spr_dir,y-50,fx_mudsplash);
			if(instance_exists(dspec_mud)){
				dspec_mud.destroyed = true;
			}
			if(freemd){
				dspec_mud = create_hitbox(AT_DSPECIAL, 2, x, y);
			}else{
				dspec_mud = create_hitbox(AT_DSPECIAL, 2, x, y-10);
			}
		}
    }
    hsp *= 0.5;
}else if (attack == AT_DSPECIAL_AIR){
	can_fast_fall = false;can_wall_jump = true;move_cooldown[AT_DSPECIAL_AIR] = 15;
    if(window == 2){
    	hsp *= 0.9;
    	if(window_timer % 3 == 0){
        	spawn_hit_fx(x,y,fx_bubbles);
    	}
	    if(!free){
	    	if(!was_parried){
		    	window = 3;window_timer = 0;destroy_hitboxes();
		    	dspecialtime = 0;sound_play(sound_get("Dive2"));
		    	spawn_hit_fx(x,y,fx_watersplash);
		    	with(pHitBox){
			    	if(type == 2 && "amMudkip" in player_id && attack == AT_DSPECIAL){
			        	var dist = point_distance(other.x, other.y-10, x, y); //distance
			        	if(dist <= 30){
			                with(other){
			                	create_hitbox(AT_DTILT, 4, x+25*spr_dir, y-20);
			                	var mud = create_hitbox(AT_DTILT, 4, x-25*spr_dir, y-20);mud.spr_dir = -mud.spr_dir;mud.hsp = -mud.hsp;
			                }
			                destroyed = true;		 
			        	}
			    	}
		    	}
	    	}else{
	    		window = 10;
	    	}
	    }
    }else if(window == 3){
	    if(right_down){
        	hsp = 3*right_down;
    	}else if(left_down){
        	hsp = -3*left_down;
    	}
    	dspecialtime += 1;
    	if(dspecialtime >= 90 || dspecialtime >= 30 && special_down || was_parried){
    		window = 4;window_timer = 0;vsp = -6;sound_play(sound_get("Dive3"));
    		var splash = spawn_hit_fx(x+20*spr_dir,y,fx_watersplash);splash.depth = depth-1;splash = spawn_hit_fx(x-20*spr_dir,y,fx_watersplash);splash.depth = depth-1;
    		with(pHitBox){
		    	if(type == 2 && "amMudkip" in player_id && attack == AT_DSPECIAL){
		        	var dist = point_distance(other.x+25*other.spr_dir, other.y-15, x, y); //distance
		        	if(dist <= 50){
		                with(other){
		                	var mud = create_hitbox(AT_DTILT, 4, x+25*spr_dir, y-20);mud.hsp -= 3*spr_dir;mud.vsp -= 5;
		                	mud = create_hitbox(AT_DTILT, 4, x-25*spr_dir, y-20);mud.spr_dir = -mud.spr_dir;mud.hsp -= 3*spr_dir;mud.hsp = -mud.hsp;mud.vsp -= 5;
		                }
		                destroyed = true;		 
		        	}
		    	}
	    	}
    	}
    }else if(window == 5){
	    grav = 0.08;
		if(vsp > 2){
			vsp *= 0.9;
		}
		if(window_timer == 6 && !hitpause){
			spawn_hit_fx(x,y-25,195);sound_play(sound_get("Water Pulse"));
		}
    }
    if(window >= 4){
	    hsp *= 0.5;
    }
}else if (attack == AT_NAIR){
    if(window >= 2 && window <= 5){
		if(vsp > -4 && !down_down){
			grav = 0.08;
			if(vsp > 2){
			    vsp *= 0.95;
			}
		}
    }
    if((window == 1 && window_timer == 10 || window == 6 && window_timer == 4) && !hitpause){
		spawn_hit_fx(x-30*spr_dir+random_func(1, 10, true)*spr_dir,y-40-random_func(2, 10, true),fx_bubbles);
		spawn_hit_fx(x+20*spr_dir+random_func(3, 10, true)*spr_dir,y+4-random_func(4, 10, true),fx_bubbles);
		spawn_hit_fx(x-30*spr_dir+random_func(5, 10, true)*spr_dir,y+4-random_func(6, 10, true),fx_bubbles_fast);
		spawn_hit_fx(x+20*spr_dir+random_func(7, 10, true)*spr_dir,y-40-random_func(8, 10, true),fx_bubbles_fast);
		if(window == 1){
    		sound_play(sound_get("Bubble"));
        }else if(window == 6){
    		sound_play(sound_get("Bubble Pop"));
        }
    }
    if(window >= 6 && jump_pressed){
		cancelattack();has_hit = true;
	}
}else if (attack == AT_FAIR){
    if(window == 1 && window_timer == 9 && !hitpause){
        sound_play(sound_get("Bubble"));
    }
}else if (attack == AT_UAIR){
    if(window == 1 && window_timer == 12 && !hitpause){
        sound_play(sound_get("Hydro Pump Short"));//sound_play(asset_get("sfx_orcane_dsmash"));
        hsp *= 0.8;vsp += 4;
    }
}else if (attack == AT_DAIR){
    if(window == 1 && window_timer == 1 && !hitpause){
        sound_play(sound_get("Iron Tail"));
    }
}else if (attack == AT_FTILT){
    if(window == 1 && window_timer == 5 && !hitpause){
        var dusteff = spawn_hit_fx(x-10*spr_dir,y,fx_dust_sharp);dusteff.depth = depth-1;dusteff.spr_dir = -spr_dir;
    }
}else if (attack == AT_UTILT){
    if(window == 1 && window_timer == 5 && !hitpause){
        with(pHitBox){
	    	if(type == 2 && "amMudkip" in player_id && attack == AT_DSPECIAL){
	        	var dist = point_distance(other.x, other.y-10, x, y); //distance
	        	if(dist <= 50){
	                with(other){
		                sound_play(sound_get("Mud Slap"));
		                var mud = create_hitbox(AT_DTILT, 4, x-25*spr_dir, y-30);mud.hsp -= 5*spr_dir;mud.vsp -= 7;
		        	}
	                destroyed = true;
	        	}
	    	}
    	}
    }
}else if (attack == AT_DTILT){
    if(window == 1 && window_timer == 9 && !hitpause){
        var dusteff = spawn_hit_fx(x-36*spr_dir,y,fx_dust_sharp);dusteff.depth = depth-1;dusteff.spr_dir = -spr_dir;
        sound_play(sound_get("Mud Slap"));
        with(pHitBox){
	    	if(type == 2 && "amMudkip" in player_id && attack == AT_DSPECIAL){
	        	var dist = point_distance(other.x+35*other.spr_dir, other.y-10, x, y); //distance
	        	if(dist <= 65){
	                other.dtiltmud = true;
	                destroyed = true;
	        	}
	    	}
    	}
        if(dtiltmud || position_meeting(x+70*spr_dir,y,asset_get("par_block")) || position_meeting(x+70*spr_dir,y,asset_get("par_jumpthrough"))){
        	reset_attack_value(AT_DTILT, AG_SPRITE);
        	create_hitbox(AT_DTILT, 2, x, y);create_hitbox(AT_DTILT, 3, x, y);
        	if(dtiltmud){
        		create_hitbox(AT_DTILT, 4, x+35*spr_dir, y-20);
        	}
        	reset_window_value(AT_DTILT, 3, AG_WINDOW_LENGTH);
        }else{
        	set_attack_value(AT_DTILT, AG_SPRITE, sprite_get("dtilt_nomud"));
        	create_hitbox(AT_DTILT, 4, x+35*spr_dir, y-20);
        	set_window_value(AT_DTILT, 3, AG_WINDOW_LENGTH, 18);
        }
    }
}else if (attack == AT_FSTRONG){
    if(window == 2 && window_timer == 12 && !hitpause){
        sound_play(sound_get("Hydro Pump"));
        with(pHitBox){
	    	if(type == 2 && "amMudkip" in player_id && attack == AT_DSPECIAL){
	        	var dist = point_distance(other.x+70*other.spr_dir, other.y-10, x, y); //distance
	        	if(dist <= 60){
	                with(other){
		                var mud = create_hitbox(AT_DTILT, 4, x+25*spr_dir, y-20);mud.hsp += 2+(strong_charge/10)*spr_dir;mud.vsp -= 2;
		                mud = create_hitbox(AT_DTILT, 4, x+35*spr_dir, y-20);mud.hsp += (strong_charge/10);
		        	}
	                destroyed = true;
	        	}
	    	}
    	}
    }
}else if (attack == AT_USTRONG){
    if(window == 2 && window_timer == 6 && !hitpause){
        var dusteff = spawn_hit_fx(x+40*spr_dir,y,fx_dust_sharp);dusteff.depth = depth-1;
        dusteff = spawn_hit_fx(x-40*spr_dir,y,fx_dust_sharp);dusteff.depth = depth-1;dusteff.spr_dir = -spr_dir;
        dusteff = spawn_hit_fx(x+60*spr_dir,y,fx_dust_sharp_big_fast);dusteff.depth = depth-1;
        dusteff = spawn_hit_fx(x-60*spr_dir,y,fx_dust_sharp_big_fast);dusteff.depth = depth-1;dusteff.spr_dir = -spr_dir;
        sound_play(sound_get("Water Pulse"));sound_play(sound_get("Hydro Pump Short"));
        with(pHitBox){
	    	if(type == 2 && "amMudkip" in player_id && attack == AT_DSPECIAL){
	        	var dist = point_distance(other.x, other.y-10, x, y); //distance
	        	if(dist <= 50){
	                with(other){
		                var mud = create_hitbox(AT_DTILT, 4, x, y-40);mud.hsp = 0;mud.vsp -= 8+(strong_charge/10);
		        	}
	                destroyed = true;
	        	}
	    	}
    	}
    }
}else if (attack == AT_DSTRONG){
    if(window == 2 && window_timer == 8 && !hitpause){
        if(position_meeting(x-30*spr_dir,y,asset_get("par_block")) || position_meeting(x-30*spr_dir,y,asset_get("par_jumpthrough"))){
            var eruption = spawn_hit_fx(x-60*spr_dir,y,fx_eruption_small_fast);eruption.spr_dir = -spr_dir;create_hitbox(AT_DSTRONG, 3, x-60*spr_dir, y-40);
        }
        if(position_meeting(x+30*spr_dir,y,asset_get("par_block")) || position_meeting(x+30*spr_dir,y,asset_get("par_jumpthrough"))){
		    spawn_hit_fx(x+60*spr_dir,y,fx_eruption_small_fast);create_hitbox(AT_DSTRONG, 3, x+60*spr_dir, y-40);
        }
        var dusteff = spawn_hit_fx(x+60*spr_dir,y,fx_dust_sharp_big_fast);dusteff.depth = depth-1;
        dusteff = spawn_hit_fx(x-60*spr_dir,y,fx_dust_sharp_big_fast);dusteff.depth = depth-1;dusteff.spr_dir = -spr_dir;
	    shake_camera(15, 15);
	    sound_play(sound_get("Earthquake"));sound_play(sound_get("Earth Power"));sound_play(sound_get("Earth Power2"));
	    with(pHitBox){
	    	if(type == 2 && "amMudkip" in player_id && attack == AT_DSPECIAL){
	        	var dist = point_distance(other.x, other.y-10, x, y); //distance
	        	if(dist <= 160){
	                with(other){
		                sound_play(sound_get("Mud Slap"));
		                create_hitbox(AT_DSPECIAL, 3, other.x, y-20);
		                spawn_hit_fx(other.x+20,other.y-15,fx_mudsplash);spawn_hit_fx(other.x-20,other.y-15,fx_mudsplash);
						spawn_hit_fx(other.x+20,other.y-50,fx_mudsplash);spawn_hit_fx(other.x-20,other.y-50,fx_mudsplash);
		        	}
	                destroyed = true;
	        	}
	    	}
    	}
    }
}else if (attack == AT_DATTACK){
    if(window == 1 && window_timer == 10 && !hitpause){
        var dusteff = spawn_hit_fx(x+5*spr_dir,y,fx_dust_sharp_big);dusteff.depth = depth-1;dusteff.spr_dir = -spr_dir;
        dusteff = spawn_hit_fx(x+50*spr_dir,y,fx_dust_sharp);dusteff.depth = depth-1;dusteff.spr_dir = -spr_dir;
    }
}else if (attack == AT_JAB){
    if(window == 2 && window_timer == 3 && !hitpause){
        sound_play(sound_get("Bite"));
    }
}else if (attack == AT_TAUNT){
    if(window == 2){
    	if(get_gameplay_time() % 3 == 0){
        	create_hitbox(AT_TAUNT, 1, x-30+random_func(0, 60, true), -200);
    	}
    	if(get_gameplay_time() % 100 == 0 && !hitpause){
	        sound_play(sound_get("Rain Dance"));
	    }
		if(taunt_pressed){
	        window = 3;window_timer = 0;
	    }
    }
}

#define cancelattack
    if(has_hit && (attack_pressed || special_pressed || jump_pressed || right_stick_pressed || left_stick_pressed || up_stick_pressed || down_stick_pressed
	|| right_strong_pressed || left_strong_pressed || up_strong_pressed || down_strong_pressed)){
		window = 20;
	}