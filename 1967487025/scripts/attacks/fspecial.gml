set_attack_value(AT_FSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_FSPECIAL, AG_SPRITE, sprite_get("fspecial"));
set_attack_value(AT_FSPECIAL, AG_NUM_WINDOWS, 7);
set_attack_value(AT_FSPECIAL, AG_OFF_LEDGE, 1);
set_attack_value(AT_FSPECIAL, AG_HURTBOX_SPRITE, sprite_get("fspecial_hurt"));

set_window_value(AT_FSPECIAL, 1, AG_WINDOW_TYPE, 0);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_HSPEED, 0);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_VSPEED, 0);

set_window_value(AT_FSPECIAL, 2, AG_WINDOW_TYPE, 9);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_LENGTH, 5);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_HSPEED, 0);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_VSPEED, 0);

set_window_value(AT_FSPECIAL, 3, AG_WINDOW_TYPE, 0);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_LENGTH, 14);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_HSPEED, 12);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_VSPEED, 0);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_SFX, sound_get("dash"));
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_SFX_FRAME, 0);


for (var i = 4; i < 8; i++) {
set_window_value(AT_FSPECIAL, i, AG_WINDOW_TYPE, 0);
set_window_value(AT_FSPECIAL, i, AG_WINDOW_LENGTH, 3);
set_window_value(AT_FSPECIAL, i, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL, i, AG_WINDOW_HSPEED, 0);
set_window_value(AT_FSPECIAL, i, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL, i, AG_WINDOW_VSPEED, 0);
}

set_window_value(AT_FSPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 13);
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_ANIM_FRAME_START, 16);
set_window_value(AT_FSPECIAL, 7, AG_WINDOW_LENGTH, 6);
set_window_value(AT_FSPECIAL, 7, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_FSPECIAL, 7, AG_WINDOW_ANIM_FRAME_START, 19);


set_window_value(AT_FSPECIAL, 8, AG_WINDOW_TYPE, 7);
set_window_value(AT_FSPECIAL, 8, AG_WINDOW_LENGTH, 16);
set_window_value(AT_FSPECIAL, 8, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FSPECIAL, 8, AG_WINDOW_ANIM_FRAME_START, 25);
set_window_value(AT_FSPECIAL, 8, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL, 8, AG_WINDOW_HSPEED, 0);
set_window_value(AT_FSPECIAL, 8, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL, 8, AG_WINDOW_VSPEED, 0);



set_num_hitboxes(AT_FSPECIAL, 5);

set_hitbox_value(AT_FSPECIAL, 1, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL, 1, HG_WINDOW, 3);
set_hitbox_value(AT_FSPECIAL, 1, HG_LIFETIME, 14);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_X, 0);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_Y, -35);
set_hitbox_value(AT_FSPECIAL, 1, HG_WIDTH, 50);
set_hitbox_value(AT_FSPECIAL, 1, HG_HEIGHT, 45);
set_hitbox_value(AT_FSPECIAL, 1, HG_SHAPE, 0);
set_hitbox_value(AT_FSPECIAL, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_FSPECIAL, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_FSPECIAL, 1, HG_ANGLE, 50);
set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_FSPECIAL, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_FSPECIAL, 1, HG_EXTRA_HITPAUSE, 2);
set_hitbox_value(AT_FSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(AT_FSPECIAL, 1, HG_IGNORES_PROJECTILES, 1);
set_hitbox_value(AT_FSPECIAL, 1, HG_VISUAL_EFFECT, 302);

for (var i = 2; i < 6; i++) {
set_hitbox_value(AT_FSPECIAL, i, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_FSPECIAL, i, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL, i, HG_WINDOW, 2 + i);
set_hitbox_value(AT_FSPECIAL, i, HG_LIFETIME, 1);
set_hitbox_value(AT_FSPECIAL, i, HG_HITBOX_X, 30);
set_hitbox_value(AT_FSPECIAL, i, HG_HITBOX_Y, -28);
set_hitbox_value(AT_FSPECIAL, i, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_FSPECIAL, i, HG_WIDTH, 67);
set_hitbox_value(AT_FSPECIAL, i, HG_HEIGHT, 60);
set_hitbox_value(AT_FSPECIAL, i, HG_SHAPE, 0);
set_hitbox_value(AT_FSPECIAL, i, HG_PRIORITY, 2);
set_hitbox_value(AT_FSPECIAL, i, HG_DAMAGE, 2);
set_hitbox_value(AT_FSPECIAL, i, HG_ANGLE, 50);
set_hitbox_value(AT_FSPECIAL, i, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_FSPECIAL, i, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_FSPECIAL, i, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_FSPECIAL, i, HG_EXTRA_HITPAUSE, 6);
set_hitbox_value(AT_FSPECIAL, i, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_FSPECIAL, i, HG_HITSTUN_MULTIPLIER, 0.6);
set_hitbox_value(AT_FSPECIAL, i, HG_SDI_MULTIPLIER, 0);
set_hitbox_value(AT_FSPECIAL, i, HG_VISUAL_EFFECT, 303);
}

set_hitbox_value(AT_FSPECIAL, 5, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_FSPECIAL, 5, HG_KNOCKBACK_SCALING, 0.5);
set_hitbox_value(AT_FSPECIAL, 5, HG_BASE_HITPAUSE, 12);
set_hitbox_value(AT_FSPECIAL, 5, HG_HITPAUSE_SCALING, .7);
set_hitbox_value(AT_FSPECIAL, 5, HG_ANGLE, 45);
set_hitbox_value(AT_FSPECIAL, 5, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_FSPECIAL, 5, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
set_hitbox_value(AT_FSPECIAL, 5, HG_EXTRA_HITPAUSE, -8);
set_hitbox_value(AT_FSPECIAL, 5, HG_HITSTUN_MULTIPLIER, .8);
set_hitbox_value(AT_FSPECIAL, 5, HG_VISUAL_EFFECT, 304);

