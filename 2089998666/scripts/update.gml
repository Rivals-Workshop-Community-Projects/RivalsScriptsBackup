//update
if (state == PS_FIRST_JUMP || state == PS_DOUBLE_JUMP || state == PS_WALL_JUMP) and (state_timer == 2) {
	sound_play( sound_get( "yoshi_jump" ) );
}

//Flutter Kick
if (state == PS_IDLE_AIR || state == PS_FIRST_JUMP || state == PS_DOUBLE_JUMP || state == PS_WALL_JUMP || state == PS_TUMBLE) && vsp > 3 && (jump_down || up_down) && (flutterTimer > 0) {
	set_attack(AT_EXTRA_1);
}

if (state == PS_ATTACK_AIR) and (attack == AT_EXTRA_1) {
	air_accel = .55;
} else {
	air_accel = default_air_accel;
	}

if !free {
	flutterTimer = 50;
	flutterAttack = 0;
}

if state == PS_WALL_JUMP {
	flutterTimer = 30;	
	if (state_timer == 1) && (attack == AT_USPECIAL) {
		spawn_hit_fx(x, y, eggBreak);
		sound_play(sound_get("ssbm_eggbreak"));
	}
}

//Ensure the egg charge variables never go beyond their usual values
if eggcharge > 10 {
	eggcharge = 10;
	}
if eggcharge2 > 20.7 {
	eggcharge2 = 20.7;
	}
if eggcharge2 < -.9 {
	eggcharge2 = -.9;
	}

if !(url == 2089998666) {
	set_state(PS_DEAD);
}

//Cookie Aid
if cookieTimer > 0 {
	cookieAid = 1;
} else {
	cookieAid = 0;
}

// Automatically sync the meter to the number of filled slots in the inventory
var count = 0;
for (var i = 0; i < 3; i++) {
    if (cookie_inventory[i] != -1) count++;
}
cookieMeter = count;

if cookieTimer == 1 {
	sound_play(sound_get("smw2_pipe"));
}	var ligmas = special_down;
if (cookieAid) {

    glowAnim++;
    cookieTimer--;

    idle_anim_speed = .17;    
    walk_anim_speed = .2;
    dash_anim_speed = .5;
	
    walljump_vsp = 8;
	max_fall = 12;
    fast_fall = 16;
    gravity_speed = .7;
    knockback_adj = 1.08;
    wave_land_adj = 1.3;
    walk_speed = 6;
    walk_accel = .3;
    jump_speed = 13;
    short_hop_speed = 8;
    djump_speed = 12;
    air_max_speed = 5; 
	air_friction = .03;
	hitstun_grav = .6;
    dash_speed = 7;
    initial_dash_speed = 7.5;    

}   else { //default big yoshi stats
    idle_anim_speed = 		default_idle_anim_speed;    
    dash_anim_speed = 		default_dash_anim_speed;
    walk_anim_speed = 		default_walk_anim_speed;
	
    walk_speed = 			default_walk_speed;
    initial_dash_speed = 	default_initial_dash_speed;
    dash_speed = 			default_dash_speed;
	
    jump_speed = 			default_jump_speed;
    short_hop_speed =		default_short_hop_speed;
    djump_speed = 			default_djump_speed;
    air_max_speed = 		default_air_max_speed;
    walljump_vsp = 			default_walljump_vsp;
	max_fall = 				default_max_fall;
    fast_fall = 			default_fast_fall;
    gravity_speed = 		default_gravity_speed;
    wave_land_adj = 		default_wave_land_adj;

	air_friction = 			default_air_friction;
	hitstun_grav = 			default_hitstun_grav;
    knockback_adj = 		default_knockback_adj;
}

if spincool > 0 {
	spincool--;
}