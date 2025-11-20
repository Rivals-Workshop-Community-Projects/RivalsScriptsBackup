// attack_update

//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}

if (attack == AT_NSPECIAL){
    if(window <= 7 && vsp > 0 && fspec_stall <= 0){
		vsp = 0;
	}hsp *= 0.8;
    if(window == 2 && !hitpause){
    	if(!special_down && window_timer > 12 && FinalSmash <= 0 || window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
    		window = 3;window_timer = 0;sound_play(sound_get("swords2"));
    	}else{
    		if(spr_dir == 1){
				set_hitbox_value(AT_NSPECIAL,1,HG_PROJECTILE_HSPEED,lengthdir_x(9,nspec_angle))
				set_hitbox_value(AT_NSPECIAL,1,HG_PROJECTILE_VSPEED,lengthdir_y(9,nspec_angle))
				nspec_angle += 6;
			}else {
				set_hitbox_value(AT_NSPECIAL,1,HG_PROJECTILE_HSPEED,lengthdir_x(9,180-nspec_angle))
				set_hitbox_value(AT_NSPECIAL,1,HG_PROJECTILE_VSPEED,lengthdir_y(9,180-nspec_angle))
				nspec_angle -= 6;
			}
    		if(window_timer % 6 == 0 && FinalSmash <= 0 || window_timer % 3 == 0 && FinalSmash > 0){
            	create_hitbox(AT_NSPECIAL, 1, round(x), round(y-25));sound_play(sound_get("swords"));
        	}
    	}
    }else if(window >= 6){
    	if(FinalSmash <= 0)can_wall_jump = true;
    	if(window_timer >= 16){
        	fspec_stall = 1;
    	}
    	if(FinalSmash > 0 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
        	FinalSmash = 4;
        }
    }
}else if (attack == AT_FSPECIAL){
	can_wall_jump = true;
	if(window <= 2 && vsp > 0 && fspec_stall <= 0){
		vsp = 0;
	}
    if(window == 3 || window == 8){
    	if(special_down){
    		create_hitbox(AT_FSPECIAL, 2, x+45*spr_dir, y-35);
    		if(window == 3){
    			window_timer = 0;
    		}else if(window == 8 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
	    		window = 3;window_timer = 0;
	    	}
	    	if(free){
				hsp *= 0.9;
			}
			if(fspec_stall <= 0 && fspec_timer <= 30){
				vsp = 0;
			}
    	}else if(window == 8){
    		window = 4;window_timer = 0;
    	}fspec_timer += 1;
    }
    if(window == 2 || window == 3){
    	if(fspec_invinc > 0){
    		soft_armor = 4;
    		if(!hitpause){
    			fspec_invinc -= 1;
    		}
    		set_window_value(AT_FSPECIAL, 2, AG_WINDOW_INVINCIBILITY, 1);
			set_window_value(AT_FSPECIAL, 3, AG_WINDOW_INVINCIBILITY, 1);
    	}else if(fspec_invinc == 0){
    		fspec_invinc = -1;
    		soft_armor = 0;
    		reset_window_value(AT_FSPECIAL, 2, AG_WINDOW_INVINCIBILITY);
			reset_window_value(AT_FSPECIAL, 3, AG_WINDOW_INVINCIBILITY);
    	}
    	if(window == 2){
    		soft_armor = 6;
    	}
    }else if(window == 5 && window_timer < 6){
    	soft_armor = 4
    }else{
    	soft_armor = 0;
    }
    if(window == 4 || window == 5){
    	if(window == 4 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) && !hitpause){
    		sound_play(sound_get("swordbeam"));
    		if(fspec_charge >= 4){
	    		sound_play(sound_get("shield 2"));
	    	}
	    	if(!free){
	    		hsp = 11*spr_dir;
	    	}else{
	    		hsp = 6*spr_dir;
	    	}
    	}
    	if(fspec_stall <= 0){
			vsp = 0;
		}hsp *= 0.9;
		if(window == 5 && window_timer > 15){
	    	fspec_stall = 1;
	    }
    }
    if(window <= 5 || window == 8){
    	set_hitbox_value(AT_FSPECIAL, 3, HG_DAMAGE, 6+(fspec_charge/1));
		set_hitbox_value(AT_FSPECIAL, 3, HG_BASE_KNOCKBACK, 6+(fspec_charge/10));
		set_hitbox_value(AT_FSPECIAL, 3, HG_KNOCKBACK_SCALING, .5+(fspec_charge/28));
		set_hitbox_value(AT_FSPECIAL, 3, HG_BASE_HITPAUSE, 7+(fspec_charge/4));
		set_hitbox_value(AT_FSPECIAL, 3, HG_HITPAUSE_SCALING, .6+(fspec_charge/4));
		if(fspec_charge >= 6){
			set_hitbox_value(AT_FSPECIAL, 3, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
			set_hitbox_value(AT_FSPECIAL, 3, HG_PROJECTILE_IS_TRANSCENDENT, true);
		}else{
			reset_hitbox_value(AT_FSPECIAL, 3, HG_HIT_SFX);
			reset_hitbox_value(AT_FSPECIAL, 3, HG_PROJECTILE_IS_TRANSCENDENT);
		}
		if(window == 8){
			set_window_value(AT_FSPECIAL, 4, AG_WINDOW_LENGTH, 15);
			set_window_value(AT_FSPECIAL, 5, AG_WINDOW_LENGTH, 20);
		}
    }
}else if (attack == AT_USPECIAL){
	if(FinalSmash <= 0)can_wall_jump = true;
    if(!hitpause){
        if(window == 1){
        	if(window_timer == 1){
        		move_cooldown[AT_USPECIAL] = 999;upbtimer = 0;
        		upbground = !free;
        		if(!free){
        			upbtimer = 8;
        		}if(FinalSmash > 0){upbtimer = 20;mask_index = asset_get("empty_sprite");}
        	}
            hsp = hsp*0.9;
            vsp = 0;
            if(window_timer == 16 && special_down && upbtimer < 15){
            	window_timer = 15;upbtimer += 1;
            }
            if(window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
            	vsp = -20-(upbtimer/1.5);
            	if(!free){
            		var dust = spawn_hit_fx(x-40*spr_dir,y,fx_slamfast);dust.depth = depth-1;dust.spr_dir = -spr_dir;
    				dust = spawn_hit_fx(x+40*spr_dir,y,fx_slamfast);dust.depth = depth-1;
            		var star = spawn_hit_fx(x+90*spr_dir, y-35, fx_star_tiny);star.depth = depth-1;
					star = spawn_hit_fx(x-90*spr_dir, y-35, fx_star_tiny);star.spr_dir = -spr_dir;star.depth = depth-1;
            	}
            }
        }else if(window == 2){
            if(right_down){
                hsp = 3*right_down;
            }else if(left_down){
                hsp = -3*left_down;
            }if(FinalSmash <= 0)vsp = vsp*0.95;
            if(window_timer % 5 == 0 || window_timer == 1){
                spawn_hit_fx(x-40+(random_func(0, 80, true)),y-20,fx_feathers);
            }if(window_timer % 2 == 0 || window_timer == 1){
                spawn_hit_fx(x,y,fx_trailvertical);
            }
            if(FinalSmash > 0){
            	vsp = -20;
            	if(window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)-1)window_timer -= 1;
                if(y < -500){
					x = round(room_width/2);y = -500;
					window = 4;window_timer = 0;
					if(!BossMode)sound_play(sound_get("finalsmashmusic"),false,noone,1.25);
				}
            }
        }else if(window == 4){
        	can_move = false;
            hsp = 0;vsp = 20;
            if(y >= round(room_height/2)-30){
				y = round(room_height/2)-30;
				window = 5;window_timer = 0;
			}
            if(window_timer % 5 == 0 || window_timer == 1){
                spawn_hit_fx(x-40+(random_func(0, 80, true)),y-20,fx_feathers);
            }if(window_timer % 2 == 0 || window_timer == 1){
                spawn_hit_fx(x,y,fx_trailvertical);
            }
            if(window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)-1)window_timer -= 1;
        }else if(window == 5){
            vsp = 0;
            if(window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
            	FinalSmash = 2;
            }
        }
        if(upbground && (window == 2 && window_timer >= 10 || window == 3) && FinalSmash <= 0){
        	cancelattack();
        }
        can_fast_fall = false;
        can_move = false;
    }
}else if (attack == AT_DSPECIAL){
	fall_through = true;
    if(window == 1){
        vsp -= 1;
    }else if(window == 2){
    	if(window_timer == 3 && !hitpause){
    		sound_play(sound_get("swords2"));
    	}
    }else if(window == 3){
        if(window_timer == 1 && !hitpause){
        	var has_time_rift = 0;
        	with(obj_article1){
				if(player_id == other && player == other.player){
					with(other) {
						has_time_rift += 1;
					}
				}
        	}
            if(has_time_rift == 0 && !runeM || has_time_rift < 3 && runeM){
            	if(!runeM || has_time_rift >= 2 && runeM){
            		move_cooldown[AT_DSPECIAL] = 999;
            	}
            	time_rift_dmg = 0;
    	        time_rift = instance_create(x+15*spr_dir,y+5, "obj_article1");
    	        if (spr_dir == 1){
    				set_hitbox_value(AT_DSPECIAL, 1, HG_WIDTH, 370);set_hitbox_value(AT_DSPECIAL, 2, HG_WIDTH, 370);
    			}else if (spr_dir == -1){
    				set_hitbox_value(AT_DSPECIAL, 1, HG_WIDTH, -370);set_hitbox_value(AT_DSPECIAL, 2, HG_WIDTH, -370);
    			}shake_camera(10,5);
    		}
        }
    }else if(window == 4 && window_timer < 10 && !hitpause){
        vsp -= 1;
    }
}else if (attack == AT_NAIR){
	can_move = false;
	if(right_down && hsp < 1.5 && free){
		hsp += .35;
	}else if(left_down && hsp > -1.5 && free){
		hsp -= .35;
	}
    if(window >= 2 && window <= 6){
        set_attack_value(AT_NAIR, AG_CATEGORY, 2);
        if(!free){
        	set_attack_value(AT_NAIR, AG_NUM_WINDOWS, 9);
        	shake_camera(7,5);destroy_hitboxes();sound_play(sound_get("thud"));sound_play(sound_get("slash 3"));
        	var star = spawn_hit_fx(x+130*spr_dir, y-35, fx_star_tiny);star.depth = depth-1;
			star = spawn_hit_fx(x-60*spr_dir, y-35, fx_star_tiny);star.spr_dir = -spr_dir;star.depth = depth-1;
        	create_hitbox(AT_NAIR, 11, x, y);create_hitbox(AT_NAIR, 12, x, y);
        	if(!position_meeting(x+20*spr_dir,y+5,asset_get("par_block")) && !position_meeting(x+20*spr_dir,y+5,asset_get("par_jumpthrough"))){
        		create_hitbox(AT_NAIR, 13, x, y);
        	}
        	create_hitbox(AT_FTILT, 7, x+50*spr_dir, y-20);
        	window = 8;window_timer = 0;
        	if(!has_hit)kob_bonus_damage(1.25);
        }else{
        	if(runeB && attack_down && window == 6 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
        		window = 1;window_timer = get_window_value(attack, 1, AG_WINDOW_LENGTH);
        		sound_play(sound_get("speen"));
        	}
        }
    }else{
    	if(window == 1 || window == 7){
    		reset_attack_value(AT_NAIR, AG_CATEGORY);
    	}
    }
    
    if(window >= 6 && window < 8 && has_hit){
    	cancelattack();
    }
}else if (attack == AT_FAIR){
    if(window == 1 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
    	sound_play(sound_get("stab"));
        if(position_meeting(x+85*spr_dir,y-40,asset_get("par_block")) && !fair_pin){
	        window = 4;window_timer = 0;fair_pin = true;
	        shake_camera(7,5);destroy_hitboxes();sound_play(sound_get("thud"));
	        if(position_meeting(x+30*spr_dir,y-35,asset_get("par_block"))){
	        	x -= 20*spr_dir;
		        if(position_meeting(x+50*spr_dir,y-35,asset_get("par_block"))){
			        x -= 20*spr_dir;
			        if(position_meeting(x+70*spr_dir,y-35,asset_get("par_block"))){
				        x -= 10*spr_dir;
				        /*if(position_meeting(x+50*spr_dir,y-35,asset_get("par_block"))){
					        x += -10*spr_dir;
					    }*/
				    }
			    }
		    }
	    }
    }
    if(window == 4){
    	can_fast_fall = false;can_move = false;
    	cancelattack();
    	if(position_meeting(x+70*spr_dir,y-35,asset_get("par_block"))){
			x -= 10*spr_dir;
		}
    }
}else if (attack == AT_UAIR){
    if(window == 2){
        if(window_timer == 1){
	        if(vsp > -6 || vsp > -8 && (!runeH && (attack_down || strong_down || up_stick_down || up_strong_down) || runeH && up_down)){
	        	if(!runeH && (attack_down || strong_down || up_stick_down || up_strong_down) || runeH && up_down){
	        		uairhold += 1;
		            if(vsp < 0){
		                vsp -= 4*uairboost; 
		            }else{
		                vsp -= 8*uairboost; 
		            }
	        	}else{
		            if(vsp < 0){
		                vsp -= 1*uairboost; 
		            }else{
		                vsp -= 2*uairboost; 
		            }
	        	}
	        }
        }
        if(uairhold >= 3){
        	set_window_value(AT_UAIR, 3, AG_WINDOW_LENGTH, 28);
        	set_window_value(AT_UAIR, 3, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
        }
    }else if(window == 3 && window_timer == 1){
    	if(!position_meeting(x,y+5,asset_get("par_block")) && !position_meeting(x,y+5,asset_get("par_jumpthrough"))){
	    	if(uairhold >= 3){
		        if(vsp > -9){
		           vsp = -9*uairboost; 
		        }
	    	}else{
	    		if(vsp > -5){
		           vsp = -5*uairboost; 
		        }
	    	}
    	}uairused = true;
    }
    if(window == 2 && window_timer >= 5){
        if(uairloop < 4 && (!runeH || runeH && !attack_down && !strong_down && !up_stick_down && !up_strong_down) || runeH && (attack_down || strong_down || up_stick_down || up_strong_down) && uairloop < 20){
            uairloop += 1;
            window = 2;window_timer = 0;
        }else{
            window = 3;window_timer = 0;
        }
    }
    if(!free || y < 0){
		vsp *= 0.5;
	}
    if(window < 3){
        /*if(get_gameplay_time() % 2 == 0){
        	var rand_dir = random_func(1, 359, true);
    		spawn_hit_fx((x) + round(lengthdir_x(25, rand_dir)), (y - 30) + round(lengthdir_y(25, rand_dir)), fx_bluetrailslow);
        }*/
    }
    if(window == 3){
    	can_wall_jump = true;
	}
}else if (attack == AT_DAIR){
	if(window == 1 && window_timer == get_window_value(AT_DAIR, 1, AG_WINDOW_LENGTH)){
    	sound_play(sound_get("slash 4"));
    }

}else if(attack == AT_JAB){
	if(window == 3){
		if(attack_down){window = 4;window_timer = 0;}
	}else if(window == 4 || window == 5){
		if(window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) && !hitpause){
	        dusteff = spawn_hit_fx(x-15*spr_dir,y,fx_dust_sharp);dusteff.depth = depth-1;dusteff.spr_dir = -spr_dir;
	    }
	}else if(window == 6){
		if(window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
    		if(attack_down && !was_parried){window = 5;window_timer = 0;}
    	}
	}else if(window == 7){
		if(window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) && !hitpause){
	        dusteff = spawn_hit_fx(x-25*spr_dir,y,fx_dust_sharp_big);dusteff.depth = depth-1;dusteff.spr_dir = -spr_dir;
	        var star = spawn_hit_fx(x+150*spr_dir, y-35, fx_star_tiny);star.depth = depth-1;
	        star = spawn_hit_fx(x-80*spr_dir, y-35, fx_star_tiny);star.spr_dir = -spr_dir;star.depth = depth-1;
	        shake_camera(5,5);
	        if (has_rune("F") || runeF) {
	        	create_hitbox(AT_FSTRONG, 2, round(x+50*spr_dir), round(y-45));
    			sound_play(sound_get("swordbeam"));
	        }
	    }
	}if(window == 5 || window == 6){
		if(window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
    		if(!attack_down || was_parried){
				window = 7;window_timer = 0;
				if(!was_parried)create_hitbox(AT_JAB, 5, round(x), round(y));
			}
    	}
	}
}else if (attack == AT_FTILT){
    if(window == 1){
        if (has_rune("E") || runeE) {
        	if(attack_down || strong_down || right_stick_down || right_strong_down || left_stick_down || left_strong_down){
        		set_window_value(AT_FTILT, 2, AG_WINDOW_LENGTH, 12);set_window_value(AT_FTILT, 2, AG_WINDOW_HSPEED, 14);
        	}else{
        		reset_window_value(AT_FTILT, 2, AG_WINDOW_LENGTH);reset_window_value(AT_FTILT, 2, AG_WINDOW_HSPEED);
        	}
        }
    }
}else if (attack == AT_UTILT){
    if(window == 1 && window_timer == 8 && !hitpause){
        sound_play(asset_get("sfx_birdflap"));
    }
}else if (attack == AT_DTILT){
    if(window == 1 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) && !hitpause){
		dusteff = spawn_hit_fx(x-25*spr_dir,y,fx_dust_sharp);dusteff.depth = depth-1;dusteff.spr_dir = -spr_dir;
	}
}else if (attack == AT_FSTRONG){
	can_move = false;
	if(right_down && hsp < 1.5){
		hsp += .35;
	}else if(left_down && hsp > -1.5){
		hsp -= .35;
	}
    if (vsp >= 0 && (position_meeting(x,y+25,asset_get("par_block")) || position_meeting(x,y+25,asset_get("par_jumpthrough")))){
        vsp *= 0.7;
    }
    if(window == 2){
    	vsp *= 0.9;
    	if(strong_charge >= 30*runeC_charge_multiplier){
    		set_window_value(AT_FSTRONG, 2, AG_WINDOW_LENGTH, 21);set_window_value(AT_FSTRONG, 2, AG_WINDOW_SFX_FRAME, 20);
    		set_window_value(AT_FSTRONG, 4, AG_WINDOW_LENGTH, 21);
    		if(window_timer == 21){
    			create_hitbox(AT_FSTRONG, 2, x+50*spr_dir, y-45);
    			sound_play(sound_get("swordbeam"));
    		}
    	}
    	if(window_timer == get_window_value(AT_FSTRONG, 2, AG_WINDOW_LENGTH)){
    		sound_play(sound_get("slash 3"));sound_play(sound_get("slash 4"));
    		shake_camera(5,5);
    	}
    }
    if(window == 3 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) && !hitpause){
    	if(!has_hit)kob_bonus_damage(1.25);
    }
}else if (attack == AT_USTRONG){
    can_move = false;
	if(right_down && hsp < 1.5){
		hsp += .35;
	}else if(left_down && hsp > -1.5){
		hsp -= .35;
	}
    if (vsp >= 0 && (position_meeting(x,y+25,asset_get("par_block")) || position_meeting(x,y+25,asset_get("par_jumpthrough")))){
    	if(strong_charge <= 30*runeC_charge_multiplier){
        	vsp *= 0.5;
    	}else{
        	vsp *= 0.25;
    	}
    }
    if(window == 2 && !hitpause){
    	vsp *= 0.9;
    	if(strong_charge >= 30*runeC_charge_multiplier){
    		if(position_meeting(x,y+25,asset_get("par_block")) || position_meeting(x,y+25,asset_get("par_jumpthrough"))){
    			hsp *= 0.5;
    		}
    		if(window_timer == 1 && strong_charge < 60*runeC_charge_multiplier || window_timer == 4 && strong_charge >= 60*runeC_charge_multiplier){
    			var offset_x = 0;var offset_y = 0;
    			if(FinalSmash > 0)offset_y = 100;
    			if(position_meeting(x+60*spr_dir, y+30,asset_get("par_block")) || position_meeting(x+60*spr_dir, y+30,asset_get("par_jumpthrough")) || FinalSmash > 0){
    				if(FinalSmash == 4 || FinalSmash == 7)offset_x = 100;
    				if(FinalSmash == 6)offset_x = 50;
		    		var lightning = create_hitbox(AT_USTRONG, 4, x+(60+offset_x)*spr_dir, y-150+offset_y);spawnlightning = true;
		    		if(FinalSmash == 7)lightning.extra_delay = 40;
		    		if(FinalSmash == 8)lightning.extra_delay = 80;
    			}if(position_meeting(x-60*spr_dir, y+30,asset_get("par_block")) || position_meeting(x-60*spr_dir, y+30,asset_get("par_jumpthrough")) || FinalSmash > 0){
    				if(FinalSmash == 4 || FinalSmash == 7)offset_x = 100;
    				if(FinalSmash == 6)offset_x = 50;
		    		var lightning = create_hitbox(AT_USTRONG, 4, x-(60+offset_x)*spr_dir, y-150+offset_y);spawnlightning = true;
		    		if(FinalSmash == 7)lightning.extra_delay = 60;
		    		if(FinalSmash == 8)lightning.extra_delay = 40;
    			}
    			//single lightning if in the air
    			if(!position_meeting(x, y+30,asset_get("par_block")) && !position_meeting(x, y+30,asset_get("par_jumpthrough")) && FinalSmash <= 0){
		    		var lightning = create_hitbox(AT_USTRONG, 6, x, y-160+offset_y);spawnlightning = true;
	    		}
		    	if(strong_charge >= 60*runeC_charge_multiplier){
		    		if(position_meeting(x+160*spr_dir, y+30,asset_get("par_block")) || position_meeting(x+160*spr_dir, y+30,asset_get("par_jumpthrough")) || FinalSmash > 0){
		    			if(FinalSmash == 4 || FinalSmash == 7)offset_x = 100;
		    			if(FinalSmash == 6)offset_x = 50;
			    		var lightning = create_hitbox(AT_USTRONG, 4, x+(160+offset_x)*spr_dir, y-150+offset_y);spawnlightning = true;
			    		if(FinalSmash == 7)lightning.extra_delay = 20;
			    		if(FinalSmash == 8)lightning.extra_delay = 100;
			    		if(FinalSmash > 0)lightning = create_hitbox(AT_USTRONG, 4, x+(260+offset_x)*spr_dir, y-150+offset_y);
			    		if(FinalSmash == 8)lightning.extra_delay = 120;
		    		}if(position_meeting(x-160*spr_dir, y+30,asset_get("par_block")) || position_meeting(x-160*spr_dir, y+30,asset_get("par_jumpthrough")) || FinalSmash > 0){
		    			if(FinalSmash == 4 || FinalSmash == 7)offset_x = 100;
		    			if(FinalSmash == 6)offset_x = 50;
			    		var lightning = create_hitbox(AT_USTRONG, 4, x-(160+offset_x)*spr_dir, y-150+offset_y);spawnlightning = true;
			    		if(FinalSmash == 7)lightning.extra_delay = 80;
			    		if(FinalSmash == 8)lightning.extra_delay = 20;
			    		if(FinalSmash > 0)lightning = create_hitbox(AT_USTRONG, 4, x-(260+offset_x)*spr_dir, y-150+offset_y);
			    		if(FinalSmash == 7)lightning.extra_delay = 100;
		    		}
		    		if(FinalSmash == 6 || FinalSmash == 8){
			    		var lightning = create_hitbox(AT_USTRONG, 4, x, y-160+offset_y);spawnlightning = true;
			    		if(FinalSmash == 8)lightning.extra_delay = 60;
		    		}
			    }
			    if(spawnlightning){
			    	if(strong_charge < 60*runeC_charge_multiplier || FinalSmash > 0){
			    		set_window_value(AT_USTRONG, 2, AG_WINDOW_LENGTH, 16);set_window_value(AT_USTRONG, 2, AG_WINDOW_SFX_FRAME, 15);
			    		set_window_value(AT_USTRONG, 4, AG_WINDOW_LENGTH, 16);
		    		}else{
			    		set_window_value(AT_USTRONG, 2, AG_WINDOW_LENGTH, 22);set_window_value(AT_USTRONG, 2, AG_WINDOW_SFX_FRAME, 21);
			    		set_window_value(AT_USTRONG, 4, AG_WINDOW_LENGTH, 26);
		    		}if(FinalSmash == 7)set_window_value(AT_USTRONG, 4, AG_WINDOW_LENGTH, 60);
		    		//if(FinalSmash == 8)set_window_value(AT_USTRONG, 4, AG_WINDOW_LENGTH, 40);
		    		shake_camera(5,5);
			    }
		    }
    	}
    	if(window_timer == get_window_value(AT_USTRONG, 2, AG_WINDOW_LENGTH)){
    		sound_play(sound_get("stab"));
	    	if(spawnlightning){
		    	sound_play(sound_get("lightning"));sound_play(sound_get("lightning2"));
		    	shake_camera(15,5);
		    	if(alt == 31){
			    	var rand = random_func(0, 3, true);
				    if(rand == 0){
				    	sound_play(sound_get("electric power is the future"));
				    }else if(rand == 1){
				    	sound_play(sound_get("its electric"));
				    }else if(rand == 2){
				    	sound_play(sound_get("its electrifying"));
				    }
			    }
		    }else{
		    	shake_camera(7,5);
		    }
	    }
    }if(window == 3 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) && !hitpause){
    	if(!has_hit)kob_bonus_damage(1.25);
    }
    if(window >= 4 && spawnlightning){
    	if(!ustrongstall){
    		vsp *= 0.25;
    	}else{
    		vsp *= 0.9;
    	}
    	if(window == 5 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) && !hitpause){
	    	ustrongstall = true;
	    	if(FinalSmash > 0){
	        	FinalSmash += 1;
	        }
	    }
    }
    if(strong_charge > 30*runeC_charge_multiplier){
    	hsp *= 0.5;
    }
}else if (attack == AT_DSTRONG){
	if(window == 2)fall_through = true;
    if(window == 3){
        can_move = false;
        if(window_timer < 4)fall_through = true;
        if(window_timer > 25){
        	window_timer = 25;
        }
        if(get_gameplay_time() % 2 == 0 || window_timer == 1){
    		spawn_hit_fx(x,y-50,fx_trailvertical);
    	}
    }if(window == 3 && !free){
        window = 4;window_timer = 0;
        shake_camera(7,5);destroy_hitboxes();
        sound_play(sound_get("thud"));
        var dust = spawn_hit_fx(x-40*spr_dir,y,fx_slam);dust.depth = depth-1;dust.spr_dir = -spr_dir;
        dust = spawn_hit_fx(x+50*spr_dir,y,fx_slam);dust.depth = depth-1;
        var star = spawn_hit_fx(x+100*spr_dir, y-35, fx_star_tiny);star.depth = depth-1;
		star = spawn_hit_fx(x-100*spr_dir, y-35, fx_star_tiny);star.spr_dir = -spr_dir;star.depth = depth-1;
        if (position_meeting(x+70*spr_dir,y+5,asset_get("par_block")) || position_meeting(x+70*spr_dir,y+5,asset_get("par_jumpthrough"))){
            if(!free && strong_charge >= 60*runeC_charge_multiplier && (position_meeting(x+200*spr_dir,y+5,asset_get("par_block")) || position_meeting(x+200*spr_dir,y+5,asset_get("par_jumpthrough")))){
                var tornado = create_hitbox(AT_DSTRONG, 9, x+80*spr_dir, y-4500);tornado.hsp = 2*spr_dir;dstrongtornado = tornado;
                set_window_value(AT_DSTRONG, 5, AG_WINDOW_LENGTH, 40);
                if (!has_rune("G") && !runeG) {
                	set_window_value(AT_DSTRONG, 6, AG_WINDOW_LENGTH, 40);
                }
                if (has_rune("N") || runeN) {
                	tornado = create_hitbox(AT_DSTRONG, 9, x+85*spr_dir, y-4500);tornado.hsp = 3*spr_dir;
                	tornado = create_hitbox(AT_DSTRONG, 9, x+85*spr_dir, y-4500);tornado.hsp = 1*spr_dir;
                }
            }else{
                var shockwave = spawn_hit_fx(x+60*spr_dir,y,fx_shockwave);shockwave.depth = depth-1;create_hitbox(AT_DSTRONG, 6, x+60*spr_dir, y-40);
            }
        }
    }
    if(window == 4 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) && !hitpause){
    	if(!has_hit && !instance_exists(dstrongtornado))kob_bonus_damage(1.25);
    }if(window == 6 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) && !hitpause){
    	if(bonus_damage){bonus_damage = false;damage_scaling = 1;outline_color = [0, 0, 0];init_shader();}
    }
    if(window == 2){
    	if(window_timer == get_window_value(AT_DSTRONG, 2, AG_WINDOW_LENGTH)){
    		sound_play(sound_get("stab"));
    		//if(strong_charge >= 30){
    			dstrongcharge = strong_charge*runeC_charge_multiplier2;
    		//}
	    }
    }
    if((!dstrong_free && has_hit || BossMode) && window == 3){
    	cancelattack();
    }
}else if (attack == AT_DATTACK){
	if(!has_hit){
    	can_fast_fall = false;can_move = false;
	}else{
		can_fast_fall = true;//can_move = true;
		if(down_down){
			set_attack_value(AT_DATTACK, AG_CATEGORY, 1);
			set_window_value(AT_DATTACK, 2, AG_WINDOW_VSPEED, 0);
			set_window_value(AT_DATTACK, 2, AG_WINDOW_VSPEED_TYPE, 0);
			set_window_value(AT_DATTACK, 3, AG_WINDOW_VSPEED, 0);
			set_window_value(AT_DATTACK, 3, AG_WINDOW_VSPEED_TYPE, 0);
		}
	}
    if(window == 2){
        if(!hitpause){
            hsp *= 0.9;
            if(!has_hit || has_hit && get_attack_value(AT_DATTACK, AG_CATEGORY) == 2){
            	vsp *= 0.85;
            	vsp = min(vsp, -1);
            }
        }
    }else if(window == 3){
        if(!hitpause){
            hsp *= 0.95;
            if(!has_hit || has_hit && get_attack_value(AT_DATTACK, AG_CATEGORY) == 2){
            	vsp *= 0.7;
            }
        }
        if(has_hit){
        	cancelattack();
        }
    }
}else if (attack == AT_TAUNT){
    can_move = false;can_fast_fall = false;
	hsp *= 0.5;
	if(position_meeting(x,y+75,asset_get("par_block")) || position_meeting(x,y+75,asset_get("par_jumpthrough"))){
		if(vsp > 0){
			if(window >= 6 && window <= 7){
				vsp = -1;
			}else{
				vsp *= 0.25;
			}
		}
	}
	if(window == 5){
		if(get_gameplay_time() <= 111){
			window_timer = 0;
		}else if(get_gameplay_time() < 120){
			window = 13;window_timer = 0;
		}
	}else if(window == 8){
		if(runeO && (attack_down || special_down) || FinalSmash > 0){
			window = 14;window_timer = 0;
			lasernum = 0;
			lasernum2 = 0;
			laser = 0;
			laserscale = 0;
			laserangle = 90;laseranglespeed = 0;
			lasersound = sound_play(laser_sfx);sound_play(laserboom_sfx);sound_play(laserboom2_sfx);
			if(FinalSmash > 0){
				set_hitbox_value(AT_TAUNT, 1, HG_PROJECTILE_PARRY_STUN, false);
				set_hitbox_value(AT_TAUNT, 1, HG_EXTENDED_PARRY_STUN, false);
			}else{
				reset_hitbox_value(AT_TAUNT, 1, HG_PROJECTILE_PARRY_STUN);
				reset_hitbox_value(AT_TAUNT, 1, HG_EXTENDED_PARRY_STUN);
			}
		}
	}else if(window == 10){
		set_attack_value(AT_TAUNT, AG_NUM_WINDOWS, 5);
		set_window_value(AT_TAUNT, 4, AG_WINDOW_LENGTH, 6);//set_window_value(AT_TAUNT, 5, AG_WINDOW_LENGTH, 8);
		set_window_value(AT_TAUNT, 7, AG_WINDOW_LENGTH, 6);set_window_value(AT_TAUNT, 8, AG_WINDOW_LENGTH, 8);set_window_value(AT_TAUNT, 9, AG_WINDOW_LENGTH, 6);
		set_window_value(AT_TAUNT, 10, AG_WINDOW_LENGTH, 22+(player*5));
		if(window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
			window = 11;window_timer = 0;
		}
		if(bossdead){
			window_timer = 0;
		}
	}else if(window == 11){
		if(window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
			window = 12;window_timer = 0;
			sound_play(sound_get("taunt_crystal"));shake_camera(10,5);
			var lightbeams = spawn_hit_fx(x,y-40,fx_lightbeams_fast);lightbeams.draw_angle = random_func(0, 360, true);
            lightbeams = spawn_hit_fx(x,y-40,fx_lightbeams_fast);lightbeams.draw_angle = random_func(1, 720, true);
            lightbeams = spawn_hit_fx(x,y-40,fx_lightbeams_fast);lightbeams.draw_angle = random_func(2, 360, true);
            lightbeams = spawn_hit_fx(x,y-40,fx_lightbeams_fast);lightbeams.draw_angle = random_func(3, 720, true);
		}
	}else if(window == 12){
		if(window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
			window = 1;window_timer = 0;
		}
	}else if(window == 13){
		vsp = 4;
	}
	else if(window == 14){ //laser
		window_timer = 0;hsp = 0;vsp = 0;
		laser += 1;
		if(laser % 30 == 0)lasersound = sound_play(laser_sfx);
		if(laser < 20){
			
		}else if(laser <= 40){
			laseranglespeed += 0.02;shake_camera(1,2);
		}else if(laser <= 70){
			laseranglespeed += 0.1;shake_camera(1,2);
		}else if(laser <= 95){
			laseranglespeed += 2;laseranglespeed = min(laseranglespeed,10);shake_camera(5,2);
		}else if(laser <= 110){
			laseranglespeed *= 0.9;shake_camera(1,2);
			if(lasernum2 == 3){lasernum2 = 4;}
		}else{
			if(!hitpause){
				window = 9;window_timer = 0;sound_stop(lasersound);mask_index = asset_get("ex_guy_collision_mask");
				if(FinalSmash > 0){
		        	FinalSmash += 1;
		        	if(FinalSmash > 9)FinalSmash = 0;
		        	if("fs_using_final_smash" in self && fs_using_final_smash){
	                	fs_using_final_smash = false;fs_force_fs = false;fs_charge = 0;
	            	}
			    }
			}
		}laserangle += 1*laseranglespeed;
		
		var radians = laserangle * pi / 180;
		var laserx = (x-5*spr_dir) + (cos(radians)*10000);
		var lasery = (y - 125) + -(sin(radians)*10000);
		laser_list = collision_line_list(x-5*spr_dir, y - 125, laserx, lasery, pHurtBox, true, true);
		if(ds_list_valid(laser_list)) {
			//sound_play(sound_get("energyhit low"));sound_play(sound_get("lightboost"));sound_play(sound_get("lighthit4"));
			for(var i=0; i < ds_list_size(laser_list); i++) {
				var target = ds_list_find_value(laser_list, i);//target = target.player_id;
		    	var height = target.bbox_bottom - target.bbox_top;
		    	//if(target.state != PS_RESPAWN && target.state != PS_DEAD){
		    		create_hitbox(AT_TAUNT, 1, round(target.x), round(target.y-height/2));
		    		//var flash = spawn_hit_fx(target.x, target.y-height/2,fx_shine_ballfast);flash.depth = depth-1;
				//}
			}
		}
		//print(laserx);
		//print(lasery);
		//create_hitbox(AT_DSTRONG, 6, round(laserx), round(lasery));
		
		if(lasernum2 == 0){ //grow fast
			if(laserscale < 160){
				laserscale += 40;
				if(laserscale >= 120){
					lasernum2 = 1;shake_camera(15,10);
				}
			}
		}else if(lasernum2 == 1){ //shrink fast
			if(laserscale > 80){
				laserscale -= 40;
				if(laserscale <= 80){
					lasernum2 = 2;
				}
			}
		}else if(lasernum2 == 2){ //grow
			if(laserscale < 100){
				laserscale += 10;
				if(laserscale >= 100){
					lasernum2 = 3;
				}
			}
		}else if(lasernum2 == 3){ //idle
			laserscale = ease_sineIn(90,110,get_gameplay_time(),6);
		}else if(lasernum2 == 4){ //grow
			if(laserscale < 140){
				laserscale += 20;
				if(laserscale >= 140){
					lasernum2 = 5;
				}
			}
		}else if(lasernum2 == 5){ //shrink fast
			if(laserscale > 20){
				laserscale -= 20;
				if(laserscale <= 20){
					lasernum2 = 6;
				}
			}
		}else if(lasernum2 == 6){ //shrink
			if(laserscale > 0){
				laserscale -= 5;
				laserscale = max(laserscale,0);
			}
		}
		
		//print(laser);
		if(taunt_pressed){
			window = 20;
		}
	}
}


if (attack == AT_FSTRONG || attack == AT_USTRONG || attack == AT_DSTRONG){
    can_fast_fall = false;
    if(window == 1 && !hitpause){
	    if(strong_charge >= 1){
	        hsp = 0;vsp = 0;
	    }
	    if(strong_charge == round(30*runeC_charge_multiplier)){
	        sound_play(sound_get("charge"),false,noone,0.75);
	    }
	    if(strong_charge == round(60*runeC_charge_multiplier)){
	        sound_play(sound_get("charge2"),false,noone,0.75);
	    }
    }
}

#define cancelattack
    if(/*has_hit && */(attack_pressed || special_pressed || jump_pressed || right_stick_pressed || left_stick_pressed || up_stick_pressed || down_stick_pressed
	|| right_strong_pressed || left_strong_pressed || up_strong_pressed || down_strong_pressed)){
		window = 20;
		if (attack == AT_USPECIAL && vsp < -10){
			vsp *= 0.5;
		}
		if (attack == AT_DSTRONG){
			old_vsp = 0;hitpause = 0;hitstop = 0;
		}
	}
	
#define kob_bonus_damage
	bonus_damage = argument[0]>1;
	damage_scaling = argument[0] > 1 ? argument[0] : 1;
	
#define collision_line_list {
    {
        var x1,y1,x2,y2,obj,prec,notme,dsid,i;
        x1 = argument0;
        y1 = argument1;
        x2 = argument2;
        y2 = argument3;
        obj = argument4;
        prec = argument5;
        notme = argument6;
        dsid = ds_list_create();
        with (obj) {
            if (!notme || "id" in self && id != other.id) {
                i = collision_line(x1,y1,x2,y2,id,prec,false);
                if (i != noone) ds_list_add(dsid,i);
            }
        }
        if (ds_list_size(dsid) == 0) {
            ds_list_destroy(dsid);
            dsid = noone;
        }
        return dsid;
    }
}
