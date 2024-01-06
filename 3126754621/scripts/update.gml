//update

timer++;
fuse_item_timer++

window_length = get_window_value(attack, window, AG_WINDOW_LENGTH) * (get_window_value(attack, window, AG_WINDOW_HAS_WHIFFLAG) ? 1.5 : 1);
state_attacking = (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND)

//check practice mode
if (get_training_cpu_action() != CPU_FIGHT && object_index != oTestPlayer) {
	practice_mode = true;
}

num_wings = 0
with obj_article_platform if player_id == other.id {
    other.num_wings++
}


for (var i = 0; i < array_length(dspec_holograms); i++) {
    var hologram = dspec_holograms[i]
    hologram[2]--
    if i == 0 && hologram[2] <= 0 {
        dspec_holograms = array_slice(dspec_holograms, 1, array_length(dspec_holograms)-1)
    }
}


if shieldsurf_sfx_playing && !(state_attacking && attack == AT_FSPECIAL && !free) {
	sound_stop(sound_get("shield_surf"))
	shieldsurf_sfx_playing = false
}

if !(state_attacking && attack == AT_USTRONG) {
	ascend_plat = undefined
}

if state == PS_LANDING_LAG && attack == AT_DAIR {
	sound_stop(sound_get("bow_draw"))
}

with oPlayer if (state == PS_HITSTUN || state == PS_HITSTUN_LAND) && last_player == other.player && last_attack == AT_FTILT && last_hbox_num == 1 {
	x = lerp(x, other.x + 50*other.spr_dir, 0.3)
	y = lerp(y, other.y, 0.3)
}

if !free grounded_timer++
else grounded_timer = 0

if /*state == PS_WALL_JUMP ||*/ state == PS_HITSTUN || (!free && wing_check(x, y) == noone && grounded_timer == 1) {
	uspec_touch_ground = true
}

if fuse_item_timer == 1 {
	fuse_update_windows(AT_FSTRONG, [1,3,4,5], 3, fuse_item_trident)
	fuse_update_windows(AT_BAIR, [1,3,4,5], 2, fuse_item_trident)
	
	fuse_update_windows(AT_FAIR, [1,4,7,8], 2, fuse_item_trident)
	fuse_update_windows(AT_FAIR, [2,5,2,2], 2, fuse_item_trident)
	fuse_update_windows(AT_FAIR, [3,6,3,3], 2, fuse_item_trident)
	
	fuse_update_windows(AT_UTILT, [1,5,1,1], 2, fuse_item_trident)
	fuse_update_windows(AT_UTILT, [2,6,2,2], 2, fuse_item_trident)
	fuse_update_windows(AT_UTILT, [3,7,3,3], 2, fuse_item_trident)
	fuse_update_windows(AT_UTILT, [4,8,9,10], 2, fuse_item_trident)
	
	fuse_update_windows(AT_FTILT, [2,3,4,5], 5, fuse_item_shield)
	fuse_update_windows(AT_FSPECIAL, [1,2,3,4], 2, fuse_item_shield)
	fuse_update_windows(AT_NAIR, [1,3,5,7], 2, fuse_item_shield)
	fuse_update_windows(AT_NAIR, [2,4,6,8], 3, fuse_item_shield)
}

//animation queue variables to only change sprite if not hitpause
if !hitpause || hitpause {
	fuse_item_shield_queue = fuse_item_shield
	fuse_item_trident_queue = fuse_item_trident
}

if (state == PS_PARRY) {
    if (state_timer == 1) {
        parrySoundVar = false;
    } else if (state_timer == 2) {
        if (parrySoundVar == false) {
            sound_play(sound_get("nom"));
            parrySoundVar = true;
        }
    }
}

if !state_attacking {
    sound_stop(sound_get("excuse_me_start"));
    sound_stop(sound_get("excuse_me_end"));
}

if fuse_draw_alpha > 0 fuse_draw_alpha -= 0.2
if fuse_overlay_timer > 0 fuse_overlay_timer--
if ftilt_draw_vfx > 0 ftilt_draw_vfx--

//intro anim
var intro_time = get_gameplay_time();
if intro_time == 2 {
	sound_play(sound_get("plane_crash"))
}
if intro_time == 50 {
	sound_stop(sound_get("plane_crash"))
	sound_play(sound_get("explosion"))
	var fx = spawn_hit_fx(x, y - 20, vfx_stock_explosion_large)
		fx.depth = -10
}

//fuck ori bash
with oPlayer if "url" in self && url == CH_ORI {
    move_cooldown[AT_DSPECIAL] = 20;
}

/*
if !shield_down {
	with oPlayer if state == PS_RESPAWN {
		state_timer = 0
	}
}
*/
//set_view_position(room_width/2 - 400, 400)
#define wing_check(_x, _y)
var wingID = noone
with obj_article_platform if player_id == other.id {
    if position_meeting(_x + 8, _y, id) || position_meeting(_x - 8, _y, id) {
        wingID = id
    }
}
return wingID;

#define fuse_update_windows(atk, window_arr, high_val, index)
var high_index = -1
for (var i = 0; i < array_length(window_arr); i++) {
	var val = 17
	if window_arr[i] != high_index {
		if i == index {
			val = high_val
			high_index = window_arr[i]
		}
		set_hitbox_value(atk, window_arr[i], HG_WINDOW, val);
	}
}
return;