set_attack_value(AT_UAIR, AG_CATEGORY, 1);
set_attack_value(AT_UAIR, AG_SPRITE, sprite_get("uair"));
set_attack_value(AT_UAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_UAIR, AG_LANDING_LAG, 4);
set_attack_value(AT_UAIR, AG_HURTBOX_SPRITE, sprite_get("uair_hurt"));
set_attack_value(AT_UAIR, AG_NUM_WINDOWS, 3);

var ig = 1;

//Up Air Start
set_window_value(AT_UAIR, ig, AG_WINDOW_TYPE, 1);
set_window_value(AT_UAIR, ig, AG_WINDOW_LENGTH, 6); 
set_window_value(AT_UAIR, ig, AG_WINDOW_ANIM_FRAMES, 4);

ig++;

//Up Air Hit
set_window_value(AT_UAIR, ig, AG_WINDOW_TYPE, 1);
set_window_value(AT_UAIR, ig, AG_WINDOW_LENGTH, 14);
set_window_value(AT_UAIR, ig, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_UAIR, ig, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_UAIR, ig, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UAIR, ig, AG_WINDOW_SFX, asset_get("sfx_spin"));

ig++;

//Up Air End
set_window_value(AT_UAIR, ig, AG_WINDOW_TYPE, 1);
set_window_value(AT_UAIR, ig, AG_WINDOW_LENGTH, 8);
set_window_value(AT_UAIR, ig, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_UAIR, ig, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_UAIR, ig, AG_WINDOW_HAS_WHIFFLAG, 1);

ig++;

set_num_hitboxes(AT_UAIR, 6);
ig=1

// Initial HB to draw in 
set_hitbox_value(AT_UAIR, ig, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, ig, HG_HITBOX_GROUP, ig);
set_hitbox_value(AT_UAIR, ig, HG_WINDOW, 2);
set_hitbox_value(AT_UAIR, ig, HG_LIFETIME, 2);
set_hitbox_value(AT_UAIR, ig, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_UAIR, ig, HG_HITBOX_X, 23);
set_hitbox_value(AT_UAIR, ig, HG_HITBOX_Y, -42);
set_hitbox_value(AT_UAIR, ig, HG_WIDTH, 45);
set_hitbox_value(AT_UAIR, ig, HG_HEIGHT, 70);
set_hitbox_value(AT_UAIR, ig, HG_PRIORITY, 2);
set_hitbox_value(AT_UAIR, ig, HG_DAMAGE, 1);
set_hitbox_value(AT_UAIR, ig, HG_ANGLE, 270);
set_hitbox_value(AT_UAIR, ig, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_UAIR, ig, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_UAIR, ig, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_UAIR, ig, HG_TECHABLE, 1);
set_hitbox_value(AT_UAIR, ig, HG_VISUAL_EFFECT_X_OFFSET, 32);
set_hitbox_value(AT_UAIR, ig, HG_VISUAL_EFFECT_Y_OFFSET, -15);
set_hitbox_value(AT_UAIR, ig, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
set_hitbox_value(AT_UAIR, ig, HG_ANGLE_FLIPPER, 10); //9

//secondhitbox


for (ig = 2; ig <= 4; ig++)
{
    set_hitbox_value(AT_UAIR, ig, HG_HITBOX_TYPE, 1);
    set_hitbox_value(AT_UAIR, ig, HG_HITBOX_GROUP, ig);
    set_hitbox_value(AT_UAIR, ig, HG_WINDOW, 2);
    set_hitbox_value(AT_UAIR, ig, HG_LIFETIME, 2);
    set_hitbox_value(AT_UAIR, ig, HG_WINDOW_CREATION_FRAME, (ig*2) - 1);
    set_hitbox_value(AT_UAIR, ig, HG_HITBOX_X, 23);
    set_hitbox_value(AT_UAIR, ig, HG_HITBOX_Y, -42);
    set_hitbox_value(AT_UAIR, ig, HG_WIDTH, 45);
    set_hitbox_value(AT_UAIR, ig, HG_HEIGHT, 70);
    set_hitbox_value(AT_UAIR, ig, HG_PRIORITY, 2);
    set_hitbox_value(AT_UAIR, ig, HG_DAMAGE, 1);
    set_hitbox_value(AT_UAIR, ig, HG_ANGLE, 80);
    set_hitbox_value(AT_UAIR, ig, HG_BASE_KNOCKBACK, 5);
    set_hitbox_value(AT_UAIR, ig, HG_KNOCKBACK_SCALING, 0);
    set_hitbox_value(AT_UAIR, ig, HG_BASE_HITPAUSE, 3);
    set_hitbox_value(AT_UAIR, ig, HG_EXTRA_HITPAUSE, 1);
    set_hitbox_value(AT_UAIR, ig, HG_TECHABLE, 1);
    set_hitbox_value(AT_UAIR, ig, HG_VISUAL_EFFECT_X_OFFSET, 32);
    set_hitbox_value(AT_UAIR, ig, HG_VISUAL_EFFECT_Y_OFFSET, -15);
    set_hitbox_value(AT_UAIR, ig, HG_ANGLE_FLIPPER, 10); //9
    set_hitbox_value(AT_UAIR, ig, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
}
ig++;

set_hitbox_value(AT_UAIR, ig, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, ig, HG_HITBOX_GROUP, ig);
set_hitbox_value(AT_UAIR, ig, HG_WINDOW, 2);
set_hitbox_value(AT_UAIR, ig, HG_LIFETIME, 3);
set_hitbox_value(AT_UAIR, ig, HG_WINDOW_CREATION_FRAME, 13);
set_hitbox_value(AT_UAIR, ig, HG_HITBOX_X, 23);
set_hitbox_value(AT_UAIR, ig, HG_HITBOX_Y, -42);
set_hitbox_value(AT_UAIR, ig, HG_WIDTH, 45);
set_hitbox_value(AT_UAIR, ig, HG_HEIGHT, 70);
set_hitbox_value(AT_UAIR, ig, HG_PRIORITY, 2);
set_hitbox_value(AT_UAIR, ig, HG_DAMAGE, 6);
set_hitbox_value(AT_UAIR, ig, HG_ANGLE, 80);
set_hitbox_value(AT_UAIR, ig, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_UAIR, ig, HG_KNOCKBACK_SCALING, .8);
set_hitbox_value(AT_UAIR, ig, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_UAIR, ig, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_UAIR, ig, HG_TECHABLE, 1);
set_hitbox_value(AT_UAIR, ig, HG_VISUAL_EFFECT_X_OFFSET, 32);
set_hitbox_value(AT_UAIR, ig, HG_VISUAL_EFFECT_Y_OFFSET, -15);
set_hitbox_value(AT_UAIR, ig, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));

//END