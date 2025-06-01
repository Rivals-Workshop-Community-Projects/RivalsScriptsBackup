#macro atk AT_FSPECIAL
#macro av set_attack_value
#macro win set_window_value
#macro hv set_hitbox_value

av(atk, AG_CATEGORY, 2);
av(atk, AG_OFF_LEDGE, 1);
av(atk, AG_SPRITE, sprite_get("fspecial"));
av(atk, AG_NUM_WINDOWS, 5);
av(atk, AG_USES_CUSTOM_GRAVITY, 1);
av(atk, AG_HURTBOX_SPRITE, sprite_get("fspecial_hurt"));
av(atk, AG_MUNO_ATTACK_NAME, "FSpecial (Jump Disc)");
av(atk, AG_MUNO_ATTACK_MISC, "If a bike is stored, pressing Shield will warp to the disc and get on the bike instead. Otherwise pressing or holding Special will warp to the disc while doing nothing will result in the disc coming backwards.");

win(atk, 1, AG_WINDOW_TYPE, 2);
win(atk, 1, AG_WINDOW_LENGTH, 18);
win(atk, 1, AG_WINDOW_ANIM_FRAMES, 1);
win(atk, 1, AG_WINDOW_CUSTOM_GRAVITY, .3)
win(atk, 1, AG_WINDOW_HAS_SFX, 1);
win(atk, 1, AG_WINDOW_SFX, sound_get("disc_throw"));
win(atk, 1, AG_WINDOW_SFX_FRAME, 17);

win(atk, 2, AG_WINDOW_TYPE, 2);
win(atk, 2, AG_WINDOW_LENGTH, 11);
win(atk, 2, AG_WINDOW_ANIM_FRAMES, 3);
win(atk, 2, AG_WINDOW_ANIM_FRAME_START, 1);
win(atk, 2, AG_WINDOW_CUSTOM_GRAVITY, .3)

win(atk, 3, AG_WINDOW_TYPE, 2);
win(atk, 3, AG_WINDOW_LENGTH, 27);
win(atk, 3, AG_WINDOW_ANIM_FRAMES, 1);
win(atk, 3, AG_WINDOW_ANIM_FRAME_START, 3);
win(atk, 3, AG_WINDOW_CUSTOM_GRAVITY, .3)

win(atk, 4, AG_WINDOW_TYPE, 2);
win(atk, 4, AG_WINDOW_LENGTH, 20);
win(atk, 4, AG_WINDOW_ANIM_FRAMES, 16);
win(atk, 4, AG_WINDOW_ANIM_FRAME_START, 4);

win(atk, 5, AG_WINDOW_TYPE, 2);
win(atk, 5, AG_WINDOW_LENGTH, 32);
win(atk, 5, AG_WINDOW_ANIM_FRAMES, 16);
win(atk, 5, AG_WINDOW_ANIM_FRAME_START, 20);
//win(atk, 5, AG_WINDOW_HSPEED_TYPE, 2);
//win(atk, 5, AG_WINDOW_HSPEED, 3);
//win(atk, 5, AG_WINDOW_VSPEED_TYPE, 2);
//win(atk, 5, AG_WINDOW_VSPEED, -4);
win(atk, 5, AG_WINDOW_HAS_SFX, 1);
win(atk, 5, AG_WINDOW_SFX, sound_get("spin_jump"));
win(atk, 5, AG_WINDOW_SFX_FRAME, 1);


set_num_hitboxes(atk, 2);

hv(atk, 1, HG_HITBOX_TYPE, 2);
hv(atk, 1, HG_WINDOW, 2);
hv(atk, 1, HG_SHAPE, 0);
hv(atk, 1, HG_HITBOX_GROUP, 1);
hv(atk, 1, HG_LIFETIME, 38);
hv(atk, 1, HG_HITBOX_X, 30);
hv(atk, 1, HG_HITBOX_Y, -26);
hv(atk, 1, HG_PRIORITY, 9);
hv(atk, 1, HG_DAMAGE, 4);
//hv(atk, 1, HG_TECHABLE, 2);
hv(atk, 1, HG_VISUAL_EFFECT, hit_proj);

hv(atk, 1, HG_BASE_KNOCKBACK, 5);
hv(atk, 1, HG_KNOCKBACK_SCALING, 0.3);
hv(atk, 1, HG_BASE_HITPAUSE, 6);
hv(atk, 1, HG_HITPAUSE_SCALING, 0.4);
hv(atk, 1, HG_ANGLE, 90);
hv(atk, 1, HG_HITSTUN_MULTIPLIER, 0.5);
hv(atk, 1, HG_IGNORES_PROJECTILES, true);
hv(atk, 1, HG_PROJECTILE_SPRITE, sprite_get("fspecial_proj"));
hv(atk, 1, HG_PROJECTILE_MASK, sprite_get("fspecial_proj"));
hv(atk, 1, HG_PROJECTILE_ANIM_SPEED, 1);
hv(atk, 1, HG_PROJECTILE_WALL_BEHAVIOR, 0);
hv(atk, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 0);
hv(atk, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
hv(atk, 1, HG_PROJECTILE_UNBASHABLE, 1);
hv(atk, 1, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
hv(atk, 1, HG_PROJECTILE_IS_TRANSCENDENT, 1);
hv(atk, 1, HG_PROJECTILE_PLASMA_SAFE, 1);
hv(atk, 1, HG_PROJECTILE_PARRY_STUN, 1);
hv(atk, 1, HG_HIT_SFX, sound_get("hit_deep"));
hv(atk, 1, HG_MUNO_HITBOX_MISC_ADD, "On contact with parked bike will pick the bike up and turn into a spinning bike. Can hit Carol in this mode from active frame 27 onwards. Being hit in this mode will cause DSpecial to automatically be activated.");

hv(atk, 2, HG_HITBOX_TYPE, 1);
hv(atk, 2, HG_WINDOW, 4);
hv(atk, 2, HG_WINDOW_CREATION_FRAME, 1);
hv(atk, 2, HG_HITBOX_GROUP, 2);
hv(atk, 2, HG_LIFETIME, 15);
hv(atk, 2, HG_HITBOX_X, 0);
hv(atk, 2, HG_HITBOX_Y, -28);
hv(atk, 2, HG_WIDTH, 66);
hv(atk, 2, HG_HEIGHT, 66);
hv(atk, 2, HG_PRIORITY, 2);
hv(atk, 2, HG_DAMAGE, 5);
hv(atk, 2, HG_ANGLE, 60);
hv(atk, 2, HG_BASE_KNOCKBACK, 6);
hv(atk, 2, HG_KNOCKBACK_SCALING, 0.35);
hv(atk, 2, HG_BASE_HITPAUSE, 7);
hv(atk, 2, HG_HITPAUSE_SCALING, .2);
hv(atk, 2, HG_VISUAL_EFFECT, hit_large);
hv(atk, 2, HG_VISUAL_EFFECT_X_OFFSET, 32);
hv(atk, 2, HG_HITSTUN_MULTIPLIER, .55);
hv(atk, 2, HG_HIT_SFX, sound_get("hit_heavy"));

if has_rune ("O")
{
    hv(atk, 1, HG_BASE_KNOCKBACK, 12);
    hv(atk, 1, HG_KNOCKBACK_SCALING, 1);
    hv(atk, 2, HG_BASE_KNOCKBACK, 12);
    hv(atk, 2, HG_KNOCKBACK_SCALING, 1);
}

