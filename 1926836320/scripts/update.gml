statboost_time -= statboost_time > 0;

if !free && (attack != AT_FSPECIAL or (state != PS_ATTACK_GROUND && state != PS_ATTACK_AIR)) glide_used = 0;


if state == PS_FIRST_JUMP && vsp <= 0 && did_crouchjump {
	air_accel = crouch_jump_accel;
	if state_timer == 1 sound_play(crouch_jump_sound)
} else {did_crouchjump = 0; air_accel = stand_jump_accel;}

if state == PS_JUMPSQUAT { if prev_state == PS_CROUCH {
jump_speed = crouch_jump_speed;
max_jump_hsp = crouch_jump_hsp;
did_crouchjump = 1;
} else {
jump_speed = stand_jump_speed;
max_jump_hsp = stand_jump_hsp;
}
}


if nspecial_active {
	nspecial_image = max(nspecial_image+nspecial_anim_speed, 0)
	
		if !instance_exists(nspecial_current) {nspecial_active = 0;}
} else {
	if nspecial_image >= 0 {
		var hfx = hit_fx_create(sprite_get("ancientpower_pop"), 5/nspecial_anim_speed);
		var newfx;
		if instance_exists(nspecial_current) with (nspecial_current) {
				newfx = spawn_hit_fx(x, y, hfx);
				newfx.depth = depth+1;

		}
		
		nspecial_image = -1;
	}
}



if dspecial_drainrate > 0 with (oPlayer) {
	
	//if id == other.id continue;
	if state == PS_DEAD or state == PS_RESPAWN archen_dspecial_damage = 0;
	if archen_dspecial_damage > 0 {
		if archen_dspecial_cooldown <= 0 {
			if ceil(archen_dspecial_damage - other.dspecial_drainrate) != ceil(archen_dspecial_damage) {
				take_damage(player, other.player, -1)

			}
			archen_dspecial_damage -= other.dspecial_drainrate;
		} else {
			archen_dspecial_cooldown--;
		}
	}
}



if icon_shake > 0 icon_shake--;

var counted_damage = array_create(4, 0); //Keeps track of which players' damage have been added already
counted_damage[player-1] = -1;

var divvy = 0; //How much to divide it by. 
var dmg_calc = 0; //Total counted damage.

with (oPlayer) {
	if counted_damage[player-1] == 0 && get_player_team(player) != get_player_team(other.player) && !clone && state != PS_DEAD {
		counted_damage[player-1] = 1;
		dmg_calc += get_player_damage(player)
		divvy++;
	}
}

their_dmg = dmg_calc / max(divvy, 1)

our_dmg = get_player_damage(player);


var dmg_difference = our_dmg - their_dmg;

var current_range = power_range;
if power_state != POWER_STATE_OFF current_range = neutral_range;

power_within_range = abs(dmg_difference) >= current_range;




// Calculate the number of dots in the HUD bar
power_dots = floor(abs(dmg_difference) / (current_range / 6));
power_dot_type = dmg_difference > 0 ? POWER_STATE_DOWN : POWER_STATE_UP;

if (power_dots > 6) {
    power_dots = 6;
}

// Handle states
if (power_keep) {
    // If we're in a fixed power mode, check if we need to reset it
    var reset_state_up = (power_state == POWER_STATE_UP) && (our_dmg > their_dmg);
    var reset_state_down = (power_state == POWER_STATE_DOWN) && (our_dmg < their_dmg);

    if (power_dots == 0 || reset_state_up || reset_state_down) {
        power_state = POWER_STATE_OFF;
        power_keep = false;
    }

    return;
}

switch (power_state) {
    case 0:  // POWER_STATE_OFF
        if (power_within_range) {
            // If the difference between our damage is within the activation range
            if (our_dmg < their_dmg) {
                // If we're ahead, passive state goes to UP
                power_state = POWER_STATE_UP;
            } else {
                // Otherwise, passive state goes to DOWN
                power_state = POWER_STATE_DOWN;
            }
        }

        break;

    default:
		
        var keep_state_up = (power_state == POWER_STATE_UP) && (our_dmg < their_dmg);
        var keep_state_down = (power_state == POWER_STATE_DOWN) && (our_dmg > their_dmg);

        if (power_within_range && (keep_state_up || keep_state_down)) {
            power_keep = true;
        }

        break;
}



if power_state != old_power_state {
	icon_shake = 20;
	if power_state == POWER_STATE_UP {
		sound_play(sound_get("stat_up")); statboost_sprite = sprite_get("powerup");}
	if power_state == POWER_STATE_DOWN {
		sound_play(sound_get("stat_down")); statboost_sprite = sprite_get("powerdown");}
			if power_state == POWER_STATE_OFF {
		sound_play(sound_get("stat_neutral")); statboost_sprite = sprite_get("powerneutral");}
		
	statboost_time = statboost_maxtime;
}
old_power_state = power_state;




/*
if glide_cooldown {
	move_cooldown[AT_FSPECIAL] = max(move_cooldown[AT_FSPECIAL], 2)
	if !free or state == PS_WALL_JUMP {
		glide_cooldown = 0;
	}
}

