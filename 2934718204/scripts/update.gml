//update
timer++;

window_length = get_window_value(attack, window, AG_WINDOW_LENGTH) * (get_window_value(attack, window, AG_WINDOW_HAS_WHIFFLAG) ? 1.5 : 1);
state_attacking = (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND)

//keyboard check
if !joy_pad_idle && joy_dir/45 != round(joy_dir/45) {
    on_keyboard = false
}

if state_attacking && taunt_attack {
    var rand_var = random_func(1, 360, true)
    switch attack {
        case AT_DATTACK:
        if window == 1 && window_timer == 1 {
            hsp = -4*spr_dir
        }
        if window == 1 && window_timer == 2 {
            var rand_sfx = undefined
            if rand_var mod 2 == 0 rand_sfx = "sfx_shaw"
            else rand_sfx = "sfx_haa"
            sound_play(sound_get(rand_sfx))
        }
        break;
        
        case AT_USPECIAL:
        if window == 1 && window_timer == 2 {
            var rand_sfx = undefined
            if rand_var mod 3 == 0 rand_sfx = "sfx_shaw"
            else if rand_var mod 3 == 1 rand_sfx = "sfx_haa"
            else rand_sfx = "sfx_adino"
            sound_play(sound_get(rand_sfx))
        }
        break;
        
        case AT_DSPECIAL:
        if window == 1 && window_timer == 2 {
            var rand_sfx = undefined
            if rand_var mod 3 == 0 rand_sfx = "sfx_shaw"
            else if rand_var mod 3 == 1 rand_sfx = "sfx_haa"
            else rand_sfx = "sfx_hagale"
            sound_play(sound_get(rand_sfx))
        }
        break;
    }
}
//print(on_keyboard)

with oPlayer if id != other.id {
    if hornet_wrapped_id == other.id {
        if !hitpause {
            hornet_wrapped_id = noone
        }
    }
    
    if state == PS_DEAD || state == PS_RESPAWN {
        hornet_silked_id = noone
        hornet_wrapped_id = noone
    }
}

if state == PS_HITSTUN || state == PS_HITSTUN_LAND || !free || state == PS_WALL_JUMP || has_hit || state == PS_AIR_DODGE || state == PS_DOUBLE_JUMP {
    move_cooldown[AT_USPECIAL] = 0
}

if state == PS_HITSTUN || state == PS_HITSTUN_LAND || !free {
    has_dair_wall_bounce = true
}

//intro anim

var intro_time = clamp(get_gameplay_time() - 5*(player - 1), 0, 1000000000000000000000000000000000000000000000);
if intro_time == 6 sound_play(sound_get("hornet_needle_thow_spin"))
if intro_time == 30 sound_play(sound_get("hornet_dash"))
if intro_time == 65 {
    sound_play(asset_get("sfx_land"))
    spawn_base_dust(x, y, "land", spr_dir)
}
/*
with oPlayer if id != other.id {
    activated_kill_effect = false
    should_make_shockwave = false
}
*/
/*
if hit_player_obj != noone && hit_player_obj.hornet_silked_id == id && state_attacking && attack == AT_DSPECIAL {
    set_hitbox_value(AT_DSPECIAL, 4, HG_BASE_KNOCKBACK, 3);
    set_hitbox_value(AT_DSPECIAL, 4, HG_KNOCKBACK_SCALING, 0);
}
*/

//TRAILER USE ONLY
/*
if !shield_down {
    with oPlayer if state == PS_RESPAWN && id != other.id {
        state_timer = 0
        hsp = 0
        vsp = 0
    }
}
*/

//set_view_position(800, 400)

#define spawn_base_dust(x, y, name, dir)
//This function spawns base cast dusts. Names can be found below.
var dlen; //dust_length value
var dfx; //dust_fx value
var dfg; //fg_sprite value
var dust_color = 0;

switch (name) {
    default: 
    case "dash_start": dlen = 21; dfx = 3; dfg = 2626; break;
    case "dash": dlen = 16; dfx = 4; dfg = 2656; break;
    case "jump": dlen = 12; dfx = 11; dfg = 2646; break;
    case "doublejump": 
    case "djump": dlen = 21; dfx = 2; dfg = 2624; break;
    case "walk": dlen = 12; dfx = 5; dfg = 2628; break;
    case "land": dlen = 24; dfx = 0; dfg = 2620; break;
    case "n_wavedash": dlen = 24; dfx = 0; dfg = 2620; dust_color = 1; break;
    case "wavedash": dlen = 16; dfx = 4; dfg = 2656; dust_color = 1; break;
}
var newdust = spawn_dust_fx(x,y,asset_get("empty_sprite"),dlen);
newdust.dust_fx = dfx; //set the fx id
if dfg != -1 newdust.fg_sprite = dfg; //set the foreground sprite
newdust.dust_color = dust_color; //set the dust color
if dir != 0 newdust.spr_dir = dir; //set the spr_dir
return newdust;