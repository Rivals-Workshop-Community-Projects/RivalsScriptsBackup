//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}

if (attack == AT_JAB){
    if (window == 2) and window_timer >= 9{
        if (attack_pressed) and (left_down == false and right_down == false and up_down == false and down_down == false){
            window = 2;
            window_timer = 0;
        }
        //can_attack = true;
    }
}

if (attack == AT_NSPECIAL && window == 2 && window_timer == 1) and party_cooldown == 0 and object_index != oTestPlayer{ //and object_index != oTestPlayer
    instance_create(x, y, "obj_article1");
    spawn_hit_fx( x, y-40, hit_fx_create( sprite_get( "confetti_launch_up" ), 60 ));
	spawn_hit_fx( x, y-20, hit_fx_create( sprite_get( "confetti_launch_diagonal" ), 60 ));
	party_cooldown = 200;
}

if attack == AT_NSPECIAL{
	can_wall_jump = true;
}

if attack == AT_DSPECIAL{
	if has_hit and window >= 3{
		can_shield = true;
		can_attack = true;
		can_strong = true;
		can_ustrong = true;
		if attack_pressed or left_strong_pressed or right_strong_pressed or shield_pressed or up_strong_pressed or down_strong_pressed{
			sound_stop(sound_get("DanceTime"));
		}
	}
	if vsp >= 2{
		vsp = 2
	}
	if hsp >= 3{
		hsp = 3
	}
	
	if hsp <= -3{
		hsp = -3
	}
	//if left_down{
    //    hsp += -.15
    //}
    //if right_down{
    //	hsp += .15
    //}
}

if attack == AT_TAUNT{
	//if window == 1 && window_timer == 1{
	//	instance_create(x, y, "obj_article3");
	//}
	if window == 1 and window_timer == 1{
		happy_birthday = 0;
	}
	if taunt_down and (window == 10 or (window < 10 and window_timer == 9)){
		window = 10;
		window_timer = 1;
	}
	if window_timer == 9 and taunt_down == false{
		window = 11
		window_timer = 1;
	}
	if window == 10{
		if attack_pressed and shield_down == false{
			window = 2
			window_timer = 0
			if happy_birthday == 0{
				happy_birthday = 1;
			}
			else if happy_birthday == 1{
				happy_birthday = 2;
			}
			else if happy_birthday == 3{
				happy_birthday = 4;
			}
			else if happy_birthday == 6{
				happy_birthday = 7;
			}
			else if happy_birthday == 7{
				happy_birthday = 8;
			}
			else if happy_birthday == 9{
				happy_birthday = 10;
			}
			else if happy_birthday == 12{
				happy_birthday = 13;
			}
			else if happy_birthday == 13{
				happy_birthday = 14;
			}
			else{
				happy_birthday = 0;
			}
		}
		if left_strong_pressed or right_strong_pressed and shield_down == false{
			window = 3
			window_timer = 0
			if happy_birthday == 2{
				happy_birthday = 3;
			}
			else if happy_birthday == 8{
				happy_birthday = 9;
			}
			else if happy_birthday == 18{
				happy_birthday = 19;
			}
			else{
				happy_birthday = 0;
			}
		}
		if special_pressed and shield_down == false{
			window = 4
			window_timer = 0
			if happy_birthday == 5{
				happy_birthday = 6;
			}
			else if happy_birthday == 17{
				happy_birthday = 18;
			}
			else{
				happy_birthday = 0;
			}
		}
		if jump_pressed and shield_down == false{
			window = 5
			window_timer = 0
			if happy_birthday == 4{
				happy_birthday = 5;
			}
			else if happy_birthday == 11{
				happy_birthday = 12;
			}
			else if happy_birthday == 16{
				happy_birthday = 17;
			}
			else if happy_birthday == 22{
				happy_birthday = 23;
			}
			else if happy_birthday == 24{
				happy_birthday = 25;
				create_deathbox(
				x, // x
				y, // y
				1920, // w
				1080, // h
				0, // player
				true, // free
				1, // shape
				4, // lifespan
				2 // bg_type
				);
			}
			else{
				happy_birthday = 0;
			}
		}
		if shield_down{
			if attack_pressed{
				window = 6
				window_timer = 0
				if happy_birthday == 10{
					happy_birthday = 11;
				}
				else if happy_birthday == 23{
					happy_birthday = 24;
				}
				else{
					happy_birthday = 0;
				}
			}
			if left_strong_pressed or right_strong_pressed{
				window = 7
				window_timer = 0
				if happy_birthday == 15{
					happy_birthday = 16;
				}
				else if happy_birthday == 21{
					happy_birthday = 22;
				}
				else{
					happy_birthday = 0;
				}
			}
			if special_pressed{
				window = 8
				window_timer = 0
				if happy_birthday == 19{
					happy_birthday = 20;
				}
				else if happy_birthday == 20{
					happy_birthday = 21;
				}
				else{
					happy_birthday = 0;
				}
			}
			if jump_pressed{
				window = 9
				window_timer = 0
				if happy_birthday == 14{
					happy_birthday = 15;
				}
				else{
					happy_birthday = 0;
				}
			}
		}
	}
	if window == 2 and window_timer = 1 and happy_birthday == 0{
		happy_birthday = 1;
	}
}

if attack == AT_FSPECIAL{
	if window == 1 and window_timer == 1{
		set_attack_value(AT_FSPECIAL, AG_NUM_WINDOWS, 4);
	}
	if window == 5{
        if window_timer <= 2 {
            ftarget.x = x + ( 160 * spr_dir)
            ftarget.y = y
        }
        if window_timer >= 3 {
            ftarget.x = x + ( 64 * spr_dir)
            ftarget.y = y
        }
        //if window_timer >= 6 {
        //    ftarget.x = x + ( 32 * spr_dir)
        //    ftarget.y = y
        //}
    }
    if window == 6 and window_timer < 17{
    	ftarget.x = x + ( 32 * spr_dir)
        ftarget.y = y
    }
    if window == 6 and window_timer >= 17{
    	ftarget = 0;
    }
    if window < 4{
    	can_wall_jump = true;
    }
}

if attack == AT_FSTRONG{
	if window == 1 and window_timer == 1{
		fstrong_rando = random_func( 0, 7, true );
		//fcountdown -= 1;
		//if fcountdown = -1{
		//	fcountdown = 7;
		//}
		//fstrong_rando = 6;//debug
		set_window_value(AT_FSTRONG, 1, AG_WINDOW_ANIM_FRAMES, 3);
		print_debug(string(fstrong_rando));
		//print_debug(string(fcountdown));
	}
	if window == 2 and window_timer == 1 and fstrong_rando == 6{
		set_window_value(AT_FSTRONG, 1, AG_WINDOW_ANIM_FRAMES, 4);
		sound_play(asset_get("sfx_ell_uspecial_explode"));
		window = 4;
		//fcountdown = random_func( 0, 7, true );
		print_debug("cat");
	}
	if window == 3 and window_timer == 1{
		spawn_hit_fx(x + (spr_dir * 40), y-36, hit_fx_create( sprite_get( "confetti_launch_horizontal" ), 60 ));
		spawn_hit_fx(x + (spr_dir * 40), y-36, hit_fx_create( sprite_get( "confetti_launch_diagonal" ), 60 ));
	}
}

if attack == AT_DATTACK{
	if has_hit == true{
        if (down_strong_pressed) and window_timer >= 4 {
            attack = AT_DSTRONG
            window = 1
            window_timer = 6
        }
        if (attack_pressed and (right_down and spr_dir == 1 or left_down and spr_dir == -1)) and window_timer >= 4 {
            attack = AT_FTILT
            window = 1
            window_timer = 1
        }
	}
	if window == 2{
		if left_down{
        hsp += -.15
	    }
	    if right_down{
	    	hsp += .15
	    }
	}
	
}

if attack == AT_DSTRONG{
	if window == 2 and window_timer == 1{
		spawn_hit_fx(x + (spr_dir * 40), y-26, hit_fx_create( sprite_get( "confetti_launch_horizontal" ), 60 ));
		spawn_hit_fx(x + (spr_dir * -60), y-26, hit_fx_create( sprite_get( "confetti_launch_hback" ), 60 ));
	}
}

if attack == AT_USTRONG{
	print_debug(string(ustrong_charge));
	if window == 1{
		ustrong_charge = 0;
		set_num_hitboxes(AT_USTRONG,1);
		if window_timer == 1{
			has_cake = 0;
		}
	}
	if window == 2{
		ustrong_charge += 1;
	}
	if window == 3{
		if window_timer == 1 and ustrong_charge >= 15 and ustrong_charge < 30 and has_cake == 0{
			//set_num_hitboxes(AT_USTRONG,2);
			y = y-32
			spawn_hit_fx(x, y+32, hit_fx_create( sprite_get( "cake1" ), 70 ));
			has_cake = 1;
		}
		if window_timer == 1 and ustrong_charge >= 30 and ustrong_charge < 45 and has_cake == 0{
			//set_num_hitboxes(AT_USTRONG,3);
			y = y-64
			spawn_hit_fx(x, y+64, hit_fx_create( sprite_get( "cake2" ), 70 ));
			has_cake = 1;
		}
		if window_timer == 1 and ustrong_charge >= 45 and has_cake == 0{
			//set_num_hitboxes(AT_USTRONG,4);
			y = y-96
			spawn_hit_fx(x, y+96, hit_fx_create( sprite_get( "cake3" ), 70 ));
			has_cake = 1;
		}
		if window_timer == 1 and hitpause = 0{
			spawn_hit_fx(x + 16, y-64, hit_fx_create( sprite_get( "confetti_launch_up" ), 60 ));
			spawn_hit_fx(x - 16, y-64, hit_fx_create( sprite_get( "confetti_launch_up" ), 60 ));
		}
	if window == 3 or window == 4{
		vsp = 0;
		free = 0;
	}
		
	}
}

if attack == AT_DAIR{ 
	if window == 2 and window_timer == 1{
		dair_type = random_func(0, 2, true);
	}
}

if attack == AT_BAIR and window == 1 and window_timer == 20{
	if spr_dir == 1 and right_down{
		spr_dir = spr_dir*-1;
	}
	if spr_dir == -1 and left_down{
		spr_dir = spr_dir*-1;
	}
}

if attack == AT_BAIR{
	if window == 1{
		set_attack_value(AT_BAIR, AG_CATEGORY, 2);
	}
	if window == 3{
		set_attack_value(AT_BAIR, AG_CATEGORY, 1);
	}
}

if attack == AT_DSPECIAL and window == 1 and window_timer == 12{
	if spr_dir == 1 and right_down{
		spr_dir = spr_dir*-1;
	}
	if spr_dir == -1 and left_down{
		spr_dir = spr_dir*-1;
	}
}

if attack == AT_UAIR and (window == 3) and has_hit and uairpop == 0{
	window = 3;
	window_timer = 34;
	uairpop = 1;
	destroy_hitboxes()
}

if attack == AT_UAIR and window == 1 and window_timer == 1{
	uairpop = 0
}

if attack == AT_UAIR or attack == AT_BAIR or attack == AT_DAIR or attack == AT_NAIR or attack == AT_FAIR{
	can_wall_jump = true;
}

if attack == AT_USPECIAL and window == 2 and window_timer >= 23 and special_down{
	window = 3
	uloop = 0
}

if attack == AT_USPECIAL{
	can_wall_jump = true;
}
if attack == AT_USPECIAL and window == 3{
	can_shield = true;
	if shield_pressed{
		ufall = 1;
	}
	if window_timer >= 32 and special_down and uloop <= 1{
		uloop += 1
		window_timer = 0
	}
	if special_down == false{
		window_timer = 42;
	}
}

/*if attack == AT_TAUNT_2 and window_timer >= 118{
	if taunt_down{
		window_timer = 0;
	}
    state = PS_CROUCH
    if down_down{
        state_timer = 4
    }
}