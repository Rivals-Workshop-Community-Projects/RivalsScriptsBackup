if !free || state == PS_WALL_JUMP || state_cat == SC_HITSTUN{
	has_daired = false;
}



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

//double jump decay
djump_speed = djump_speeds[djumps];

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





/*
if glide_cooldown {
	move_cooldown[AT_FSPECIAL] = max(move_cooldown[AT_FSPECIAL], 2)
	if !free or state == PS_WALL_JUMP {
		glide_cooldown = 0;
	}
}

