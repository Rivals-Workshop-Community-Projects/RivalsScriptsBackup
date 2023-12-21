atk = AT_USPECIAL;

set_attack_value(atk, AG_SPRITE, sprite_get("uspecial"));
set_attack_value(atk, AG_HURTBOX_SPRITE, sprite_get("uspecial_hurt"));
set_attack_value(atk, AG_CATEGORY, 2);
set_attack_value(atk, AG_OFF_LEDGE, 1);

window_num = 1; //windup
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 9);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(atk, window_num, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, window_num, AG_WINDOW_SFX, asset_get("sfx_leaves"));
// set_window_value(atk, window_num, AG_WINDOW_HSPEED_TYPE, 1);
// set_window_value(atk, window_num, AG_WINDOW_VSPEED_TYPE, 1);
// set_window_value(atk, window_num, AG_WINDOW_HSPEED, 0);
// set_window_value(atk, window_num, AG_WINDOW_VSPEED, -3);


window_num ++; //attack
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 3);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(atk, window_num, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, window_num, AG_WINDOW_SFX, asset_get("sfx_waveland_syl"));
set_window_value(atk, window_num, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(atk, window_num, AG_WINDOW_VSPEED_TYPE, 1);

window_num ++; //disappear
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 10);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(atk, window_num, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, window_num, AG_WINDOW_SFX_FRAME, 6);
set_window_value(atk, window_num, AG_WINDOW_SFX, asset_get("sfx_pom_taunt_mic_start"));
// set_window_value(atk, window_num, AG_WINDOW_HSPEED_TYPE, 1);
// set_window_value(atk, window_num, AG_WINDOW_VSPEED_TYPE, 1);

window_num ++; //after tele startup
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 10);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(atk, window_num, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, window_num, AG_WINDOW_SFX_FRAME, 3);
set_window_value(atk, window_num, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy1"));

window_num ++; //active
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 8);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 15);
set_window_value(atk, window_num, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, window_num, AG_WINDOW_SFX, asset_get("sfx_pom_dattack_snap"));

window_num ++; //endlag
set_window_value(atk, window_num, AG_WINDOW_TYPE, 7);
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 24);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 19);

set_attack_value(atk, AG_NUM_WINDOWS, window_num);

window_num ++; //attack movement
// set_window_value(atk, window_num, AG_WINDOW_TYPE, 7);
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 18);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 27);

//////////////////////////////////////////////////////////////// HITBOXES ////////////////////////////////////////////////////////////////


hitbox_num = 1; // pre tp
set_hitbox_value(atk, hitbox_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_GROUP, hitbox_num);
set_hitbox_value(atk, hitbox_num, HG_WINDOW, 2);
set_hitbox_value(atk, hitbox_num, HG_WINDOW_CREATION_FRAME, 0); //should start 1 frame later because before that the character doesn't actually move
set_hitbox_value(atk, hitbox_num, HG_LIFETIME, 3);             //this is done so angle flipper 10 will work properly
set_hitbox_value(atk, hitbox_num, HG_HITBOX_X, 0);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_Y, -28);
set_hitbox_value(atk, hitbox_num, HG_WIDTH, 90);
set_hitbox_value(atk, hitbox_num, HG_HEIGHT, 90);
set_hitbox_value(atk, hitbox_num, HG_PRIORITY, 2);
set_hitbox_value(atk, hitbox_num, HG_DAMAGE, 8);
set_hitbox_value(atk, hitbox_num, HG_ANGLE, 90);
set_hitbox_value(atk, hitbox_num, HG_ANGLE_FLIPPER, 6); //sends foes in the direction you're going
set_hitbox_value(atk, hitbox_num, HG_BASE_KNOCKBACK, 13);
set_hitbox_value(atk, hitbox_num, HG_KNOCKBACK_SCALING, 0.2);
set_hitbox_value(atk, hitbox_num, HG_HITSTUN_MULTIPLIER, 0.7);
set_hitbox_value(atk, hitbox_num, HG_BASE_HITPAUSE, 6);
set_hitbox_value(atk, hitbox_num, HG_HITPAUSE_SCALING, 0.3);
set_hitbox_value(atk, hitbox_num, HG_VISUAL_EFFECT, HFX_MAY_WHIP);
set_hitbox_value(atk, hitbox_num, HG_VISUAL_EFFECT_DISTANCE, 1);
set_hitbox_value(atk, hitbox_num, HG_HIT_SFX, asset_get("sfx_leafy_hit1"));

hitbox_num++; //down
set_hitbox_value(atk, hitbox_num, HG_HITBOX_GROUP, 2);
set_hitbox_value(atk, hitbox_num, HG_WINDOW, 5);
set_hitbox_value(atk, hitbox_num, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(atk, hitbox_num, HG_LIFETIME, 2);
set_hitbox_value(atk, hitbox_num, HG_SHAPE, 0);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_X, 12);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_Y, -24);
set_hitbox_value(atk, hitbox_num, HG_WIDTH, 120);
set_hitbox_value(atk, hitbox_num, HG_HEIGHT, 74);

hitbox_num++; //right
set_hitbox_value(atk, hitbox_num, HG_HITBOX_GROUP, 2);
set_hitbox_value(atk, hitbox_num, HG_WINDOW, 5);
set_hitbox_value(atk, hitbox_num, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(atk, hitbox_num, HG_LIFETIME, 2);
set_hitbox_value(atk, hitbox_num, HG_SHAPE, 0);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_X, 30);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_Y, -58);
set_hitbox_value(atk, hitbox_num, HG_WIDTH, 92);
set_hitbox_value(atk, hitbox_num, HG_HEIGHT, 128);


hitbox_num++; //top
set_hitbox_value(atk, hitbox_num, HG_HITBOX_GROUP, 2);
set_hitbox_value(atk, hitbox_num, HG_WINDOW, 5);
set_hitbox_value(atk, hitbox_num, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(atk, hitbox_num, HG_LIFETIME, 2);
set_hitbox_value(atk, hitbox_num, HG_SHAPE, 0);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_X, 6);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_Y, -88);
set_hitbox_value(atk, hitbox_num, HG_WIDTH, 120);
set_hitbox_value(atk, hitbox_num, HG_HEIGHT, 88);

hitbox_num++; //left
set_hitbox_value(atk, hitbox_num, HG_HITBOX_GROUP, 2);
set_hitbox_value(atk, hitbox_num, HG_WINDOW, 5);
set_hitbox_value(atk, hitbox_num, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(atk, hitbox_num, HG_LIFETIME, 2);
set_hitbox_value(atk, hitbox_num, HG_SHAPE, 0);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_X, -22);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_Y, -64);
set_hitbox_value(atk, hitbox_num, HG_WIDTH, 70);
set_hitbox_value(atk, hitbox_num, HG_HEIGHT, 108);

var hitbox_num2 = 2
repeat(4){
	// print(hitbox_num2)
	set_hitbox_value(atk, hitbox_num2, HG_PRIORITY, 2);
	set_hitbox_value(atk, hitbox_num2, HG_DAMAGE, 7);
	set_hitbox_value(atk, hitbox_num2, HG_ANGLE, 50);
	set_hitbox_value(atk, hitbox_num2, HG_ANGLE_FLIPPER, 6);
	set_hitbox_value(atk, hitbox_num2, HG_BASE_KNOCKBACK, 8);
	set_hitbox_value(atk, hitbox_num2, HG_KNOCKBACK_SCALING, 0.65);
	set_hitbox_value(atk, hitbox_num2, HG_BASE_HITPAUSE, 8);
	set_hitbox_value(atk, hitbox_num2, HG_HITPAUSE_SCALING, 0.5);
	set_hitbox_value(atk, hitbox_num2, HG_HIT_SFX, asset_get("sfx_clairen_hit_strong"));
	set_hitbox_value(atk, hitbox_num2, HG_VISUAL_EFFECT, fstrong_explosion_hfx);
	set_hitbox_value(atk, hitbox_num2, HG_VISUAL_EFFECT_DISTANCE, 1);
	hitbox_num2++;
}

set_num_hitboxes(atk, hitbox_num);