//B - Reversals
var sun = instance_exists(sun_ins)
orbit_speed = 4
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}
if (right_down && strong_down) or right_strong_down print_debug("STRONGIN'");
switch(attack) {
	case AT_DTILT:
			for (var i = 0; i < maxplanets; i++) {
				if planet[i].orbiting == 1 && planet[i].owner == id {
					planet[i].overriding = 0.6;
					planet[i].x += spr_dir*6
				}
			}	
	break;
	case AT_FTILT:
			if window == 2 or window == 3  for (var i = 0; i < maxplanets; i++) {
				if planet[i].orbiting == 1 && planet[i].owner == id {
					planet[i].overriding = 0.6;
					planet[i].x -= spr_dir*6
				}
			}	
	break;
	case AT_UTILT:
			if window >= 1 && window <= 3 for (var i = 0; i < maxplanets; i++) {
				if planet[i].orbiting == 1 && planet[i].owner == id {
					planet[i].overriding = 0.7;
					planet[i].x += spr_dir*6
				}
			}	
	break;
	case AT_FSPECIAL:
		var xx = -10*spr_dir
		var yy = -28
		if window == 4 && strong_charge > 0 {
			strong_charge--;
			for (var i = 0; i < maxplanets; i++) {
				if planet[i].orbiting == 1 break;
			}
			//print_debug("planet found is "+string(i))
			if i < maxplanets {
				window = 6;
				window_timer = 0;
			}		
		}
		if window_timer == 1 && get_window_value(attack,window,AG_WINDOW_TYPE) == 69 {
		clear_button_buffer(PC_SPECIAL_PRESSED);
			for (var i = 0; i < maxplanets; i++) {
				if planet[i].orbiting == 1 break;
			}
			//print_debug("planet found is "+string(i))
			if i < maxplanets {
				planet[i].x = planet[i].owner.x+xx;
				planet[i].y = planet[i].owner.y+yy;
				planet[i].orbiting = 0;
				planet[i].time = 0;
				planet[i].shot_time = 50;
				planet[i].gravity_time = 90;
				planet[i].dest_x = x+300*spr_dir;
				planet[i].dest_y = y-40;
				planet[i].orig_x = x+20*spr_dir;
				planet[i].orig_y = y-40;
				planet[i].hsp = 17*spr_dir;
				planet[i].active = true;
				planet[i].attack = AT_EXTRA_1;
				planet[i].offset = 1;
				planet[i].vsp = (down_down-up_down) * 3;
						planet[i].cooldown = 15;
				var h = spawn_hit_fx(planet[i].x+(spr_dir*10), planet[i].y, hitfx[10])
			}
		}
		if get_window_value(attack,window,AG_WINDOW_TYPE) == 420 or get_window_value(attack,window,AG_WINDOW_TYPE) == 421 {
			var first = get_window_value(attack,window,AG_WINDOW_TYPE) == 420;
			var j = 0;
			for (var i = 0; i < maxplanets; i++) {
				if planet[i].orbiting == 1 {
					if j <= strong_charge {
						planet[i].overriding = 0.8;
						var xx = planet[i].owner.x - (32 + j*40)*spr_dir
						var yy = planet[i].owner.y-30
						planet[i].x = lerp(planet[i].x, xx, 0.2);
						planet[i].y = lerp(planet[i].y, yy, 0.2);

					}
					j++;
				}
			}	

			//print_debug("planet found is "+string(i))
			if window_special_pressed {
				clear_button_buffer(PC_SPECIAL_PRESSED);
				window_special_pressed = 0;
				tossed_planet++;

			}
			if window_timer == get_window_value(attack,window,AG_WINDOW_LENGTH) && (special_down or tossed_planet > 0) && strong_charge < j-1 {
				if !first strong_charge++;
				window_timer = 0;
				window = 5;
				if !first tossed_planet--;
			}
		}
	break;
	case AT_DSPECIAL:
		if get_window_value(attack,window,AG_WINDOW_TYPE) == 69 {
			can_attack = true;
			move_cooldown[AT_DSPECIAL] = 40;
			var inf_planet = 1.1;
			var inf_player = 1.3;
			var inf_hitbox = 0.1
			var pull_planet = 0.3;

			var h = char_height/2
			var xx = x;
			var yy = y;
			if sun {
				xx = sun_ins.x;
				yy = sun_ins.y;
			}
			for (var i = 0; i < maxplanets; i++) {
				if planet[i].orbiting == 1 or planet[i].parrytime continue;
				planet[i].hsp += lengthdir_x(inf_planet, point_direction(planet[i].x,planet[i].y,xx,yy-h));
				planet[i].vsp += lengthdir_y(inf_planet, point_direction(planet[i].x,planet[i].y,xx,yy-h));
				planet[i].active = 1;
				planet[i].attack = AT_EXTRA_1;
				planet[i].offset = 1;
				if free {
					hsp += lengthdir_x(pull_planet*planet[i].weight, point_direction(x,y-planet[i].orbit_height,planet[i].x,planet[i].y))
					vsp += lengthdir_y(pull_planet*planet[i].weight, point_direction(x,y-planet[i].orbit_height,planet[i].x,planet[i].y))
				}
			}			
			with (asset_get("grabbable_obj")) {
				if state_cat == SC_HITSTUN && get_player_team(player) != get_player_team(other.player) && !(object_index == asset_get("oPlayer") && activated_kill_effect) {
					fall_through = true;
					var INFLUENCE = (inf_player*min(get_player_damage(player), 110)*0.007)+0.5
					var mult = 1-(min(point_distance(x,y,other.x,other.y)/800, 1))
					INFLUENCE *= mult;
					vsp -= hitstun_grav*mult;
					hsp += lengthdir_x(INFLUENCE, point_direction(x,y,xx,yy-h));
					vsp += lengthdir_y(INFLUENCE, point_direction(x,y,xx,yy-h));
				}	
			}
			/*
			with (asset_get("pHitBox")) {
				if !unbashable && type == 2 {

					vsp -= grav
					hsp += lengthdir_x((inf_hitbox)+0.5, point_direction(x,y,xx,yy-h));
					vsp += lengthdir_y((inf_hitbox)+0.5, point_direction(x,y,xx,yy-h));
				}	
			}
			*/
			if window_timer mod 1 == 0 {
				var ang = random_func(0, 359, 1)
				var xdir = lengthdir_x(1, ang);
				var ydir = lengthdir_y(1, ang);
				var spdd = 10;
				var d = spawn_hit_fx(xx,(yy-h),hitfx[5])
				d.image_alpha = 0.1
				d.draw_angle = ang
				if sun {
					d.follow_id = sun_ins;
				}

			}
		}
	break;
	case AT_NSPECIAL:

	
		if window_timer == 1 && get_window_value(attack,window,AG_WINDOW_TYPE) == 69 && !hitpause{
			if !sun_cooldown {
				sun_ins = instance_create(x+spr_dir*20,y,"obj_article2");
				sun_ins.hsp = spr_dir*(16 - (down_down xor up_down)*4);
				sun_ins.vsp = (down_down - up_down)*3
			} 
		}
		if window == 4 {
			can_attack = true;
			can_jump = true;
			can_strong = true;
		}
	break;
	case AT_NSPECIAL_2:
	with (pHitBox) {
		if attack == AT_NSPECIAL_2 && orig_player_id == other.id {
			var o = orig_player_id
			if instance_exists(o.sun_ins) && (place_meeting(x, y,o.sun_ins) or has_rune("H")) {
				var h = spawn_hit_fx(o.sun_ins.x,o.sun_ins.y,orig_player_id.hitfx[7])
				if has_rune("C") {
					sound_play(asset_get("sfx_ell_utilt_cannon"));
					create_hitbox(AT_NSPECIAL, 2, floor(o.sun_ins.x), floor(o.sun_ins.y-40));
					var h = spawn_hit_fx(floor(o.sun_ins.x),floor(o.sun_ins.y),orig_player_id.hitfx[15])
				}
				instance_destroy(o.sun_ins);
				o.move_cooldown[AT_NSPECIAL] = 0;
				sound_play(asset_get("sfx_ell_arc_taunt_end"), 0, noone, 1, 1)

			}
		}
	}
	if window == 4 {
		can_attack = true;
		can_jump = true;
		can_strong = true;
	}
	break;
	case AT_USPECIAL_2: //Sun out!
		can_wall_jump = true;
		if (get_window_value(attack,window,AG_WINDOW_TYPE) == 420 or get_window_value(attack,window,AG_WINDOW_TYPE) == 666) && instance_exists(sun_ins) {
			sun_ins.vsp = 0;
			
			if times_through {
				soft_armor = 12;
			}
			//fall = true;
			fall_through = true;
			var amt = 3.5*(1-(window_timer/get_window_value(attack,window,AG_WINDOW_LENGTH))*0.7);
			if y > sun_ins.y+1 {
				vsp -= (gravity_speed*(amt)*2);
			} else {
				vsp += (gravity_speed*amt);
			}
			vsp = clamp(vsp, -10, 10)
			if get_window_value(attack,window,AG_WINDOW_TYPE) == 666 && (!special_down or (!free && y <= sun_ins.y+1) or sun_ins.time <= 2 ) {
				window++;
				window_timer = 0;
			}
			if get_window_value(attack,window,AG_WINDOW_TYPE) == 420 && !free {
				vsp -= 8;
			}
			if has_rune("E") && window_timer mod 6 == 0 && get_window_value(attack,window,AG_WINDOW_TYPE) == 666 {
				create_hitbox(attack, 1, x, y)
			}
		} else {
			soft_armor = 12;
		}
		break;		
	
	/*
		if instance_exists(sun_ins) {
			uspecial_used = 1;
			if get_window_value(attack,window,AG_WINDOW_TYPE) == 420 {	
				fall_through = true;
				can_attack = true;
				uspecial_grav += 0.3;
				var gravity_friction = 0;
				var gravity_amount = 0.1;
				var dir = point_direction(x,y,sun_ins.x,sun_ins.y-3)
				hsp = lerp(hsp, lengthdir_x(uspecial_grav+3, dir)*(1-gravity_friction), gravity_amount)
				if place_meeting(x+sign(hsp)*1,y,asset_get("par_block")) {
					hsp = 0;
					vsp -= 1;
					uspecial_grav = 0;

				}
				vsp = lerp(vsp, lengthdir_y(uspecial_grav+3, dir)*(1-gravity_friction), gravity_amount)
				vsp -= gravity_speed;
				if point_distance(x,y,sun_ins.x,sun_ins.y-3) < 20 {
					window++;
					window_timer = 0;
					sun_ins.plasma = true;
				}
			} else {
				uspecial_grav = 0;
			}
		}		
	
		/*
		if instance_exists(sun_ins) {
			if get_window_value(attack,window,AG_WINDOW_TYPE) == 69 {
				uspecial_side = spr_dir 
			}
			if get_window_value(attack,window,AG_WINDOW_TYPE) == 420 {
				var ang = point_direction(x,y,sun_ins.x, sun_ins.y) + (80*uspecial_side)
				hsp = lengthdir_x(10, ang);
				vsp = lengthdir_y(10, ang);
				
				fall_through = true;
				if (!free && vsp > 0) or !special_down {
					window++;
					window_timer = 0;
				}
				if free && place_meeting(x+sign(hsp), y, asset_get("par_block")) {
					
					if hsp != 0 spr_dir = -sign(hsp)
					set_state(PS_WALL_JUMP);
				}
			}			
		}
		*/
	break;
	case AT_USPECIAL:
		can_wall_jump = true;
		var xx = 20*spr_dir
		var yy = 10
		if window_timer == 1 && get_window_value(attack,window,AG_WINDOW_TYPE) == 69 && !hitpause {
			if (right_down - left_down) != 0 spr_dir = sign(right_down - left_down)
			for (var i = 0; i < maxplanets; i++) {
				if planet[i].orbiting == 1 break;
			}
			//print_debug("planet found is "+string(i))
			if i < maxplanets {
				hitpause = true;
				hitstop = 2;
				hitstop_full = 2;
				dair = 1;
				old_hsp = (right_down-left_down)*get_window_value(attack,5,AG_WINDOW_HSPEED) * (planet[i].weight + 0.2)
				old_vsp = get_window_value(attack,5,AG_WINDOW_VSPEED) * (planet[i].weight + 0.2)
				planet[i].x = planet[i].owner.x+xx;
				planet[i].y = planet[i].owner.y+yy;
				planet[i].orbiting = 0;
				planet[i].time = 0;
				planet[i].shot_time = 50;
				planet[i].gravity_time = 90;
				planet[i].dest_x = x+300*spr_dir;
				planet[i].dest_y = y-40;
				planet[i].orig_x = x+20*spr_dir;
				planet[i].orig_y = y-40;
				planet[i].hsp = 4*spr_dir;
				planet[i].active = true;
				planet[i].attack = AT_EXTRA_1;
				planet[i].offset = 4;
				planet[i].vsp = 14.3;
				planet[i].cooldown = 15;
				var h = spawn_hit_fx(planet[i].x,planet[i].y,hitfx[10]);
				h.draw_angle = point_direction(0,0,planet[i].hsp,planet[i].vsp);
				h.spr_dir = 1;
			}
		}
			var pl = 0;
			for (var i = 0; i < maxplanets; i++) {
				if planet[i].orbiting == 1 && planet[i].owner == id {
				if !pl {
					planet[i].overriding = 0.8;
					planet[i].x = lerp(planet[i].x, planet[i].owner.x+xx, 0.5)
					planet[i].y = lerp(planet[i].y, planet[i].owner.y+yy, 0.5)
					planet[i].depth = depth-3
					planet[i].depthsort = false;
					pl = true; continue;
				}
				planet[i].overriding = 0.4;
				planet[i].y += 15
				planet[i].x -= (planet[i].x-x)*0.2
				}
			}
		if get_window_value(attack,window,AG_WINDOW_TYPE) == 420 {	
		
			for (var i = 0; i < maxplanets; i++) {
				if planet[i].orbiting == 1 break;
			}
			//print_debug("planet found is "+string(i))
			if i < maxplanets {

				if window_timer == get_window_value(attack,window,AG_WINDOW_LENGTH)-1 {
					window = 4;
					window_timer = 0;
					clear_button_buffer(PC_SPECIAL_PRESSED);
				}
			}	else if window_timer == get_window_value(attack,window,AG_WINDOW_LENGTH)-1 {
					window = 6;
					window_timer = 0;
					vsp += get_window_value(AT_USPECIAL, 6, AG_WINDOW_VSPEED);
			}
		}		
		if get_window_value(attack,window,AG_WINDOW_TYPE) == 7 {
			if special_pressed {
				for (var i = 0; i < maxplanets; i++) {
					if planet[i].orbiting == 1 break;
				}
				//print_debug("planet found is "+string(i))
				if i < maxplanets {
						window = 4;
						window_timer = 0;
						clear_button_buffer(PC_SPECIAL_PRESSED);
				}				
			}
		}
		
		
	break;
	
/*
	can_move = 0;
	can_fast_fall = 0;
	
	if get_window_value(attack,window,AG_WINDOW_TYPE) == 88 {
		uspecial_angle = joy_pad_idle ? 270 : joy_dir+180;
		uspecial_x = x;
		uspecial_y = y;
		uspecial_turn = 0;

	}
	
	if get_window_value(attack,window,AG_WINDOW_TYPE) == 99 {
		var ti = (window_timer/get_window_value(attack,window,AG_WINDOW_LENGTH))
		var ang = angle_difference(uspecial_angle,joy_dir+180)
		if abs(ang) == 180 ang = abs(ang)* sign(spr_dir)
		if !joy_pad_idle {
			uspecial_angle -= sign(ang)*uspecial_turn*abs(ang/180);
			if abs(ang) >= 1 uspecial_turn += 0.2;
		}
		var amt = dsin(ti*180)*120
		hsp = (uspecial_x + lengthdir_x(amt, uspecial_angle)) - x
		vsp = (uspecial_y + lengthdir_y(amt, uspecial_angle)) - y
		fall_through  =1;
	}	
	if get_window_value(attack,window,AG_WINDOW_TYPE) == 101 {
		hsp = lengthdir_x(-9, uspecial_angle)
		vsp = lengthdir_y(-9, uspecial_angle)
	}
	/*
	can_move = 0;
	can_fast_fall = 0;
	var planvis = 1;
	
	if get_window_value(attack,window,AG_WINDOW_TYPE) == 88 {
			for (var i = 0; i < maxplanets; i++) {
				if planet[i].orbiting == 0 continue;
					planet[i].overriding = window_timer/get_window_value(attack,window,AG_WINDOW_LENGTH)*1.2;
					planet[i].x = lerp(planet[i].x, planet[i].owner.x, 0.1)
			}
	}
	if get_window_value(attack,window,AG_WINDOW_TYPE) == 111 {
		invincible = 1;
		invince_time = 1;

		draw_indicator = false;
			for (var i = 0; i < maxplanets; i++) {
				if planet[i].orbiting == 0 continue;
					planet[i].overriding = 0.8;
					planet[i].x = planet[i].owner.x;
			}
		planvis = false;
	}
	
	if get_window_value(attack,window,AG_WINDOW_TYPE) == 69 {
		planvis = false;
			invincible = 1;
		invince_time = 1;
			for (var i = 0; i < maxplanets; i++) {
				if planet[i].orbiting == 0 continue;
					planet[i].overriding = 0.8;
					planet[i].x = planet[i].owner.x;
			}
		var warp = (sun && sun_ins.y < room_height && sun_ins.y > 0 && sun_ins.x > 0 && sun_ins.x < room_width && !place_meeting(sun_ins.x, sun_ins.y, asset_get("par_block")))
		if !warp {
		uspecial_dir = 90;
		if !joy_pad_idle uspecial_dir = joy_dir;
		var len = 140;
		hsp = lengthdir_x(len, uspecial_dir)
		vsp = lengthdir_y(len, uspecial_dir)
		fall_through = 1;
		} else {
		if !joy_pad_idle uspecial_dir = joy_dir;
			x = sun_ins.x;
			y = sun_ins.y;
			instance_destroy(sun_ins);
			for (var i = 0; i < maxplanets; i++) {
				planet[i].owner = id;
			}
			sun_ins = noone;
		}
	}
	if get_window_value(attack,window,AG_WINDOW_TYPE) == 666 {
		invincible = 1;
		invince_time = 1;
		planvis = false;
			for (var i = 0; i < maxplanets; i++) {
				if planet[i].orbiting == 0 continue;
					planet[i].overriding = 0.8;
					planet[i].x = planet[i].owner.x;
			}
		if window_timer == get_window_value(attack,window,AG_WINDOW_LENGTH) {
			for (var i = 0; i < maxplanets; i++) {
				if planet[i].orbiting == 1 break;
			}
			//print_debug("planet found is "+string(i))
			if i < maxplanets {
					var plen = 13.5;
					window_timer = 0;
			
						planet[i].x = x;
						planet[i].y = y-40;
						planet[i].orbiting = 0;
						planet[i].time = 0;
						planet[i].shot_time = 50;
						planet[i].gravity_time = 90;
						planet[i].hsp = lengthdir_x(plen, uspecial_dir)
						planet[i].vsp = lengthdir_y(plen, uspecial_dir)
						planet[i].active = true;
						planet[i].gravity_speed = 1;	
						planet[i].cooldown = 15;
			}	
			var fx = spawn_hit_fx(x, y, hitfx[3])
			fx.depth = depth-1;
		}
	}	
	
	if get_window_value(attack,window,AG_WINDOW_TYPE) == 420 {

		var len = 5;
		hsp = lengthdir_x(len, uspecial_dir)
		vsp = lengthdir_y(len, uspecial_dir)

	}
	if !planvis {
			for (var i = 0; i < maxplanets; i++) {
				if planet[i].orbiting == 0 continue;
					planet[i].visible = 0;
			}
	}
	*/
	/*
	if get_window_value(attack,window,AG_WINDOW_TYPE) == 69 {	
		
		var len = star_length;
		if !joy_pad_idle star_dir = joy_dir;
		var xx = starsleft < max_stars ? star_x[starsleft+1] : x;
		var yy = starsleft < max_stars ? star_y[starsleft+1] : y;

		star_x[starsleft] = xx+lengthdir_x(len, star_dir);
		star_y[starsleft] = yy+lengthdir_y(len, star_dir);
		minstar = starsleft
		if window_timer == get_window_value(attack,window,AG_WINDOW_LENGTH) {
			starsleft--;
			
			print_debug("stars left "+string(starsleft))
			if starsleft >= 0 {
				window_timer = 1;
				
			} else {
				starsleft = max_stars;
				minstar--;
			}
		}
		maxstar = max_stars;
		can_move = 0;
		can_fast_fall = 0;
		fall = 0;
	}
	if get_window_value(attack,window,AG_WINDOW_TYPE) == 420 {	
		if window_timer == 1 {
			var d = point_distance(x,y,star_x[starsleft],star_y[starsleft])/get_window_value(attack,window,AG_WINDOW_LENGTH);
			var a = point_direction(x,y,star_x[starsleft],star_y[starsleft]);
			hsp = lengthdir_x(d, a)
			vsp = lengthdir_y(d, a)
		}
		can_move = 0;
		can_fast_fall = 0;
		fall_through = 1;
		if window_timer == get_window_value(attack,window,AG_WINDOW_LENGTH) {
			starsleft--;
			maxstar--;
			if starsleft >= 0 {
				window_timer = 0;
			} else {
				hsp = lengthdir_x(3, point_direction(0,0,hsp,vsp))
				vsp = lengthdir_y(3, point_direction(0,0,hsp,vsp))
			}
		}
		fall = 0;
		vsp -= gravity_speed;
	}
	/*
		if get_window_value(attack,window,AG_WINDOW_TYPE) == 69 {	
			if sun {
				window = 4;
				window_timer = 0;
			}
		}
		if get_window_value(attack,window,AG_WINDOW_TYPE) == 420 {

			if instance_exists(sun_ins) {
			sun_ins.time = max(sun_ins.time, 2)
			if window_timer == 1 && x != sun_ins.x{
				spr_dir = -sign(x-sun_ins.x)
			}
				fall_through  =1;

				var xx, yy, a, d;
				a = point_direction(sun_ins.x,sun_ins.y,x,y);
				d = point_distance(x,y,sun_ins.x,sun_ins.y);
				var mx = 300;
				if d > mx d -= (d-mx)*0.05;
				xx = sun_ins.x + lengthdir_x(d, a-44*spr_dir)
				yy = sun_ins.y + lengthdir_y(d, a-44*spr_dir)
				hsp = xx-x;
				vsp = yy-y;
			} else {
				window = 5;
				window_timer = 0;
			}
		}
		if get_window_value(attack,window,AG_WINDOW_TYPE) == 666 {
			can_attack = 1;
		}
	/*
		if get_window_value(attack,window,AG_WINDOW_TYPE) == 69 {	
			if window_timer == 1 {
				var str = 0;
				for (var i = 2; i >= 0; i--) {
					if planet[i].orbiting == 1 && planet[i].owner = id {
						str += planet[i].weight;
						planet[i].orbiting = 0;
						planet[i].time = 0;
						planet[i].shot_time = 50;
						planet[i].gravity_time = 90;
						planet[i].dest_x = x+300*spr_dir;
						planet[i].dest_y = y-40;
						planet[i].orig_x = x+20*spr_dir;
						planet[i].orig_y = y-40;
						planet[i].hsp = 0;
						planet[i].active = true;
						planet[i].vsp = 15;
						planet[i].gravity_speed = 1;	
						planet[i].cooldown = 15;
					}
				}
				vsp = -str*5;
				//print_debug("planet found is "+string(i))


		
			}
		}
	*/
	/*
		if get_window_value(attack,window,AG_WINDOW_TYPE) == 69 {
		if window_timer == 1 {
			for (var i = 0; i < 3; i++) {
				if planet[i].orbiting == 1 break;
			}
			//print_debug("planet found is "+string(i))
			if i < 3 {

				planet[i].orbiting = 0;
				planet[i].time = 0;
				planet[i].shot_time = 50;
				planet[i].gravity_time = 90;
				planet[i].dest_x = x+300*spr_dir;
				planet[i].dest_y = y-40;
				planet[i].orig_x = x+20*spr_dir;
				planet[i].orig_y = y-40;
				planet[i].hsp = 3*spr_dir;
				planet[i].active = true;
				planet[i].vsp = -14;
						planet[i].cooldown = 15;
			}
		}
			if window_timer >= get_window_value(attack,window,AG_WINDOW_LENGTH) && special_down {
				window = 4;
				window_timer = 0;
				print_debug("Cancelled!")
			}
		}	
		if get_window_value(attack,window,AG_WINDOW_TYPE) == 420 {	
			if window_timer == 1 {
				var inf = 1;
				var str = 0;
				uspecial_x = x;
				uspecial_y = y;
				for (var i = 0; i < 3; i++) {
					if planet[i].orbiting == 1 && planet[i].owner == id continue;
					uspecial_x = lerp(uspecial_x,planet[i].x,planet[i].weight)
					uspecial_y = lerp(uspecial_y,planet[i].y,planet[i].weight)
					str += planet[i].weight;
				}	
				if sun {
					uspecial_x = lerp(uspecial_x,sun_ins.x, 0.8);
					uspecial_y = lerp(uspecial_y,sun_ins.y, 0.8);
					str += 0.8;
				}
				
			}	
			var d = clamp(1-point_distance(x,y,uspecial_x,uspecial_y)*0.001*str, 0, 1)
			hsp += lengthdir_x(d, point_direction(x,y,uspecial_x,uspecial_y))
			vsp += lengthdir_y(d, point_direction(x,y,uspecial_x,uspecial_y))-gravity_speed;
		}
	*/
	break;
	case AT_DSTRONG:
		vsp = 0;
		if get_window_value(attack,window,AG_WINDOW_TYPE) == 69 or get_window_value(attack,window,AG_WINDOW_TYPE) == 68 {
		
			var twirl = ease_linear(0, 360-70, window_timer, get_window_value(attack,window,AG_WINDOW_LENGTH));
			var fling = ease_expoIn(0, -5, window_timer, get_window_value(attack,window,AG_WINDOW_LENGTH));
			if get_window_value(attack,window,AG_WINDOW_TYPE) == 68 {
				var twirl = ease_linear(360-70, 540-70, window_timer, get_window_value(attack,window,AG_WINDOW_LENGTH));
				var fling = -3;

			}
			var flip = 0;
			if get_window_value(attack,window,AG_WINDOW_TYPE) == 69 && ((special_down or attack_down or up_down) && window_timer >= get_window_value(attack,window,AG_WINDOW_LENGTH)) {
				window++;
				window_timer = 0;
				flip = 1;
			}			
			var dmg = get_hitbox_value(AT_DSTRONG, 2, HG_DAMAGE)
			for (var i = 0; i < array_length_1d(grab_ids); i++) {
				if instance_exists(grab_ids[i]) with (grab_ids[i]) {
					if other.window_timer mod 4 == 1 {
					take_damage(player, other.player, dmg)
					}
					hitpause = true;
					hitstop = 2;
					y += fling;
					if flip old_hsp *= -1;
					x = other.x+dcos(twirl)*synne_grab_x
					synne_grab_x = lerp(synne_grab_x, 120*sign(synne_grab_x), 0.05)

				}
			}
			
		}

	break;
	case AT_FSTRONG:
		var atk = attack;
		var destx = [0, 0, 0]
		var desty = [0, 0, 0]
		var wt = get_window_value(attack,window,AG_WINDOW_LENGTH)
		if get_window_value(attack,window,AG_WINDOW_TYPE) == 421 {
			for (var i = maxplanets-1; i >= 0; i--) {
			destx[i] = get_hitbox_value(atk, i+1, HG_HITBOX_X)*-spr_dir;
			desty[i] = get_hitbox_value(atk, i+1, HG_HITBOX_Y)
			if has_rune("I") destx[i] *= 2;
			
			if attack == AT_FSTRONG {
				desty[i] -= (get_hitbox_value(atk, i+1, HG_HITBOX_Y)-get_hitbox_value(atk, 1, HG_HITBOX_Y))*2
			}
			if atk == AT_USTRONG desty[i] = -get_hitbox_value(atk, i+1, HG_HITBOX_Y)-char_height;
			var amt = (0.5+(strong_charge/60)*0.5)
				if planet[i].orbiting with (planet[i]){
					overriding = 0.8*amt;
					depthsort = 0;
						x = lerp(x, owner.x+destx[i], 0.4*amt)
						y = lerp(y, owner.y+desty[i], 0.4*amt)

				}
			}
		}
		if get_window_value(attack,window,AG_WINDOW_TYPE) == 420 {
			for (var i = maxplanets-1; i >= 0; i--) {
			destx[i] = get_hitbox_value(atk, i+1, HG_HITBOX_X)*spr_dir;
			desty[i] = get_hitbox_value(atk, i+1, HG_HITBOX_Y)
			if has_rune("I") destx[i] *= 2;
			
				if planet[i].orbiting with (planet[i]){
					overriding = 0.8;
					depthsort = 0;
					if other.window_timer <= 1 {
						orig_x = floor(x);
						orig_y = floor(y);
						depth = other.depth+i
					} else {
						
						x = ease_expoIn(orig_x,floor(owner.x+destx[i]),orig_player_id.window_timer,wt+1)
						y = ease_expoIn(orig_y,floor(owner.y+desty[i]),orig_player_id.window_timer,wt+1) - dsin(ease_expoIn(0, 180, orig_player_id.window_timer, wt+1))*(10+(i*6))
					}
				}
			}
		}
		if get_window_value(attack,window,AG_WINDOW_TYPE) == 69 {
			for (var i = maxplanets-1; i >= 0; i--) {
			destx[i] = get_hitbox_value(atk, i+1, HG_HITBOX_X)*spr_dir;
			desty[i] = get_hitbox_value(atk, i+1, HG_HITBOX_Y)
			if has_rune("I") destx[i] *= 2;
			
				if planet[i].orbiting with (planet[i]){
					overriding = 0.8;
					if other.window_timer == 1 && !other.hitpause {
						x = owner.x+destx[i];
						y = owner.y+desty[i];
						spr_dir = orig_player_id.spr_dir;
						var hb = create_hitbox(orig_player_id.attack, numb+1, x, y)
						hb.planet = id;
						
						other.hologram[i, 0] = sprite_get("fstrong_fx");
						if other.attack == AT_USTRONG other.hologram[i, 0] = sprite_get("ustrong_fx");
						other.hologram[i, 1] = numb;
						other.hologram[i, 2] = floor(x)
						other.hologram[i, 3] = floor(y)
						other.hologram[i, 4] = 1;
						other.hologram[i, 5] = spr_dir;
						
						spr_dir = 1;
						
						//if !owner.hitpause orbiting = false;
						hsp = destx[i]*0.05;
						
						attack = AT_FSTRONG;
						
						scary_looking = hb.length;
					}
				}
			}
		}
		if get_window_value(attack,window,AG_WINDOW_TYPE) == 68 {
			for (var i = maxplanets-1; i >= 0; i--) {
			destx[i] = get_hitbox_value(atk, i+1, HG_HITBOX_X)*spr_dir;
			desty[i] = get_hitbox_value(atk, i+1, HG_HITBOX_Y)
			if has_rune("I") destx[i] *= 2;
			
			var amt = 1-(window_timer/wt)
				if planet[i].orbiting with (planet[i]){
					overriding = 0.79;
					y += (1+other.strong_charge/30)*amt;
					x += (5+other.strong_charge/10)*amt*other.spr_dir;
					if other.window_timer == wt-1 {
						orbiting = 0;
					}
				}
			}
		}
	break;
	case AT_USTRONG:
		var atk = attack;
		var destx = [0, 0, 0]
		var desty = [0, 0, 0]
		var wt = get_window_value(attack,window,AG_WINDOW_LENGTH)
		if get_window_value(attack,window,AG_WINDOW_TYPE) == 421 {
			for (var i = maxplanets-1; i >= 0; i--) {

			if has_rune("I") desty[i] *= 2;

			desty[i] = -6;
			destx[i] = lengthdir_x(planet[i].orbit_distance, planet[i].orbit_angle);
				

			var amt = (0.5+(strong_charge/60)*0.5)
				if planet[i].orbiting with (planet[i]){
					overriding = 0.8*amt;
					depthsort = 0;
						x = lerp(x, owner.x+destx[i], 0.4*amt)
						y = lerp(y, owner.y+desty[i], 0.4*amt)

				}
			}
		}
		if get_window_value(attack,window,AG_WINDOW_TYPE) == 420 {
			for (var i = maxplanets-1; i >= 0; i--) {
			destx[i] = get_hitbox_value(atk, i+1, HG_HITBOX_X)*spr_dir;
			desty[i] = get_hitbox_value(atk, i+1, HG_HITBOX_Y)
			if has_rune("I") desty[i] *= 2;
			
				if planet[i].orbiting with (planet[i]){
					overriding = 0.8;
					if other.window_timer <= 1 {
						orig_x = floor(x);
						orig_y = floor(y);
						depth = other.depth-1
					} else {
						
						x = ease_backIn(orig_x,floor(owner.x+destx[i]),orig_player_id.window_timer,wt+1, 2)
						y = ease_backIn(orig_y,floor(owner.y+desty[i]),orig_player_id.window_timer,wt+1, 2)
					}
				}
			}
		}
		if get_window_value(attack,window,AG_WINDOW_TYPE) == 69 {
			for (var i = maxplanets-1; i >= 0; i--) {
			destx[i] = get_hitbox_value(atk, i+1, HG_HITBOX_X)*spr_dir;
			desty[i] = get_hitbox_value(atk, i+1, HG_HITBOX_Y)
			if has_rune("I") desty[i] *= 2;
			
				if planet[i].orbiting with (planet[i]){
					overriding = 0.8;
					if other.window_timer == 1 {
						x = owner.x+destx[i];
						y = owner.y+desty[i];
						spr_dir = orig_player_id.spr_dir;
						var hb = create_hitbox(orig_player_id.attack, numb+1, x, y)
						hb.planet = id;
						
						other.hologram[i, 0] = sprite_get("fstrong_fx");
						if other.attack == AT_USTRONG other.hologram[i, 0] = sprite_get("ustrong_fx");
						other.hologram[i, 1] = numb
						other.hologram[i, 2] = floor(x)
						other.hologram[i, 3] = floor(y)
						other.hologram[i, 4] = 1;
						other.hologram[i, 5] = spr_dir;
						
						spr_dir = 1;
						
						//if !owner.hitpause orbiting = false;
						hsp = destx[i]*0.05;
						attack = AT_USTRONG;
						
						scary_looking = hb.length;
					}
				}
			}
		}
		if get_window_value(attack,window,AG_WINDOW_TYPE) == 68 {
			for (var i = maxplanets-1; i >= 0; i--) {
			destx[i] = get_hitbox_value(atk, i+1, HG_HITBOX_X)*spr_dir;
			desty[i] = get_hitbox_value(atk, i+1, HG_HITBOX_Y)
			if has_rune("I") desty[i] *= 2;
			
				if planet[i].orbiting with (planet[i]){
					overriding = 0.79;
					if other.window_timer == wt-1 {
						orbiting = 0;
					}
				}
			}
		}
	break;
	case AT_UAIR:
		if get_window_value(attack, window, AG_WINDOW_TYPE) >= 420 && get_window_value(attack, window, AG_WINDOW_TYPE) <= 422  for (var i = 0; i < maxplanets; i++) {
			if planet[i].orbiting == 1 && planet[i].owner == id {
				planet[i].overriding = 0.6;
				planet[i].y += 5;
				planet[i].x += (planet[i].x-x)*0.1
			}
		}	
		if get_window_value(attack, window, AG_WINDOW_TYPE) == 69 for (var i = 0; i < maxplanets; i++) {
			if planet[i].orbiting == 1 && planet[i].owner == id {
				planet[i].overriding = 0.6;
				planet[i].y += 5
				planet[i].x -= (planet[i].x-x)*0.2
			}
		}	
	break;
	case AT_DAIR:
	
		if get_window_value(attack, window, AG_WINDOW_TYPE) >= 420 && get_window_value(attack, window, AG_WINDOW_TYPE) <= 422  {
			if !has_rune("D") fall = 1;
			fall_through = true;
			orbit_speed = state_timer
			can_fast_fall = false;
		}
		if get_window_value(attack, window, AG_WINDOW_TYPE) == 420 {
			if has_rune("D") && state_timer < 6 fall = 0;
			if (attack_down or down_stick_down or strong_down) && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)-1
			window_timer--
		}
		if get_window_value(attack, window+1, AG_WINDOW_TYPE) == 69 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) {
			var hfx = spawn_hit_fx(x,y,hitfx[6]);
			hfx.follow_id = id;
			hfx.follow_time = 5;
			
		}
		
		

		if get_window_value(attack, window, AG_WINDOW_TYPE) >= 420 && get_window_value(attack, window, AG_WINDOW_TYPE) <= 422  for (var i = 0; i < maxplanets; i++) {
			if planet[i].orbiting == 1 && planet[i].owner == id {
				planet[i].overriding = 0.6;
				planet[i].y -= (vsp*1.5)+5
				planet[i].x -= (planet[i].x-x)*0.1
			}
		}	
		if get_window_value(attack, window, AG_WINDOW_TYPE) == 69 for (var i = 0; i < maxplanets; i++) {
			if planet[i].orbiting == 1 && planet[i].owner == id {
				planet[i].overriding = 0.6;

				planet[i].x -= (planet[i].x-x)*0.2
			}
		}	

		/*
		if window > 1 {fall = 0;
			can_move = 0;
		}
		var xx = 20*spr_dir
		var yy = 10
		if window_timer == 1 && get_window_value(attack,window,AG_WINDOW_TYPE) == 69 {
		
			for (var i = 0; i < maxplanets; i++) {
				if planet[i].orbiting == 1 break;
			}
			//print_debug("planet found is "+string(i))
			if i < maxplanets {
				dair = 1;
				hsp = get_window_value(attack,4,AG_WINDOW_HSPEED)*spr_dir
				vsp = get_window_value(attack,4,AG_WINDOW_VSPEED)
				planet[i].x = planet[i].owner.x+xx;
				planet[i].y = planet[i].owner.y+yy;
				planet[i].orbiting = 0;
				planet[i].time = 0;
				planet[i].shot_time = 50;
				planet[i].gravity_time = 90;
				planet[i].dest_x = x+300*spr_dir;
				planet[i].dest_y = y-40;
				planet[i].orig_x = x+20*spr_dir;
				planet[i].orig_y = y-40;
				planet[i].hsp = 4*spr_dir;
				planet[i].active = true;
				planet[i].vsp = 12;
						planet[i].cooldown = 15;
			}
		}
		if get_window_value(attack,window,AG_WINDOW_TYPE) == 420 {
			for (var i = 0; i < maxplanets; i++) {
				if planet[i].orbiting == 1 && planet[i].owner == id {
					planet[i].overriding = 0.6;
					planet[i].x -= spr_dir*6
				}
			}	
		
			for (var i = 0; i < maxplanets; i++) {
				if planet[i].orbiting == 1 break;
			}
			//print_debug("planet found is "+string(i))
			if i < maxplanets {
				planet[i].overriding = 1;
				planet[i].x = lerp(planet[i].x, planet[i].owner.x+xx, 0.6)
				planet[i].y = lerp(planet[i].y, planet[i].owner.y+yy, 0.6)
				planet[i].depth = depth-3
				planet[i].depthsort = false;
			}			
		}
		if dair vsp += 0.3;
		*/
	break;
	case AT_BAIR:
		var xx = -10
		var yy = -40
		if get_window_value(attack,window,AG_WINDOW_TYPE) == 420 {
			var amt = window_timer/get_window_value(attack,window,AG_WINDOW_LENGTH)
			var ang = ease_expoIn(90,145,floor(amt*100),100);
			var j = 2;
			for (var i = 0; i < maxplanets; i++) {
				if planet[i].orbiting == 1 {
					var o = planet[i].owner;
					planet[i].overriding = amt*0.8;
					planet[i].hsp = lerp(planet[i].x,(o.x+xx*spr_dir)+lengthdir_x(-get_hitbox_value(attack,j,HG_HITBOX_X)*amt,ang)*spr_dir+(1-amt)*200*spr_dir,1*amt)-planet[i].x
					planet[i].vsp = lerp(planet[i].y,(o.y+yy)+lengthdir_y(-get_hitbox_value(attack,j,HG_HITBOX_X)*amt,ang),1*amt)-planet[i].y
					j++;
				}
			}				
		}
		if get_window_value(attack,window,AG_WINDOW_TYPE) == 69 {
			var amt = window_timer/get_window_value(attack,window,AG_WINDOW_LENGTH)
			var ang = ease_linear(145,210,floor(amt*100),100);
			var j = 2;
			for (var i = 0; i < maxplanets; i++) {
				if planet[i].orbiting == 1 {
					var o = planet[i].owner;
					planet[i].overriding = 0.8;
					planet[i].hsp = ((o.x+xx*spr_dir)+lengthdir_x(-get_hitbox_value(attack,j,HG_HITBOX_X),ang)*spr_dir)-planet[i].x
					planet[i].vsp = ((o.y+yy)+lengthdir_y(-get_hitbox_value(attack,j,HG_HITBOX_X),ang))-planet[i].y
					planet[i].attack = AT_BAIR;
					planet[i].active = 1;
					planet[i].linked = 1;
					planet[i].offset = 2;
					j++;
				}
			}	
			if tossed_planet < 0 tossed_planet = 0;
		}
		if get_window_value(attack,window,AG_WINDOW_TYPE) == 666 {
			var amt = window_timer/(get_window_value(attack,window,AG_WINDOW_LENGTH)*1+!has_hit_player*0.5)
			var ang = ease_linear(210,270,floor(amt*100),100);
			var j = 1;
			var l = -1;
			for (var i = 0; i < maxplanets; i++) {
				if planet[i].orbiting == 1 {
					var o = planet[i].owner;
					planet[i].overriding = 0.75;
					planet[i].y += 2
//					planet[i].hsp = lerp(planet[i].x,(o.x+xx*spr_dir)+lengthdir_x(-get_hitbox_value(attack,j,HG_HITBOX_X),ang)*spr_dir,1-amt*0.3)-planet[i].x
//					planet[i].vsp = lerp(planet[i].y,(o.y+yy)+lengthdir_y(-get_hitbox_value(attack,j,HG_HITBOX_X)*(1-amt*0.5),ang),1-amt*0.3)-planet[i].y


					j++;
					l = i;
				}
			}		
			if l >= 0 && window_timer == 1 {
				planet[l].hsp += 5*spr_dir;
				planet[l].vsp += 3;
				planet[l].orbiting = false;
				planet[l].cooldown = 10;
				tossed_planet = true;
			}			
		}
	break;
	case AT_NAIR:
		
			if window == 2 or window == 3 or window == 4 {
				if window_timer == 1 && !hitpause && planet[window-2].orbiting = 1 {

				var h = create_hitbox(attack, window-1, planet[window-2].owner.x, planet[window-2].owner.y + get_hitbox_value(AT_NAIR, window-1, HG_HITBOX_Y));
				
						hologram[window-2, 0] = sprite_get("nair_fx");
						hologram[window-2, 1] = window-2
						hologram[window-2, 2] = floor(h.x)
						hologram[window-2, 3] = floor(h.y)
						hologram[window-2, 4] = 1;
						hologram[window-2, 5] = spr_dir;
						sound_play(get_window_value(attack,window,AG_WINDOW_SFX))
				}
				for (var i = 0; i < maxplanets; i++) {
					orbit_speed = 30;
					if planet[i].orbiting == 1 {
						var d = (get_hitbox_value(attack, i+1, HG_WIDTH)/2)-10
						
						if window == 4 {
							planet[i].overriding += 0.03
						} else {
						planet[i].overriding = 0.8;
						}
						planet[i].x = planet[i].owner.x+lengthdir_x(d, planet[i].orbit_angle)
						planet[i].y = planet[i].owner.y+lengthdir_y(d, planet[i].orbit_angle)+get_hitbox_value(attack, i+1, HG_HITBOX_Y)
						

						
					}
				}	
			}
	break;
	case AT_FAIR:
		var xx = 30*spr_dir
		
		if get_window_value(attack,window,AG_WINDOW_TYPE) == 420 {
			var amt = window_timer/get_window_value(attack,window,AG_WINDOW_LENGTH)
			var j = 1;
			for (var i = 0; i < maxplanets; i++) {
				if planet[i].orbiting == 1 {
					var o = planet[i].owner;
					planet[i].overriding = amt;
					var xdest = (o.x+xx+(j*j)*5*-spr_dir)
					planet[i].hsp = lerp(planet[i].x, xdest+(amt*-4*spr_dir), amt)-planet[i].x
					planet[i].vsp = lerp(planet[i].y, ((o.y-20)+j*20), amt)-planet[i].y
					j++;
				}
			}				
		}
		if get_window_value(attack,window,AG_WINDOW_TYPE) == 69 { 
			var amt = window_timer/get_window_value(attack,window,AG_WINDOW_LENGTH)*0.7
			var j = 2;
			for (var i = 0; i < maxplanets; i++) {
				if planet[i].orbiting == 1 {
					var o = planet[i].owner;
					planet[i].overriding = 0.8;
					planet[i].hsp = (o.x+xx+dsin(ease_linear(0, 180, floor(amt*100),100))*get_hitbox_value(attack,j,HG_HITBOX_X)*spr_dir)-planet[i].x
					planet[i].vsp = (ease_linear((o.y-20)+j*20,o.y-80-j*5,floor(amt*100),100))-planet[i].y
					planet[i].attack = AT_FAIR;
					planet[i].active = 1;
					planet[i].offset = 2;
					planet[i].linked = 1;
					planet[i].depth = depth-3;
					j++;
				}
			}
			if tossed_planet < 0 tossed_planet = 0;
		}
		if get_window_value(attack,window,AG_WINDOW_TYPE) == 666 { 
			var amt = 0.7+window_timer/(get_window_value(attack,window,AG_WINDOW_LENGTH)*1+!has_hit_player*0.5)*0.3
			var famt = window_timer/(get_window_value(attack,window,AG_WINDOW_LENGTH)*1+!has_hit_player*0.5)
			var j = 0;
			var l = -1;
			for (var i = 0; i < maxplanets; i++) {
				if planet[i].orbiting == 1 {
					var o = planet[i].owner;
					planet[i].overriding = 0.8-amt*0.03
					planet[i].hsp = (-(35+j*2)*spr_dir)*(1-amt)
					planet[i].vsp = -(15+j*5)*(1-amt)
					planet[i].active = 0;
					planet[i].depth = depth+3;

					j++;
					l = i;
				}
			}		
			if l >= 0 && window_timer == 3 {
				planet[l].orbiting = false;
				planet[l].cooldown = 10;
				tossed_planet = 1;
				print("tossing planet")
			}
		}
	break;
	case AT_DATTACK:
		if get_window_value(attack, window, AG_WINDOW_TYPE) == 69 for (var i = 0; i < maxplanets; i++) {
			if planet[i].orbiting == 1 && planet[i].owner == id {
				planet[i].overriding = 0.3;
				planet[i].y += window_timer
				planet[i].x -= (planet[i].x-x)*0.2
			}
		}	
		if get_window_value(attack, window, AG_WINDOW_TYPE) == 420 for (var i = 0; i < maxplanets; i++) {
			if planet[i].orbiting == 1 && planet[i].owner == id {
				planet[i].overriding = 0.6;
				planet[i].y -= (vsp*1.5)+5
				planet[i].x -= (planet[i].x-x)*0.1
			}
		}	
	break;
	case AT_TAUNT:
		if (get_window_value(attack, window, AG_WINDOW_TYPE) == 9 or get_window_value(attack, window, AG_WINDOW_TYPE) == 99) && !taunt_down {
			window++;
			window_timer = 0;
		}
		if get_window_value(attack, window, AG_WINDOW_TYPE) == 99 && down_down {
			window_timer = min(window_timer,get_window_value(attack, window, AG_WINDOW_LENGTH)-1)
		}
			var j = 1;
			var amt = min(state_timer*0.01, 1)
			for (var i = 0; i < maxplanets; i++) {
			
				if planet[i].orbiting == 1 {
					var o = planet[i].owner;
					planet[i].overriding = amt*0.8;
					planet[i].hsp = lerp(planet[i].x, o.x + (dsin((state_timer*1.8)+j*30)*80), amt)-planet[i].x
					planet[i].depth = depth+sign(planet[i].hsp)
					if amt >= 1 planet[i].orbit_angle = planet[i].orbit_angle mod 180;
					planet[i].vsp = lerp(planet[i].y, o.y + (dcos(state_timer+j*30)*40) - planet[i].orbit_height, amt)-planet[i].y
					j++;
				}
			}	
	break;
	case AT_EXTRA_3:
		if window > 1 && window < 5 {
			invincible = 1;
			invince_time = 1;
		}
		if get_window_value(attack,window,AG_WINDOW_TYPE) == 666 && window_timer == 1 {
		
			sound_play(asset_get("mfx_title_start"))
			sound_play(asset_get("mfx_title_start"), 0, noone, 1, 0.5)
			sound_play(asset_get("sfx_ell_utilt_cannon"), 0, noone, 1, 0.5)
		}
		
		if get_window_value(attack,window,AG_WINDOW_TYPE) == 420 {
			shake_camera(4, 20)
		}
		for (var i = 0; i < maxplanets; i++) {
			if planet[i].orbiting == 1 && planet[i].owner == id {
				planet[i].overriding = min(state_timer*0.1, 0.8);
				planet[i].y = lerp(planet[i].y, y-30, planet[i].overriding);
				planet[i].x =  lerp(planet[i].x, x, planet[i].overriding);
				planet[i].depth = depth+1;
			}
		}			
	break;
}

/*
#define find_first_planet()

for (var i = 0; i < 3; i++) {
	if planet[i].orbiting == 1 return i;
}