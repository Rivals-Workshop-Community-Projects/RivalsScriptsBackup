//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}

if (burst = 1 && ((attack == AT_DSPECIAL && window == 2 && window_timer == 1 && state == PS_ATTACK_GROUND) 
|| (attack == AT_DSPECIAL_AIR && window == 4 && window_timer == 1 && (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND))))
{
	  burstfrontx = x + (spr_dir * 90); //initial position for front check
  burstbackx = x - (spr_dir * 60);  //initial positionfor back check
burstfronty = y;
burstbacky = y;

  spawning_front_spikes = true;
  spawning_back_spikes = true;
  //save current position for future spikes
	burst_y = y;
  burst_dir = spr_dir;
  //delay for first spike goes here
  burst_timer = 0;
}

if window == 1 && window_timer == 1 {
	beginning = 1;
} else {
	beginning = 0;
}

if attack == AT_FSPECIAL || attack == AT_DSPECIAL_AIR {
	can_wall_jump = true;
}


if burst = 1 && (attack == AT_FSPECIAL || attack == AT_NSPECIAL || attack == AT_USPECIAL) && has_hit {
	usingspecial = true;
	burststop = 240;
	cooldownstart = true;

}


if !free {
if (attack == AT_DSPECIAL && window == 2 && window_timer == 6 && state == PS_ATTACK_GROUND) 
|| (attack == AT_DSPECIAL_AIR && window == 4 && window_timer == 6 && (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND))
if burst = 0 {
    
   var frontx = x + (spr_dir * 80);
   var backx = x - (spr_dir * 50);
  
   //landed: try finding an edge
            var depth_check = 5;
//            var length_check = 50;
            //landed on leftmost side?
            left_test = (noone == collision_line(frontx, y, frontx, y+depth_check, 
                                      asset_get("par_block"), true, true))
                         && (noone == collision_line(frontx, y, frontx, y+depth_check, 
                                      asset_get("par_jumpthrough"), true, true));
                                          
            //landed on rightmost side?
            right_test = (noone == collision_line(backx, y, backx, y+depth_check, 
                                       asset_get("par_block"), true, true))
                          && (noone == collision_line(backx, y, backx, y+depth_check, 
                                       asset_get("par_jumpthrough"), true, true));



if (!left_test) {
    var hbox = create_hitbox( AT_DSPECIAL, 4, frontx, y - 32);
   spikehitboxleft = true;
}

if (!right_test) {
    var hbox = create_hitbox( AT_DSPECIAL, 4, backx, y - 32);
    hbox.spr_dir = burst_dir;
}
}
}
if get_player_color( player ) == 17 {
	if attack == AT_TAUNT && window == 1 && window_timer == 1 {
		set_attack_value(AT_TAUNT, AG_SPRITE, sprite_get("jordan"));
	}
}

if burst = 1 {
		set_hitbox_value(AT_NSPECIAL, 2, HG_BASE_KNOCKBACK, 9.75);
		set_hitbox_value(AT_NSPECIAL, 2, HG_KNOCKBACK_SCALING, 1.1);
		
		set_hitbox_value(AT_FSPECIAL, 2, HG_BASE_KNOCKBACK, 7);
		set_hitbox_value(AT_FSPECIAL, 2, HG_KNOCKBACK_SCALING, 1.1);
		
		set_hitbox_value(AT_USPECIAL, 3, HG_BASE_KNOCKBACK, 6.75);
		set_hitbox_value(AT_USPECIAL, 3, HG_KNOCKBACK_SCALING, .7);
		
		set_hitbox_value(AT_USPECIAL, 4, HG_BASE_KNOCKBACK, 7);
		set_hitbox_value(AT_USPECIAL, 4, HG_KNOCKBACK_SCALING, .6);
		
		set_hitbox_value(AT_USPECIAL, 5, HG_BASE_KNOCKBACK, 7.5);
		set_hitbox_value(AT_USPECIAL, 5, HG_KNOCKBACK_SCALING, .9);
		
		set_window_value(AT_USPECIAL, 2, AG_WINDOW_VSPEED, -15);

} else {
		reset_hitbox_value(AT_NSPECIAL, 2, HG_BASE_KNOCKBACK);
		reset_hitbox_value(AT_NSPECIAL, 2, HG_KNOCKBACK_SCALING);
		
		reset_hitbox_value(AT_FSPECIAL, 2, HG_BASE_KNOCKBACK);
		reset_hitbox_value(AT_FSPECIAL, 2, HG_KNOCKBACK_SCALING);
		
		reset_hitbox_value(AT_USPECIAL, 3, HG_BASE_KNOCKBACK);
		reset_hitbox_value(AT_USPECIAL, 3, HG_KNOCKBACK_SCALING);

		reset_hitbox_value(AT_USPECIAL, 4, HG_BASE_KNOCKBACK);
		reset_hitbox_value(AT_USPECIAL, 4, HG_KNOCKBACK_SCALING);

		reset_hitbox_value(AT_USPECIAL, 5, HG_BASE_KNOCKBACK);
		reset_hitbox_value(AT_USPECIAL, 5, HG_KNOCKBACK_SCALING);
		
		reset_window_value(AT_USPECIAL, 2, AG_WINDOW_VSPEED);

}

/*
if (burst = 1 && usingspecial = true && ((attack == AT_NSPECIAL && window == 6) || (attack == AT_FSPECIAL && window == 4) || (attack == AT_USPECIAL && (window == 5 || window == 6))) || state == PS_HITSTUN) {
	usingspecial = false;
	cooldownstart = true;
}
*/

if attack == AT_FTILT && has_hit && window == 2 {
	window = 4;
	window_timer = 0;
	destroy_hitboxes();
}

if attack == AT_DATTACK && has_hit && window == 2 {
	window = 4;
	window_timer = 0;
	destroy_hitboxes();
}

if bloodmeter < bloodmetermin {
	bloodmeter = bloodmetermin;
}
else if (bloodmeter > bloodmetermax && !hitpause && state != PS_HITSTUN){
	bloodmeter = 0;
	burst = 1;
	burstmeter = 100;
	burstactive = true;
	attack_end();
	destroy_hitboxes();
	set_attack(AT_DSPECIAL_2);
	if get_player_color( player ) == 13 || get_player_color( player ) == 18 {
		if spr_dir == 1 {
			set_attack_value(AT_DSPECIAL_2, AG_SPRITE, sprite_get("burst_blw"));
		} else {
			set_attack_value(AT_DSPECIAL_2, AG_SPRITE, sprite_get("burst_blw_flip"));
		}
	}
	hurtboxID.sprite_index = get_attack_value(AT_DSPECIAL_2, AG_HURTBOX_SPRITE);
	burstactive = false;
	djumps = 0;
	move_cooldown[AT_USPECIAL] = 0;
}

//====================================
//NSPECIAL

if attack == AT_NSPECIAL {
    if window == 2 && window_timer == 1 {
        sound_play(asset_get("sfx_swipe_heavy2"));
    }
    
if (attack == AT_NSPECIAL) {
	
    if(window == 1){
    	grabbed_player_obj = noone;
    }
    if(window < 4 and grabbed_player_obj!= noone and !hitpause){
    	window = 4;
    	window_timer = 0;
    } 
    if(window == 4){
    	if(window_timer < 12){
    		grabbed_player_obj.hitstop = 2;
    		grabbed_player_obj.hitstop_full = 2;
    		grabbed_player_obj.hitpause = true;
    	}
		if(window_timer < 4){
				grabbed_player_obj.x = lerp(grabbed_player_obj.x, x+spr_dir*40, .25);
    			grabbed_player_obj.y = lerp(grabbed_player_obj.y, y+16, .25);
		} else if (window_timer < 8){
				grabbed_player_obj.x = x+spr_dir*42;
    			grabbed_player_obj.y = y+8;
		} else if (window_timer < 12){
				grabbed_player_obj.x = x+spr_dir*56;
    			grabbed_player_obj.y = y-8;
		} else if (window_timer == 12){
				grabbed_player_obj.x = x+spr_dir*40;
    			grabbed_player_obj.y = y-42;
		}
    }
    can_fast_fall = false;
	

}

}

//====================================
//FSTRONG

if attack == AT_FSTRONG {
    if window == 2 && window_timer == 1 {
        sound_play(asset_get("sfx_swipe_heavy2"));
    }
} 
if (attack == AT_FSTRONG) {
		if(window == 1){
    	grabbed_player_obj = noone;
    }
    if(window < 4 and grabbed_player_obj!= noone and !hitpause){
    	window = 4;
    	window_timer = 0;
    } 
    if(window == 4){
    	if(window_timer < 4){
    		grabbed_player_obj.hitstop = 2;
    		grabbed_player_obj.hitstop_full = 2;
    		grabbed_player_obj.hitpause = true;
    	}
		if(window_timer < 4){
				grabbed_player_obj.x = lerp(grabbed_player_obj.x, x+spr_dir*50, .25);
    			grabbed_player_obj.y = lerp(grabbed_player_obj.y, y-16, .25);
		} else if (window_timer < 4){
				grabbed_player_obj.x = x+spr_dir*52;
    			grabbed_player_obj.y = y-16;
		} else {
				grabbed_player_obj.x = x-spr_dir*32;
    			grabbed_player_obj.y = y-8;
		}
    } else if (window == 5){
    		grabbed_player_obj.hitstop = 2;
    		grabbed_player_obj.hitstop_full = 2;
    		grabbed_player_obj.hitpause = true;
    		if(window_timer < 9){
				grabbed_player_obj.x = x-spr_dir*32;
    			grabbed_player_obj.y = y-8;
    		} else if (window_timer < 18){
    			grabbed_player_obj.x = x-spr_dir*24;
    			grabbed_player_obj.y = y-32;
    		} else {
    			grabbed_player_obj.x = x-spr_dir*20;
    			grabbed_player_obj.y = y-30;
    		}
    } else if (window == 6){
    		if(window_timer < 6){
	    	    grabbed_player_obj.hitstop = 2;
	    		grabbed_player_obj.hitstop_full = 2;
	    		grabbed_player_obj.hitpause = true;
    		}
    		if(window_timer < 5){
    			grabbed_player_obj.x = x-spr_dir*20;
    			grabbed_player_obj.y = y-30;
    		} else if(window_timer == 5){
    			grabbed_player_obj.x = x+spr_dir*32;
    			grabbed_player_obj.y = y;
    		}
    		
    }
	
}



//====================================
//FSTRONG_2

if attack == AT_FSTRONG_2 {
    if window == 2 && window_timer == 1 {
        sound_play(asset_get("sfx_swipe_heavy2"));
    }
    
//attack_update.gml
if (attack == AT_FSTRONG_2) {
		if(window == 1){
    	grabbed_player_obj = noone;
    }
    if(window < 4 and grabbed_player_obj!= noone and !hitpause){
    	window = 4;
    	window_timer = 0;
    }

    if(window == 4){
    	if(window_timer < 4){
    		grabbed_player_obj.hitstop = 2;
    		grabbed_player_obj.hitstop_full = 2;
    		grabbed_player_obj.hitpause = true;
    	}
		if(window_timer < 4){
				grabbed_player_obj.x = lerp(grabbed_player_obj.x, x+spr_dir*50, .25);
    			grabbed_player_obj.y = lerp(grabbed_player_obj.y, y-16, .25);
		} else if (window_timer < 4){
				grabbed_player_obj.x = x+spr_dir*52;
    			grabbed_player_obj.y = y-16;
		} else {
				grabbed_player_obj.x = x-spr_dir*32;
    			grabbed_player_obj.y = y-8;
		}
    } else if (window == 5){
    		grabbed_player_obj.hitstop = 9;
    		grabbed_player_obj.hitstop_full = 9;
    		grabbed_player_obj.hitpause = true;
    		if(window_timer < 9){
				grabbed_player_obj.x = x-spr_dir*32;
    			grabbed_player_obj.y = y-8;
    		} else if (window_timer < 18){
    			grabbed_player_obj.x = x-spr_dir*24;
    			grabbed_player_obj.y = y-32;
    		} else {
    			grabbed_player_obj.x = x-spr_dir*20;
    			grabbed_player_obj.y = y-30;
    		}
    } else if (window == 6){
    		if(window_timer < 6){
	    	    grabbed_player_obj.hitstop = 2;
	    		grabbed_player_obj.hitstop_full = 2;
	    		grabbed_player_obj.hitpause = true;
    		}
    		if(window_timer < 5){
    			grabbed_player_obj.x = x-spr_dir*20;
    			grabbed_player_obj.y = y-30;
    		} else if(window_timer == 5){
    			grabbed_player_obj.x = x+spr_dir*32;
    			grabbed_player_obj.y = y;
    		}
    		
    }
	
}

}

//===============================

if (attack == AT_FSPECIAL){
    if (window == 3 and window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
		window = 5;
    }
    if(window == 1){
    	fspecial_grabbed_player = noone;
    }
    if(window < 4 and fspecial_grabbed_player!= noone and !hitpause){
    	window = 4;
    	window_timer = 0;
    	fspecial_grabbed_player.hitstop = 2;
    	fspecial_grabbed_player.hitstop_full = 2;
    	fspecial_grabbed_player.hitpause = true;
    } 
    if(window == 4){
    	if(window_timer < 14){
    		fspecial_grabbed_player.hitstop = 2;
    		fspecial_grabbed_player.hitstop_full = 2;
    		fspecial_grabbed_player.hitpause = true;
    	}
		if(window_timer < 4){
				fspecial_grabbed_player.x = lerp(fspecial_grabbed_player.x, x, .15);
    			fspecial_grabbed_player.y = y-8;
		} else if (window_timer < 8){
			fspecial_grabbed_player.x = x-spr_dir*8;;
			fspecial_grabbed_player.y = y-16;
		} else if (window_timer < 12){
			fspecial_grabbed_player.x = x;
			fspecial_grabbed_player.y = y;
		} else if (window_timer == 12){
			fspecial_grabbed_player.x = x+spr_dir*64;
			fspecial_grabbed_player.y = y;
		}
    }
    can_fast_fall = false;
}

if attack == AT_USPECIAL {
	can_wall_jump = true;
		if (target != noone && !hitpause) {
		if (target.state == PS_DEAD || target.state == PS_RESPAWN || target.state == PS_WALL_TECH || target.state == PS_TECH_GROUND || target.state == PS_TECH_FORWARD || target.state == PS_TECH_BACKWARD) {
			target = noone;
		} else {
			if (window == 2) {	
				target.y = (target.y + (y - 20)) / 2;
				target.x = (target.x + (x + (30 * spr_dir))) / 2;
				if (window_timer == 15) {
					target.vsp = -4;
				}
			} else if (window == 3) {
				target.y = ((4*target.y) + (y + 40)) / 5;
				target.x = ((4*target.x) + (x + (35 * spr_dir))) / 5;
			} else {
				target = noone;			
			}

		}
	}
		if window == 2 && window_timer == 10 {
			if left_down {
				spr_dir = -1 
			} else if right_down {
				spr_dir = 1
			}
	}
}

if attack == AT_USPECIAL {
	if window == 2 && window_timer > 8  {
			if shield_down {
				window = 8;
				window_timer = 0;
		} 
}
}

if attack == AT_USPECIAL && !free {
	if window == 4 || window == 5 {
		destroy_hitboxes();
		window = 6;
		window_timer = 0;
		sound_play(asset_get("sfx_zetter_downb"));
		sound_play(asset_get("sfx_blow_heavy1"));
	}
}

	if attack = AT_DSPECIAL_AIR && window != 4 && !free {
		window = 4;
		window_timer = 0;
		destroy_hitboxes();
		sound_play(asset_get("sfx_zetter_downb"));
	}

if attack == AT_DSPECIAL_AIR && window == 2 && window_timer > 12 {
		djumps = 0;
}



if (attack = AT_DSPECIAL_2)
{
	blooddie = 0; 
}


if attack == AT_TAUNT && window == 2 && window_timer == 17 && taunt_down {
	window_timer = 2;
}


//gnome
switch(attack) {
	case AT_FAIR: 
		if window == 1 && window_timer == 9 sound_play(sound_get("swingmid"))
	break;
	case AT_BAIR: 
		if window == 1 && window_timer == 5 sound_play(sound_get("swingmid"), 0, noone, 1, .9)
	break;
	case AT_USPECIAL: {
		if window == 1 && window_timer == 1 {
			sound_play( asset_get("sfx_ell_uspecial_explode"), 0, noone, 1, 1.4)
		}
	}
	case AT_NSPECIAL: {
		can_fast_fall = false;
		fast_falling = false;
	}
	case AT_UTILT: 
		if window == 1 && window_timer == 5 sound_play(sound_get("swingmid"), 0, noone, 1, .9)
	break;
	case AT_DSTRONG: {
		if (window == 3 && window_timer == 10) || (window == 7 && window_timer == 10) {
						sound_play(sound_get("swingmid"))
		}
	}
}




if (attack == AT_JAB && (window == 2 || window == 4)) {
    clear_button_buffer(PC_ATTACK_PRESSED);
}

//rioku - Strong visual effects
switch (attack){
	case AT_FSTRONG_2:
	case AT_DSTRONG:
    case AT_DSPECIAL:
    case AT_DSPECIAL_AIR:
	case AT_NSPECIAL:
	case AT_FSPECIAL:
	case AT_USTRONG:
	case AT_USPECIAL:

		for(var i = 0; i < demon_trail_size; i++){
			demon_trail[i].life--;
			demon_trail[i].x-=spr_dir*2;
		}
		var cur_time = state_timer;
		var current_trail = demon_trail[floor(cur_time/10)%3];
		if(current_trail.life <= 0){
			current_trail.x = x;
			current_trail.y = y;
			current_trail.sprite_index = sprite_index;
			current_trail.image_index = image_index;
			current_trail.color = trail_color;
			current_trail.spr_dir = spr_dir;
			
			//if we walk we make the trail last longer so it looks cooler
				current_trail.life = 16;
		}
	break;
}

//inner alt code
if (get_player_color(player) == 18){
if (attack == AT_TAUNT && window == 1 && window_timer == 3) { 
sound_play(sound_get("Getthatassbanned"));
}} 

