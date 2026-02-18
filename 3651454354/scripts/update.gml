if (attack = AT_UTILT && window = 2 or attack = AT_UTILT && window = 3 ) or (attack = AT_USPECIAL && window = 2){
    draw_indicator = false
} else{
    draw_indicator = true
}

with hit_fx_obj{
  if hit_fx == other.knifedissapear{
        depth = other.depth+1;
    	}else{
    	depth = other.depth-1;
    	}
}
if (state = PS_CROUCH or state = PS_FIRST_JUMP or state = PS_PARRY or state = PS_ROLL_BACKWARD or state = PS_ROLL_FORWARD) && state_timer = 1 && get_player_damage(player) < 90 {
    spawn_hit_fx( x, y, knifedissapear );
}

if (attack = AT_DSTRONG or attack = AT_USTRONG or attack = AT_UTILT or attack = AT_NSPECIAL or attack = AT_FSPECIAL or attack = AT_USPECIAL) && window_timer = 1 && window = 1 && get_player_damage(player) < 90 && !hitpause && free = 0{
    spawn_hit_fx( x, y, knifedissapear );
}


if visible = true && grabbed_invisible = false && !hitpause{
if spr_dir = 1{
if get_player_damage(player) > 80 && timer == 4{
    spawn_hit_fx( x - 40 + random_func(2, 75, 1) , y + 15 - random_func(1, 45, 1), chaos_afterimage );
}
if get_player_damage(player) > 90 && timer == 9{
        spawn_hit_fx( x - 40 + random_func(2, 75, 1) , y + 15 - random_func(1, 45, 1), chaos_afterimage );
}
if get_player_damage(player) > 120 && timer == (14 or timer = 19){
        spawn_hit_fx( x - 40 + random_func(2, 75, 1) , y + 15 - random_func(1, 45, 1), chaos_afterimage );
}
if get_player_damage(player) > 160 && timer == (24 or timer = 29){
        spawn_hit_fx( x - 40 + random_func(2, 75, 1) , y + 15 - random_func(1, 45, 1), chaos_afterimage );
}
}
if spr_dir = -1{
if get_player_damage(player) > 70 && timer == 4{
    spawn_hit_fx( x + 40 - random_func(2, 75, 1) , y - 15 + random_func(1, 45, 1), chaos_afterimage );
}
if get_player_damage(player) > 90 && timer == 9{
        spawn_hit_fx( x + 40  - random_func(2, 75, 1) , y - 15 + random_func(1, 45, 1), chaos_afterimage );
}
if get_player_damage(player) > 120 && (timer == 14 or timer = 19){
        spawn_hit_fx( x + 40  - random_func(2, 75, 1) , y - 15 + random_func(1, 45, 1), chaos_afterimage );
}
if get_player_damage(player) > 160 && (timer == 24 or timer == 29){
        spawn_hit_fx( x + 40  - random_func(2, 75, 1) , y - 15 + random_func(1, 45, 1), chaos_afterimage );
}
}
}

if !hitpause{
timer += 0.5
}
if timer >= 30{
    timer = 1
}
if !hitpause{
pirouette_timer += 1
}
if pirouette_timer >= 45{
    pirouette_timer = 1
}
if get_player_damage(player) < 70{
idle_anim_speed = .11;
}else if get_player_damage(player) >= 70{
idle_anim_speed = .13;
}else if get_player_damage(player) > 90{
idle_anim_speed = .15;
}else if get_player_damage(player) > 120{
idle_anim_speed = .17;
}else if get_player_damage(player) > 160{
idle_anim_speed = .20;
}

//if final_chaos_max > 299 && final_chaos_max < 350{
//idle_anim_speed = .11;
//dash_speed = 7.2;
//dash_turn_time = 7;
//max_djumps = 2;
//air_max_speed 
; 
//set_window_value(AT_NAIR, 1, AG_WINDOW_LENGTH, 3);
//set_window_value(AT_NAIR, 3, AG_WINDOW_LENGTH, 5);
//set_window_value(AT_FAIR, 1, AG_WINDOW_LENGTH, 4);
//set_window_value(AT_FAIR, 3, AG_WINDOW_LENGTH, 7);
//}else if final_chaos_max <= 350 && final_chaos_max >= 300{
//idle_anim_speed = .12;
//dash_speed = 7.5;
//dash_turn_time = 6;
//jump_start_time = 4;
//max_djumps = 2;
//air_max_speed = 6; 
//set_window_value(AT_NAIR, 1, AG_WINDOW_LENGTH, 3);
//set_window_value(AT_NAIR, 3, AG_WINDOW_LENGTH, 5);
//set_window_value(AT_FAIR, 1, AG_WINDOW_LENGTH, 4);
//set_window_value(AT_FAIR, 3, AG_WINDOW_LENGTH, 7);
//}else if final_chaos_max <= 400 && final_chaos_max >= 300{

//if final_chaos_timer > 0{
//    chaos = 0
//}


//if taunt_pressed && special_pressed && chaos >= 300{
//    move_cooldown[AT_NSPECIAL] = 15
//    move_cooldown[AT_DSPECIAL] = 15
//    move_cooldown[AT_USPECIAL] = 15
//    move_cooldown[AT_FSPECIAL] = 15
//    move_cooldown[AT_TAUNT] = 15
//    window_timer = 99
//    state = PS_IDLE
//    final_chaos_timer = chaos
//    final_chaos_max = chaos
//   chaos = 0
//}

//if final_chaos_timer < 1{
//    final_chaos_max = 0
//}


//if final_chaos_timer > 0{
//    if timer <= 14{
//       if !hitpause{
//    final_chaos_timer -= 1
//        }
//    }
//}


//with(oPlayer){
//if(self != other){
//    if marked_timer > 0{
//marked_timer -= 1
//}
//else{
//marked_timer = 0
//heartmarked = 0
//clovermarked = 0
//spademarked = 0
//diamondmarked = 0
//other_player.marked_player = 0
//}
//   }
//}
if not (attack = AT_BAIR && window = 2){
    if baircooldown > 0{
baircooldown -= 1
    }
}



if state = PS_AIR_DODGE && (state_timer = 1 or state_timer = 5 or state_timer = 10){
    spawn_hit_fx( x, y + 15 - random_func(1, 45, 1), chaos_afterimage );
}

if state = PS_WAVELAND && state_timer = 1{
    spawn_hit_fx( x, y + 15 - random_func(1, 45, 1), chaos_afterimage );
}
if !hitpause && pirouette_timer = 5 && not( attack = AT_DSPECIAL && (state = PS_ATTACK_GROUND or state = PS_ATTACK_AIR)){
    if pirouette_selected <= 11{
pirouette_selected += 1
}else{
pirouette_selected = 1
}
}

if effect_timer > 0{
    move_cooldown[AT_DSPECIAL] = 50
    effect_timer -= 1
}else{
    active_effect = 0
}

if active_effect = 2{
    air_max_speed = 6.7;
    air_accel = .4;
    initial_dash_time = 6;
    initial_dash_speed = 6;
    dash_speed = 7.2;
    dash_turn_time = 3;
    walk_speed = 5.5;
    walk_accel = 2;
    walk_turn_time = 1;
    wave_land_time = 5;
    wave_land_adj = 1.5; 
    wave_friction = .01; 
}
if active_effect = 3{
    knockback_adj = 1.16
}
if active_effect = 4{
	jump_speed = 9.4;
    max_djumps = 2;
    djump_speed = 8.1;
}

if active_effect = 5{
    jump_speed = 8;
    short_hop_speed = 4.2;
    djump_speed = 7.3;
}

if active_effect = 6{
    damage_scaling = 1.2
}
if active_effect = 7{
    set_hitbox_value(AT_NSPECIAL, 1, HG_HITSTUN_MULTIPLIER, 1.2);
    set_hitbox_value(AT_BAIR, 1, HG_HITSTUN_MULTIPLIER, 1.1);
    set_hitbox_value(AT_BAIR, 2, HG_HITSTUN_MULTIPLIER, 1.15);
    set_hitbox_value(AT_BAIR, 3, HG_HITSTUN_MULTIPLIER, 1.15);
    set_hitbox_value(AT_USPECIAL, 1, HG_HITSTUN_MULTIPLIER, 1.3);
}
if active_effect = 9{
	set_window_value(AT_FAIR, 1, AG_WINDOW_LENGTH, 6);
	set_window_value(AT_FAIR, 3, AG_WINDOW_LENGTH, 9);
	set_window_value(AT_DAIR, 1, AG_WINDOW_LENGTH, 10);
	set_window_value(AT_DAIR, 4, AG_WINDOW_LENGTH, 7);
	set_window_value(AT_FAIR, 1, AG_WINDOW_SFX_FRAME, 5);
	set_window_value(AT_UAIR, 1, AG_WINDOW_LENGTH, 3);
	set_window_value(AT_UAIR, 3, AG_WINDOW_LENGTH, 8);
	set_window_value(AT_NAIR, 1, AG_WINDOW_LENGTH, 6);
	set_window_value(AT_NAIR, 4, AG_WINDOW_LENGTH, 7);
	set_attack_value(AT_NAIR, AG_LANDING_LAG, 5);
	set_attack_value(AT_UAIR, AG_LANDING_LAG, 9);
	set_window_value(AT_JAB, 1, AG_WINDOW_LENGTH, 4);
	set_window_value(AT_BAIR, 1, AG_WINDOW_LENGTH, 9);
	set_window_value(AT_UTILT, 3, AG_WINDOW_LENGTH, 7);
	set_window_value(AT_UTILT, 3, AG_WINDOW_HAS_WHIFFLAG, 4);
	set_window_value(AT_UTILT, 1, AG_WINDOW_LENGTH, 4);
	set_window_value(AT_DTILT, 2, AG_WINDOW_LENGTH, 11);
	set_window_value(AT_FTILT, 1, AG_WINDOW_LENGTH, 7);
	set_window_value(AT_FTILT, 3, AG_WINDOW_HAS_WHIFFLAG, 7);
	set_window_value(AT_FTILT, 3, AG_WINDOW_LENGTH, 5);
	set_window_value(AT_DATTACK, 1, AG_WINDOW_LENGTH, 10);
	
}
if active_effect = 10{
    initial_dash_time = 11;
    initial_dash_speed = 4;
    dash_speed = 3.6;
    dash_turn_time = 12;
    walk_speed = 2.1;
    walk_accel = 0.3;
    walk_turn_time = 8;
    wave_land_time = 8;
    wave_land_adj = 1.02; 
    wave_friction = .3; 
}
	if active_effect = 11{
    jump_speed = 10.7;
    short_hop_speed = 6.8;
    djump_speed = 10.2;
}
if active_effect = 0{
walk_speed = 4;
walk_accel = 0.5;
walk_turn_time = 6;
initial_dash_time = 9;
initial_dash_speed = 6.5;
dash_speed = 6.1;
dash_turn_time = 12;
dash_turn_accel = 1.5;
dash_stop_time = 4;
dash_stop_percent = .35; 
ground_friction = .5;
moonwalk_accel = 1.5;

jump_start_time = 5;
jump_speed = 9.5;
short_hop_speed = 5.5;
djump_speed = 9;
leave_ground_max = 7; 
max_jump_hsp = 7;
air_max_speed = 5.5; 
jump_change = 3; 
air_accel = .43;
prat_fall_accel = .85;
air_friction = .02;
max_djumps = 1;
jump_time = 32;
double_jump_time= 20;
walljump_hsp = 6;
walljump_vsp = 9.5;
walljump_time = 8;
max_fall = 10; 
fast_fall = 11;
gravity_speed = .35;
hitstun_grav = .5;
knockback_adj = 1.1; 
land_time = 4; 
prat_land_time = 3;
wave_land_time = 8;
wave_land_adj = 1.05; 
wave_friction = .05; 
set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_KNOCKBACK, 6.5);
set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_NSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_NSPECIAL, 1, HG_VISUAL_EFFECT, 0);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITSTUN_MULTIPLIER, 1.05);
set_hitbox_value(AT_BAIR, 1, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_USPECIAL, 1, HG_HITSTUN_MULTIPLIER, 1);
set_window_value(AT_FAIR, 3, AG_WINDOW_LENGTH, 11);
set_window_value(AT_FAIR, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_DAIR, 1, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DAIR, 4, AG_WINDOW_LENGTH, 8);
set_window_value(AT_FAIR, 1, AG_WINDOW_SFX_FRAME, 7);
set_window_value(AT_UAIR, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_UAIR, 3, AG_WINDOW_LENGTH, 10);
set_window_value(AT_NAIR, 1, AG_WINDOW_LENGTH, 7);
set_window_value(AT_NAIR, 4, AG_WINDOW_LENGTH, 12);
set_attack_value(AT_NAIR, AG_LANDING_LAG, 8);
set_attack_value(AT_UAIR, AG_LANDING_LAG, 11);
set_window_value(AT_JAB, 1, AG_WINDOW_LENGTH, 6);
set_hitbox_value(AT_USPECIAL, 1, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(AT_USPECIAL, 1, HG_BASE_KNOCKBACK, 6.8);
set_hitbox_value(AT_USPECIAL, 7, HG_DAMAGE, 4);
set_hitbox_value(AT_USPECIAL, 7, HG_DAMAGE, 7);
set_hitbox_value(AT_DTILT, 1, HG_DAMAGE, 4);
set_hitbox_value(AT_DTILT, 1, HG_KNOCKBACK_SCALING, .2);;
set_hitbox_value(AT_DTILT, 1, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_DTILT, 1, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_DTILT, 1, HG_HITPAUSE_SCALING, .15);
set_window_value(AT_BAIR, 1, AG_WINDOW_LENGTH, 12);
set_window_value(AT_UTILT, 3, AG_WINDOW_LENGTH, 10);
set_window_value(AT_UTILT, 3, AG_WINDOW_HAS_WHIFFLAG, 8);
set_window_value(AT_UTILT, 1, AG_WINDOW_LENGTH, 5);
set_window_value(AT_DTILT, 2, AG_WINDOW_LENGTH, 13);
set_window_value(AT_FTILT, 1, AG_WINDOW_LENGTH, 9);
set_window_value(AT_FTILT, 3, AG_WINDOW_HAS_WHIFFLAG, 9);
set_window_value(AT_FTILT, 3, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DATTACK, 1, AG_WINDOW_LENGTH, 12);
}
if free = 0{
		set_hitbox_value(AT_NSPECIAL, 1, HG_DAMAGE, 5);
	}else{
		set_hitbox_value(AT_NSPECIAL, 1, HG_DAMAGE, 4);
	}
roulette_rot += 1
roulette_rot += 1

old_y = y
y = -10000
nearest_player = instance_nearest(x, old_y, oPlayer)
y = old_y


if fspecial_used = 1{
    move_cooldown[AT_FSPECIAL] = 8
}
if free = 0 && fspecial_used = 1{
    fspecial_used = 0
}

if attack = AT_TAUNT_2 && (state = PS_ATTACK_GROUND or state = PS_ATTACK_AIR){
	char_height = 70;
}else{
	char_height = 46;
}

if not (state = PS_ATTACK_AIR or state = PS_ATTACK_GROUND){
	sound_stop(sound_get("snd_dtaunt"))
}

if taunt_down && attack == AT_TAUNT_2 && window_timer >= 3{
	window_timer = 3
}

if down_down && taunt_pressed && free = 0 && (state_cat = SC_GROUND_NEUTRAL or attack = AT_TAUNT){
	move_cooldown[AT_TAUNT] = 3
	char_height = 70;
 	sound_stop(sound_get("snd_dtaunt"))
	sound_play(sound_get("snd_dtaunt"))
 	set_attack(AT_TAUNT_2)
 }
 
 
 if state = PS_WALL_JUMP{
 	fspecial_used = 0
 }
if customuihide > 0{
	customuihide -= 1
}
if get_player_color(player) == 20{
    set_victory_theme(sound_get("victorysecret"));
}else{
    set_victory_theme(sound_get("victory"));
}
if uair_landing_hitbox = 1 && attack = AT_UAIR && state = PS_LANDING_LAG{
	create_hitbox(AT_UAIR, 7, x, y)
}
if uair_landing_hitbox >= 0{
uair_landing_hitbox -= 1
}

if attack = AT_FSTRONG && window = 3 && window_timer = 1{
	hsp += 3 *spr_dir
}

if attack = AT_FSTRONG && window = 2 && window_timer = 3{
	hsp += 1 *spr_dir
}

if attack = AT_FSPECIAL{
	if window = 2{
	if attack_pressed{
		if left_down{
			if spr_dir = -1{
				set_attack(AT_FAIR)
			}else{
				set_attack(AT_BAIR)
			}
		}else if right_down{
			if spr_dir = -1{
				set_attack(AT_BAIR)
			}else{
				set_attack(AT_FAIR)
			}
		}else if down_down{
			set_attack(AT_DAIR)
		}else if up_down{
			set_attack(AT_UAIR)
		}else{
			set_attack(AT_NAIR)
		}
		hsp = hsp/1.3
		window = 1
		vsp = 0
		window_timer = 1
		pratfall_queued = 1
		destroy_hitboxes();
		hurtboxID.image_index = attack.hurtboxID
		}
	}
}

if state = PS_IDLE_AIR && pratfall_queued = 1{
	state = PS_PRATFALL
	pratfall_queued = 0
}
	
if state_cat = SC_GROUND_NEUTRAL{
	pratfall_queued = 0
}
if state = PS_SPAWN{
	if taunt_pressed{
		fspecial_vc = 1
	}
	if state_timer = 1{
		create_hitbox(AT_NSPECIAL_2, 1, x, y-500)
	}
}