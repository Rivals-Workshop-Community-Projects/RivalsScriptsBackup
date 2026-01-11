set_attack_value(AT_BAIR, AG_CATEGORY, 1);
set_attack_value(AT_BAIR, AG_SPRITE, sprite_get("bair"));
set_attack_value(AT_BAIR, AG_NUM_WINDOWS, 3);
set_attack_value(AT_BAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_BAIR, AG_LANDING_LAG, 8);
set_attack_value(AT_BAIR, AG_HURTBOX_SPRITE, sprite_get("bair_hurt"));

//Startup
set_window_value(AT_BAIR, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_BAIR, 1, AG_WINDOW_LENGTH, 16);
set_window_value(AT_BAIR, 1, AG_WINDOW_ANIM_FRAMES, 4);

//Active
set_window_value(AT_BAIR, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_BAIR, 2, AG_WINDOW_LENGTH, 18);
set_window_value(AT_BAIR, 2, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_BAIR, 2, AG_WINDOW_ANIM_FRAME_START, 4);

set_window_value(AT_BAIR, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_BAIR, 2, AG_WINDOW_SFX, asset_get("sfx_bubblespray"));

set_window_value(AT_BAIR, 2, AG_WINDOW_HSPEED, -8);
set_window_value(AT_BAIR, 2, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_BAIR, 2, AG_WINDOW_VSPEED, -1);
set_window_value(AT_BAIR, 2, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_BAIR, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_BAIR, 2, AG_WINDOW_CUSTOM_AIR_FRICTION, 0); // set in attack_update

//End Lag
set_window_value(AT_BAIR, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_BAIR, 3, AG_WINDOW_LENGTH, 12);
set_window_value(AT_BAIR, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_BAIR, 3, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(AT_BAIR, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

//Boing
set_window_value(AT_BAIR, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_BAIR, 4, AG_WINDOW_LENGTH, 24);
set_window_value(AT_BAIR, 4, AG_WINDOW_ANIM_FRAMES, 8);
set_window_value(AT_BAIR, 4, AG_WINDOW_ANIM_FRAME_START, 15);

set_num_hitboxes(AT_BAIR, 1);

set_hitbox_value(AT_BAIR, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_BAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_BAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_BAIR, 1, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_BAIR, 1, HG_LIFETIME, 15);
set_hitbox_value(AT_BAIR, 1, HG_HITBOX_X, -8);
set_hitbox_value(AT_BAIR, 1, HG_HITBOX_Y, -35);
set_hitbox_value(AT_BAIR, 1, HG_WIDTH, 40);
set_hitbox_value(AT_BAIR, 1, HG_HEIGHT, 56);
set_hitbox_value(AT_BAIR, 1, HG_SHAPE, 2);

set_hitbox_value(AT_BAIR, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_BAIR, 1, HG_DAMAGE, 6);
set_hitbox_value(AT_BAIR, 1, HG_ANGLE, 135);
set_hitbox_value(AT_BAIR, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_BAIR, 1, HG_FINAL_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_BAIR, 1, HG_KNOCKBACK_SCALING, .8);
set_hitbox_value(AT_BAIR, 1, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_BAIR, 1, HG_HITPAUSE_SCALING, .8);

set_hitbox_value(AT_BAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_medium3"));
set_hitbox_value(AT_BAIR, 1, HG_VISUAL_EFFECT, 301);