//if (phone_cheats[cheat_funny_jump] == 1) {
//	jump_sound = sfx_alleyoop
//}
//else{
//	jump_sound = sfx_quotejump
//}

if(get_gameplay_time() <= 120){
	if(taunt_pressed && !bigiron){
		bigiron = true;
		sound_play(sfx_alleyoop);
	}
}

if ((state == PS_IDLE || state == PS_IDLE_AIR || state == PS_FIRST_JUMP || state == PS_DOUBLE_JUMP) && sword_one != noone) {
	if (abs(sword_one.x - x) < 25 && abs(sword_one.y - (y - 20)) < 35) {
		print("Here");
		sword_one.caught = true;
		state = PS_ATTACK_GROUND;
		attack = AT_NSPECIAL;
		window = 3;
		sound_play(sfx_weaponswitch);
		move_cooldown[AT_NSPECIAL] = 0
	}
}

// reset uair boost height to default
if (!free && uair_height != base_height) {
	uair_height = base_height;
	set_window_value(AT_UAIR, 2, AG_WINDOW_VSPEED, uair_height);
} 

// WARNING: HACKY
if (djump_speed != djump_base) {
	djump_speed = djump_base;
}

if (sword_two != noone) {
	if (sword_two_timer = 9) {
		sword_two_timer = 0;
	}
	else {
		if (get_gameplay_time() % 4 == 0){
			sword_two_timer += 1;
		}
		
	}
}

// Check if a player is respawned. Then remove the reference of The sword ghost thingy
with oPlayer
{
    if(player != other.player && state == PS_RESPAWN && state_timer == 1 && last_player == other.player && get_player_team(player) != get_player_team(other.player))
    {
        other.sword_two = noone;
    }
}

if (!free && move_cooldown[AT_FSPECIAL] > 0) {
	move_cooldown[AT_FSPECIAL] = 0;
}