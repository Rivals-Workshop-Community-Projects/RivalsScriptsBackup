// ball
article_1 = get_article("obj_article1");
article_1_count = get_article_count("obj_article1");
// turret
article_2 = get_article("obj_article2");
article_2_count = get_article_count("obj_article2");
// wall
article_3 = get_article("obj_article3");
article_3_count = get_article_count("obj_article3");

if (article_1_count > 0){
	// targma looking towards the ball
	if ((x >= article_1.x && spr_dir == 1)
	|| (x < article_1.x && spr_dir == -1)){
		signflipper = -1;
	} else{ // targma looking the other direction
		signflipper = 1;
	}
}

// previous jump input (how do I make a general "input_just_pressed" ??)
manage_jump_timer(); // hope this works

// nspecial timer
if (state_timer == 0){
	nspec_hold_timer = 0;
}

if (!instance_exists(article_1)
&& article_1_count < 1){
	taunt_detonate = false;
} else if (instance_exists(article_1)
&& article_1_count > 0) {
	taunt_detonate = true;
}

if (last_attack_was(AT_NAIR)){
	can_create_hitbox = true;
}

if (state == PS_WAVELAND && state_timer == 1){
	spawn_hit_fx(x+32*spr_dir, y, fx_waveland);
}

// bonus jump whieee
if (jump_just_pressed && can_lava_jump()){
	do_bonus_jump();
}

if (!free){
	play_boost_sound = true;
	can_super_jump = true;
	has_super_jumped = false;
}	

if (magnet > 0){ magnet--; }
if (nspec_sound_timer > 0){ nspec_sound_timer--; }

if (uspecial_timer > 0){
    can_uspecial = false;
    uspecial_timer--;
}

if (uspecial_timer < 1){
    can_uspecial = true;
}

if(state == PS_HITSTUN || state == PS_WALL_JUMP || state == PS_RESPAWN || !free){
	can_uspecial = true;
	move_cooldown[AT_USPECIAL] = 0;
    // uspecial_timer = 1;
}

state_timer_prev = state_timer;

#define can_lava_jump()
	if (article_3 != noone){
		if (free 
		&& distance_to_object(article_3) < 4 // tweak this number if needed
		&& can_super_jump 
		&& state == PS_DOUBLE_JUMP 
		&& state_timer > 1){
			return true;
		}
	}
	return false;
#define do_bonus_jump()
	vsp = -9;
	if (play_boost_sound){
		sound_play(asset_get("sfx_charge_blade_swing"));
		spawn_hit_fx(x-0*spr_dir, y-0, hit_fx_create(sprite_get("boost_jump_fx"), 20)); // todo: hitfxcreatetetct
		super_jump_timer = 20;
		play_boost_sound = false;
	}
	can_super_jump = false;
#define get_article(article_object) // arg should be string, ex. "obj_article1"
	var article_count = get_article_count(article_object);

	if (article_count > 0){
		with(asset_get(article_object)){
			if (player_id == other.id){
				return id;
			}
		}
	} return noone;
	
#define get_article_count(article_object) // arg should be string, ex. "obj_article1"
	var count = 0;
		with(asset_get(article_object)){
			if (player_id == other.id){
				count++;
			}
		}
	return count;
#define manage_jump_timer()
	if (jump_pressed){
		if (jump_timer == 1){
			jump_just_pressed = true;
		} else {
			jump_just_pressed = false;
		}
		jump_timer++;
	} else {
		jump_timer = 0;
	}
	if (!free){
		jump_timer = 0;
	}
#define last_attack_was(AT_SOMETHING) // arg0 = number
return state != PS_ATTACK_AIR
&& state != PS_ATTACK_GROUND
&& attack == AT_SOMETHING