// MunoPhone Touch code - don't touch
// should be at TOP of file
/*
muno_event_type = 1;
user_event(14);
*/

if(state != PS_ATTACK_AIR and state != PS_ATTACK_GROUND){
	//if(attack != AT_USPECIAL){
		teleport_outline = false;
		init_shader();
	//}
}if(state == PS_ATTACK_AIR and state == PS_ATTACK_GROUND){
	if(attack != AT_USPECIAL){
		teleport_outline = false;
		init_shader();
	}
}

if(state == PS_WALK){
    hud_offset = 20;
    if (state_timer % 26 == 9) {
	sound_play(sound_get("kss_jump"), false, noone, 0.9, 1);	
    }
}
if(state == PS_PARRY){
    hud_offset = 30;
}

if (state == PS_DASH_START) {
    if (state_timer == 0) {
        sound_play(asset_get("sfx_bird_sidespecial_start"), false, noone, 0.5, 1);
        var dust = spawn_hit_fx( x, y - 20, dust_effect );
        dust.depth = 10;
    }
}

if(teleport_outline == true){
				outline_color = [ 0, 242, 255 ];
	        init_shader();
}if (get_player_color(player) != 26){
if(teleport_outline == false){
				outline_color = [ 0, 0, 0 ];
}
}if (get_player_color(player) = 26){
if(teleport_outline == false){
				outline_color = [108, 14, 255];
}
}

if(hatch_amount < 3000){
if(hsp > 2 || hsp < -2){
	hatch_amount += 1 + hatch_increase;
}
}

if(hatch_amount < 3000){
if(state == PS_DASH_TURN){
	hatch_amount += 1 + hatch_increase;
}
}

if(hatch_amount > 3000){
	hatch_amount = 3000;
}

if(charm_timer == 0){
	hatch_increase = 0;
	hatch_mult = 1;
}if(charm_timer > 0){
	hatch_increase = 1;
	hatch_mult = 2;
	charm_timer--;
}

if(hatch_amount == 3000){
	if(jingle_played = false){
		sound_play(sound_get("hatch_ready"));
		jingle_played = true;
	}
}if(hatch_amount < 3000){
	jingle_played = false;
}

if(attack == AT_TAUNT){
	if(window == 1 && window_timer = 1){
		snd_rng = random_func(0, 3, true);
		if (snd_rng == 0) {
            set_attack_value(AT_TAUNT, AG_SPRITE, sprite_get("taunt"));
    }		if (snd_rng == 1) {
            set_attack_value(AT_TAUNT, AG_SPRITE, sprite_get("taunt_noncopyright"));
    }	if (snd_rng == 2) {
            set_attack_value(AT_TAUNT, AG_SPRITE, sprite_get("taunt_based"));
    }
	}
}

if(!free || state == PS_WALL_JUMP || state_cat == SC_HITSTUN || state == PS_RESPAWN){
	move_cooldown[AT_FSPECIAL] = 0;
}

if (bbout_egg == true){
 	set_attack_value(AT_FSTRONG, AG_SPRITE, sprite_get("bbout_fstrong"));
} if (bbout_egg == false){
 	set_attack_value(AT_FSTRONG, AG_SPRITE, sprite_get("fstrong"));
}

if (eggdog_skin == true){
 	set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_SPRITE, sprite_get("eggdog_orb_proj"));
} if (eggdog_skin == false){
 	set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_SPRITE, sprite_get("orb_proj"));
}

//check practice mode
if (get_training_cpu_action() != CPU_FIGHT && object_index != oTestPlayer) {
    practice_mode = true;
}