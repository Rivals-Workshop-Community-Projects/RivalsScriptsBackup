if attack = AT_DSPECIAL && window = 5 && window_timer = 1 && state != PS_AIR_DODGE && state != PS_PARRY_START && state != PS_PARRY && state != PS_ROLL_BACKWARD && state != PS_ROLL_FORWARD && state != PS_ROLL_BACKWARD && state != PS_TECH_GROUND && state != PS_TECH_FORWARD && state != PS_TECH_BACKWARD && state != PS_WALL_TECH{
fade_time = 180
}
//Dont even BEGIN to ask why i had to stack the states like that, apparently JUST checking for at_dspecial wasnt enough because every defensive action reset the timer. i have NO god damn idea. This whole character is built on hopes and dreams istg

if flash_time > 0 && active_effect != 8{
flash_time -= 0.1
}else{
if active_effect = 8{
flash_time += 0.05}}

if fade_time >= 1{
fade_time -= 1
}

if (state = PS_SPAWN){
	if taunt_pressed{
		fspecial_vc = 1
	}
	if state_timer = 2{
	var	introknife = create_hitbox(AT_NSPECIAL_2, 1, x, y-500)
	}
	introknife.proj_angle += 10
	if get_player_color(player) == 9 && state_timer == 14{
    sound_play(sound_get("snd_rurus_appear"), false, false, 1.0, 1.0);
	}else{
    if state_timer == 14 sound_play(sound_get("snd_rudebuster_swing"), false, false, 2.5, 1.0);}
    if state_timer == 44 sound_play(sound_get("snd_scytheburst"), false, false, 2.5, 1.0);
	if state_timer <= 42 hud_offset = 999;
	if state_timer == 44{
        dust = spawn_dust_fx(x + 0 * spr_dir, y, asset_get("fx_hitsurface_bg"), 20);
		dust = spawn_dust_fx(x + 0 * spr_dir, y, asset_get("fx_land_bg"), 20);
        dust.dust_color = 5;
        //dust.fg_index = -1;
        dust.player = player;
        dust.spr_dir = spr_dir;
        dust.dust_depth = -5;
		shake_camera( 8, 10 )
			}
}
if nspecial_ammo < 3 {nspecial_timer++ {
	if (nspecial_timer % 300 == 0)
	{
    nspecial_ammo += 1;
}}}

if (state == PS_WALK) {
    if (state_timer % 40 == 20) { 
        sound_play(sound_get("snd_step1"), false, 0, 0.15, 1);
    } 
    if (state_timer % 40 == 0) {
        sound_play(sound_get("snd_step2"), false, 0, 0.15, 1);
    }
}

if (state == PS_WAVELAND) && state_timer = 1{
	sound_stop(sound_get("sfx_waveland_zet"))
    sound_stop(sound_get("sfx_quick_dodge"))
    sound_play(sound_get("clown"), false, 0, 0.5, (random_func(1, 1, false) + 4) * 0.21);
} 

if get_match_setting(SET_PRACTICE) && taunt_pressed{
	nspecial_ammo = 3}

if get_match_setting(SET_PRACTICE) && attack = AT_NSPECIAL && window = 1 && attack_pressed{
	if nspec_attackpress = 0{
	nspec_attackpress = 1
	if nspecial_suit = 1{
		nspecial_suit = 2
	}else if nspecial_suit = 2{
		nspecial_suit = 3
	}else if nspecial_suit = 3{
		nspecial_suit = 4
	}else if nspecial_suit = 4{
		nspecial_suit = 1
		}
	}
}

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
if (state = PS_CROUCH or state = PS_FIRST_JUMP or state = PS_PARRY or state = PS_ROLL_BACKWARD or state = PS_ROLL_FORWARD) && state_timer = 1 && get_player_damage(player) < 60 {
    spawn_hit_fx( x, y, knifedissapear );
}

if (attack = AT_USTRONG or attack = AT_UTILT or attack = AT_FTILT or attack = AT_NSPECIAL or attack = AT_FSPECIAL or attack = AT_USPECIAL) && window_timer = 1 && window = 1 && get_player_damage(player) < 60 && !hitpause && free = 0{
    spawn_hit_fx( x, y, knifedissapear );
}

if state == PS_IDLE && visible == true && grabbed_invisible == false && !hitpause {
if get_player_damage(player) >= 120 && (state_timer % 10 == 5){
    var chaos_dance_effect = spawn_hit_fx( x + 40 - random_func(2, 75, 1) , y - 15 + random_func(1, 45, 1), chaos_afterimage );
    chaos_dance_effect.vsp = cos(get_gameplay_time()) * 1.5
    chaos_dance_effect.hsp = sin(get_gameplay_time()) * 1.5
    if random_func(1, 2, 1) = 0{
    chaos_dance_effect.spr_dir = 1
    }else{
    chaos_dance_effect.spr_dir = -1
}}}

if !hitpause{
nspecial_swaptimer += 1
}
if attack = AT_NSPECIAL && window = 1{
hud_offset = 35;
}
if attack = AT_NSPECIAL && window = 1 && window_timer = 4{
	nspecial_swaptimer = 0
}
if nspecial_swaptimer >= 35{
    nspecial_swaptimer = 0
}
if !hitpause{
timer += 0.5
}
if timer >= 30{
    timer = 1
}
pirouette_timer += 1
if pirouette_timer >= 61{
    pirouette_timer = 1
}

if pirouette_timer = 1 && roulette_rot = 0{
roulette_rot = 1
}else{
if pirouette_timer = 1 && roulette_rot = 1{
roulette_rot = 0}
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
if  pirouette_timer = 1{
    if pirouette_selected <= 14{
pirouette_selected += 1
}else{
pirouette_selected = 1
}
}

if effect_timer > 0{
    //move_cooldown[AT_DSPECIAL] = 50
    effect_timer -= 1
}else{
    active_effect = 0
}

var nearest_player = noone;
var nearest_distance = -1;
with oPlayer {
  if (state == PS_RESPAWN || state == PS_DEAD) continue;
  if self != other {
    if nearest_player == noone || point_distance(x, y, other.x, other.y) < nearest_distance {
      nearest_player = self;
      nearest_distance = point_distance(x, y, other.x, other.y);
    } 
  }
}

if active_effect = 8{
if effect_timer = 578{
old_x = x
old_y = y
}else{ if effect_timer = 577{
x = nearest_player.x
y = nearest_player.y
nearest_player.x = old_x
nearest_player.y = old_y
var portal_1 spawn_hit_fx( x, y - 25, 66 );
var portal_2 spawn_hit_fx( old_x, old_y - 25, 66 );
effect_timer = 1
flash_time = 1
}}}

if active_effect = 1{
ground_friction = .15;
wave_friction = .015; 
}
if active_effect = 2{
damage_scaling = 1.25
}
if active_effect = 3{
if smash_charging = true{
soft_armor = 20
flash_time = 0.5
}}
if active_effect = 4 && ((attack = AT_JAB && window == 6) or (attack = AT_DATTACK && window == 4) or (attack = AT_UTILT) or (attack = AT_FTILT) or (attack = AT_FAIR) or (attack = AT_DAIR) or (attack = AT_NAIR && window_timer >= 7) or (attack = AT_UAIR && window_timer >= 16) or (attack = AT_FSTRONG) or (attack = AT_USTRONG && window_timer >= 17) or (attack = AT_DSTRONG && window == 3 && window_timer >= 6) or (attack = AT_FSPECIAL && window = 2 && window_timer >= 23)){
	with (oPlayer) {
	if hitstop {
	buffed = 1
	flash_time = 1.0
	if hit_player == other.player {
	orig_knock *= other.knockback_modifier;
	take_damage( player, hit_player, ceil( enemy_hitboxID.damage * (other.damage_modifier - 1) ) );
}}}}
if active_effect = 5{
djump_speed = -1;
djump_accel = -3.0;
djump_accel_start_time = 6; 
djump_accel_end_time = 12;
}
if active_effect = 6{
initial_dash_speed = 9.0;
dash_speed = 8.0;
}
if active_effect = 7{
nspecial_ammo = 3
}
if active_effect = 0{
initial_dash_speed = 7.5;
dash_speed = 6.5;
ground_friction = .5;
wave_friction = .05; 
djump_speed = 9;
djump_accel = 0;
djump_accel_start_time = 0;
djump_accel_end_time = 0;
}

if buffed = 1{
effect_timer = 0
sound_play(sound_get("snd_rudebuster_hit"), false, noone, 3.0, 1);
buffed = 0}

if free = 0{
		set_hitbox_value(AT_NSPECIAL, 1, HG_DAMAGE, 5);
	}else{
		set_hitbox_value(AT_NSPECIAL, 1, HG_DAMAGE, 4);
	}
//roulette_rot += 1
//roulette_rot += 1

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

if taunt_down && attack == AT_TAUNT_2 && window_timer >= 3 && state = PS_ATTACK_GROUND{
	window_timer = 3
}

if down_down && taunt_pressed && free = 0 && (state_cat = SC_GROUND_NEUTRAL or (attack = AT_TAUNT && state != PS_PARRY_START && state != PS_PARRY)) && prev_state != PS_SPAWN{
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
if get_player_color(player) == 31{
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

//print_debug(pirouette_timer)
//print_debug(get_game_timer())

if attack = AT_FSPECIAL && nspecial_ammo > 0 && window_timer >= 27 && (state = PS_ATTACK_AIR or state = PS_ATTACK_GROUND){
	if window = 2{
	if attack_pressed{
		if left_down{
			if spr_dir = -1{
				set_attack(AT_BAIR)
			}else{
				set_attack(AT_FAIR)
			}
		}else if right_down{
			if spr_dir = -1{
				set_attack(AT_FAIR)
			}else{
				set_attack(AT_BAIR)
			}
		}else if down_down{
			set_attack(AT_DAIR)
		}else if up_down{
			set_attack(AT_UAIR)
		}else{
			set_attack(AT_NAIR)
		}
		nspecial_ammo -= 1
		nspecial_timer = 0
		hsp = hsp/1.5
		spr_dir *= -1;
		window = 1
		vsp -= 1.5
		window_timer = 1
		destroy_hitboxes();
		fspecial_cancel_prat = 0
		//hurtboxID.image_index = attack.hurtboxID (causes the log to be spammed with errors, not sure what it does and im hoping its not important)
		}
	}
}

var future_y = y + vsp;
if ( future_y >= get_stage_data(SD_BOTTOM_BLASTZONE_Y) ) && object_index != oTestPlayer {
sound_play(sound_get("snd_closet_fall"), false, false, 0.50, 1.0);
}

var galaxyTrigger
var galaxyTimer

if(hit_player_obj != -4 && attack != 49)
{
    if (hit_player_obj.activated_kill_effect = 1 && hit_player_obj.state_timer = 0){
		galaxyTrigger = true;
		galaxyTimer = 0;
		if (attack != AT_DAIR)
			sound_play(sound_get("snd_joker_byebye"), false, noone, 1, 1);
		
        hit_player_obj.state_timer = 1
        hit_player_obj = -4;
    }
}

if (galaxyTrigger){
	if (hitstop)
		suppress_stage_music(0, 0.2);
	else {
		suppress_stage_music(1, 0.05);
		galaxyTrigger = false;
	}
}

if (galaxyTimer < 30 && galaxyTimer != -1)
	galaxyTimer ++;
if (galaxyTimer > 30)
	galaxyTimer = -1;
