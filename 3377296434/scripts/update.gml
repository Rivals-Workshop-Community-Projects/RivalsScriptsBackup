//stat_changes
switch (on_brick){
	case false:
	hurtbox_spr = sprite_get("gus_hurt_box");
	air_hurtbox_spr = sprite_get("gus_hurt_box");
	
	initial_dash_speed = 7;
	dash_speed = 6.5;
	walk_speed = 4.25;
	knockback_adj = 1.1;
	ground_friction = .5;
	wave_land_adj = 1.5;
	air_dodge_speed = 8;
	move_cooldown[AT_DSPECIAL] = 2;
	move_cooldown[AT_TAUNT] = 2;
	char_height = round(lerp(char_height, 46, 0.5));
	dodge_startup_frames = 1;
	dodge_active_frames = 1;
	dodge_recovery_frames = 2;
	
	//nspec changes
	set_attack_value(AT_NSPECIAL, AG_SPRITE, sprite_get("nspecial_gus"));
	set_attack_value(AT_NSPECIAL, AG_HURTBOX_SPRITE, sprite_get("nspecial_gus_hurt"));
	set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_X, 0);
	set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_Y, -32);
	set_hitbox_value(AT_NSPECIAL, 2, HG_WIDTH, 64);
	set_hitbox_value(AT_NSPECIAL, 2, HG_HEIGHT, 64);
	break;
	
	case true:
	hurtbox_spr = sprite_get("hurt_box");
	air_hurtbox_spr = sprite_get("air_hurt_box");
	
	initial_dash_speed = 6.25;
	dash_speed = 5.75;
	walk_speed = 3.0;
	knockback_adj = 0.9;
	ground_friction = .4;
	wave_land_adj = 1.35;
	air_dodge_speed = 7.5;
	char_height = round(lerp(char_height, 70, 0.5));
	dodge_startup_frames = 2;
	dodge_active_frames = 1;
	dodge_recovery_frames = 3;
	
	//nspec changes
	reset_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_X);
	reset_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_Y);
	reset_hitbox_value(AT_NSPECIAL, 2, HG_WIDTH);
	reset_hitbox_value(AT_NSPECIAL, 2, HG_HEIGHT);
	reset_attack_value(AT_NSPECIAL, AG_SPRITE);
	reset_attack_value(AT_NSPECIAL, AG_HURTBOX_SPRITE);
	break;
}

if (state == PS_CROUCH){
	brick_frame += 0.2;
} else brick_frame = 0;

if (has_hit && hit_player_obj.activated_kill_effect && killsoundcool <= 0){
    sound_play(sound_get("sfx_killenemy"));
    sound_play(sound_get("sfx_killenemy"));
    sound_play(sound_get("sfx_killenemy"));
    sound_play(sound_get("sfx_killenemy"));
    killsoundcool = 70;
}

killsoundcool --;

/*if (state == PS_CROUCH && on_brick){
	if (!instance_exists(brick)){
		brick = instance_create(x + 0*spr_dir, y - 2, "obj_article1");
	    //spawn_hit_fx(brick.x, brick.y, 144);
		brick.state = 1;
		brick.state_timer = 0;
		brick.hsp = 0;
		brick.vsp = 0;
		brick.was_free = false;
		brick.free = false;
	}
	on_brick = false;
}*/

if (instance_exists(brick) && brick.state != 1 && !on_brick){
	move_cooldown[AT_USPECIAL] = 15;
	/*if (state == PS_CROUCH){
		set_state(PS_IDLE);
	}*/
}

pose = random_func(1, 10, true);
if (taunt_pressed && pose_select_cooldown == 0){
	selected_pose = pose;
	pose_select_cooldown = 18;
}
if (pose_select_cooldown > 0){
pose_select_cooldown --;
}

if (state_cat == SC_AIR_NEUTRAL && taunt_pressed){
	set_state(PS_ATTACK_AIR);
	set_attack(AT_TAUNT);
}

if (state == PS_DASH_START && state_timer == 10){
    sound_play(dash_sound, true, false, 0.8, 1);
}
if state != PS_DASH_START && state != PS_DASH && state != PS_DASH_TURN{
    sound_stop(dash_sound);
}

if (state != PS_ATTACK_GROUND && state != PS_ATTACK_AIR){
    
            sound_stop(mach_ground);
            sound_stop(mach_air);
            sound_stop(pound_loop);
}

//Afterimage code by Lukaru

var newArray = 0;
for (var i = 0; i < array_length_1d(afterimage_array); ++i)
{
    var obj = afterimage_array[i];
    if (++obj.timer <= obj.timerMax) newArray[array_length_1d(newArray)] = obj;
}
afterimage_array = newArray;

if (mach_timer || attack = AT_NSPECIAL) afterimage_colour = (get_gameplay_time() % (ai_freq*2) < ai_freq)+1; //red and green
else afterimage_colour = 0; //c_white

//mach code, mr nrat
if (mach_timer > 0) 
{
    mach_mode = true;
      if (get_gameplay_time() % (ai_freq) = ai_freq-1) CreateAfterimage();
	//if (!hitpause) mach_timer--;
      mach_timer--;
}
else 
{
	mach_mode = false;
}

#define CreateAfterimage() //written by Lukaru
{
if (afterimage_colour = 1) var _noismage = $5555FF  
else if (afterimage_colour = 2) var _noismage = $77FF77
else var _noismage = c_white


    afterimage_array[array_length_1d(afterimage_array)] = {x:x+draw_x, y:y+draw_y, spr_dir:spr_dir, sprite_index:sprite_index, image_index:image_index, rot:spr_angle, col:_noismage, timer:0, timerMax:20};
}

