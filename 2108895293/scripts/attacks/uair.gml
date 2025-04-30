set_attack_value(AT_UAIR, AG_CATEGORY, 1);
set_attack_value(AT_UAIR, AG_SPRITE, sprite_get("uair"));
set_attack_value(AT_UAIR, AG_NUM_WINDOWS, 7);
set_attack_value(AT_UAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_UAIR, AG_LANDING_LAG, 4);//7//6
set_attack_value(AT_UAIR, AG_HURTBOX_SPRITE, sprite_get("uair_hurt"));

set_window_value(AT_UAIR, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_UAIR, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_UAIR, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_UAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UAIR, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));
set_window_value(AT_UAIR, 1, AG_WINDOW_SFX_FRAME, 7);

set_window_value(AT_UAIR, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_UAIR, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_UAIR, 2, AG_WINDOW_ANIM_FRAMES, 1);

set_window_value(AT_UAIR, 3, AG_WINDOW_LENGTH, 13);
set_window_value(AT_UAIR, 3, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_UAIR, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_UAIR, 3, AG_WINDOW_HAS_WHIFFLAG, 1);
set_window_value(AT_UAIR, 3, AG_WINDOW_CANCEL_TYPE, 1);
set_window_value(AT_UAIR, 3, AG_WINDOW_CANCEL_FRAME, 111); //5);

//part 2
set_window_value(AT_UAIR, 4, AG_WINDOW_LENGTH, 6);
set_window_value(AT_UAIR, 4, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_UAIR, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_UAIR, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UAIR, 4, AG_WINDOW_SFX, asset_get("sfx_swipe_weak2"));
set_window_value(AT_UAIR, 4, AG_WINDOW_SFX_FRAME, 5);

set_window_value(AT_UAIR, 5, AG_WINDOW_LENGTH, 4);
set_window_value(AT_UAIR, 5, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_UAIR, 5, AG_WINDOW_ANIM_FRAMES, 1);

set_window_value(AT_UAIR, 6, AG_WINDOW_LENGTH, 14);//11
set_window_value(AT_UAIR, 6, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_UAIR, 6, AG_WINDOW_ANIM_FRAMES, 2);

set_window_value(AT_UAIR, 7, AG_WINDOW_LENGTH, 14);//11
set_window_value(AT_UAIR, 7, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_UAIR, 7, AG_WINDOW_ANIM_FRAMES, 2);

set_num_hitboxes(AT_UAIR, 1); 

set_hitbox_value(AT_UAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_UAIR, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_UAIR, 1, HG_HITBOX_X, -2);
set_hitbox_value(AT_UAIR, 1, HG_HITBOX_Y, -60);
set_hitbox_value(AT_UAIR, 1, HG_WIDTH, 71);
set_hitbox_value(AT_UAIR, 1, HG_HEIGHT, 58);
set_hitbox_value(AT_UAIR, 1, HG_SHAPE, 2);
set_hitbox_value(AT_UAIR, 1, HG_DAMAGE, 7);
set_hitbox_value(AT_UAIR, 1, HG_ANGLE, 90);
set_hitbox_value(AT_UAIR, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_UAIR, 1, HG_BASE_KNOCKBACK, 7.5);
set_hitbox_value(AT_UAIR, 1, HG_KNOCKBACK_SCALING, 0.5);
set_hitbox_value(AT_UAIR, 1, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_UAIR, 1, HG_HITPAUSE_SCALING, .35);
set_hitbox_value(AT_UAIR, 1, HG_VISUAL_EFFECT, 303);
set_hitbox_value(AT_UAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_medium1"));




set_hitbox_value(AT_UAIR, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_UAIR, 2, HG_LIFETIME, 6);

set_hitbox_value(AT_UAIR, 2, HG_HITBOX_X, 0);
set_hitbox_value(AT_UAIR, 2, HG_HITBOX_Y, 0);

set_hitbox_value(AT_UAIR, 2, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_UAIR, 2, HG_PROJECTILE_MASK, -1);

set_hitbox_value(AT_UAIR, 2, HG_SHAPE, 0);
set_hitbox_value(AT_UAIR, 2, HG_WIDTH, 76);
set_hitbox_value(AT_UAIR, 2, HG_HEIGHT, 76);

set_hitbox_value(AT_UAIR, 2, HG_DAMAGE, 8);//absa uair
set_hitbox_value(AT_UAIR, 2, HG_ANGLE, 90);//absa uair
set_hitbox_value(AT_UAIR, 2, HG_ANGLE_FLIPPER, 6);//absa uair
set_hitbox_value(AT_UAIR, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_UAIR, 2, HG_BASE_KNOCKBACK, 7);//absa uair
set_hitbox_value(AT_UAIR, 2, HG_KNOCKBACK_SCALING, 1);//absa uair but a little weak
set_hitbox_value(AT_UAIR, 2, HG_BASE_HITPAUSE, 10);//absa uair
set_hitbox_value(AT_UAIR, 2, HG_HITPAUSE_SCALING, 0.8);//absa uair
set_hitbox_value(AT_UAIR, 2, HG_VISUAL_EFFECT, 110);
set_hitbox_value(AT_UAIR, 2, HG_PROJECTILE_DESTROY_EFFECT, 109);
set_hitbox_value(AT_UAIR, 2, HG_HIT_SFX, asset_get("sfx_holy_lightning"));

set_hitbox_value(AT_UAIR, 2, HG_PROJECTILE_DOES_NOT_REFLECT, 0);
set_hitbox_value(AT_UAIR, 2, HG_PROJECTILE_PARRY_STUN, 1);







