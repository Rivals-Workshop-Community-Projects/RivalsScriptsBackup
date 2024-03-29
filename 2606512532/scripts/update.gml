//update

//munophone
muno_event_type = 1;
user_event(14);

timer++;

trail_index = timer mod trail_length;

//jump decay
djump_speed = 9 - djumps;

//practice mode detector
if (get_training_cpu_action() != CPU_FIGHT && !playtest && !("is_ai" in self)) {
    practice_mode = true;
}

//char height
var start_char_height = 52;
if state != PS_ATTACK_AIR && state != PS_ATTACK_GROUND {
    char_height = start_char_height;
    height_timer = 0;
} else if state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND {
    switch attack {
        case AT_USTRONG:
        var end_char_height = 140;
        if window != 4 || (window == 4 && window_timer < 18) {
            char_height = clamp(ease_quadOut(start_char_height, end_char_height, clamp(height_timer, 0, 4), 4), start_char_height, end_char_height);
        } else {
            char_height = clamp(ease_quadIn(end_char_height, start_char_height, clamp(window_timer-18, 0, 10), 10), start_char_height, end_char_height);
        }
        break;
    }
}

//trail code
arrow_count = 0;
fspec_count = 0;
with pHitBox {
    if attack == AT_NSPECIAL && hbox_num == 1 && player_id == other.id {
        //increment arrow count
        other.arrow_count++;
        
        //check if id exists in array already
        var present = false;
        for (var i = 0; i < other.arrow_num_max; i++) {
            if other.arrow_id_array[i] == id present = true;
        }
        
        //if id doesnt exist in array, insert id into first undefined slot
        if !present {
            for (var i = 0; i < other.arrow_num_max; i++) {
                if other.arrow_id_array[i] == undefined && !present {
                    other.arrow_id_array[i] = id;
                    present = true;
                }
            }
        }
    }
    
    if attack == AT_FTHROW && hbox_num == 1 && player_id == other.id {
        //increment fspec count
        other.fspec_count++;
        
        //check if id exists in array already
        var fspec_present = false;
        for (var i = 0; i < other.max_fspec; i++) {
            if other.fspec_id_array[i] == id fspec_present = true;
        }
        
        //if id doesnt exist in array, insert id into first undefined slot
        if !fspec_present {
            for (var i = 0; i < other.max_fspec; i++) {
                if other.fspec_id_array[i] == undefined && !fspec_present {
                    other.fspec_id_array[i] = id;
                    fspec_present = true;
                }
            }
        }
    }
}

//arrows
if arrow_count >= arrow_num_max {
    var oldest_hitbox_id = undefined;
    var oldest_timer = 0;
    with pHitBox {
        if attack == AT_NSPECIAL && hbox_num == 1 && player_id == other.id {
            if hitbox_timer > oldest_timer {
                oldest_timer = hitbox_timer;
                oldest_hitbox_id = id;
            }
        }
    }
    oldest_hitbox_id.destroyed = true;
}

//if id doesnt exist, delete it
for (var i = 0; i < array_length(arrow_id_array); i++) {
    if arrow_id_array[i] != undefined && !instance_exists(arrow_id_array[i]) {
        arrow_id_array[i] = undefined;
    }
}

//if id exists, fill out trail stuff in trail array
for (var i = 0; i < arrow_num_max; i++) {
    var arrow_id = arrow_id_array[i];
    if arrow_id != undefined && instance_exists(arrow_id) && !arrow_id.destroyed {
        if ("trailArray" in arrow_id) {
            arrow_trail_arrays[i] = arrow_id.trailArray;
        }
    } else {
        if arrow_trail_arrays[i][0] != undefined {
        	if arrow_trail_arrays[i][@trail_index] == -4 {
        		arrow_trail_arrays[i] = empty_array
        	} else {
	            arrow_trail_arrays[i][@trail_index] = -4;
	            if trail_index > 0 arrow_trail_arrays[i][@trail_index-1] = -4;
        	}
        }
    }
}

//fspec
if fspec_count >= max_fspec {
    var oldest_hitbox_id = undefined;
    var oldest_timer = 0;
    with pHitBox {
        if attack == AT_FTHROW && hbox_num == 1 && player_id == other.id {
            if hitbox_timer > oldest_timer {
                oldest_timer = hitbox_timer;
                oldest_hitbox_id = id;
            }
        }
    }
    oldest_hitbox_id.destroyed = true;
}

//if id doesnt exist, delete it
for (var i = 0; i < max_fspec; i++) {
    if fspec_id_array[i] != undefined && !instance_exists(fspec_id_array[i]) {
        fspec_id_array[i] = undefined;
    }
}

//if id exists, fill out trail stuff in trail array
for (var i = 0; i < max_fspec; i++) {
    var fspec_id = fspec_id_array[i]
    if fspec_id != undefined && instance_exists(fspec_id) && !fspec_id.destroyed {
        if ("trailArray" in fspec_id) {
            fspec_trail_arrays[i] = fspec_id.trailArray;
        }
    } else {
        if fspec_trail_arrays[i][0] != undefined {
        	if fspec_trail_arrays[i][@trail_index] == -4 {
        		fspec_trail_arrays[i] = empty_array
        	} else {
	            fspec_trail_arrays[i][@trail_index] = -4;
	            if trail_index > 0 fspec_trail_arrays[i][@trail_index-1] = -4;
        	}
        }
    }
}

//dspecial fake hitpause stuff
with oPlayer if !(id != other.id && ("is_pit" in self) && is_pit) {
    if state != PS_HITSTUN fake_hitstop = 0;
    if fake_hitpause {
        if fake_hitstop > 0 {
            fake_hitstop--;
            hsp = 0;
            vsp = 0;
        } else {
            fake_hitpause = false;
            hsp = fake_old_hsp;
            vsp = fake_old_vsp;
            fake_old_hsp = 0;
            fake_old_vsp = 0;
        }
    }
}

//vfx
with hit_fx_obj {
    if hit_fx == other.vfx_reticle_large {
        depth = -10
    }
}

//stop nair sound
if state == PS_LAND || state == PS_LANDING_LAG sound_stop(sfx_nair);

//fspecial cooldown done
if move_cooldown[AT_FTHROW] == 4 {
    sound_play(sound_get("reticle"))
}

//orbitar parry
if orbitar_parry_mode {
    if timer == 1 && !custom_clone {
        var orbitar_parry = instance_create(x, y, "oPlayer")
        	orbitar_parry.is_orbitar = true;
        	orbitar_parry.owner = id;
        	orbitar_parry.ai_disabled = true;
        orbitar_parry_id = orbitar_parry.id;
    }
    
    if state == PS_PARRY && state_timer > 1 && !custom_clone && orbitar_parry_id.is_active {
        orbitar_parry_id.state = PS_PARRY;
        orbitar_parry_id.free = false;
        orbitar_parry_id.state_timer = state_timer
    }
    
    if orbitar_parry_timer > 0 orbitar_parry_timer--;
    
    if custom_clone {
        depth = -10;
        hsp = 0;
        vsp = 0;
        
        if state == PS_PARRY && state_timer < 12 && state_timer > 2 {
            hurtboxID.sprite_index = sprite_get("parry_hurtbox")
        } else {
            hurtboxID.sprite_index = asset_get("empty_sprite")
        }
        
        if !instance_exists(orbitar_id) || orbitar_id.state != PS_ATTACK_AIR {
            is_active = false;
        } else if orbitar_id.state == PS_ATTACK_AIR is_active = true
        
        if !is_active {
            state = PS_PRATLAND;
            x = room_width/2;
            y = room_height/2;
            exit;
        }
        
        x = orbitar_id.x
        y = orbitar_id.y + 30
    }
}

//command grabs
with oPlayer if id != other.id && !hitpause && last_player == other.player && (state == PS_HITSTUN || state == PS_HITSTUN_LAND) {
	if pit_utilt > 0 {
		x = lerp(x, other.x + 25*other.spr_dir, 0.2)
		y = lerp(y, other.y - 45, 0.2)
		pit_utilt--
	}
	
	if pit_ustrong > 0 {
		x = lerp(x, other.x, 0.1)
		y = lerp(y, other.y - 70, 0.1)
		pit_ustrong--
	}
}


/*
if taunt_pressed with oPlayer {
    if id != other.id {
        set_state(PS_ATTACK_GROUND)
        set_attack(AT_TAUNT)
        //state_timer = 20
        //window = 2;
    }
}
*/


//intro anim
var intro_time = get_gameplay_time();
if !echo {
    if intro_time == 16 sound_play(sound_get("door_open"))
    if intro_time == 32 sound_play(asset_get("sfx_swipe_medium1"))
    if intro_time == 60 sound_play(asset_get("sfx_land_heavy"))
    if intro_time == 60 spawn_base_dust(x, y, "land", 1)
} else {
    if intro_time == 26 sound_play(sound_get("orbitar_break"))
    if intro_time == 26 sound_play(asset_get("sfx_ice_shatter"))
    if intro_time == 22 sound_play(asset_get("sfx_swipe_medium1"))
    if intro_time == 54 sound_play(asset_get("sfx_land_heavy"))
    if intro_time == 54 spawn_base_dust(x - 8*spr_dir, y, "land", 1)
}

/*
trum-pit codec pseudocode
if (pit + trum in match) {
	if (pit_codec_triggered && !trum_codec_active) {
		init_codecs(pit_initiated)
		trigger_codec(pit)
		trum_codec_lockout = true
		if page == 1 {
			trigger_codec(trum)
		}
	} else if (trum_codec_triggered && !pit_codec_active) {
		init_codecs(trum_initiated)
		trigger_codec(trum)
		pit_codec_lockout = true
		if page == 0 {
			trigger_codec(pit)
		}
	}
}
*/

if !echo && timer < 500 && timer > 10 {
	with oPlayer if url == 2282173822 {
		other.trummel_id = id;
	}
}

if !echo && trummel_id != undefined && instance_exists(trummel_id) {
	if (trummel_id.phone_attacking && (trummel_id.attack == AT_TAUNT || trummel_id.attack == AT_TAUNT_2)) && (trummel_id.window == 3 && trummel_id.taunt_time == 119) {
		trum_codec_active = true;
		codec_triggered = 'Trum';
		user_event(1)
		user_event(5)
		codec_triggered = undefined;
	}
	//trum_codec_active = (trummel_id.codec_handler.state != 0);
	
	if trummel_id.codec_handler.state == 3 && trummel_id.codec_handler.state_timer == 60 && !pit_codec_active {
		switch trummel_id.codec_handler.page {
			case 0:
			force_codec = true;
			break;
		}
	}
	
	
	if trummel_id.codec_handler.state == 4 && trummel_id.codec_handler.state_timer == 1 {
		pit_codec_handler.state = 4;
		pit_codec_handler.state_timer = 0;
		trum_codec_active = false;
	}
}

//trummel codec stuff (trum initiated)
/*
if ("trummel_id" in self) {
	if (trummel_id.codec_handler.state == 3 && trummel_id.codec_handler.state_timer == 60) && codec_initiated != 1 {
		switch trummel_id.codec_handler.page {
			case 0:
			force_pit_codec = true;
			user_event(1)
			break;
		}
	}
	
	//print([trummel_id.codec_handler.page, trummel_id.codec_handler.state, trummel_id.codec_handler.state_timer])
	
	if (trummel_id.codec_handler.page == 3 && trummel_id.codec_handler.state == 4 && trummel_id.codec_handler.state_timer == 1) {
		pit_codec_handler.state = 4;
		pit_codec_handler.state_timer = 0;
	}
	
}
*/


with oPlayer if id != other.id && activated_kill_effect && triggers_kill_effect {
    with other sound_play(sound_get("crit_sfx"))
    triggers_kill_effect = false;
}

//codec
if codec_active user_event(2)


//runes
if has_rune("B") { //Airspeed increased.
	air_max_speed = 6;
	leave_ground_max = 7;
	max_jump_hsp = 8;
}

if has_rune("D") { //Tap FSPECIAL startup decreased.
	set_window_value(AT_FTHROW, 2, AG_WINDOW_LENGTH, 4);
	set_window_value(AT_FTHROW, 2, AG_WINDOW_SFX_FRAME, 2);
}

if has_rune("E") { //Pit gains 3 additional jumps.
	max_djumps = 6;
}

if has_rune("F") { //USPECIAL travels further
	set_window_value(AT_USPECIAL, 2, AG_WINDOW_VSPEED, -18);
}

if has_rune("H") { //Held FSPECIAL projectiles cause flinch.
	set_hitbox_value(AT_FSPECIAL, 1, HG_FORCE_FLINCH, 1);
	set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_KNOCKBACK, 1);
	set_hitbox_value(AT_FSPECIAL, 1, HG_HITSTUN_MULTIPLIER, 1);
}

if has_rune("M") { //Startup and endlag for all aerials decreased.
	set_window_value(AT_NAIR, 1, AG_WINDOW_LENGTH, 2);
	set_window_value(AT_NAIR, 1, AG_WINDOW_SFX_FRAME, 1);
	set_window_value(AT_NAIR, 4, AG_WINDOW_LENGTH, 4);
	set_window_value(AT_FAIR, 1, AG_WINDOW_LENGTH, 4);
	set_window_value(AT_FAIR, 1, AG_WINDOW_SFX_FRAME, 2);
	set_window_value(AT_FAIR, 4, AG_WINDOW_LENGTH, 5);
	set_window_value(AT_DAIR, 1, AG_WINDOW_LENGTH, 5);
	set_window_value(AT_DAIR, 1, AG_WINDOW_SFX_FRAME, 2);
	set_window_value(AT_DAIR, 3, AG_WINDOW_LENGTH, 6);
	set_window_value(AT_BAIR, 1, AG_WINDOW_LENGTH, 4);
	set_window_value(AT_BAIR, 1, AG_WINDOW_SFX_FRAME, 2);
	set_window_value(AT_BAIR, 3, AG_WINDOW_LENGTH, 5);
	set_window_value(AT_UAIR, 1, AG_WINDOW_LENGTH, 5);
	set_window_value(AT_UAIR, 1, AG_WINDOW_SFX_FRAME, 3);
	set_window_value(AT_UAIR, 4, AG_WINDOW_LENGTH, 6);
}

if has_rune("N") { //FSTRONG has super armour and can be used in the air.
	set_attack_value(AT_FSTRONG, AG_CATEGORY, 2);
	set_attack_value(AT_FSTRONG, AG_OFF_LEDGE, 1);
	set_attack_value(AT_FSTRONG, AG_USES_CUSTOM_GRAVITY, 1);
	set_window_value(AT_FSTRONG, 1, AG_WINDOW_VSPEED, 0);
	set_window_value(AT_FSTRONG, 1, AG_WINDOW_VSPEED_TYPE, 2);
	set_window_value(AT_FSTRONG, 5, AG_WINDOW_CUSTOM_GRAVITY, 0.5);
}


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