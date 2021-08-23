if (attack == AT_DSPECIAL_2){
	custom_attack = true;
} else{
	custom_attack = false;
}
if (spell_activated && time_until_magic == 0){
	spell_activated_timer = 30;
}
if (spell_activated_timer > 0){
	spell_activated_timer--;
}
if (spell_activated && time_until_magic == 0){
    spawn_hit_fx(x, y-140, 304 );
}
if (nope_timer > 0) nope_timer--;
if (nope_timer == 0) can_nope = true;

// DEBUGGING / TESTING SPELLS  -- uncomment to test the last selected spell
// if (taunt_pressed && debug_timer < 1){
// 	spell_activated = true;
// 	debug_timer = 45;
// }
// if (debug_timer > 0){
// 	debug_timer--;
// }

// TOO MUCH MAGIC
if (magic_timer > 0) magic_timer-- else magic_timer = 10; // change the last number to control how fast the meter drains
if (magic_meter > 99){
	magic_meter = 0;
	magic_overload = true;
} else if(magic_meter > 0 && magic_meter < 100){
	if (magic_timer == 0){
		magic_meter--;
	}
}
if (time_until_magic > 0 && time_until_magic < 760){
	if (random_func(5, 20, 1) == 0 && time_until_magic % 3 == 0){
		sound_play(asset_get("sfx_holy_die"));
		spawn_hit_fx(x, y-32, 304)
		flying_object = create_hitbox(AT_EXTRA_2, 1, x, y-64);
		with (flying_object){
			image_index = random_func(8, 8, 1);
			sprite_index = sprite_get("magic_objects");
			hsp = -5 + random_func(6, 10, 0);
			vsp = -8 + random_func(7, 5, 0);
		}
	}
}

if (magic_overload && !free){
	var boom = spawn_hit_fx(x+8*hsp, y, hit_fx_create(sprite_get("wild_magic"), 32));
	boom.depth = -1000;
	sound_play(asset_get("sfx_ell_explosion_medium"));
	sound_play(asset_get("sfx_boss_fireball_land"));
	magic_meter = 0;
	time_until_magic = 420 * 2;
	move_cooldown[AT_NSPECIAL] = 420 * 2;
	magic_overload = false;
	attack = AT_TAUNT_2;
	set_attack(AT_TAUNT_2);
} else if (magic_overload && free){
	state = PS_PRATFALL;
	has_walljump = false;
}
if (time_until_magic > 0){
	time_until_magic--;
	if (special_pressed && !left_down && !right_down && !up_down && !down_down){
		if (can_nope){ 
			spawn_hit_fx(x, y - 128, hit_fx_create(sprite_get("nope"), 30));
			sound_play(asset_get("sfx_forsburn_consume_fail"));
			can_nope = false;
			nope_timer = 30;
			// todo: spawn fx of 'you can't use nspecial right now'
		}
	}
}


// COOL CODE
if (spell_activated && time_until_magic < 1){
    // vsp = -6; //only for debug 
	switch (selected_spell){ // spell number x here is x+1 in sprite sheet
		case 1: // SUMMON CUTE PIGGY
		set_attack_value(AT_DSPECIAL_2, AG_SPRITE, sprite_get("spell_throw"));
			pig = instance_create(x+48*spr_dir, y, "obj_article_solid");
			spawn_hit_fx(x+80*spr_dir, y-16, 302);
			with (pig){
				hsp = 4 * player_id.spr_dir;
				mask_index = sprite_get("pig_mask");
				ignores_walls = false;
			}
			break;
		case 2: // TURBO TURBO SPEED
            turbospeed_active = true;
            turbospeed_timer = 600; //480
            sound_play(turbo_snd);
			break;
		case 3: // SWAP
			
		    var temp_x = x;//Felicia's old coords
    		var temp_y = y;
    		
    		// hackiest solution ever, not my own idea
    		x -= 99999;
    		y -= 99999;
		    var nearest_player = instance_nearest(x+99999, y+99999, oPlayer);
		    x += 99999;
		    y += 99999;
		    if (nearest_player != noone){
			    sound_play(asset_get("sfx_abyss_spawn"));
				spawn_hit_fx(x, y, hit_fx_create(sprite_get("swap_fx"), 24));
				spawn_hit_fx(nearest_player.x, nearest_player.y, hit_fx_create(sprite_get("swap_fx"), 24));
    			x = nearest_player.x;
    			y = nearest_player.y;
    			nearest_player.x = temp_x;
    			nearest_player.y = temp_y;
		    }
			break;
		case 4:
            turbojump_active = true;
            turbojump_timer = 540; //420
            sound_play(turbojump_snd);
			break;
		case 5: // SUMMON A COOL CRAB
		set_attack_value(AT_DSPECIAL_2, AG_SPRITE, sprite_get("spell_throw"));
			set_window_value(AT_EXTRA_1, 1, AG_WINDOW_LENGTH, 2);
			set_window_value(AT_EXTRA_1, 2, AG_WINDOW_LENGTH, 2);
			set_window_value(AT_EXTRA_1, 3, AG_WINDOW_LENGTH, 2);
			crab = instance_create(x +32*spr_dir, y-32, "obj_article1");
			spawn_hit_fx(x+64*spr_dir, y-16, 302);
			with (crab){
				type = "crab";
				sprite_index = sprite_get("crab");
				image_xscale = other.spr_dir;
				lifespan = 600;
				hsp = other.spr_dir * 2.5;
				ignores_walls = false;
				with (player_id){ // has to be from player perspective, otherwise crash
					// reminder to self: all projectile/article stuff is AT_EXTRA_1, not AT_DSPECIAL_2 (the latter is just for window stuff)
					var angleKB = spr_dir == 1 ? 45 : 135;
					// so should I set the window length for AT_EXTRA_1 or for AT_DSPECIAL_2??? no idea lol
					
					set_hitbox_value(AT_EXTRA_1, 1, HG_HITBOX_X, 0);
	                set_hitbox_value(AT_EXTRA_1, 1, HG_HITBOX_Y, 0);
	                set_hitbox_value(AT_EXTRA_1, 1, HG_WIDTH, 60);
	                set_hitbox_value(AT_EXTRA_1, 1, HG_HEIGHT, 60);
	                set_hitbox_value(AT_EXTRA_1, 1, HG_HIT_SFX, asset_get("sfx_ice_back_air"));
	                set_hitbox_value(AT_EXTRA_1, 1, HG_ANGLE, angleKB);
	                set_hitbox_value(AT_EXTRA_1, 1, HG_BASE_KNOCKBACK, 8.5);
	                set_hitbox_value(AT_EXTRA_1, 1, HG_KNOCKBACK_SCALING, 0.2);
				}
			}
			// set_window_value(AT_DSPECIAL_2, 1, AG_WINDOW_HSPEED, -20);
		 //   set_hitbox_value(AT_DSPECIAL_2, 3, HG_BASE_KNOCKBACK, 1);
set_attack_value(AT_DSPECIAL_2, AG_SPRITE, sprite_get("spell_throw"));
set_attack_value(AT_DSPECIAL_2, AG_NUM_WINDOWS, 3);
set_attack_value(AT_DSPECIAL_2, AG_HURTBOX_SPRITE, sprite_get("jab_hurt"));

set_window_value(AT_DSPECIAL_2, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL_2, 1, AG_WINDOW_LENGTH, 3);
set_window_value(AT_DSPECIAL_2, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSPECIAL_2, 1, AG_WINDOW_HAS_SFX, 0);
// set_window_value(AT_DSPECIAL_2, 1, AG_WINDOW_SFX, asset_get("sfx_waveland_may"));

set_window_value(AT_DSPECIAL_2, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL_2, 2, AG_WINDOW_LENGTH, 4);
set_window_value(AT_DSPECIAL_2, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSPECIAL_2, 2, AG_WINDOW_ANIM_FRAME_START, 1);

set_window_value(AT_DSPECIAL_2, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL_2, 3, AG_WINDOW_LENGTH, 2);
set_window_value(AT_DSPECIAL_2, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSPECIAL_2, 3, AG_WINDOW_ANIM_FRAME_START, 1);
// set_window_value(AT_DSPECIAL_2, 3, AG_WINDOW_HAS_WHIFFLAG, 1);
			attack = AT_DSPECIAL_2;
			set_attack(AT_DSPECIAL_2);
			break;
		case 6: //geyser
		spawn_hit_fx(x+64*spr_dir, y, hit_fx_create(sprite_get("geyser"), 27));
		spawn_hit_fx(x-64*spr_dir, y, hit_fx_create(sprite_get("geyser"), 27));
		// sound_play(asset_get("sfx_ori_glide_start"));
		
set_attack_value(AT_DSPECIAL_2, AG_SPRITE, sprite_get("spell_throw"));
set_attack_value(AT_DSPECIAL_2, AG_NUM_WINDOWS, 3);
set_attack_value(AT_DSPECIAL_2, AG_HURTBOX_SPRITE, sprite_get("jab_hurt"));

set_window_value(AT_DSPECIAL_2, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL_2, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DSPECIAL_2, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSPECIAL_2, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL_2, 1, AG_WINDOW_SFX, asset_get("sfx_orca_absorb"));

set_window_value(AT_DSPECIAL_2, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL_2, 2, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DSPECIAL_2, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSPECIAL_2, 2, AG_WINDOW_ANIM_FRAME_START, 1);
// set_window_value(AT_DSPECIAL_2, 2, AG_WINDOW_HAS_SFX, 1);
// set_window_value(AT_DSPECIAL_2, 2, AG_WINDOW_SFX, asset_get("sfx_kragg_rock_pillar"));
// set_window_value(AT_DSPECIAL_2, 2, AG_WINDOW_HSPEED, 30);

set_window_value(AT_DSPECIAL_2, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL_2, 3, AG_WINDOW_LENGTH, 2);
set_window_value(AT_DSPECIAL_2, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSPECIAL_2, 3, AG_WINDOW_ANIM_FRAME_START, 1);
// set_window_value(AT_DSPECIAL_2, 3, AG_WINDOW_HAS_WHIFFLAG, 1);
// set_window_value(AT_DSPECIAL_2, 3, AG_WINDOW_HSPEED, -20);

set_num_hitboxes(AT_DSPECIAL_2, 2);

set_hitbox_value(AT_DSPECIAL_2, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_WINDOW, 1);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_WINDOW_CREATION_FRAME, 5);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_LIFETIME, 9);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_SHAPE, 1);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_HITBOX_X, 64);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_HITBOX_Y, -54);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_WIDTH, 64);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_HEIGHT, 120);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_GROUNDEDNESS, 0);
// set_hitbox_value(AT_DSPECIAL_2, 1, HG_EXTRA_CAMERA_SHAKE, 1);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_DAMAGE, 11);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_ANGLE, 90);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_KNOCKBACK_SCALING, 0.5);
// set_hitbox_value(AT_DSPECIAL_2, 1, HG_HITSTUN_MULTIPLIER, 2);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_HITPAUSE_SCALING, 0.5);
// set_hitbox_value(AT_DSPECIAL_2, 1, HG_FORCE_FLINCH, 1);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_VISUAL_EFFECT, 195);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_VISUAL_EFFECT_X_OFFSET, 32);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_HIT_SFX, asset_get("sfx_orca_soak"));

set_hitbox_value(AT_DSPECIAL_2, 2, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_WINDOW, 1);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_WINDOW_CREATION_FRAME, 5);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_LIFETIME, 9);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_SHAPE, 1);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_HITBOX_X, -64);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_HITBOX_Y, -54);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_WIDTH, 64);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_HEIGHT, 120);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_PRIORITY, 3);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_GROUNDEDNESS, 0);
// set_hitbox_value(AT_DSPECIAL_2, 1, HG_EXTRA_CAMERA_SHAKE, 1);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_DAMAGE, 11);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_ANGLE, 90);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_KNOCKBACK_SCALING, 0.5);
// set_hitbox_value(AT_DSPECIAL_2, 2, HG_HITSTUN_MULTIPLIER, 2);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_HITPAUSE_SCALING, 0.5);
// set_hitbox_value(AT_DSPECIAL_2, 1, HG_FORCE_FLINCH, 1);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_VISUAL_EFFECT, 195);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_VISUAL_EFFECT_X_OFFSET, 32);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_HIT_SFX, asset_get("sfx_orca_soak"));
			attack = AT_DSPECIAL_2;
			set_attack(AT_DSPECIAL_2);
			break;
		case 7: // TORNADO (idea: make much more flashier sprite and like 8 violent hits for epic coolness?)
set_attack_value(AT_DSPECIAL_2, AG_SPRITE, sprite_get("spell_throw"));
set_attack_value(AT_DSPECIAL_2, AG_NUM_WINDOWS, 3);
set_attack_value(AT_DSPECIAL_2, AG_HURTBOX_SPRITE, sprite_get("jab_hurt"));

set_window_value(AT_DSPECIAL_2, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL_2, 1, AG_WINDOW_LENGTH, 5);
set_window_value(AT_DSPECIAL_2, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSPECIAL_2, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL_2, 1, AG_WINDOW_SFX, asset_get("sfx_bird_sidespecial_start"));

set_window_value(AT_DSPECIAL_2, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL_2, 2, AG_WINDOW_LENGTH, 10);
set_window_value(AT_DSPECIAL_2, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSPECIAL_2, 2, AG_WINDOW_ANIM_FRAME_START, 1);
// set_window_value(AT_DSPECIAL_2, 2, AG_WINDOW_HSPEED, 30);

set_window_value(AT_DSPECIAL_2, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL_2, 3, AG_WINDOW_LENGTH, 2);
set_window_value(AT_DSPECIAL_2, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSPECIAL_2, 3, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_DSPECIAL_2, 3, AG_WINDOW_HAS_WHIFFLAG, 0);
// set_window_value(AT_DSPECIAL_2, 3, AG_WINDOW_HSPEED, -20);

set_num_hitboxes(AT_DSPECIAL_2, 3);

set_hitbox_value(AT_DSPECIAL_2, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_LIFETIME, 1);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_HITBOX_X, 64);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_HITBOX_Y, -40);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_WIDTH, 96);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_HEIGHT, 160);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_DAMAGE, 4);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_ANGLE, 80);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_BASE_HITPAUSE, 12);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_VISUAL_EFFECT, 301);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_VISUAL_EFFECT_X_OFFSET, 32);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_HIT_SFX, asset_get("sfx_bird_nspecial"));

set_hitbox_value(AT_DSPECIAL_2, 2, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_WINDOW, 2);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_LIFETIME, 1);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_HITBOX_X, 64);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_HITBOX_Y, -40);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_WIDTH, 96);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_HEIGHT, 160);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_DAMAGE, 5);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_ANGLE, 80);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_BASE_HITPAUSE, 12);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_VISUAL_EFFECT_X_OFFSET, 32);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_VISUAL_EFFECT, 301);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_HIT_SFX, asset_get("sfx_bird_nspecial"));

set_hitbox_value(AT_DSPECIAL_2, 3, HG_WINDOW, 2);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_WINDOW_CREATION_FRAME, 9);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_PARENT_HITBOX, 3);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_HITBOX_GROUP, 3);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_LIFETIME, 5);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_HITBOX_X, 64);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_HITBOX_Y, -40);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_WIDTH, 96);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_HEIGHT, 160);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_PRIORITY, 2);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_DAMAGE, 6);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_ANGLE, 90);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_KNOCKBACK_SCALING, 0.6);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_BASE_HITPAUSE, 12);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_VISUAL_EFFECT, 301);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_VISUAL_EFFECT_X_OFFSET, 32);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_HIT_SFX, asset_get("sfx_bird_nspecial"));
			attack = AT_DSPECIAL_2;
			set_attack(AT_DSPECIAL_2);
			break;
		case 8:// SUMMON A TURTLE, ONE THAT LOOKS VAGUELY FAMILIAR?
		set_attack_value(AT_DSPECIAL_2, AG_SPRITE, sprite_get("spell_throw"));
			turtle = instance_create(x +80*spr_dir, y-64, "obj_article1");
			spawn_hit_fx(x+64*spr_dir, y-48, 302);
			with (turtle){
				spr_dir = other.spr_dir;
				// image_xscale = other.spr_dir;
				type = "turtle";
	            state = "idle";
	            lifespan = 720;
            	state_timer = 120;
				sprite_index = sprite_get("turtle");
				ignores_walls = false;
				causer = noone;
				with (player_id){ // has to be from player perspective, otherwise crash
					// reminder to self: all projectile/article stuff is AT_EXTRA_1, not AT_DSPECIAL_2 (the latter is just for window stuff)
					set_hitbox_value(AT_EXTRA_1, 1, HG_HITBOX_X, 0);
	                set_hitbox_value(AT_EXTRA_1, 1, HG_HITBOX_Y, 0);
	                set_hitbox_value(AT_EXTRA_1, 1, HG_WIDTH, 64);
	                set_hitbox_value(AT_EXTRA_1, 1, HG_HEIGHT, 48);
	                set_hitbox_value(AT_EXTRA_1, 1, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
	            	set_hitbox_value(AT_EXTRA_1, 1, HG_ANGLE, 90);
	                set_hitbox_value(AT_EXTRA_1, 1, HG_BASE_KNOCKBACK, 9);
	                set_hitbox_value(AT_EXTRA_1, 1, HG_KNOCKBACK_SCALING, 0.5);
				}
			}
			set_window_value(AT_DSPECIAL_2, 1, AG_WINDOW_HAS_SFX, 0);
			//... rest of the attack values etc??
			break;
		case 9:// SLIPPERY OIL
			// TODO: implement slippery funny walk (super fast walking animation while accelerating or decelerating)
			oil_active = true;
            oil_timer = 800;
            if (oil_timer == 800){ 
            	spawn_hit_fx(x + 48*spr_dir, y, hit_fx_create(sprite_get("oil"), 20));
        		spawn_hit_fx(x, y, hit_fx_create(sprite_get("oil"), 20));
				spawn_hit_fx(x - 48*spr_dir, y, hit_fx_create(sprite_get("oil"), 20));
            }
            sound_play(asset_get("sfx_orca_soak"));
			break;
		case 10: // EARTHQUAKE
		spawn_hit_fx(x, y, hit_fx_create(sprite_get("earthquake"), 21));
		sound_play(asset_get("sfx_ori_glide_start"));
		
set_attack_value(AT_DSPECIAL_2, AG_SPRITE, sprite_get("spell_throw"));
set_attack_value(AT_DSPECIAL_2, AG_NUM_WINDOWS, 3);
set_attack_value(AT_DSPECIAL_2, AG_HURTBOX_SPRITE, sprite_get("jab_hurt"));

set_window_value(AT_DSPECIAL_2, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL_2, 1, AG_WINDOW_LENGTH, 11);
set_window_value(AT_DSPECIAL_2, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSPECIAL_2, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL_2, 1, AG_WINDOW_SFX, asset_get("sfx_kragg_roll_loop"));

set_window_value(AT_DSPECIAL_2, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL_2, 2, AG_WINDOW_LENGTH, 2);
set_window_value(AT_DSPECIAL_2, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSPECIAL_2, 2, AG_WINDOW_ANIM_FRAME_START, 1);
// set_window_value(AT_DSPECIAL_2, 2, AG_WINDOW_HAS_SFX, 1);
// set_window_value(AT_DSPECIAL_2, 2, AG_WINDOW_SFX, asset_get("sfx_kragg_rock_pillar"));
// set_window_value(AT_DSPECIAL_2, 2, AG_WINDOW_HSPEED, 30);

set_window_value(AT_DSPECIAL_2, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL_2, 3, AG_WINDOW_LENGTH, 2);
set_window_value(AT_DSPECIAL_2, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSPECIAL_2, 3, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_DSPECIAL_2, 3, AG_WINDOW_HAS_WHIFFLAG, 0);
// set_window_value(AT_DSPECIAL_2, 3, AG_WINDOW_HSPEED, -20);

set_num_hitboxes(AT_DSPECIAL_2, 1);

set_hitbox_value(AT_DSPECIAL_2, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_SHAPE, 1);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_HITBOX_X, 0);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_HITBOX_Y, 0);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_WIDTH, 380);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_HEIGHT, 80);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_PRIORITY, 6);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_GROUNDEDNESS, 1);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_EXTRA_CAMERA_SHAKE, 1);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_DAMAGE, 12);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_ANGLE, 90);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_BASE_KNOCKBACK, 8); //9
set_hitbox_value(AT_DSPECIAL_2, 1, HG_KNOCKBACK_SCALING, 1.2); //1.1
set_hitbox_value(AT_DSPECIAL_2, 1, HG_BASE_HITPAUSE, 20);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_HITPAUSE_SCALING, 1);
// set_hitbox_value(AT_DSPECIAL_2, 1, HG_FORCE_FLINCH, 1);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_VISUAL_EFFECT, 155);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_VISUAL_EFFECT_X_OFFSET, 32);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_HIT_SFX, asset_get("sfx_kragg_rock_pillar"));
			attack = AT_DSPECIAL_2;
			set_attack(AT_DSPECIAL_2);
			break;
		case 11: // PAPER PLANE
set_attack_value(AT_DSPECIAL_2, AG_SPRITE, sprite_get("spell_throw"));
set_attack_value(AT_DSPECIAL_2, AG_NUM_WINDOWS, 3);
set_attack_value(AT_DSPECIAL_2, AG_HURTBOX_SPRITE, sprite_get("jab_hurt"));

set_window_value(AT_DSPECIAL_2, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL_2, 1, AG_WINDOW_LENGTH, 3);
set_window_value(AT_DSPECIAL_2, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSPECIAL_2, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL_2, 1, AG_WINDOW_SFX, asset_get("sfx_waveland_may"));

set_window_value(AT_DSPECIAL_2, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL_2, 2, AG_WINDOW_LENGTH, 3); //8
set_window_value(AT_DSPECIAL_2, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSPECIAL_2, 2, AG_WINDOW_ANIM_FRAME_START, 1);

set_window_value(AT_DSPECIAL_2, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL_2, 3, AG_WINDOW_LENGTH, 2); //4
set_window_value(AT_DSPECIAL_2, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSPECIAL_2, 3, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_DSPECIAL_2, 3, AG_WINDOW_HAS_WHIFFLAG, 0);

set_num_hitboxes(AT_DSPECIAL_2, 1);

set_hitbox_value(AT_DSPECIAL_2, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_LIFETIME, 100);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_HITBOX_X, 20);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_HITBOX_Y, -48);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_WIDTH, 1);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_HEIGHT, 1);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_DAMAGE, 7); //5
set_hitbox_value(AT_DSPECIAL_2, 1, HG_ANGLE, 80);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_KNOCKBACK_SCALING, 0.3);
// set_hitbox_value(AT_DSPECIAL_2, 1, HG_EXTRA_HITPAUSE, 150);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_PROJECTILE_HSPEED, 5);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_PROJECTILE_GRAVITY, 0.02);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_VISUAL_EFFECT_X_OFFSET, 32);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_PROJECTILE_SPRITE, sprite_get("plane"));
set_hitbox_value(AT_DSPECIAL_2, 1, HG_PROJECTILE_MASK, sprite_get("plane"));
set_hitbox_value(AT_DSPECIAL_2, 1, HG_HIT_SFX, asset_get("sfx_abyss_seed_land"));
			attack = AT_DSPECIAL_2;
			set_attack(AT_DSPECIAL_2);
			break;
		case 12: // BANANARANG (HINT: COMES BACK TO YOU)
set_attack_value(AT_DSPECIAL_2, AG_SPRITE, sprite_get("spell_throw"));
set_window_value(AT_DSPECIAL_2, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL_2, 1, AG_WINDOW_LENGTH, 5);
set_window_value(AT_DSPECIAL_2, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSPECIAL_2, 1, AG_WINDOW_HAS_SFX, 1);
// set_window_value(AT_DSPECIAL_2, 1, AG_WINDOW_SFX, asset_get("sfx_waveland_may"));

set_window_value(AT_DSPECIAL_2, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL_2, 2, AG_WINDOW_LENGTH, 6); //8
set_window_value(AT_DSPECIAL_2, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSPECIAL_2, 2, AG_WINDOW_ANIM_FRAME_START, 1);

set_window_value(AT_DSPECIAL_2, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL_2, 3, AG_WINDOW_LENGTH, 2); //4
set_window_value(AT_DSPECIAL_2, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSPECIAL_2, 3, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_DSPECIAL_2, 3, AG_WINDOW_HAS_WHIFFLAG, 0);

			bananarang = instance_create(x +32*spr_dir, y-64, "obj_article1");
			with (bananarang){
				type = "bananarang";
				state = "forward";
				sprite_index = sprite_get("bananarang");
				image_xscale = other.spr_dir;
				lifespan = 480;
				hsp = other.spr_dir * 7;
				banana_sign = x >= player_id.x;
				current_banana_sign = banana_sign;
				ignores_walls = true;
				with (player_id){ // has to be from player perspective, otherwise crash
					set_hitbox_value(AT_EXTRA_1, 1, HG_HITBOX_X, 0);
	                set_hitbox_value(AT_EXTRA_1, 1, HG_HITBOX_Y, 0);
	                set_hitbox_value(AT_EXTRA_1, 1, HG_WIDTH, 48);
	                set_hitbox_value(AT_EXTRA_1, 1, HG_HEIGHT, 48);
	                set_hitbox_value(AT_EXTRA_1, 1, HG_HIT_SFX, asset_get("sfx_rag_whip"));
				}
			}
			attack = AT_DSPECIAL_2;
			set_attack(AT_DSPECIAL_2);
			break;
		case 13: //
			break;
		case 14: //
			break;
		case 15: //
			break;
		case 16: //
			break;
		case 17: //
			break;
		case 18: //
			break;
		case 19: //
			sound_play(asset_get("sfx_bird_screech"));
			break;
		case 20: //
			break;
		default: //shouldn't happen unless I made a mistake
			hsp = 2;
			break;
	}
	
	spell_activated = false;
	// todo: maybe also reset all the set_attack and hitbox values here?
	magic_meter += 30; // <- temporary, give each spell individual cost later
} else if(time_until_magic > 0){
	// insert whatever should happen during cooldown time here
	//
}


// PIG STUFF
// todo: put this in an actual function you filthy code duplicator...
var articlecount = 0;
var articlesolid = noone;

with(asset_get("obj_article_solid")){
	if (player_id == other.id){
		articlecount++;
		articlesolid = id;
	}
}

if (place_meeting(x, y+1, articlesolid)){
    // x += articlesolid.hsp; // giik changed some article stuff??
}

// SLIPPERY OIL
if (oil_timer > -1){ 
	if (oil_timer > 0){ 
		oil_active = true; 
	}
	oil_timer--; 
}else {
	oil_deactivated = false;
}
if (oil_timer == 0){
	oil_active = false;
	oil_deactivated = true;}

if (oil_active){
    initial_dash_speed = 5;
    wave_land_time = 11;
	wave_land_adj = 1.50;
	wave_friction = .6;
	ground_friction = .02;
	walk_accel = 0.10;
} else if (oil_deactivated){
	initial_dash_speed = initial_dash_speed_base;
	wave_land_time = wave_land_time_base;
	wave_land_adj = wave_land_adj_base;
	wave_friction = wave_friction_base;
	ground_friction = ground_friction_base;
	walk_accel = walk_accel_base;
}

// TURBO SPEED
if (turbospeed_timer > -1){ 
	if (turbospeed_timer > 0){ 
		turbospeed_active = true; 
	}
	turbospeed_timer--; 
}else {
	turbospeed_deactivated = false;
}

if (turbospeed_timer == 0){
	turbospeed_active = false;
	turbospeed_deactivated = true;}

if (turbospeed_active){
    initial_dash_speed = 9;
    dash_speed = 9;
    leave_ground_max = 9;//leave_ground_max_base; 
    max_jump_hsp = 10;
    air_max_speed = 10;
    air_accel = .25;
    wave_land_time = 8;
	wave_land_adj = 1.30;
	wave_friction = .05;
	jump_change = 3;//jump_change_base; 
	jump_speed = 7; //jump_speed_base;
    short_hop_speed = 5;//short_hop_speed_base;
    djump_speed = 7;//djump_speed_base;
    if (hsp != 0 && turbospeed_timer % 3 == 0){
		spawn_hit_fx(x, y, hit_fx_create(sprite_get("speed_fx"), 14));
    }
	
} else if (turbospeed_deactivated){
    initial_dash_speed = initial_dash_speed_base;
    dash_speed = dash_speed_base;
    leave_ground_max = leave_ground_max_base;//leave_ground_max_base; 
    max_jump_hsp = max_jump_hsp_base; 
    air_max_speed = air_max_speed_base;
	air_accel = air_accel_base;
	wave_land_time = wave_land_time_base;
	wave_land_adj = wave_land_adj_base;
	wave_friction = wave_friction_base;
		jump_change = jump_change_base; 
	jump_speed = jump_speed_base;
    short_hop_speed = short_hop_speed_base;
    djump_speed = djump_speed_base;

}

// TURBO JUMP BOING BOIGN
if (turbojump_timer > -1){ 
	if (turbojump_timer > 0){ 
		turbojump_active = true; 
	}
	turbojump_timer--; 
}else {
	turbojump_deactivated = false;
}
if (turbojump_timer == 0){
	turbojump_active = false; 
	turbojump_deactivated = true;
}

if (turbojump_active){
    jump_speed = 13; //jump_speed_base;
    short_hop_speed = 9;//short_hop_speed_base;
    djump_speed = 11;//djump_speed_base;
    leave_ground_max = 6;//leave_ground_max_base; 
    max_jump_hsp = 6;//max_jump_hsp_base; 
    air_max_speed = 6;//air_max_speed_base;
    jump_change = 6;//jump_change_base; 
    air_accel = 0.5;//air_accel_base;
    air_friction = 0.015//air_friction_base;
    gravity_speed = 0.40;//gravity_speed_base;
    max_fall = 9;//max_fall_base;
	fast_fall = 13;//fast_fall_base;
	if (hsp != 0 && turbojump_timer % 3 == 0){
		spawn_hit_fx(x, y, hit_fx_create(sprite_get("jump_fx"), 14));
    }
} else if (turbojump_deactivated){
    jump_speed = jump_speed_base;
    short_hop_speed = short_hop_speed_base;
    djump_speed = djump_speed_base;
    leave_ground_max = leave_ground_max_base; 
    max_jump_hsp = max_jump_hsp_base; 
    air_max_speed = air_max_speed_base;
    jump_change = jump_change_base; 
    air_accel = air_accel_base;
    air_friction = air_friction_base;
    gravity_speed = gravity_speed_base;
    max_fall = max_fall_base;
	fast_fall = fast_fall_base;
}

// #define countdown   nevermind I don't know how the f do I..
// var timer = argument[0]
// if (timer == 0){
// 	timer = argument[0]
// }
// return 