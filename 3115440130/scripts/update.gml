//update

timer++;

window_length = get_window_value(attack, window, AG_WINDOW_LENGTH) * (get_window_value(attack, window, AG_WINDOW_HAS_WHIFFLAG) ? 1.5 : 1);
state_attacking = (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND)

//ditto detection
with oPlayer if id != other.id && ("is_rhyolis" in self) && is_rhyolis {
	other.in_ditto = true
}

//check practice mode
if (get_training_cpu_action() != CPU_FIGHT && object_index != oTestPlayer) {
	practice_mode = true;
}

if !free || state == PS_HITSTUN || state == PS_HITSTUN_LAND || state == PS_WALL_JUMP {
	move_cooldown[AT_USPECIAL] = 0
	move_cooldown[AT_FSPECIAL] = 0
}

if state == PS_PARRY_START {
    draw_parry = true
}
if (state == PS_AIR_DODGE && window == 2 && window_timer == 4)
|| (state == PS_WAVELAND && state_timer == 0) 
|| (state == PS_ROLL_FORWARD && window == 2 && window_timer == 0)
|| (state == PS_ROLL_BACKWARD && window == 2 && window_timer == 0)
|| (state == PS_PARRY && window == 2 && window_timer == 0)
|| (state == PS_TECH_BACKWARD && window == 2 && window_timer == 0)
|| (state == PS_TECH_FORWARD && window == 2 && window_timer == 0) {
    //spawn airdodge shards
    var num_shards = 12
    for (var i = 0; i < num_shards; i++) {
        var randrange_x = 50
        var randrange_y = 30
        var centre_x = x + sign(hsp)*30*(state == PS_WAVELAND || state == PS_ROLL_FORWARD || state == PS_ROLL_BACKWARD)
        var rand_x = centre_x + random_func(i, randrange_x, true) - (randrange_x/2)
        var rand_y = y - (char_height/2) + random_func(i+1, randrange_y, true) - (randrange_y/2)
        var shard_dir = point_direction(centre_x, y - (char_height/2), rand_x, rand_y)
        
        var shard_spd = 5
        var shard_hsp = shard_spd*dcos(shard_dir)
        var shard_vsp = -shard_spd*0.5*dsin(shard_dir)
        
        var shard = spawn_hit_fx(rand_x, rand_y, vfx_airdodge_shard)
            shard.depth = -10
            shard.hsp = shard_hsp
            shard.vsp = shard_vsp
            shard.spr_dir = ((i mod 2) - 0.5) * 2
    }
}

var num_faults = 0
with obj_article1 if ("is_rhyolis_fault" in self) && is_rhyolis_fault == true && player_id == other.id {
	num_faults++
}

//holograms
if !hitpause {
	for (var i = 0; i < array_length(fspec_holograms); i++) {
	    var hologram = fspec_holograms[i]
	    hologram[2]--
	    if i == 0 && hologram[2] <= 0 {
	        fspec_holograms = array_slice(fspec_holograms, 1, array_length(fspec_holograms)-1)
	    }
	}
}

if dspec_explosion_timer >= 0 {
	if !hitpause dspec_explosion_timer++
	
	if dspec_explosion_timer >= 40 {
		dspec_explosion_timer = -1
	}
}

//bouncehurt shenanigans
var rhy_id = id
with oPlayer if id != other.id && ("last_player" in self) && last_player == other.player && state == PS_HITSTUN && hurt_img == 3 {
	if rhyolis_bounce_timer == 0 {
        with obj_article1 if player_id == rhy_id {
            for (var i = 0; i < array_length(segment_array); i++) {
                if segment_array[i] != undefined && segment_array[i] != 0 {
                    var seg_x = surface_x + i*32
                    var seg_y = surface_y
                    if abs(seg_x - other.x) <= 32 && abs(seg_y - other.y) <= 32 {
                        other.rhyolis_on_fault = true
                        segment_array[i].timer = -2
                        segment_array[i].state = 5
                        break;
                    }
                }
            }
        }
	}
	rhyolis_bounce_timer++
}


/*
var lockout_moves = [AT_FTILT, AT_DSTRONG]
for (var i = 0; i < array_length(lockout_moves); i++) {
	move_cooldown[lockout_moves[i]] = 1000
}
*/

/*
if !shield_down {
	with oPlayer if state == PS_RESPAWN {
		state_timer = 0
	}
}
*/
//set_view_position(750, 500)

var intro_time = get_gameplay_time();
if intro_time == 16 sound_play(asset_get("sfx_kragg_roll_start"))
if intro_time == 28 sound_play(asset_get("sfx_kragg_spike"))
if intro_time == 32 sound_play(asset_get("sfx_kragg_rock_shatter"))
if intro_time == 32 spawn_base_dust(x, y, "dash_start", -spr_dir)
if intro_time == 32 spawn_base_dust(x, y, "dash_start", spr_dir)
if intro_time == 32 spawn_shards_ellipse(16, 40, 20, 0, x, y-30, 16)

#define spawn_shards_ellipse(num_shards, ellipse_b, ellipse_h, ellipse_angle, ellipse_x, ellipse_y, shard_spd)

for (var i = 0; i < num_shards; i++) {
    
    var rand_b = random_func(i, ellipse_b, true) - (ellipse_b/2)
    var rand_h = random_func(i + 50, ellipse_h, true) - (ellipse_h/2)
    var rand_spd = random_func(i + 100, 3*floor(shard_spd/4), true) + floor(shard_spd/4)
    
    var rand_angle = point_direction(0, 0, rand_b, rand_h)
    var rand_dist = point_distance(0, 0, rand_b, rand_h)
    
    var modified_angle = rand_angle + ellipse_angle
    var modified_x = ellipse_x + rand_dist*dcos(modified_angle)
    var modified_y = ellipse_y - rand_dist*dsin(modified_angle)
    
    //var shard_spd = 5
    var shard_hsp = rand_spd/2*dcos(modified_angle)
    var shard_vsp = -rand_spd/2*dsin(modified_angle)
    
    var shard = spawn_hit_fx(modified_x, modified_y, vfx_airdodge_shard)
        shard.depth = -10
        shard.hsp = shard_hsp
        shard.vsp = shard_vsp
        shard.spr_dir = ((i mod 2) - 0.5) * 2
}
return;

#define get_nearest_fault(_x, _y)
var cur_dist = 10000000
var cur_id = noone
with obj_article1 if player_id == other.id {
    var obj_dist = point_distance(x, y, _x, _y)
    if obj_dist < cur_dist {
        cur_dist = obj_dist
        cur_id = id
    }
}
return {
    ID: cur_id,
    dist: cur_dist
};

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
if newdust != noone {
    newdust.dust_fx = dfx; //set the fx id
    if dfg != -1 newdust.fg_sprite = dfg; //set the foreground sprite
    newdust.dust_color = dust_color; //set the dust color
    if dir != 0 newdust.spr_dir = dir; //set the spr_dir
}
return newdust;