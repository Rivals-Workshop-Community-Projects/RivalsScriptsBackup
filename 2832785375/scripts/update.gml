//update
timer++;

window_length = get_window_value(attack, window, AG_WINDOW_LENGTH) * (get_window_value(attack, window, AG_WINDOW_HAS_WHIFFLAG) ? 1.5 : 1);

if ground_seed_count > 1 {
    var max_age = 10000000000000;
    var oldest_id = undefined;
    with obj_article1 {
        if player_id == other.id && age < max_age && state != PS_WRAPPED {
            max_age = age;
            oldest_id = id;
        } 
    }
    /*
    with pHitBox {
        if player_id == other.id && age < max_age {
            max_age = age;
            oldest_id = id;
        } 
    }
    */
    oldest_id.state = PS_DEAD
    //instance_destroy(oldest_id);
}

seed_count = 0
ground_seed_count = 0

if dspec_coords[0] != undefined {
    dspec_timer++;
    if dspec_timer >= 60 {
        dspec_coords = [undefined,undefined];
        dspec_timer = 0;
    }
}

/*
with oPlayer if id != other.id {
	if state == PS_RESPAWN {
		state = PS_DEAD
		state_timer = 0
		y = 0
		visible = false
	}
}
*/

with oPlayer if id != other.id && (arb_tethered == other.id || arb_grabbed == other.id) {
	hitstop = 6
    hitstop_full = 6
}

if state == PS_HITSTUN || state == PS_HITSTUN_LAND {
    with oPlayer if id != other.id && arb_grabbed == other.id {
        arb_grabbed = undefined
    }
}

if timer mod 60 == 0 {
	//spawn_hit_fx(x, y-230, 134)
}

with hit_fx_obj {
	if sprite_index = sprite_get("vfx_flower_large") depth = -5;
	if sprite_index = sprite_get("vfx_flower_sweetspot") depth = -5;
	if sprite_index = sprite_get("vfx_wood_small") depth = -5;
}

if state == PS_LANDING_LAG && state_timer == 1 {
	if attack == AT_FAIR sound_stop(sfx_ivy_swipe_heavy1)
	if attack == AT_FAIR sound_stop(sfx_ivy_swipe_weak2)
	if attack == AT_BAIR sound_stop(sfx_ivy_swipe_heavy3)
	if attack == AT_UAIR sound_stop(sfx_ivy_swipe_heavy1)
}

var galaxy = false
with oPlayer if ("activated_kill_effect" in self) && ("id" in self) && id != other.id {
    if activated_kill_effect {
        galaxy = true
    }
}

if galaxy with pHitBox if player_id == other.id && attack == AT_EXTRA_1 {
	destroyed = true
}
//intro anim
var intro_time = get_gameplay_time();
if intro_time == 4 sound_play(asset_get("sfx_kragg_rock_pillar"))
if intro_time == 27 sound_play(asset_get("sfx_bite"))
if intro_time == 60 sound_play(asset_get("sfx_land"))
if intro_time == 60 spawn_base_dust(x, y, "land", spr_dir)

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
