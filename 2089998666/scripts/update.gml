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
	air_accel = .3;
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
	}	else {
	cookieAid = 0;
	}

if cookieTimer == 1 {
	sound_play(sound_get("smw2_pipe"));
}	var ligmas = special_down;
if (cookieAid) {

    glowAnim++;
    cookieTimer--;
    
    //these stats won't be changed by the rune
    idle_anim_speed = .17;    
    walk_anim_speed = .2;
    dash_anim_speed = .5;
    walljump_vsp = 8;
    fast_fall = 13;
    gravity_speed = .55;
    knockback_adj = 1.08;
    wave_land_adj = 1.3;
    walk_speed = 6;
    walk_accel = .3;
    jump_speed = 12;
    short_hop_speed = 6.5;
    djump_speed = 9;
    air_max_speed = 5; 
	air_friction = .03;
	hitstun_grav = .47;
    
    if (has_rune("M")) { //SL iroh stats
        dash_speed = 8;
        initial_dash_speed = 9;
        air_accel = .6;    
    } else { //default cookie buff stats
        dash_speed = 7;
        initial_dash_speed = 7.5;
        air_accel = .4;    
    }

}
    else { //these stats won't be changed
    idle_anim_speed = .12;    
    dash_anim_speed = .4;
    walk_anim_speed = .14;
    
    
    if (has_rune("M")) { //trummel stats
        walk_accel = 1;
        jump_speed = 11.5;
        short_hop_speed = 7;
        djump_speed = 8;
        air_max_speed = 7; 
        walljump_vsp = 11;
        fast_fall = 15; 
        gravity_speed = .5;
        knockback_adj = 1.2;
        wave_land_adj = 1.35;    
        walk_speed = 4.5;
        initial_dash_speed = 7.5;
        dash_speed = 7;
    } else { //default big yoshi stats
        walk_accel = 0.25;
        jump_speed = 12;
        short_hop_speed = 7.5;
        djump_speed = 10.5;
        air_max_speed = 4;
        walljump_vsp = 8;
        fast_fall = 16;
        gravity_speed = .6;
        knockback_adj = .9;
        wave_land_adj = 1.2;
        walk_speed = 3;
        initial_dash_speed = 6.75;
        dash_speed = 6.25;
		air_friction = .05;
		hitstun_grav = .52;
    }
}

if spincool > 0 {
	spincool--;
}

if (move_cooldown[AT_DSPECIAL] == 1) {
	sound_play(sound_get("smw2_message_block"));
	spawn_hit_fx(x+30*spr_dir, y-60, cookieRestore);
}

if (has_rune("H")){

set_window_value(AT_FSTRONG, 3, AG_WINDOW_HSPEED, 10);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_HSPEED_TYPE, 1);

}

if (has_rune("E")){

set_hitbox_value(AT_FSPECIAL, 1, HG_ANGLE_FLIPPER, 8);
set_hitbox_value(AT_FSPECIAL, 1, HG_ANGLE_FLIPPER, 8);

}

if (has_rune("I")){
    
set_hitbox_value(AT_NSPECIAL, 1, HG_WIDTH, 104);
set_hitbox_value(AT_NSPECIAL, 1, HG_HEIGHT, 30);    
set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_X, 180);


set_hitbox_value(AT_NSPECIAL, 2, HG_WIDTH, 200);
set_hitbox_value(AT_NSPECIAL, 2, HG_HEIGHT, 30);
set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_X, 180);

    
}

if (has_rune("J")){
	set_window_value(AT_DSPECIAL, 1, AG_WINDOW_LENGTH, 1);
	
	set_window_value(AT_DSPECIAL, 2, AG_WINDOW_LENGTH, 1);
	
	set_window_value(AT_DSPECIAL, 3, AG_WINDOW_LENGTH, 1);
	
	set_window_value(AT_DSPECIAL, 4, AG_WINDOW_LENGTH, 1);
	
	set_window_value(AT_DSPECIAL, 5, AG_WINDOW_LENGTH, 1);
}




if (has_rune("K")){

set_hitbox_value(AT_BAIR, 1, HG_KNOCKBACK_SCALING, 1.5);
set_hitbox_value(AT_BAIR, 2, HG_KNOCKBACK_SCALING, 1.5);

set_hitbox_value(AT_DAIR, 1, HG_KNOCKBACK_SCALING, 1.5);
set_hitbox_value(AT_DAIR, 2, HG_KNOCKBACK_SCALING, 1.5);
set_hitbox_value(AT_DAIR, 3, HG_KNOCKBACK_SCALING, 1.5);
set_hitbox_value(AT_DAIR, 4, HG_KNOCKBACK_SCALING, 1.5);

set_hitbox_value(AT_FAIR, 1, HG_KNOCKBACK_SCALING, 1.5);
set_hitbox_value(AT_FAIR, 2, HG_KNOCKBACK_SCALING, 1.5);

set_hitbox_value(AT_UAIR, 1, HG_KNOCKBACK_SCALING, 1.5);
}

if (has_rune("D")){
	
set_window_value(AT_USPECIAL, 1, AG_WINDOW_LENGTH, 3);
	
set_window_value(AT_USPECIAL, 3, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_VSPEED, -25);
}

if (has_rune("N")){

set_window_value(AT_JAB, 4, AG_WINDOW_LENGTH, 60);

set_hitbox_value(AT_JAB, 2, HG_ANGLE, 90);
set_hitbox_value(AT_JAB, 2, HG_BASE_KNOCKBACK, 999);
set_hitbox_value(AT_JAB, 2, HG_KNOCKBACK_SCALING, 1);
set_hitbox_value(AT_JAB, 2, HG_LIFETIME, 30);
set_hitbox_value(AT_JAB, 2, HG_BASE_HITPAUSE, 999);
set_hitbox_value(AT_JAB, 2, HG_VISUAL_EFFECT, 143);
}

if(variable_instance_exists(id,"diag"))
{
//Change their name whenever
    diag_name = "Big Yoshi"
//  ADDING REGULAR DIALOGUE

    //Diagchoice is variable that keeps default interactions in array! Feel free to put as much as you would want!
    diagchoice = [
    "(snore)",
    "(...Yoshi.)",
    "big yoshi"]
}
