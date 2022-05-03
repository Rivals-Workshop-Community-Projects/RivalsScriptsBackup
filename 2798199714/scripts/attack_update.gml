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
    	if(!special_down && window_timer > 12 || window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
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
    		if(window_timer % 6 == 0){
            	create_hitbox(AT_NSPECIAL, 1, x, y-25);sound_play(sound_get("swords"));
        	}
    	}
    }else if(window >= 6){
    	can_wall_jump = true;
    	if(window_timer >= 16){
        	fspec_stall = 1;
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
	can_wall_jump = true;
    //if(!upb || window == 5){
        if(!hitpause){
            if(window == 1){
            	if(window_timer == 1){
            		move_cooldown[AT_USPECIAL] = 999;upbtimer = 0;
            		upbground = !free;
            		if(!free){
            			upbtimer = 8;
            		}
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
                }vsp = vsp*0.95;
                if(window_timer % 5 == 0 || window_timer == 1){
                    spawn_hit_fx(x-40+(random_func(0, 80, true)),y-20,fx_feathers);
                }
                if(window_timer % 2 == 0 || window_timer == 1){
                    spawn_hit_fx(x,y,fx_trailvertical);
                }
            }else if(window == 3){
                //vsp = (-4+window_timer/3);
            }
            if(upbground && (window == 2 && window_timer >= 10 || window == 3)){
            	cancelattack();
            }
            can_fast_fall = false;
            can_move = false;
        }
    //}
}else if (attack == AT_DSPECIAL){
    if(window == 1){
        vsp -= 1;
    }else if(window == 2){
    	if(window_timer == 3 && !hitpause){
    		sound_play(sound_get("swords2"));
    	}
    }else if(window == 3){
        if(window_timer == 1 && !hitpause){
            if(!instance_exists(time_rift)){
            	move_cooldown[AT_DSPECIAL] = 999;time_rift_dmg = 0;
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
	if(right_down && hsp < 1.5){
		hsp += .35;
	}else if(left_down && hsp > -1.5){
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
        }
    }else{
    	if(window == 1 || window == 7){
    		reset_attack_value(AT_NAIR, AG_CATEGORY);
    	}
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
	        if(vsp > -6 || vsp > -8 && (attack_down || strong_down || up_stick_down || up_strong_down)){
	        	if(attack_down || strong_down || up_stick_down || up_strong_down){
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
        if(uairloop < 4){
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
		if(attack_down){
			window = 4;
			window_timer = 0;
		}
	}else if(window == 4 || window == 5){
		if(window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) && !hitpause){
	        dusteff = spawn_hit_fx(x-15*spr_dir,y,fx_dust_sharp);dusteff.depth = depth-1;dusteff.spr_dir = -spr_dir;
	    }
	}else if(window == 6){
		if(window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) /*&& has_hit*/){
    		if(attack_down && !was_parried){
    		    window = 5;
    	    	window_timer = 0;
    		}
    	}
	}else if(window == 7){
		if(window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) && !hitpause){
	        dusteff = spawn_hit_fx(x-25*spr_dir,y,fx_dust_sharp_big);dusteff.depth = depth-1;dusteff.spr_dir = -spr_dir;
	        var star = spawn_hit_fx(x+150*spr_dir, y-35, fx_star_tiny);star.depth = depth-1;
	        star = spawn_hit_fx(x-80*spr_dir, y-35, fx_star_tiny);star.spr_dir = -spr_dir;star.depth = depth-1;
	        shake_camera(5,5);
	    }
	}if(window == 5 || window == 6){
		if(window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
    		if(!attack_down || was_parried){
				window = 7;
				window_timer = 0;
				if(!was_parried){
					create_hitbox(AT_JAB, 5, x, y);
				}
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
    	if(strong_charge >= 30){
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
}else if (attack == AT_USTRONG){
    can_move = false;
	if(right_down && hsp < 1.5){
		hsp += .35;
	}else if(left_down && hsp > -1.5){
		hsp -= .35;
	}
    if (vsp >= 0 && (position_meeting(x,y+25,asset_get("par_block")) || position_meeting(x,y+25,asset_get("par_jumpthrough")))){
    	if(strong_charge <= 30){
        	vsp *= 0.5;
    	}else{
        	vsp *= 0.25;
    	}
    }
    if(window == 2 && !hitpause){
    	vsp *= 0.9;
    	if(strong_charge >= 30){
    		if(position_meeting(x,y+25,asset_get("par_block")) || position_meeting(x,y+25,asset_get("par_jumpthrough"))){
    			hsp *= 0.5;
    		}
    		if(window_timer == 1 && strong_charge < 60 || window_timer == 4 && strong_charge >= 60){
    			if(position_meeting(x+60*spr_dir, y+30,asset_get("par_block")) || position_meeting(x+60*spr_dir, y+30,asset_get("par_jumpthrough"))){
		    		create_hitbox(AT_USTRONG, 4, x+60*spr_dir, y-150);spawnlightning = true;
    			}if(position_meeting(x-60*spr_dir, y+30,asset_get("par_block")) || position_meeting(x-60*spr_dir, y+30,asset_get("par_jumpthrough"))){
		    		create_hitbox(AT_USTRONG, 4, x-60*spr_dir, y-150);spawnlightning = true;
    			}
		    	if(strong_charge >= 60){
		    		if(position_meeting(x+160*spr_dir, y+30,asset_get("par_block")) || position_meeting(x+160*spr_dir, y+30,asset_get("par_jumpthrough"))){
			    		create_hitbox(AT_USTRONG, 4, x+160*spr_dir, y-150);spawnlightning = true;
		    		}if(position_meeting(x-160*spr_dir, y+30,asset_get("par_block")) || position_meeting(x-160*spr_dir, y+30,asset_get("par_jumpthrough"))){
			    		create_hitbox(AT_USTRONG, 4, x-160*spr_dir, y-150);spawnlightning = true;
		    		}
		    		if(!position_meeting(x, y+30,asset_get("par_block")) && !position_meeting(x, y+30,asset_get("par_jumpthrough"))){
			    		create_hitbox(AT_USTRONG, 6, x, y-160);spawnlightning = true;
		    		}
			    }
			    if(spawnlightning){
			    	if(strong_charge < 60){
			    		set_window_value(AT_USTRONG, 2, AG_WINDOW_LENGTH, 16);set_window_value(AT_USTRONG, 2, AG_WINDOW_SFX_FRAME, 15);
			    		set_window_value(AT_USTRONG, 4, AG_WINDOW_LENGTH, 16);
		    		}else{
			    		set_window_value(AT_USTRONG, 2, AG_WINDOW_LENGTH, 22);set_window_value(AT_USTRONG, 2, AG_WINDOW_SFX_FRAME, 21);
			    		set_window_value(AT_USTRONG, 4, AG_WINDOW_LENGTH, 26);
		    		}
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
    }
    if(window >= 4 && spawnlightning){
    	if(!ustrongstall){
    		vsp *= 0.25;
    	}else{
    		vsp *= 0.9;
    	}
    	if(window == 5 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
	    	ustrongstall = true;
	    }
    }
    if(strong_charge > 30){
    	hsp *= 0.5;
    }
}else if (attack == AT_DSTRONG){
    if(window == 3){
        can_move = false;
        if(window_timer > 25){
        	window_timer = 25;
        }
        if(get_gameplay_time() % 2 == 0 || window_timer == 1){
    		spawn_hit_fx(x,y-50,fx_trailvertical);
    	}
        /*if (free && position_meeting(x,y+40,asset_get("par_block"))){
        	y += 20;free = false;
        	vsp += 10;
        }*/
    }if(window == 3 && !free){
        window = 4;window_timer = 0;
        shake_camera(7,5);destroy_hitboxes();
        sound_play(sound_get("thud"));
        var dust = spawn_hit_fx(x-40*spr_dir,y,fx_slam);dust.depth = depth-1;dust.spr_dir = -spr_dir;
        dust = spawn_hit_fx(x+50*spr_dir,y,fx_slam);dust.depth = depth-1;
        var star = spawn_hit_fx(x+100*spr_dir, y-35, fx_star_tiny);star.depth = depth-1;
		star = spawn_hit_fx(x-100*spr_dir, y-35, fx_star_tiny);star.spr_dir = -spr_dir;star.depth = depth-1;
        if (position_meeting(x+70*spr_dir,y+5,asset_get("par_block")) || position_meeting(x+70*spr_dir,y+5,asset_get("par_jumpthrough"))){
            if(freemd && strong_charge >= 60 && position_meeting(x+200*spr_dir,y+5,asset_get("par_block"))){
                create_hitbox(AT_DSTRONG, 9, x+80*spr_dir, y-4500);
                set_window_value(AT_DSTRONG, 5, AG_WINDOW_LENGTH, 40);
                set_window_value(AT_DSTRONG, 6, AG_WINDOW_LENGTH, 40);
            }else{
                var shockwave = spawn_hit_fx(x+60*spr_dir,y,fx_shockwave);shockwave.depth = depth-1;create_hitbox(AT_DSTRONG, 6, x+60*spr_dir, y-40);
            }
        }
    }
    if(window == 2){
    	if(window_timer == get_window_value(AT_DSTRONG, 2, AG_WINDOW_LENGTH)){
    		sound_play(sound_get("stab"));
    		//if(strong_charge >= 30){
    			dstrongcharge = strong_charge;
    		//}
	    }
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
	}else if(window == 10){
		set_attack_value(AT_TAUNT, AG_NUM_WINDOWS, 5);
		set_window_value(AT_TAUNT, 4, AG_WINDOW_LENGTH, 6);//set_window_value(AT_TAUNT, 5, AG_WINDOW_LENGTH, 8);
		set_window_value(AT_TAUNT, 7, AG_WINDOW_LENGTH, 6);set_window_value(AT_TAUNT, 8, AG_WINDOW_LENGTH, 8);set_window_value(AT_TAUNT, 9, AG_WINDOW_LENGTH, 6);
		set_window_value(AT_TAUNT, 10, AG_WINDOW_LENGTH, 22+(player*5));
		if(window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
			window = 11;window_timer = 0;
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
}


if (attack == AT_FSTRONG || attack == AT_USTRONG || attack == AT_DSTRONG){
    can_fast_fall = false;
    if(window == 1 && !hitpause){
	    if(strong_charge >= 1){
	        hsp = 0;vsp = 0;
	    }
	    if(strong_charge == 30){
	        sound_play(sound_get("charge"));
	    }
	    if(strong_charge == 60){
	        sound_play(sound_get("charge2"));
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
	}
