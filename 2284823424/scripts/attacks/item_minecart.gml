set_attack_value(AT_EXTRA_3, AG_SPRITE, spr_nspecial_item_minecart);
set_attack_value(AT_EXTRA_3, AG_NUM_WINDOWS, 4);
set_attack_value(AT_EXTRA_3, AG_CATEGORY, 2);
set_attack_value(AT_EXTRA_3, AG_OFF_LEDGE, 1);
set_attack_value(AT_EXTRA_3, AG_HURTBOX_SPRITE, hurtbox_spr);
set_attack_value(AT_EXTRA_3, AG_MUNO_ATTACK_NAME, "NSpecial: Minecart");

if has_rune("M") || has_rune("N"){
	set_attack_value(AT_EXTRA_3, AG_MUNO_ATTACK_COOLDOWN, -9999);
}



//start
set_window_value(AT_EXTRA_3, 1, AG_WINDOW_TYPE, 0);
set_window_value(AT_EXTRA_3, 1, AG_WINDOW_LENGTH, 15);
set_window_value(AT_EXTRA_3, 1, AG_WINDOW_ANIM_FRAMES, 3);

//sweetspot
set_window_value(AT_EXTRA_3, 2, AG_WINDOW_TYPE, 0);
set_window_value(AT_EXTRA_3, 2, AG_WINDOW_LENGTH, 6);
set_window_value(AT_EXTRA_3, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_EXTRA_3, 2, AG_WINDOW_ANIM_FRAME_START, 3);

//looping travel
set_window_value(AT_EXTRA_3, 3, AG_WINDOW_TYPE, 9);
set_window_value(AT_EXTRA_3, 3, AG_WINDOW_LENGTH, 6);
set_window_value(AT_EXTRA_3, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_EXTRA_3, 3, AG_WINDOW_ANIM_FRAME_START, 4);

//end
set_window_value(AT_EXTRA_3, 4, AG_WINDOW_TYPE, 0);
set_window_value(AT_EXTRA_3, 4, AG_WINDOW_LENGTH, 10);
set_window_value(AT_EXTRA_3, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_EXTRA_3, 4, AG_WINDOW_ANIM_FRAME_START, 5);

var i = 2;

repeat(2){
	set_window_value(AT_EXTRA_3, i, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
	set_window_value(AT_EXTRA_3, i, AG_WINDOW_CUSTOM_AIR_FRICTION, 0);
	set_window_value(AT_EXTRA_3, i, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0);
	
	i++;
}



set_num_hitboxes(AT_EXTRA_3, 2);

set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_EXTRA_3, 1, HG_WINDOW, 2);
set_hitbox_value(AT_EXTRA_3, 1, HG_LIFETIME, 5);
// set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_X, 18);
set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_Y, -24);
set_hitbox_value(AT_EXTRA_3, 1, HG_WIDTH, 70);
set_hitbox_value(AT_EXTRA_3, 1, HG_HEIGHT, 48);
set_hitbox_value(AT_EXTRA_3, 1, HG_SHAPE, 2);
set_hitbox_value(AT_EXTRA_3, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_EXTRA_3, 1, HG_DAMAGE, 12);
set_hitbox_value(AT_EXTRA_3, 1, HG_ANGLE, 50);
set_hitbox_value(AT_EXTRA_3, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_EXTRA_3, 1, HG_KNOCKBACK_SCALING, 0.9);
set_hitbox_value(AT_EXTRA_3, 1, HG_BASE_HITPAUSE, 16);
set_hitbox_value(AT_EXTRA_3, 1, HG_HITPAUSE_SCALING, 0.9);
set_hitbox_value(AT_EXTRA_3, 1, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_EXTRA_3, 1, HG_HIT_SFX, asset_get("sfx_shovel_hit_heavy1"));
set_hitbox_value(AT_EXTRA_3, 1, HG_MUNO_HITBOX_NAME, "Early");

set_hitbox_value(AT_EXTRA_3, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_EXTRA_3, 2, HG_WINDOW, 2);
set_hitbox_value(AT_EXTRA_3, 2, HG_WINDOW_CREATION_FRAME, get_window_value(AT_EXTRA_3, 2, AG_WINDOW_LENGTH) - 1);
set_hitbox_value(AT_EXTRA_3, 2, HG_LIFETIME, 120);
// set_hitbox_value(AT_EXTRA_3, 2, HG_HITBOX_X, 18);
set_hitbox_value(AT_EXTRA_3, 2, HG_HITBOX_Y, -20);
set_hitbox_value(AT_EXTRA_3, 2, HG_WIDTH, 64);
set_hitbox_value(AT_EXTRA_3, 2, HG_HEIGHT, 40);
set_hitbox_value(AT_EXTRA_3, 2, HG_SHAPE, 2);
set_hitbox_value(AT_EXTRA_3, 2, HG_PRIORITY, 3);
set_hitbox_value(AT_EXTRA_3, 2, HG_DAMAGE, 9);
set_hitbox_value(AT_EXTRA_3, 2, HG_ANGLE, 50);
set_hitbox_value(AT_EXTRA_3, 2, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_EXTRA_3, 2, HG_KNOCKBACK_SCALING, 0.8);
set_hitbox_value(AT_EXTRA_3, 2, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_EXTRA_3, 2, HG_HITPAUSE_SCALING, 0.8);
// set_hitbox_value(AT_EXTRA_3, 2, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_EXTRA_3, 2, HG_HIT_SFX, asset_get("sfx_shovel_hit_med1"));
set_hitbox_value(AT_EXTRA_3, 2, HG_MUNO_HITBOX_NAME, "Late");