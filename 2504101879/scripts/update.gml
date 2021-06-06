//update.gml
//user_event(14);

/*rainbow_color = phone_cheats[cheat_skittles] ? make_color_hsv(get_gameplay_time() % 256 + 1, 100, 100) : make_color_rgb(
	get_color_profile_slot_r(get_player_color(player), 0),
	get_color_profile_slot_g(get_player_color(player), 0),
	get_color_profile_slot_b(get_player_color(player), 0),
	);
set_character_color_slot(0, color_get_red(rainbow_color), color_get_green(rainbow_color), color_get_blue(rainbow_color))*/

//init_shader();


//max_djumps = phone_cheats[cheat_more_djumps];

if (spr_dir == 0) spr_dir = 1;
//spr_dir = phone_cheats[cheat_widebert] * sign(spr_dir);

//if phone_cheats[cheat_recoil] with pHitBox if player_id == other can_hit_self = 1;

//detect platform/mist cloud above/inside
plat = collision_line_point(x,y-20,x,y-1000,asset_get("par_jumpthrough"),true,true);
mistcloud = collision_line_point(x,y-20,x,y-30,asset_get("obj_article1"),true,true);
if is_array(plat) {
    if (plat[0] != noone) {
        in_shade = true;
    }
} 
if is_array(mistcloud) {
    if (mistcloud[0] != noone) {
        in_shade = true;
    }
}

if (in_shade == false) {
	if (sun_damage_timer > 0) {
		sun_damage_timer -= 1;
	}
	else {
		take_damage(player, -1, 1);
		smoke = spawn_hit_fx(x-(20*spr_dir), y-75, vfx_smoke);
    	smoke.depth = depth - 1;
		sun_damage_timer = SUN_DAMAGE_DEFAULT;
	}
}

if (attack == AT_DSPECIAL){
	if (window > 1 && window < 4) {
		image_alpha = 0;
	}
	else {
		image_alpha = 1;
	}
}
//do this so the sounds dont play from all 3 leeches
if (playleechheal) {
	if (get_player_damage(player) > 0) {
		sound_play(sfx_leechheal, false, false, 1, 1);
	}
	sound_play(sfx_leechsuck, false, false, 1, 1);

	playleechheal = false;
}

if (state = PS_RESPAWN) {
	killarticles = true;
}
else {
	killarticles = false;
}

//bfc shouldnt be higher than babycount
if (babyfollowingcount > babycount) {
	babyfollowingcount = babycount;
}

if (state != PS_ATTACK_AIR) {
	with (obj_article2) {
		if (player_id == other.id) {
			if (state == 6) {
				state = 3;
				state_timer = 0;
			}
		}
	}
	bangle = BANGLE_START;
}  
if (state != PS_ATTACK_GROUND) {
	with (obj_article2) {
		if (player_id == other.id) {
			if (state == 6) {
				state = 3;
				state_timer = 0;
			}
		}
	}
	dangle = 0;
}

if (state != PS_ATTACK_GROUND && state != PS_ATTACK_AIR) {
	temp_x = x;
	temp_y = y+600;
}

if (get_player_color(player) == 7) {
	set_victory_theme(sound_get("da_dada_da_dada_da_da"));
	set_attack_value(AT_DSTRONG, AG_SPRITE, sprite_get("dstronggriffin"));
	set_window_value(AT_DSTRONG, 3, AG_WINDOW_SFX, sfx_griffinthrow);
	set_window_value(AT_DSTRONG, 4, AG_WINDOW_SFX, sfx_griffinthrow);
	set_window_value(AT_DSTRONG, 5, AG_WINDOW_SFX, sfx_griffinthrow);
}

in_shade = false;
babysucktimer++;
#define collision_line_point
/// collision_line_point(x1, y1, x2, y2, obj, prec, notme)
var x1 = argument0;
var y1 = argument1;
var x2 = argument2;
var y2 = argument3;
var qi = argument4;
var qp = argument5;
var qn = argument6;
var rr, rx, ry;
rr = collision_line(x1, y1, x2, y2, qi, qp, qn);
rx = x2;
ry = y2;
if (rr != noone) {
    var p0 = 0;
    var p1 = 1;
    repeat (ceil(log2(point_distance(x1, y1, x2, y2))) + 1) {
        var np = p0 + (p1 - p0) * 0.5;
        var nx = x1 + (x2 - x1) * np;
        var ny = y1 + (y2 - y1) * np;
        var px = x1 + (x2 - x1) * p0;
        var py = y1 + (y2 - y1) * p0;
        var nr = collision_line(px, py, nx, ny, qi, qp, qn);
        if (nr != noone) {
            rr = nr;
            rx = nx;
            ry = ny;
            p1 = np;
        } else p0 = np;
    }
}
var r;
r[0] = rr;
r[1] = rx;
r[2] = ry;
return r;