attacking = state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR;
if attacking attack_window_end = floor(get_window_value(attack, window, AG_WINDOW_LENGTH) * (get_window_value(attack, window, AG_WINDOW_HAS_WHIFFLAG) && !has_hit? 1.5:1));
else{
	rush_coil_interaction = "INTERRUPT";
}

switch state{
	case PS_DASH_START:
		if state_timer == 0 PlayVoiceClip("sfx", "dashstart", 0.1, true, false);
	break;
	case PS_DASH_STOP :case PS_DASH_TURN:
		if state_timer == 0 PlayVoiceClip("sfx", "dashstop", 0.2, true, false);
	break; 
	case PS_JUMPSQUAT: case PS_DOUBLE_JUMP: case PS_WALL_JUMP:
		if state_timer == 3 PlayVoiceClip("sfx", "jump", 0.2, true, false);
	break;  
	case PS_LAND: case PS_LANDING_LAG:
		if state_timer == 1 PlayVoiceClip("sfx", "land", 0.15, true, false);
	break; 
	case PS_CROUCH:
		if state_timer == 0 PlayVoiceClip("sfx", "crouch", .2, true, false);
	break;	
}

//Dattack grab code
var all_hurtboxes = [];
with(pHurtBox) if playerID != other {
	array_push(all_hurtboxes, self);
}

with(pHitBox){
    if(player_id == other && attack == AT_DATTACK && hbox_num >= 5 && hbox_num < 9){
    	for(var i = 0; i < array_length(all_hurtboxes); i++){
    		var hbox = all_hurtboxes[@i];
    		var enemy = hbox.playerID;
    		var x_off = 10 * player_id.spr_dir;
    		var y_off = 0 - 20 * (enemy.y > other.y);
    		var enemy_in_hitstun = (enemy.state == PS_HITSTUN || enemy.state == PS_FLASHED);
    		if(enemy != player_id && enemy.hit_player_obj == player_id && enemy_in_hitstun && enemy.hitpause && has_hit && !can_hit[enemy.player]){
    			var hsped = lengthdir_x(point_distance(enemy.x,enemy.y,player_id.x+x_off,player_id.y+enemy.char_height/2+y_off)/8,point_direction(enemy.x,enemy.y,player_id.x+x_off,player_id.y+enemy.char_height/2+y_off));
    			var vsped = lengthdir_y(point_distance(enemy.x,enemy.y,player_id.x+x_off,player_id.y+enemy.char_height/2+y_off)/8,point_direction(enemy.x,enemy.y,player_id.x+x_off,player_id.y+enemy.char_height/2+y_off));
    			enemy.x += hsped;
    			enemy.y += vsped;
    		}
    	}
    }
    // fspec damage reduction
    if(player_id == other && attack == AT_FSPECIAL && hitbox_timer == 0){
    	damage = max(damage - player_id.fspec_damage_reduction, 1);
    }
}

standingonrush = false;
if !free && !freemd && instance_exists(uspec_rush) && "is_plat" in uspec_rush {
	// var mask = mask_index;
	// mask_index = sprite_get("a_rush_jet_mask");
	standingonrush = y == uspec_rush.y && point_distance(uspec_rush.x, 0, x, 0) <= 32;
	// var plat = instance_place(x, y + 1, asset_get("par_jumpthrough"));
	// if instance_place(x, y + 1, asset_get("par_block")) plat = instance_place(x, y + 1, asset_get("par_block"));
	// if !free{
	// 	if plat == uspec_rush {
			// standingonrush = true;
	if up_down && special_pressed && standingonrush { 
		fixed_set_attack(AT_USPECIAL_2);
		clear_button_buffer(PC_SPECIAL_PRESSED);
	}
	// 	}
	// 	else standingonrush = false;
	// }
	// mask_index = mask;
}

if(!free && !standingonrush) can_recharge_fuel = true;
if(state_cat == SC_HITSTUN || instance_exists(uspec_rush) && "is_plat" in uspec_rush && uspec_rush.article_state != "DESPAWN") can_recharge_fuel = false;

if(can_recharge_fuel && uspec_fuel < uspec_max_fuel) uspec_fuel += 5 + 2 * !free;
uspec_fuel = clamp(uspec_fuel, 0, uspec_max_fuel);
if(uspec_fuel >= uspec_max_fuel && !can_use_jet) can_use_jet = true;

if !free || state_cat == SC_HITSTUN || state == PS_WALL_JUMP {
	move_cooldown[AT_FSPECIAL] = 0;
	if !free && !standingonrush {
		uspec_uses = 0;
		move_cooldown[AT_USPECIAL] = 0;
	}
	if state == PS_WALL_JUMP && uspec_uses < uspec_max_uses move_cooldown[AT_USPECIAL] = 0;
}

if nspec_charge{
	walk_speed = 3.5;
	walk_accel = 0.4;
	
	leave_ground_max = 4;
	max_jump_hsp = 4;
	air_max_speed = 3.5;
	jump_change = 3;
	air_accel = 0.25;
}
else if has_rock{
	walk_speed = orig_walk_speed;
	walk_accel = orig_walk_accel;
	
	leave_ground_max = orig_leave_ground_max;
	max_jump_hsp = orig_max_jump_hsp;
	air_max_speed = orig_walk_speed; // this one is different
	jump_change = orig_jump_change;
	air_accel = orig_air_accel;
}
else{
	walk_speed = orig_walk_speed;
	walk_accel = orig_walk_accel;
	
	leave_ground_max = orig_leave_ground_max;
	max_jump_hsp = orig_max_jump_hsp;
	air_max_speed = orig_air_max_speed;
	jump_change = orig_jump_change;
	air_accel = orig_air_accel;
}

if !attacking{
	outline_color = [0, 0, 0];
	invincible = false;
	for (var f = 0; f < array_length(fspec_grab); f++;){
		fspec_grab[f].hitpause = 0;
		fspec_grab[f].hitstun = 20;
		fspec_grab[f].hsp = 7 * spr_dir;
		fspec_grab[f].vsp = -4;
	}
	fspec_grab = [];
}

/*if taunt_pressed{ //used for testing the death particles, specifically for when a deathbox kills the player outside of a blastzone
	create_deathbox(x, y, 32, 32, player, true, 0, 2, 0);
	clear_button_buffer(PC_TAUNT_PRESSED);
}*/

init_shader();
#define fixed_set_state(state)
{
	set_state(state);
	hurtboxID.sprite_index = free? air_hurtbox_spr:hurtbox_spr;
}
#define fixed_set_attack(attack)
{
	set_attack(attack);
	if free && get_attack_value(attack, AG_HURTBOX_AIR_SPRITE) hurtboxID.sprite_index = get_attack_value(attack, AG_HURTBOX_AIR_SPRITE);
	else hurtboxID.sprite_index = get_attack_value(attack, AG_HURTBOX_SPRITE);
}
#define PlayVoiceClip
var varName = argument[0], sfxName = argument[1];
var volume = argument_count > 2 ? argument[2] : 1;
var stopprev = argument_count > 3 ? argument[3] : true;
var pitch = argument_count > 4 ? argument[4] : true;
var noHitpause = argument_count > 5 ? argument[5] : true;
if((!hitpause && noHitpause || !noHitpause)){
	if(stopprev)sound_stop(variable_instance_get(self,varName));
	variable_instance_set(self,varName,sound_play(sound_get(is_array(sfxName)?sfxName[random_func(1, array_length(sfxName), true)]:sfxName)));
	sound_volume(variable_instance_get(self,varName), volume, 0);if(pitch)sound_pitch(variable_instance_get(self,varName),("voicepitch" in self)?voicepitch:1);
}
