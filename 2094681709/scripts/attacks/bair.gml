set_attack_value(AT_BAIR, AG_CATEGORY, 1);
set_attack_value(AT_BAIR, AG_SPRITE, sprite_get("bair"));
set_attack_value(AT_BAIR, AG_NUM_WINDOWS, 3);
set_attack_value(AT_BAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_BAIR, AG_LANDING_LAG, 14);
set_attack_value(AT_BAIR, AG_HURTBOX_SPRITE, sprite_get("bair_hurt"));
set_attack_value(AT_BAIR, AG_USES_CUSTOM_GRAVITY, 1);

set_window_value(AT_BAIR, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_BAIR, 1, AG_WINDOW_LENGTH, 18);
set_window_value(AT_BAIR, 1, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_BAIR, 1, AG_WINDOW_VSPEED, -1);
set_window_value(AT_BAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_BAIR, 1, AG_WINDOW_SFX, sound_get("rev3"));
set_window_value(AT_BAIR, 1, AG_WINDOW_SFX_FRAME, 5);
set_window_value(AT_BAIR, 1, AG_WINDOW_CUSTOM_GRAVITY, 1.15);

set_window_value(AT_BAIR, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_BAIR, 2, AG_WINDOW_LENGTH, 16);
set_window_value(AT_BAIR, 2, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_BAIR, 2, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_BAIR, 2, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_BAIR, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_BAIR, 2, AG_WINDOW_SFX, asset_get("sfx_burnapplied"));
set_window_value(AT_BAIR, 2, AG_WINDOW_VSPEED, -5);
set_window_value(AT_BAIR, 2, AG_WINDOW_HSPEED, 6);
set_window_value(AT_BAIR, 2, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_BAIR, 2, AG_WINDOW_CUSTOM_GRAVITY, .75);

set_window_value(AT_BAIR, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_BAIR, 3, AG_WINDOW_LENGTH, 8);
set_window_value(AT_BAIR, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_BAIR, 3, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(AT_BAIR, 3, AG_WINDOW_HAS_WHIFFLAG, 4);
set_window_value(AT_BAIR, 3, AG_WINDOW_CUSTOM_GRAVITY, .75);

set_num_hitboxes(AT_BAIR, 2);

set_hitbox_value(AT_BAIR, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_BAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_BAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_BAIR, 1, HG_LIFETIME, 6);
set_hitbox_value(AT_BAIR, 1, HG_HITBOX_Y, 0);
set_hitbox_value(AT_BAIR, 1, HG_HITBOX_X, -85);
set_hitbox_value(AT_BAIR, 1, HG_WIDTH, 60);
set_hitbox_value(AT_BAIR, 1, HG_HEIGHT, 45);
set_hitbox_value(AT_BAIR, 1, HG_SHAPE, 0);
set_hitbox_value(AT_BAIR, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_BAIR, 1, HG_DAMAGE, 14);
set_hitbox_value(AT_BAIR, 1, HG_ANGLE, 140);
set_hitbox_value(AT_BAIR, 1, HG_BASE_KNOCKBACK, 8.8);
set_hitbox_value(AT_BAIR, 1, HG_KNOCKBACK_SCALING, .75);
set_hitbox_value(AT_BAIR, 1, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_BAIR, 1, HG_HITPAUSE_SCALING, .33);
set_hitbox_value(AT_BAIR, 1, HG_VISUAL_EFFECT_Y_OFFSET, 1);
set_hitbox_value(AT_BAIR, 1, HG_VISUAL_EFFECT, 4);
set_hitbox_value(AT_BAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));


set_hitbox_value(AT_BAIR, 2, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_BAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_BAIR, 2, HG_WINDOW, 2);
set_hitbox_value(AT_BAIR, 2, HG_LIFETIME, 8);
set_hitbox_value(AT_BAIR, 2, HG_HITBOX_Y, -24);
set_hitbox_value(AT_BAIR, 2, HG_HITBOX_X, 32);
set_hitbox_value(AT_BAIR, 2, HG_WIDTH, 90);
set_hitbox_value(AT_BAIR, 2, HG_HEIGHT, 35);
set_hitbox_value(AT_BAIR, 2, HG_SHAPE, 0);
set_hitbox_value(AT_BAIR, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_BAIR, 2, HG_DAMAGE, 7);
set_hitbox_value(AT_BAIR, 2, HG_ANGLE, 72);
set_hitbox_value(AT_BAIR, 2, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_BAIR, 2, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(AT_BAIR, 2, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_BAIR, 2, HG_HITPAUSE_SCALING, .33);
set_hitbox_value(AT_BAIR, 2, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));






set_hitbox_value(AT_BAIR, 1, HG_PROJECTILE_HSPEED, 9); //These values are how fast they bounce off of enemies if the attack lands.
set_hitbox_value(AT_BAIR, 1, HG_PROJECTILE_VSPEED, -7); 