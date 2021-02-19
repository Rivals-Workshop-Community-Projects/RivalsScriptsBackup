if intro && (state == PS_IDLE or state == PS_SPAWN) {
	sprite_index = sprite_get("intro");
	var plrnum = 8 + (player)
	image_index = (state_timer*introspeed)-plrnum;
	if floor(image_index) == 0 && ((state_timer-1)*introspeed)-plrnum < 0 {
		sound_play(asset_get("sfx_syl_dstrong"))
	}
	if floor(image_index) = 5 && floor(image_index) != floor(image_index-introspeed) {
		sound_play(asset_get("sfx_syl_nspecial_plantgrowth"))
	}
	if image_index >= image_number-1 {intro = 0;}
	image_index = max(image_index, 0) 

} else intro = 0;


if attack == AT_FSPECIAL_2 && (state == PS_ATTACK_GROUND or state == PS_ATTACK_AIR) && image_index == 1 {
	image_index = min(2, abs(hsp*0.2))
}

if attack == AT_FSPECIAL_2 && (state == PS_ATTACK_GROUND or state == PS_ATTACK_AIR) && hitpause {
	if hitstop < 3 image_index += 3
	else image_index += min((1-(hitstop/hitstop_full))*4, 2)
}
if attack == AT_FSPECIAL_2 && (state == PS_ATTACK_GROUND or state == PS_ATTACK_AIR) && window == 3 && window_timer == 0 {
	image_index = 3
}

if state == PS_CROUCH {
block_cur = state_timer
} else block_cur = 0;

if state != PS_HITSTUN_LAND blocked = 0;

if sprite_index == sprite_get("bighurt") {
	if hitpause sprite_index = sprite_get("hurt")
	image_index = (state_timer*hsp)*0.03
}

if blocked {
	sprite_index = sprite_get("hurt_block");
	image_index = min((state_timer-blockstun)/5, 2)
}


if state == PS_FIRST_JUMP or state == PS_IDLE_AIR {
	image_index = 1+state_timer/4
	if image_index >= image_number-3 or state == PS_IDLE_AIR {
		image_index = image_number-3 + ((state_timer/4) mod 3)
	}
}

if djumps >= 1 djump_sound = sound_get("mushjump2") else  djump_sound = sound_get("mushjump")

if state == PS_WALL_JUMP {

if state_timer == 0 {
sound_play(asset_get("sfx_waveland_syl"))}

if clinging {image_index = 0; clingtime = state_timer} else {
	if state_timer == clingtime+1 sound_play(sound_get("mushjump2"))

	image_index = ((state_timer-clingtime)/walljump_time)*image_number
}

}