set_attack_value(AT_USPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_USPECIAL, AG_SPRITE, sprite_get("uspecial"));
set_attack_value(AT_USPECIAL, AG_NUM_WINDOWS, 6);
set_attack_value(AT_USPECIAL, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_USPECIAL, AG_OFF_LEDGE, 1);
set_attack_value(AT_USPECIAL, AG_AIR_SPRITE, sprite_get("uspecialAir"));
set_attack_value(AT_USPECIAL, AG_HURTBOX_SPRITE, sprite_get("uspecial_hurt"));
set_attack_value(AT_USPECIAL, AG_USES_CUSTOM_GRAVITY, 1);


set_window_value(AT_USPECIAL, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_CUSTOM_GRAVITY, 0);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.25);

//suitcase attack
set_window_value(AT_USPECIAL, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_LENGTH, 2);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_CUSTOM_GRAVITY, 0);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.25);

set_window_value(AT_USPECIAL, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_LENGTH, 10);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_CUSTOM_GRAVITY, 0);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.5);

//spin attack
set_window_value(AT_USPECIAL, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_LENGTH, 18);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_CUSTOM_GRAVITY, 0.1);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.15);

//fly
set_window_value(AT_USPECIAL, 5, AG_WINDOW_TYPE, 9);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_LENGTH, 60);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_ANIM_FRAMES, 60);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 15);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_CUSTOM_GRAVITY, 0.2);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.2);

set_window_value(AT_USPECIAL, 6, AG_WINDOW_TYPE, 7);
set_window_value(AT_USPECIAL, 6, AG_WINDOW_LENGTH, 12);
set_window_value(AT_USPECIAL, 6, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_USPECIAL, 6, AG_WINDOW_ANIM_FRAME_START, 75);
set_window_value(AT_USPECIAL, 6, AG_WINDOW_CUSTOM_GRAVITY, 0.1);
set_window_value(AT_USPECIAL, 6, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_USPECIAL, 6, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.2);
set_window_value(AT_USPECIAL, 6, AG_WINDOW_HAS_WHIFFLAG, 1);


var loopHitboxes = 5;
set_num_hitboxes(AT_USPECIAL, 2+loopHitboxes);

set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 1, HG_WINDOW, 2);
set_hitbox_value(AT_USPECIAL, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_Y, -64);
set_hitbox_value(AT_USPECIAL, 1, HG_WIDTH, 42);
set_hitbox_value(AT_USPECIAL, 1, HG_HEIGHT, 64);
set_hitbox_value(AT_USPECIAL, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_USPECIAL, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_USPECIAL, 1, HG_ANGLE, 90);
set_hitbox_value(AT_USPECIAL, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_USPECIAL, 1, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_USPECIAL, 1, HG_VISUAL_EFFECT, 303);
set_hitbox_value(AT_USPECIAL, 1, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_GROUP, -1);

for(var i = 0; i <= loopHitboxes; i++)
{
    set_hitbox_value(AT_USPECIAL, 2+i, HG_HITBOX_TYPE, 1);
    set_hitbox_value(AT_USPECIAL, 2+i, HG_WINDOW, 4);
    set_hitbox_value(AT_USPECIAL, 2+i, HG_WINDOW_CREATION_FRAME, i * 3);
    set_hitbox_value(AT_USPECIAL, 2+i, HG_LIFETIME, 1);
    set_hitbox_value(AT_USPECIAL, 2+i, HG_HITBOX_Y, -64);
    set_hitbox_value(AT_USPECIAL, 2+i, HG_WIDTH, 60);
    set_hitbox_value(AT_USPECIAL, 2+i, HG_HEIGHT, 90);
    set_hitbox_value(AT_USPECIAL, 2+i, HG_SHAPE, 2);
    set_hitbox_value(AT_USPECIAL, 2+i, HG_PRIORITY, 1);
    set_hitbox_value(AT_USPECIAL, 2+i, HG_DAMAGE, 1);
    set_hitbox_value(AT_USPECIAL, 2+i, HG_ANGLE, 90);
    set_hitbox_value(AT_USPECIAL, 2+i, HG_BASE_KNOCKBACK, 5);
    set_hitbox_value(AT_USPECIAL, 2+i, HG_BASE_HITPAUSE, 4);
    set_hitbox_value(AT_USPECIAL, 2+i, HG_VISUAL_EFFECT, 302);
    set_hitbox_value(AT_USPECIAL, 2+i, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
    set_hitbox_value(AT_USPECIAL, 2+i, HG_HITBOX_GROUP, -1);
}


set_hitbox_value(AT_USPECIAL, 2+loopHitboxes, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 2+loopHitboxes, HG_WINDOW, 4);
set_hitbox_value(AT_USPECIAL, 2+loopHitboxes, HG_WINDOW_CREATION_FRAME, loopHitboxes * 3);
set_hitbox_value(AT_USPECIAL, 2+loopHitboxes, HG_LIFETIME, 2);
set_hitbox_value(AT_USPECIAL, 2+loopHitboxes, HG_HITBOX_Y, -84);
set_hitbox_value(AT_USPECIAL, 2+loopHitboxes, HG_WIDTH, 50);
set_hitbox_value(AT_USPECIAL, 2+loopHitboxes, HG_HEIGHT, 32);
set_hitbox_value(AT_USPECIAL, 2+loopHitboxes, HG_SHAPE, 0);
set_hitbox_value(AT_USPECIAL, 2+loopHitboxes, HG_PRIORITY, 1);
set_hitbox_value(AT_USPECIAL, 2+loopHitboxes, HG_DAMAGE, 8);
set_hitbox_value(AT_USPECIAL, 2+loopHitboxes, HG_ANGLE, 90);
set_hitbox_value(AT_USPECIAL, 2+loopHitboxes, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_USPECIAL, 2+loopHitboxes, HG_KNOCKBACK_SCALING, .4);
set_hitbox_value(AT_USPECIAL, 2+loopHitboxes, HG_BASE_HITPAUSE, 20);
set_hitbox_value(AT_USPECIAL, 2+loopHitboxes, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_USPECIAL, 2+loopHitboxes, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_USPECIAL, 2+loopHitboxes, HG_HITBOX_GROUP, -1);
