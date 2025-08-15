set_attack_value(AT_BAIR, AG_CATEGORY, 1);
set_attack_value(AT_BAIR, AG_SPRITE, sprite_get("bair"));
set_attack_value(AT_BAIR, AG_HURTBOX_SPRITE, sprite_get("bair_hurt"));
set_attack_value(AT_BAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_BAIR, AG_LANDING_LAG, 8);//dr mario bair-2
set_attack_value(AT_BAIR, AG_NUM_WINDOWS, 5);
set_attack_value(AT_BAIR, AG_MUNO_ATTACK_MISC_ADD, "hello - this move has AUTOCANCEL at window 5. because of the way it is implemented, it might look wrong in munobird. i assure you it works. BAIR LANDING LAG IS 8, AND AUTOCANCEL MAKES IT 4.");

//start
set_window_value(AT_BAIR, 1, AG_WINDOW_LENGTH, 5);//3//4
set_window_value(AT_BAIR, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_BAIR, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_BAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_BAIR, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2"));
set_window_value(AT_BAIR, 1, AG_WINDOW_SFX_FRAME, 3);//1//2

//anticipation
set_window_value(AT_BAIR, 2, AG_WINDOW_LENGTH, 2);
set_window_value(AT_BAIR, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_BAIR, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_BAIR, 2, AG_WINDOW_HSPEED_TYPE, 0);
set_window_value(AT_BAIR, 2, AG_WINDOW_HSPEED, -1.5);
set_window_value(AT_BAIR, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_BAIR, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));

//atk
set_window_value(AT_BAIR, 3, AG_WINDOW_LENGTH, 3);
set_window_value(AT_BAIR, 3, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_BAIR, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_BAIR, 3, AG_WINDOW_HSPEED_TYPE, 0);
set_window_value(AT_BAIR, 3, AG_WINDOW_HSPEED, -1);

//hold
set_window_value(AT_BAIR, 4, AG_WINDOW_LENGTH, 6);//5
set_window_value(AT_BAIR, 4, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_BAIR, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_BAIR, 4, AG_WINDOW_HSPEED_TYPE, 0);
set_window_value(AT_BAIR, 4, AG_WINDOW_HSPEED, 3);

//end
set_window_value(AT_BAIR, 5, AG_WINDOW_LENGTH, 16);//18//15
set_window_value(AT_BAIR, 5, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_BAIR, 5, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_BAIR, 5, AG_WINDOW_HAS_WHIFFLAG, 1);
set_window_value(AT_BAIR, 5, AG_AUTOCANCEL, 1);







set_num_hitboxes(AT_BAIR, 2);

//1
set_hitbox_value(AT_BAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_BAIR, 1, HG_WINDOW, 3);
set_hitbox_value(AT_BAIR, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_BAIR, 1, HG_HITBOX_X, -44);
set_hitbox_value(AT_BAIR, 1, HG_HITBOX_Y, -34);
set_hitbox_value(AT_BAIR, 1, HG_WIDTH, 75);
set_hitbox_value(AT_BAIR, 1, HG_HEIGHT, 46);
set_hitbox_value(AT_BAIR, 1, HG_SHAPE, 2);
set_hitbox_value(AT_BAIR, 1, HG_DAMAGE, 10);//dr mario bair does 14%???//10
set_hitbox_value(AT_BAIR, 1, HG_ANGLE, 361);
set_hitbox_value(AT_BAIR, 1, HG_ANGLE_FLIPPER, 5);
set_hitbox_value(AT_BAIR, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_BAIR, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_BAIR, 1, HG_BASE_KNOCKBACK, 6);//5//6.5
set_hitbox_value(AT_BAIR, 1, HG_KNOCKBACK_SCALING, 0.75);//0.75
set_hitbox_value(AT_BAIR, 1, HG_BASE_HITPAUSE, 10);//ranno bair value
set_hitbox_value(AT_BAIR, 1, HG_HITPAUSE_SCALING, 0.5);//3
set_hitbox_value(AT_BAIR, 1, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_BAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));

//2
set_hitbox_value(AT_BAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_BAIR, 2, HG_WINDOW, 4);
set_hitbox_value(AT_BAIR, 2, HG_LIFETIME, 6);//11//9
set_hitbox_value(AT_BAIR, 2, HG_HITBOX_X, -40);
set_hitbox_value(AT_BAIR, 2, HG_HITBOX_Y, -33);
set_hitbox_value(AT_BAIR, 2, HG_WIDTH, 79);
set_hitbox_value(AT_BAIR, 2, HG_HEIGHT, 30);
set_hitbox_value(AT_BAIR, 2, HG_SHAPE, 2);
set_hitbox_value(AT_BAIR, 2, HG_DAMAGE, 5);
set_hitbox_value(AT_BAIR, 2, HG_ANGLE, 361);
set_hitbox_value(AT_BAIR, 2, HG_ANGLE_FLIPPER, 5);
set_hitbox_value(AT_BAIR, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_BAIR, 2, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_BAIR, 2, HG_BASE_KNOCKBACK, 5);//ranno bair sour value
set_hitbox_value(AT_BAIR, 2, HG_KNOCKBACK_SCALING, 0.4);//ranno bair sour value
set_hitbox_value(AT_BAIR, 2, HG_BASE_HITPAUSE, 6);//ranno bair sour value
set_hitbox_value(AT_BAIR, 2, HG_HITPAUSE_SCALING, 0.25);
set_hitbox_value(AT_BAIR, 2, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_BAIR, 2, HG_HIT_SFX, asset_get("sfx_blow_medium2"));







