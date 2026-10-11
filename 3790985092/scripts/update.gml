//update

am = floor(room_width/16);
ink_sprites = [];
var n = 0;
repeat am {
    array_push(ink_sprites, random_func_2(n%200, 3, 1));
    n++;
}

ink_boost = false;
//if !free with hit_fx_obj if "ink_data" in self && player_id = other && collision_line(x, y - 1, x + 16*ink_data, y - 1, other, 1, 1) = other other.ink_boost = 1
if (place_meeting( x, y+2, asset_get( "obj_article2" ) ) ) {
        with (obj_article2) {
            if (player_id == other.id) {
                other.ink_boost_time = 31;
            }
        }
    }
if (ink_boost_time > 0) ink_boost = true;
ink_boost_time--;

gridpos = floor(x/16)*16 +8;

//if (state == PS_RESPAWN && state_timer == 1 && qr) {
//    state_timer = 89;
//}
//qr = false;

if (!free) {
    uspecial_limit = 0;
    has_daired = false;
}

if (prev_state == PS_DASH_TURN && state == PS_JUMPSQUAT) {
    max_jump_hsp = dash_speed * 1.1;
    ground_friction = 0;
    hsp = sign(hsp) * dash_speed * 1.1;
}

with (self) {
    if (ink_boost) {
        initial_dash_time   = 6;		// 8    -  16
        initial_dash_speed  = 10;		// 4    -  9
        dash_speed          = 9.5;		// 5    -  9
        dash_turn_time      = 8;		// 8    -  20
        dash_turn_accel     = 1.75;		// 0.1  -  2
        dash_stop_time      = 4;		// 4    -  6
        dash_stop_percent   = 0.5;		// 0.25 -  0.5
        ground_friction     = 0.3;		// 0.3  -  1

        wave_friction       = 0.08;		// 0    -  0.15
        roll_forward_max    = 11;		// 9    -  11
        roll_backward_max   = 11;		// 9    -  11
        wave_land_time      = 6;		// 6    -  12
        wave_land_adj       = 1.5;		// 1.2  -  1.5
        techroll_speed      = 12;		// 8    -  11
        
        set_window_value(AT_DATTACK, 2, AG_WINDOW_HSPEED, 20);

        if (state != PS_ATTACK_GROUND && state != PS_ATTACK_AIR) {
            if ( (bomb_type == 0 && ink_level < 0.2 * max_ink_level && ink_level + 0.5 >= 0.2 * max_ink_level) || (bomb_type == 1 && ink_level < 0.1 * max_ink_level && ink_level + 0.5 >= 0.1 * max_ink_level) || (bomb_type == 2 && ink_level < 0.5 * max_ink_level && ink_level + 0.5 >= 0.5 * max_ink_level) ) sound_play( sound_get( "sub_ready" ) );
            ink_level += 0.5;
        }
    } else {
        initial_dash_time   = 8;		// 8    -  16
        initial_dash_speed  = 8;		// 4    -  9
        dash_speed          = 7.5;		// 5    -  9
        dash_turn_time      = 12;		// 8    -  20
        dash_turn_accel     = 1.5;		// 0.1  -  2
        dash_stop_time      = 6;		// 4    -  6
        dash_stop_percent   = 0.35;		// 0.25 -  0.5
        ground_friction     = 0.5;		// 0.3  -  1

        wave_friction       = 0.12;		// 0    -  0.15
        roll_forward_max    = 9;		// 9    -  11
        roll_backward_max   = 9;		// 9    -  11
        wave_land_time      = 9;		// 6    -  12
        wave_land_adj       = 1.3;		// 1.2  -  1.5
        techroll_speed      = 10;		// 8    -  11
        
        set_window_value(AT_DATTACK, 2, AG_WINDOW_HSPEED, 15);

        if (state != PS_ATTACK_GROUND && state != PS_ATTACK_AIR) {
            if ( (bomb_type == 0 && ink_level < 0.2 * max_ink_level && ink_level + 0.1 >= 0.2 * max_ink_level) || (bomb_type == 1 && ink_level < 0.1 * max_ink_level && ink_level + 0.1 >= 0.1 * max_ink_level) || (bomb_type == 2 && ink_level < 0.5 * max_ink_level && ink_level + 0.1 >= 0.5 * max_ink_level) ) sound_play( sound_get( "sub_ready" ) );
            ink_level += 0.1;
        }
    }
}

ink_level = clamp(ink_level, 0, max_ink_level);

if(state != PS_ATTACK_GROUND && state != PS_ATTACK_AIR){
sound_stop(sound_get("dair_charge"))
}



with (asset_get("oPlayer")) {
    if (inkling_nspecial_hitmarker >= 24) {
        with (other) {
            sound_play(sound_get("crit_hit_sound") );
            spawn_hit_fx(other.x, other.y-other.char_height/2, fx_sweetspot);
            take_damage(other.player, player, 4);
        }
        inkling_nspecial_hitmarker = 0;
    }

    inkling_nspecial_hitmarker = clamp(inkling_nspecial_hitmarker, 0, 31);
}

#define ground_at_pos(xpos, ypos)
    return position_meeting(xpos, ypos, asset_get("par_block")) || (position_meeting(xpos, ypos, asset_get("par_jumpthrough")) && !position_meeting(xpos, ypos-2, asset_get("par_jumpthrough")));

#define spawn_ink(xpos, ypos, id)
    if ground_at_pos(xpos, ypos) var g = spawn_hit_fx(xpos, ypos, fx_inktile[id]);
    else return noone;
    g.spr_dir = 1;
    return g;