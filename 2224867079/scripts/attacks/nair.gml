set_attack_value(AT_NAIR, AG_CATEGORY, 1);
set_attack_value(AT_NAIR, AG_SPRITE, sprite_get("nair"));
set_attack_value(AT_NAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_NAIR, AG_NUM_WINDOWS, 6);
set_attack_value(AT_NAIR, AG_LANDING_LAG, 4);
set_attack_value(AT_NAIR, AG_HURTBOX_SPRITE, sprite_get("nair_hurt"));

set_window_value(AT_NAIR, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_NAIR, 1, AG_WINDOW_LENGTH, 3);
set_window_value(AT_NAIR, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NAIR, 1, AG_WINDOW_SFX, sound_get("BlueSwish1"));

set_window_value(AT_NAIR, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_NAIR, 2, AG_WINDOW_LENGTH, 2);
set_window_value(AT_NAIR, 2, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_NAIR, 2, AG_WINDOW_ANIM_FRAME_START, 1);

set_window_value(AT_NAIR, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_NAIR, 3, AG_WINDOW_LENGTH, 1);
set_window_value(AT_NAIR, 3, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_NAIR, 3, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_NAIR, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NAIR, 3, AG_WINDOW_SFX, sound_get("BlueSwish1"));

set_window_value(AT_NAIR, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_NAIR, 4, AG_WINDOW_LENGTH, 2);
set_window_value(AT_NAIR, 4, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_NAIR, 4, AG_WINDOW_ANIM_FRAME_START, 1);

set_window_value(AT_NAIR, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_NAIR, 5, AG_WINDOW_LENGTH, 4);
set_window_value(AT_NAIR, 5, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_NAIR, 5, AG_WINDOW_ANIM_FRAME_START, 1);

set_window_value(AT_NAIR, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_NAIR, 6, AG_WINDOW_LENGTH, 11);
set_window_value(AT_NAIR, 6, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NAIR, 6, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_NAIR, 6, AG_WINDOW_HAS_WHIFFLAG, 1);

//Abyss Runes
if has_rune("B") {
    set_window_value(AT_NAIR, 1, AG_WINDOW_LENGTH, 1);
    set_window_value(AT_NAIR, 4, AG_WINDOW_LENGTH, 7);
} else {
    reset_window_value(AT_NAIR, 1, AG_WINDOW_LENGTH);
    reset_window_value(AT_NAIR, 4, AG_WINDOW_LENGTH);
}


set_num_hitboxes(AT_NAIR, 5);

//First Hit
//Right
set_hitbox_value(AT_NAIR, 1, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_NAIR, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_NAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_NAIR, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_NAIR, 1, HG_HITBOX_X, 26);
set_hitbox_value(AT_NAIR, 1, HG_HITBOX_Y, -28);
set_hitbox_value(AT_NAIR, 1, HG_WIDTH, 48);
set_hitbox_value(AT_NAIR, 1, HG_HEIGHT, 60);
set_hitbox_value(AT_NAIR, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_NAIR, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_NAIR, 1, HG_ANGLE, 150);
set_hitbox_value(AT_NAIR, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_NAIR, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_NAIR, 1, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_NAIR, 1, HG_HITPAUSE_SCALING, .4);
set_hitbox_value(AT_NAIR, 1, HG_VISUAL_EFFECT_X_OFFSET, 8);
set_hitbox_value(AT_NAIR, 1, HG_VISUAL_EFFECT_Y_OFFSET, 8);
set_hitbox_value(AT_NAIR, 1, HG_VISUAL_EFFECT, blue_new_stab_2 );
set_hitbox_value(AT_NAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_NAIR, 1, HG_HIT_SFX, sound_get("Hit1"));

//Left
set_hitbox_value(AT_NAIR, 2, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_NAIR, 2, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_NAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 2, HG_WINDOW, 2);
set_hitbox_value(AT_NAIR, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_NAIR, 2, HG_HITBOX_X, -22);
set_hitbox_value(AT_NAIR, 2, HG_HITBOX_Y, -28);
set_hitbox_value(AT_NAIR, 2, HG_WIDTH, 48);
set_hitbox_value(AT_NAIR, 2, HG_HEIGHT, 60);
set_hitbox_value(AT_NAIR, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_NAIR, 2, HG_DAMAGE, 2);
set_hitbox_value(AT_NAIR, 2, HG_ANGLE, 30);
set_hitbox_value(AT_NAIR, 2, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_NAIR, 2, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_NAIR, 2, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_NAIR, 2, HG_HITPAUSE_SCALING, .4);
set_hitbox_value(AT_NAIR, 2, HG_VISUAL_EFFECT_X_OFFSET, 8);
set_hitbox_value(AT_NAIR, 2, HG_VISUAL_EFFECT_Y_OFFSET, 8);
set_hitbox_value(AT_NAIR, 2, HG_VISUAL_EFFECT, blue_new_stab_2 );
set_hitbox_value(AT_NAIR, 2, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_NAIR, 2, HG_HIT_SFX, sound_get("Hit1"));

//Second Hit
//Right
set_hitbox_value(AT_NAIR, 3, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_NAIR, 3, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_NAIR, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 3, HG_WINDOW, 4);
set_hitbox_value(AT_NAIR, 3, HG_LIFETIME, 2);
set_hitbox_value(AT_NAIR, 3, HG_HITBOX_X, 26);
set_hitbox_value(AT_NAIR, 3, HG_HITBOX_Y, -28);
set_hitbox_value(AT_NAIR, 3, HG_WIDTH, 48);
set_hitbox_value(AT_NAIR, 3, HG_HEIGHT, 60);
set_hitbox_value(AT_NAIR, 3, HG_PRIORITY, 3);
set_hitbox_value(AT_NAIR, 3, HG_DAMAGE, 2);
set_hitbox_value(AT_NAIR, 3, HG_ANGLE, 150);
set_hitbox_value(AT_NAIR, 3, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_NAIR, 3, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_NAIR, 3, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_NAIR, 3, HG_HITPAUSE_SCALING, .4);
set_hitbox_value(AT_NAIR, 3, HG_VISUAL_EFFECT_X_OFFSET, 8);
set_hitbox_value(AT_NAIR, 3, HG_VISUAL_EFFECT_Y_OFFSET, 8);
set_hitbox_value(AT_NAIR, 3, HG_VISUAL_EFFECT, blue_new_stab_2 );
set_hitbox_value(AT_NAIR, 3, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_NAIR, 3, HG_HIT_SFX, sound_get("Hit1"));

//Left
set_hitbox_value(AT_NAIR, 4, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_NAIR, 4, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_NAIR, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 4, HG_WINDOW, 4);
set_hitbox_value(AT_NAIR, 4, HG_LIFETIME, 2);
set_hitbox_value(AT_NAIR, 4, HG_HITBOX_X, -22);
set_hitbox_value(AT_NAIR, 4, HG_HITBOX_Y, -28);
set_hitbox_value(AT_NAIR, 4, HG_WIDTH, 48);
set_hitbox_value(AT_NAIR, 4, HG_HEIGHT, 60);
set_hitbox_value(AT_NAIR, 4, HG_PRIORITY, 2);
set_hitbox_value(AT_NAIR, 4, HG_DAMAGE, 2);
set_hitbox_value(AT_NAIR, 4, HG_ANGLE, 30);
set_hitbox_value(AT_NAIR, 4, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_NAIR, 4, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_NAIR, 4, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_NAIR, 4, HG_HITPAUSE_SCALING, .4);
set_hitbox_value(AT_NAIR, 4, HG_VISUAL_EFFECT_X_OFFSET, 8);
set_hitbox_value(AT_NAIR, 4, HG_VISUAL_EFFECT_Y_OFFSET, 8);
set_hitbox_value(AT_NAIR, 4, HG_VISUAL_EFFECT, blue_new_stab_2 );
set_hitbox_value(AT_NAIR, 4, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_NAIR, 4, HG_HIT_SFX, sound_get("Hit1"));

set_hitbox_value(AT_NAIR, 5, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_NAIR, 5, HG_HITBOX_GROUP, 3);
set_hitbox_value(AT_NAIR, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 5, HG_WINDOW, 5);
set_hitbox_value(AT_NAIR, 5, HG_LIFETIME, 4);
set_hitbox_value(AT_NAIR, 5, HG_HITBOX_X, 2);
set_hitbox_value(AT_NAIR, 5, HG_HITBOX_Y, -30);
set_hitbox_value(AT_NAIR, 5, HG_WIDTH, 100);
set_hitbox_value(AT_NAIR, 5, HG_HEIGHT, 60);
set_hitbox_value(AT_NAIR, 5, HG_PRIORITY, 2);
set_hitbox_value(AT_NAIR, 5, HG_DAMAGE, 2);
set_hitbox_value(AT_NAIR, 5, HG_ANGLE, 65);
set_hitbox_value(AT_NAIR, 5, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_NAIR, 5, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(AT_NAIR, 5, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_NAIR, 5, HG_HITPAUSE_SCALING, .4);
set_hitbox_value(AT_NAIR, 5, HG_VISUAL_EFFECT_X_OFFSET, 8);
set_hitbox_value(AT_NAIR, 5, HG_VISUAL_EFFECT_Y_OFFSET, 8);
set_hitbox_value(AT_NAIR, 5, HG_VISUAL_EFFECT, blue_new_stab_1 );
set_hitbox_value(AT_NAIR, 5, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_NAIR, 5, HG_HIT_SFX, sound_get("Hit4"));