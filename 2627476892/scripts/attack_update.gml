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
	
	// give your moves some "pop" by spawning dust during them!
	
	case AT_JAB:
		if window == 2 || window == 5 && window_timer == 1{
			array_push(phone_dust_query, [x, y, "dash", spr_dir]);
		}
		break;
	case AT_FTILT:
	case AT_DTILT:
		if window == 1 && window_timer == phone_window_end{
			array_push(phone_dust_query, [x, y, "dash", spr_dir]);
		}
		break;
	case AT_UTILT:
		if window == 1 && window_timer == phone_window_end{
			array_push(phone_dust_query, [x, y, "dash", spr_dir]);
			array_push(phone_dust_query, [x, y, "dash", -spr_dir]);
		}
		break;
	case AT_USTRONG:
		if window == 2 && window_timer == 1{
			array_push(phone_dust_query, [x, y, "dash_start", spr_dir]);
			array_push(phone_dust_query, [x, y, "dash_start", -spr_dir]);
		}
		break;
	case AT_DSTRONG:
		if window == 2 && window_timer == 1{
			array_push(phone_dust_query, [x, y, "dash_start", spr_dir]);
			array_push(phone_dust_query, [x, y, "dash_start", -spr_dir]);
		}
		break;
	case AT_DATTACK:
		if window == 4 && window_timer == 1{
			array_push(phone_dust_query, [x + spr_dir * 70, y, "dash_start", -spr_dir]);
		}
		break;
	case AT_DSPECIAL:
		if window == 1 && window_timer == 3{
			array_push(phone_dust_query, [x + spr_dir * -20, y, "dash_start", spr_dir]);
		}
		if window == 2 && window_timer == 3{
			array_push(phone_dust_query, [x + spr_dir * -20, y, "dash_start", spr_dir]);
		}
		break;
}

if(attack == AT_NSPECIAL){
	if(window == 1 && window_timer = 1 && !hitpause){
	sound_play(sound_get("snd_weaponpull"));	
	nspecial_projectile_var = 0;
	nspecial_grab_failed = 0;
	}if(window == 4 && window_timer = 16){
		if(nspecial_grab_failed == 1){
		window = 5;
		window_timer = 0;
		}if(nspecial_grab_failed == 0){
		window = 10;
		window_timer = 0;
		}
	}if(window == 5){
			if(up_pressed){
				window = 6;
				window_timer = 0;
				var stun2 = create_hitbox(AT_NSPECIAL, 6, x + spr_dir * 60, y - 30);
			}if(down_pressed){
				window = 7;
				window_timer = 0;
				var stun2 = create_hitbox(AT_NSPECIAL, 6, x + spr_dir * 60, y - 30);
			}if(spr_dir == 1){
				if(right_pressed){
				window = 8;
				window_timer = 0;
				var stun2 = create_hitbox(AT_NSPECIAL, 6, x + spr_dir * 60, y - 30);
			}if(left_pressed){
				window = 9;
				window_timer = 0;
				var stun2 = create_hitbox(AT_NSPECIAL, 6, x + spr_dir * 60, y - 30);
			}
		}if(spr_dir == -1){
				if(left_pressed){
				window = 8;
				window_timer = 0;
				var stun2 = create_hitbox(AT_NSPECIAL, 6, x + spr_dir * 60, y - 30);
			}if(right_pressed){
				window = 9;
				window_timer = 0;
				var stun2 = create_hitbox(AT_NSPECIAL, 6, x + spr_dir * 60, y - 30);
			}
		}
		if(window_timer = 40){
		move_cooldown[AT_NSPECIAL] = 60;	
		}
	}if(window > 3){
		can_move = false;
		can_fast_fall = false;
	}if(window == 9 && window_timer = 15){
		spr_dir = spr_dir * -1
	}if(window == 6 || window == 7 || window == 8 || window == 9){
		if(window_timer = 15){
			window = 10;
			window_timer = 0;
		}
	}if(window == 10){
		move_cooldown[AT_NSPECIAL] = 60;
	}if(window == 3){
		move_cooldown[AT_NSPECIAL] = 60;
	}
}

if(attack == AT_JAB){
	if(window == 1 && window_timer = 3 && !hitpause){
		sound_play(asset_get("sfx_swipe_weak1"));
	}	if(window == 4 && window_timer = 5 && !hitpause){
		sound_play(asset_get("sfx_swipe_weak2"));
	}
}

if(attack == AT_DTILT){
	can_fast_fall = false;
	if(has_hit == true){
	can_jump = true;
	}
}

if(attack == AT_USTRONG){
     if(window == 2 && window_timer = 1 && !hitpause){
		var ustrong_hitbox1 = create_hitbox(AT_USTRONG, 1, x, y);
    	ustrong_hitbox1.kb_value -= strong_charge/-15;
		var thrash_machine = create_hitbox(AT_USTRONG, 2, x, y);
    	thrash_machine.vsp -= strong_charge/15;
    	}if(slippery > 0){
		if(window == 2 && window_timer = 1 && !hitpause){
		sound_play(sound_get("snd_quicksplat"));	
		}
}
}

if(attack == AT_DSTRONG){
		if(window == 1 && window_timer = 1){
		dstrong_charge = 0;
		dstrong_charged = false;
}if (window == 1 && strong_charge > 30 && dstrong_charged == false){
		dstrong_charged = true;
		sound_play(asset_get("sfx_ori_ustrong_charge"));
		spawn_hit_fx(x + spr_dir * -16, y - 20, 19);
		dstrong_charge = 1;
	}if(slippery > 0){
		if(window == 2 && window_timer = 3 && !hitpause){
		sound_play(sound_get("snd_quicksplat"));	
		}
}	
}

if(attack == AT_FSTRONG){
	if(window == 1 && window_timer = 1){
		fstrong_charge = 0;
		fstrong_charged = false;
	}if (window == 1 && strong_charge > 30 && fstrong_charged == false){
		fstrong_charged = true;
		sound_play(asset_get("sfx_ori_ustrong_charge"));
		spawn_hit_fx(x + spr_dir * -40, y - 10, 19);
		fstrong_charge = 1;
	}
	if(fstrong_charge == 0){
	if(window == 2 && window_timer = 3 && !hitpause){
		sound_play(sound_get("snd_glassbreak"));
		var glass1 = create_hitbox(AT_FSTRONG, 4, x + spr_dir * 40, y);
    	glass1.hsp = -3;
    	glass1.vsp = -5;
    	var glass2 = create_hitbox(AT_FSTRONG, 5, x + spr_dir * 40, y);
    	glass2.hsp = -1;
    	glass2.vsp = -6;
    	var glass3 = create_hitbox(AT_FSTRONG, 6, x + spr_dir * 40, y);
    	glass3.hsp = 1;
    	glass3.vsp = -5;
    	var glass4 = create_hitbox(AT_FSTRONG, 6, x + spr_dir * 40, y);
    	glass4.hsp = 3;
    	glass4.vsp = -4;
    	var glass5 = create_hitbox(AT_FSTRONG, 5, x + spr_dir * 40, y);
    	glass5.hsp = 2;
    	glass5.vsp = -6;
		var glass6 = create_hitbox(AT_FSTRONG, 4, x + spr_dir * 40, y);
    	glass6.hsp = 1.5;
    	glass6.vsp = -7;
		var glass7 = create_hitbox(AT_FSTRONG, 6, x + spr_dir * 40, y);
    	glass7.hsp = -2.5;
    	glass7.vsp = -6;
    	var glass8 = create_hitbox(AT_FSTRONG, 5, x + spr_dir * 40, y);
    	glass8.hsp = -2;
    	glass8.vsp = -4;
    	}
	}	if(fstrong_charge == 1){
	if(window == 2 && window_timer = 4 && !hitpause){
		sound_play(sound_get("snd_stockexplode"));
		var explosion = create_hitbox(AT_FSTRONG, 2, x + spr_dir * 50, y - 10);
		var explode = spawn_hit_fx(x + spr_dir * 50, y - 10, fast_explosion_effect);
        explode.depth = -10;
    	}
	}if(slippery > 0){
		if(window == 2 && window_timer = 3 && !hitpause){
		sound_play(sound_get("snd_quicksplat"));
		}
}
}

if(attack == AT_FSPECIAL){
    can_fast_fall = false;
    can_move = false;
    if(window == 1){
    can_wall_jump = false;
    }
    if(window == 2){
    	can_wall_jump = true;
    	if (window_timer = 1 && !hitpause){
    		    		if(bike_charge == 0){
    		sound_play(asset_get("sfx_ell_fist_explode"));	
    		bike_level = 0;
    		spawn_hit_fx(x + spr_dir * -25, y - 2, 13);
    		var bike_slam = create_hitbox(AT_FSPECIAL, 1, x, y);
    		bike_charge = 0;
    		}  		if(bike_charge == 1){
    		sound_play(asset_get("sfx_ell_strong_attack_explosion"));
    		bike_level = 1;
    		spawn_hit_fx(x + spr_dir * -25, y - 2, 139);
    		var bike_slam = create_hitbox(AT_FSPECIAL, 2, x, y);
    		bike_charge = 0;
    		}  		if(bike_charge == 2){
    		sound_play(asset_get("sfx_ell_big_missile_fire"));	
    		bike_level = 2;
    		spawn_hit_fx(x + spr_dir * -25, y - 2, 141);
    		var bike_slam = create_hitbox(AT_FSPECIAL, 3, x, y);
    		bike_charge = 0;
    		}  		if(bike_charge == 3){
    		sound_play(asset_get("sfx_ell_explosion_medium"));	
    		bike_level = 3;
    		spawn_hit_fx(x + spr_dir * -25, y - 2, 143);
    		var bike_slam = create_hitbox(AT_FSPECIAL, 4, x, y);
    		bike_charge = 0;
    		}
    	    }if(window_timer = 30){
    	    	if(!has_hit){
    	    		window = 3;
    	    		window_timer = 0;
    	    	}else if(has_hit){
    	var dust = spawn_hit_fx(x, y - 34, dust_effect);
        dust.depth = -10;
    	    	}
    	    }
    	}if(window == 4 && window_timer = 3){
    	window = 5;
    	window_timer = 0;
    }
    if(window == 2){
    		    		if(bike_charge == 0){
    		    			if(window_timer % 2 == 0){
    		    				spawn_hit_fx(x, y, vfx_afterimage);
    		    			}
    		}  		if(bike_charge == 1){
    			    		    if(window_timer % 1 == 0){
    		    		spawn_hit_fx(x, y, vfx_afterimage);
    		    			}
    		}  		if(bike_charge == 2){
    			    		    if(window_timer % .5 == 0){
    		    		spawn_hit_fx(x, y, vfx_afterimage);
    		    			}
    		}  		if(bike_charge == 3){
    			    		    if(window_timer % .2 == 0){
    		    		spawn_hit_fx(x, y, vfx_afterimage);
    		    			}
    		}	
    }    if(window == 5 && window_timer = 16){
    	var dust = spawn_hit_fx(x, y - 34, dust_effect);
        dust.depth = -10;
    }    if(window == 3 && window_timer = 18){
    	var dust = spawn_hit_fx(x, y - 34, dust_effect);
        dust.depth = -10;
    }
}

if(attack == AT_USPECIAL){
    can_fast_fall = false;
    can_move = false;
    if(window == 1 && window_timer = 12){
    	if(bike_charge > 0){
    		spawn_hit_fx(x + spr_dir * -25, y - 2, 3);
    	}
    }if(window == 2 && window_timer = 16){
    	if(bike_charge = 0){
    		set_window_value(AT_USPECIAL, 3, AG_WINDOW_VSPEED, -10);
    		set_hitbox_value(AT_USPECIAL, 2, HG_BASE_KNOCKBACK, 8);
    		set_hitbox_value(AT_USPECIAL, 2, HG_PROJECTILE_SPRITE, sprite_get("explosion"));
    		set_hitbox_value(AT_USPECIAL, 2, HG_PROJECTILE_MASK, sprite_get("explosion"));
    		set_hitbox_value(AT_USPECIAL, 2, HG_WIDTH, 60);
            set_hitbox_value(AT_USPECIAL, 2, HG_HEIGHT, 60);
    		set_hitbox_value(AT_USPECIAL, 2, HG_DAMAGE, 6);
    		set_hitbox_value(AT_USPECIAL, 2, HG_PROJECTILE_MASK, -1);
    }if(bike_charge > 0){
    		set_window_value(AT_USPECIAL, 3, AG_WINDOW_VSPEED, -14);
    		set_hitbox_value(AT_USPECIAL, 2, HG_BASE_KNOCKBACK, 10);
    		set_hitbox_value(AT_USPECIAL, 2, HG_PROJECTILE_SPRITE, sprite_get("beeg_explosion"));
    		set_hitbox_value(AT_USPECIAL, 2, HG_PROJECTILE_MASK, sprite_get("beeg_explosion"));
    		set_hitbox_value(AT_USPECIAL, 2, HG_WIDTH, 90);
            set_hitbox_value(AT_USPECIAL, 2, HG_HEIGHT, 90);
    		set_hitbox_value(AT_USPECIAL, 2, HG_DAMAGE, 8);
    		set_hitbox_value(AT_USPECIAL, 2, HG_PROJECTILE_MASK, -1);
    		bike_charge -= 1;
    	}
    }if(window == 3 && window_timer = 1 && !hitpause){
    	take_damage(player, -1, 4);
    }
}

if(attack == AT_DSPECIAL){
	    can_fast_fall = false;
    can_move = false;
    if(window == 1 && window_timer = 1){
    	var dust = spawn_hit_fx(x, y - 34, dust_effect);
        dust.depth = -10;
        if(bike_charge != 3){
        sound_play(asset_get("sfx_frog_fspecial_charge_gained_2"));
        }if(bike_charge == 3){
        	if(slippery == 0){
        	window = 4;
        	window_timer = 0;
        	}
        }
    }
if(window == 1 && window_timer = 14){
    		    		if(bike_charge != 3){
    		window = 2;
    		window_timer = 0;
    		}
    		if(bike_charge == 3){
    			window = 3;
    			window_timer = 2;
    		}
    	}if(window == 2 && window_timer = 14){
    	if(bike_charge < 3){
    	window = 1;
    	window_timer = 2;
    	}
    }if(window == 1 && window_timer > 6){
    	if(jump_pressed || attack_pressed){
    		window = 3;
    		window_timer = 2;
    		}if(shield_pressed){
    		sound_play(asset_get("sfx_frog_fspecial_cancel"));
        		set_state(PS_PARRY_START);
    	}
    	}if(window == 2){
    	if(jump_pressed || attack_pressed){
    		window = 3;
    		window_timer = 2;
    		}if(shield_pressed){
    		sound_play(asset_get("sfx_frog_fspecial_cancel"));
        		set_state(PS_PARRY_START);
    	}
    }if(window == 3 && window_timer = 8){
    	sound_play(asset_get("sfx_frog_fspecial_cancel"));
    			var dust = spawn_hit_fx(x, y - 34, dust_effect);
        dust.depth = -10;
    }if(window == 4){
    	soft_armor = 20;
    	if(window_timer = 20 && !hitpause){
    		spawn_hit_fx(x, y - 34, 117);
    		sound_play(sound_get("snd_splat"));
    		bike_charge = 0;
    		slippery = 600;
    		splatrecalled = 0;
    	}
    }if(bike_charge != 3){
    	if(window == 1 || window == 2){
    		bike_charging_time += 1;
    	}
    }
}

if(attack == AT_DATTACK){
	can_fast_fall = false;
	if(window == 1 && window_timer = 1){
		set_attack_value(AT_DATTACK, AG_OFF_LEDGE, 1);
	}	if(window == 3 && window_timer = 5){
		set_attack_value(AT_DATTACK, AG_OFF_LEDGE, 0);
	}if(window == 5 && window_timer = 14){
		var dust = spawn_hit_fx(x, y - 34, dust_effect);
        dust.depth = -10;
	}
	if(window == 3 && window_timer = 5){
		if(free){
			window = 5;
			window_timer = 0;
		}		if(!free){
			sound_play(asset_get("sfx_land_med"));
		}
	}
}

if (attack == AT_TAUNT && down_down){
	if(window == 1 && window_timer = 1){
    attack = AT_TAUNT_2;
    window = 1;
    window_timer = 0;
	}
}

if(attack == AT_TAUNT_2){
	if (window == 1 && window_timer == 8){
	shake_camera(2, 5);
	}	if (window == 3 && window_timer == 10){
	shake_camera(2, 10);
	}	if (window == 5 && window_timer == 18){
	shake_camera(6, 10);
	}	if (window == 7 && window_timer == 6){
	shake_camera(10, 10);
	}
}
//hud offsets
if (attack == AT_DATTACK || attack == AT_USPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL){
	hud_offset = 20;
}
if (attack == AT_UTILT){
	if(window == 2){
	hud_offset = 20;
	}
}





#define spawn_base_dust // written by supersonic
/// spawn_base_dust(x, y, name, dir = 0)
///spawn_base_dust(x, y, name, ?dir)
//This function spawns base cast dusts. Names can be found below.
var dlen; //dust_length value
var dfx; //dust_fx value
var dfg; //fg_sprite value
var dfa = 0; //draw_angle value
var dust_color = 0;
var x = argument[0], y = argument[1], name = argument[2];
var dir; if (argument_count > 3) dir = argument[3]; else dir = 0;

switch (name) {
	default: 
	case "dash_start":dlen = 21; dfx = 3; dfg = 2626; break;
	case "dash": dlen = 16; dfx = 4; dfg = 2656; break;
	case "jump": dlen = 12; dfx = 11; dfg = 2646; break;
	case "doublejump": 
	case "djump": dlen = 21; dfx = 2; dfg = 2624; break;
	case "walk": dlen = 12; dfx = 5; dfg = 2628; break;
	case "land": dlen = 24; dfx = 0; dfg = 2620; break;
	case "walljump": dlen = 24; dfx = 0; dfg = 2629; dfa = dir != 0 ? -90*dir : -90*spr_dir; break;
	case "n_wavedash": dlen = 24; dfx = 0; dfg = 2620; dust_color = 1; break;
	case "wavedash": dlen = 16; dfx = 4; dfg = 2656; dust_color = 1; break;
}
var newdust = spawn_dust_fx(x,y,asset_get("empty_sprite"),dlen);
if newdust == noone return noone;
newdust.dust_fx = dfx; //set the fx id
if dfg != -1 newdust.fg_sprite = dfg; //set the foreground sprite
newdust.dust_color = dust_color; //set the dust color
if dir != 0 newdust.spr_dir = dir; //set the spr_dir
newdust.draw_angle = dfa;
return newdust;


