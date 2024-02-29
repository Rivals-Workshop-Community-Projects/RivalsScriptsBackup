//update

//print(get_state_name(state))
//print(state_timer)

#macro DEFAULT  	0
#macro MOON     	1
#macro FIRE			2
#macro EARTH		3
#macro ICE      	4
#macro WATER    	5
#macro LIGHTNING    6
#macro SHADOW       7

timer++;

window_length = get_window_value(attack, window, AG_WINDOW_LENGTH) * (get_window_value(attack, window, AG_WINDOW_HAS_WHIFFLAG) ? 1.5 : 1);
state_attacking = (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND)

//ditto detection
with oPlayer if id != other.id && ("is_omenforged" in self) && is_omenforged {
	other.in_ditto = true
}

with oPlayer if id != other.id && ("omen_cur_spr_dir" in self) {
	omen_prev_prev_spr_dir = omen_prev_spr_dir
	omen_prev_spr_dir = omen_cur_spr_dir
	omen_cur_spr_dir = spr_dir
}

//check practice mode
if (get_training_cpu_action() != CPU_FIGHT && object_index != oTestPlayer) {
	practice_mode = true;
}

//print(vsp)

if !free || state == PS_WALL_JUMP || state == PS_HITSTUN {
    move_cooldown[AT_USPECIAL] = 0
}

//print(uspec_holograms)

for (var i = 0; i < array_length(uspec_holograms); i++) {
    var hologram = uspec_holograms[i]
    hologram[2]--
    if i == 0 && hologram[2] <= 0 {
        uspec_holograms = array_slice(uspec_holograms, 1, array_length(uspec_holograms)-1)
    }
}

for (var i = 0; i < array_length(bolt_holograms); i++) {
    var hologram = bolt_holograms[i]
    hologram[2]--
    if i == 0 && hologram[2] <= 0 {
        bolt_holograms = array_slice(bolt_holograms, 1, array_length(bolt_holograms)-1)
    }
}

//print(bolt_holograms)

//bolt trail
var bolt_exists = false
var el = undefined
with pHitBox if player_id == other.id && ("has_bolt_trail" in self) && has_bolt_trail {
    var el = [x + hsp, y + vsp, darctan2(-vsp, hsp), bolt_trail_col, bolt_trail_max_w, bolt_trail_scale_w]
    bolt_trail_arr[bolt_trail_index] = el
    
    bolt_trail_index = (bolt_trail_index + 1) mod bolt_trail_segments
}

if !state_attacking && fspec_has_hit {
    fspec_hit_player.hitpause = false
    fspec_hit_player.hitstop = 0
    fspec_has_hit = false
    fspec_hit_player = noone
}

/*
with hit_fx_obj if sprite_index == sprite_get("dash_moon_vfx") && player_id == other.id {
	hsp = other.hsp
	x = other.x
	vsp = other.vsp
	y = other.y - 35
	//pause = 10
	//pause_timer = !other.hitstop
	
	if other.state == PS_LAND {
        sprite_index = asset_get("empty_sprite")
    }
}
*/
/*
if taunt_pressed {
	dspec_stance = !dspec_stance
}
*/
//print(switched_stances)

/*
element indexes:
0 = default
1 = moon
*/

with oPlayer if id != other.id && omen_lerp_pos != undefined && omen_lerp_pos[0] == other.id {
	if hitpause {
		x = lerp(x, omen_lerp_pos[1], 0.1)
		y = lerp(y, omen_lerp_pos[2], 0.1)
	} else {
		omen_lerp_pos = undefined
	}
}

if orb_id != noone {
	if !instance_exists(orb_id) {
		orb_id = noone;
	}
}

//uspecial shadow
if uspec_shadow_timer >= 0 uspec_shadow_timer++
if uspec_shadow_timer >= 27 {
	
	sound_play(asset_get("sfx_boss_fireball"))
	//sound_stop(asset_get("sfx_abyss_explosion_start"))
	var hbox1 = create_hitbox(AT_USPECIAL, 1, floor(uspec_shadow_spawn[0]), floor(uspec_shadow_spawn[1]))
	var hbox2 = create_hitbox(AT_USPECIAL, 1, floor(uspec_shadow_spawn_2[0]), floor(uspec_shadow_spawn_2[1]))
	if uspec_shadow_angle == 90 || uspec_shadow_angle == 270 {
		hbox1.kb_angle = uspec_shadow_angle
		hbox2.kb_angle = uspec_shadow_angle
	}
	uspec_shadow_timer = -1
}

//uspecial ice
if uspec_ice_count > 0 {
	uspec_ice_timer++
	
	if uspec_ice_timer == 1 {
		create_hitbox(AT_USPECIAL, 7, uspec_ice_spawn[0], uspec_ice_spawn[1])
	}
	
	if uspec_ice_timer >= 11 {
		uspec_ice_count--
		uspec_ice_timer = 0
	}
}

//electrified status
if electrified_timer > 0 {
	electrified_timer--
	if electrified_timer == 0 {
		spawn_hit_fx(x, y, vfx_electrified_dissipate)
		sound_play(sound_get("HareBoltStartup"), false, noone, 0.5, 0.9)
		
	}
	var stat = electrified_timer == 0;
	walk_speed = electrified_stats.walk_speed[stat]
	walk_accel = electrified_stats.walk_accel[stat]
	dash_speed = electrified_stats.dash_speed[stat]
	initial_dash_speed = electrified_stats.initial_dash_speed[stat]
	air_max_speed = electrified_stats.air_max_speed[stat]
	air_accel = electrified_stats.air_accel[stat]
	gravity_speed = electrified_stats.gravity_speed[stat]
	jump_speed = electrified_stats.jump_speed[stat]
	djump_speed = electrified_stats.djump_speed[stat]
	jump_change = electrified_stats.jump_change[stat]
	wave_land_adj = electrified_stats.wave_land_adj[stat]
}

//update loadout queue
if (!state_attacking || state_timer == 0) && queue_loadout[0] != undefined {
	prev_loadout = loadout
	loadout[queue_loadout[0]] = queue_loadout[1]
	queue_loadout = [undefined, undefined]
	//update_loadout = true
}

//scythe head obj
scythe_head_obj = noone
with obj_article2 if player_id == other.id && ("omen_is_scythe" in self) && omen_is_scythe == true {
	other.scythe_head_obj = id
}
if scythe_head_obj == noone && dspec_stance == 1 {
	scythe_respawn_timer++
	if scythe_respawn_timer >= 120 {
		dspec_stance = 0
		scythe_respawn_timer = 0
	}
}

//orb hitbox detection
if orb_id != noone && instance_exists(orb_id) && orb_id.state == 1 && orb_id.timer >= 30 {
	with pHitBox if player_id == other.id {
	    if place_meeting(x, y, player_id.orb_id) && player_id.orb_id.state == 1 {
	        if type == 1 {
	        	player_id.hitpause = true
	        	player_id.hitstop = 10
	        	player_id.old_hsp = player_id.hsp
	        	player_id.old_vsp = player_id.vsp
	        }
	        sound_play(sound_effect)
	        //destroyed = true
	        player_id.orb_id.state = 2
	        player_id.orb_id.state_timer = 0
	        spawn_hit_fx(x, y, 304)
	        with player_id {
	        	stored_spirit = orb_id.element
	        	//prev_loadout = loadout
	        	//loadout = [orb_id.element, orb_id.element, orb_id.element, orb_id.element]
	        	//update_loadout = true
	        	spirit_col = get_spirit_col(stored_spirit)
	        	
	        	essence_consume_timer = 0
	        }
	        break;
	    }
	}
}

//essence meter
/*
if essence_cur > 0 {
	essence_cur -= essence_depletion_rate
}
*/

if essence_cur >= essence_max && essence_consume_timer < 0 && !orb_active() {
	spawn_orb()
}

if essence_consume_timer >= 0 {
	essence_consume_timer++
	if essence_consume_timer >= 10 {
		essence_cur = ease_quadIn(100, -1, essence_consume_timer - 10, 30)
	}
	if essence_consume_timer >= 40 {
		essence_consume_timer = -1
	}
}

if essence_cur < 0 {
	essence_cur = 0
}
if essence_cur > essence_max {
	essence_cur = essence_max
}

if loadout_apply_timer > 0 {
	loadout_apply_timer--
}

if stored_spirit != DEFAULT {
	stored_timer++
} else {
	stored_timer = 0
}
/*
if stored_timer >= 600 {
	stored_spirit = DEFAULT
}
*/

//print(essence_cur)

with oPlayer if id != other.id && ("omen_frozen_id" in self) && omen_frozen_id == other.id {
	if omen_frozen_timer >= 0 {
		//print(hitstun)
		if state == PS_DEAD || state == PS_RESPAWN || omen_frozen_timer == 0 {
			omen_frozen_timer = -1
			omen_frozen_id = noone
		}
		
		if omen_frozen_timer > 0 && state != PS_HITSTUN && state != PS_HITSTUN_LAND {
			omen_frozen_timer--
		}
		
		omen_frozen_meter_percent = clamp(omen_frozen_timer/300, 0, 1)
		if omen_frozen_meter_percent >= 1 && !hitpause {
			with other {
				create_hitbox(AT_EXTRA_1, 1, other.x, other.y)
				sound_play(sound_get("BearBolt_AOE"))
			}
		}
	}
	
	if omen_draw_ice_timer >= 0 {
		if omen_draw_ice {
			if omen_draw_ice_timer >= 10 && !hitpause {
				omen_frozen_timer = -1
				omen_frozen_id = noone
				omen_draw_ice = false
				omen_draw_ice_timer = 0
			}
			omen_draw_ice_timer++
		}
	}
}
if !state_attacking {
	if earth_armour {
		soft_armor = 0
		earth_armour = false
	}
}
if earth_armour {
	soft_armor = 12
}

with oPlayer if ("omen_drenched_id" in self) && omen_drenched_id == other.id {
	if state == PS_DEAD || state == PS_RESPAWN {
		omen_drenched_id = noone
	}
}

//bighurt shenanigans
var omen_id = id
with oPlayer if id != other.id && ("last_player" in self) && last_player == other.player && omen_drenched_id == other.id && state == PS_HITSTUN {
	if hurt_img == 2 {
		can_tech = false
	}
	if hurt_img == 3 {
		omen_drenched_timer++
		if omen_drenched_timer == 1 {
	        with other {
	        	spawn_hit_fx(other.x, other.y - other.char_height/2, vfx_dash_water)
	        	create_hitbox(AT_EXTRA_1, 2, floor(other.x), floor(other.y - other.char_height/2))
	        }
	        omen_drenched_timer = 0
	        omen_drenched_id = noone
		}
	}
}

if scythe_get_flash {
	scythe_get_timer--
	if scythe_get_timer <= 0 {
		scythe_get_flash = false
	}
}

if shadow_stun_lockout > 0 {
	shadow_stun_lockout--
}

if trailer_mode {
	if !shield_down {
		with oPlayer if state == PS_RESPAWN {
			state_timer = 0
		}
	}
	set_view_position(room_width/2, 320)
	//set_view_position(750, 500)
	
	//with oPlayer if id != other.id && state == PS_ATTACK_GROUND attack = AT_FSTRONG
	
	//if timer == 100 spawn_orb()
}


//set_view_position(room_width/2, 350)
#define orb_active()
var isactive = false;
with obj_article1 if player_id == other.id && state < 3 {
	isactive = true
}
return isactive;

#define spawn_orb()
//loadout[0] = DEFAULT
//update_loadout = true
var rand_x = x + random_func(1, 400, true)-200
var rand_y = y + random_func(2, 300, true)-200
//print(rand_x - x)
while place_meeting(rand_x, rand_y + 16, asset_get("par_block")) {
	rand_y -= 32
}
while room_width - rand_x < 200 {
	rand_x -= 32
}

while rand_x < 200 {
	rand_x += 32
}
var orb = instance_create(rand_x, rand_y, "obj_article1")
    orb.element = random_func(0, 7, true) + 1
    //orb.element = SHADOW

essence_col = get_spirit_col(orb.element)
return;

#define get_spirit_col(s)
var col = c_white
switch s {
	case DEFAULT: col = c_white break;
	case MOON: col = $ff5eff break;
	case FIRE: col = $0000ff break;
	case EARTH: col = $00ff00 break;
	case ICE: col = $ffff00 break;
	case WATER: col = $ff5f00 break;
	case LIGHTNING: col = $00ffff break;
	case SHADOW: col = $c50076 break;
}
return col;