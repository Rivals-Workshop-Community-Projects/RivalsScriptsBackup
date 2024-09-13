//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_DSPECIAL_2 || attack == AT_USPECIAL){
    trigger_b_reverse();
}
switch(attack){
case AT_JAB:
	if window == 4 && window_timer == 5{
		spawn_base_dust(x,y,"jump",1)
	}
break;
case AT_FTILT:
	if window == 2 && window_timer == 7{
		spawn_base_dust(x +20*spr_dir,y,"dash_start",1* spr_dir)
	}
	if window == 4 && window_timer == 14{
		spawn_base_dust(x,y,"land",1)
	}
break;
case AT_UTILT:
	if clamp(window, 1, 3) == window
    {
        if window == 3 and window_timer > 2 break;
        hud_offset = floor(lerp(hud_offset, 120, .1));
    }
break;
case AT_FSTRONG:
    if window == 4{
    	if window_timer == 1{
        spawn_base_dust(x -10*spr_dir,y,"dash_start",1* spr_dir)
    	}
    	if window_timer == 3{
        sound_play(asset_get("sfx_swipe_heavy1"));
    	}
    	if window_timer == 5{
    	spawn_base_dust(x -10*spr_dir,y,"dash",1* spr_dir)
        spawn_base_dust(x +50*spr_dir,y,"dash_start",-1* spr_dir)
    	}
    }
    if window == 5 && has_hit{
        set_window_value(AT_FSTRONG, 5, AG_WINDOW_GOTO, 6);
    }
    else set_window_value(AT_FSTRONG, 5, AG_WINDOW_GOTO, 7);
    if window == 9 && window_timer == 1{
        create_hitbox(AT_FSTRONG, 9, x-32*spr_dir, y-10);
    }
break;
case AT_USTRONG:
	if window == 2 && window_timer == 3{
		spawn_base_dust(x,y,"jump",1)
	}
	if window == 4 && window_timer == 15{
		spawn_base_dust(x,y,"land",1)
	}
	if clamp(window, 2, 4) == window
    {
        if window == 4 and window_timer > 14 break;
        hud_offset = floor(lerp(hud_offset, 160, .1));
    }
break;
case AT_DSTRONG:
    if window == 3 && window_timer == 2 && !hitpause{
        shake_camera(10,5);
        ground_cracks();
        spawn_base_dust(x -10*spr_dir,y,"dash_start",1* spr_dir)
		spawn_base_dust(x +10*spr_dir,y,"dash_start",-1* spr_dir)
    }
break;

case AT_NSPECIAL:
	move_cooldown[AT_NSPECIAL] = 20;
	if window == 1{
		nspecial_hold = 0
		nspec_grabbed = false;
		//if window_timer == 4{
			//sound_play(sound_get("inhale"));
		//}
	}
	if window == 2{
		if (!special_down && nspecial_hold >= 1) || nspecial_hold == 12 || was_parried{
			window = 3;
            window_timer = 0;
		} 
		if window_timer == 8{
        	++nspecial_hold
        }
	}
	//Projectile sucking 
				var proj_hit = select_projectile(x + (22 * spr_dir), y-25, 50, 45);
				
				if (window == 2 && instance_exists(proj_hit)) {
					grabbedtarget = noone;
					var proj_tier = get_projectile_tier(proj_hit);
					if (proj_tier == 0) {
						window = 7;
						window_timer = 0;
						destroy_hitboxes();
					}
					else {
				        consumed_proj = true;
				        proj_damage = proj_hit.damage;
						grab_timer = 180;
				        nspec_grabbed = true;
			            window = 7;
			            window_timer = 0;
						destroy_hitboxes();
					}
					instance_destroy(proj_hit);
				}
	if window == 3{
		destroy_hitboxes();
		sound_stop(sound_get("inhale"));
	}
	if window == 4{
		sound_stop(sound_get("inhale"));
		if window_timer == 2{
			divine_charge = divine_charge + 120;
		}
		if window_timer == 15{
			sound_play(sound_get("nspecial_spit"));
		}
	}
	if window == 7{
		sound_stop(sound_get("inhale"));
		if window_timer == 2{
			divine_charge = divine_charge + 90;
		}
		if window_timer == 10{
			sound_play(sound_get("nspecial_spit"));
		}
	}
	if window == 8{
				if (window_timer == 1 && !hitpause) {
					consumed_proj = false;
					var hbox = create_hitbox(AT_NSPECIAL, 4, round(x + 15 * spr_dir), round(y - 25));
					//hbox.damage = min(1, ceil(proj_damage * 4));
					hbox.damage = floor(proj_damage);
					}
					
				}
break;

case AT_FSPECIAL:
	can_fast_fall = false;
	if window == 1{
		fspec_grabbed = false;
		if window_timer == 8{
			sound_play(sound_get("sfx_tdxkirby_circusjump1"),false,noone,1.3);
			sound_play(sound_get("jump"));
		}
		if window_timer == 14{
			spawn_base_dust(x,y,"dash_start",1* spr_dir)
			if (free){
				spawn_base_dust(x+10*spr_dir,y,"djump",1)
			}
			if (!free){
				spawn_base_dust(x+10*spr_dir,y,"jump",1)
			}
		}
	}
	if window <=4{
		can_wall_jump = true;
	}
	if window >=5{
		can_move = false;
	}
	if window == 2 && fspec_grabbed == true{
		window = 5;
		window_timer = 0;
		destroy_hitboxes();
	}
	if window == 3 {
    	if !free{
					window = 4;
					window_timer = 0;
				}
    }
    if window == 4 && window_timer == 1{
    	spawn_base_dust(x +20*spr_dir,y,"land",1)
    }
    if window == 6 && !has_hit{
    	window = 3;
		window_timer = 0;
	}
break;

case AT_USPECIAL:
    can_fast_fall = false;
    can_wall_jump = true;
    if window == 2 && window_timer == 2 && !hitpause{
    	var vfx = spawn_hit_fx( x, y, uspecial_toot );
        vfx.depth -= 20;
    }
    if clamp(window, 1, 3) == window
    {
        if window == 3 and window_timer > 2 break;
        hud_offset = floor(lerp(hud_offset, 120, .1));
    }
break;

case AT_DSPECIAL:
	can_fast_fall = false;
	if window == 1{
		dspecial_hold = 0;
		temp_divine_charge = 11;
	}
	if window == 2{
		++temp_divine_charge
		if window_timer == 6{
			sound_play(sound_get("paper_scatter"),false,noone,0.5)
		}
	}
	if window == 3{
		++temp_divine_charge
		if !(special_down) || dspecial_hold == 4
            {
                window = 4;
                window_timer = 0;
            }
        if window_timer == 2{
			temp_divine_charge += 33;
		}
        if window_timer == 6{
			sound_play(sound_get("paper_scatter"),false,noone,0.5)
		}
		if window_timer == 13{
        	++dspecial_hold
        }
	}
	if window == 4{
		if window_timer == 3 && divine_charge < divine_charge_max{
		divine_charge = (divine_charge + temp_divine_charge)	
		}
		if window_timer == 4{
			temp_divine_charge = 0;
		}
	} 
break;
case AT_DSPECIAL_2:
	divine_charge = 0;	
	if window == 1 && window_timer == 10{
		sound_play(asset_get("mfx_star"),false,noone,1.0,1.1)
	}
break;
}

#define ground_cracks
    if(freemd){
		groundcracks = spawn_hit_fx(x,y,fx_groundcracks);groundcracks.depth = depth-2;
	}else{
		groundcracks = spawn_hit_fx(x,y,fx_groundcracks2);groundcracks.depth = depth-2;
	}
#define select_projectile(_x, _y, _width, _height)
var x1 = _x - _width / 2;
var y1 = _y - _height / 2;
var x2 = _x + _width / 2;
var y2 = _y + _height / 2;

var hitbox_list = collision_ellipse_list(x1,y1,x2,y2,pHitBox,1,1);
if (hitbox_list == noone) return noone;
var final_hitbox = noone;

//(so that you can grab teamate's projeciles. Should help with double battles.)
var team_attack = true //get_match_setting(SET_TEAMATTACK);
for (var i = 0; i < ds_list_size(hitbox_list); i++) {
	var hbox = hitbox_list[| i];
	
	with (hbox) {
		if ( (type == 2) && (player != other.player || can_hit_self)
		  && (other.can_be_hit[player] == 0) && (can_hit[other.player])
		  && (groundedness == 0 || (other.free ? 2 : 1) == groundedness)
		  && (get_player_team(other.player) != get_player_team(player) || team_attack)
		  && hit_priority != 0 && hit_priority <= 10
		  && !plasma_safe) {
		  	final_hitbox = id;
		  	break;
		  }
	}
}
ds_list_destroy(hitbox_list);
return final_hitbox;


#define get_projectile_tier(_proj)
//0 = small projectile, automatically swallow.
//1 = big projectile, spit out or swallow.
var projectile_width = _proj.bbox_right - _proj.bbox_left;
var projectile_height = _proj.bbox_bottom - _proj.bbox_top;

var size = ceil(sqrt(abs(projectile_width + projectile_height)));
//print(size);
if (size < 6)
	return 0;
return 1;

#define collision_ellipse_list(x1,y1,x2,y2,obj,prec,notme)
var dsid,i;
dsid = ds_list_create();
with (obj) {
    if (!notme || id != other.id) {
        i = collision_ellipse(floor(x1),floor(y1),floor(x2),floor(y2),id,prec,false);
        if (i != noone) ds_list_add(dsid,i);
    }
}
if (ds_list_size(dsid) == 0) {
    ds_list_destroy(dsid);
    dsid = noone;
}
return dsid;

#define spawn_base_dust
/// @param {undefined} x
/// @param {undefined} y
/// @param {undefined} name
/// @param {undefined} dir = 0
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
newdust.dust_fx = dfx; //set the fx id
if dfg != -1 newdust.fg_sprite = dfg; //set the foreground sprite
newdust.dust_color = dust_color; //set the dust color
if dir != 0 newdust.spr_dir = dir; //set the spr_dir
newdust.draw_angle = dfa;
return newdust;