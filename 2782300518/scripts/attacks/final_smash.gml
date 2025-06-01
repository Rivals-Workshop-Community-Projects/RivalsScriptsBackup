#macro atk 49
#macro av set_attack_value
#macro win set_window_value
#macro hv set_hitbox_value

av(atk, AG_CATEGORY, 2);
av(atk, AG_OFF_LEDGE, 1);
av(atk, AG_SPRITE, sprite_get("final_smash"));
av(atk, AG_NUM_WINDOWS, 8);
av(atk, AG_USES_CUSTOM_GRAVITY, 1);
av(atk, AG_HURTBOX_SPRITE, sprite_get("final_smash_hurt"));
av(atk, AG_MUNO_ATTACK_NAME, "Final Smash (Proto Bike)");
av(atk, AG_MUNO_ATTACK_MISC, "Carol's bike transforms into a prototype underwater version");

win(atk, 1, AG_WINDOW_LENGTH, 35);
win(atk, 1, AG_WINDOW_ANIM_FRAMES, 7);
win(atk, 1, AG_WINDOW_CUSTOM_GRAVITY, .3)

win(atk, 2, AG_WINDOW_LENGTH, 180);
win(atk, 2, AG_WINDOW_ANIM_FRAMES, 1);
win(atk, 2, AG_WINDOW_ANIM_FRAME_START, 7);
win(atk, 2, AG_WINDOW_CUSTOM_GRAVITY, .3)
win(atk, 2, AG_WINDOW_HAS_SFX, 1);
win(atk, 2, AG_WINDOW_SFX, sound_get("disc_throw"));
win(atk, 2, AG_WINDOW_SFX_FRAME, 179);

win(atk, 3, AG_WINDOW_LENGTH, 11);
win(atk, 3, AG_WINDOW_ANIM_FRAMES, 3);
win(atk, 3, AG_WINDOW_ANIM_FRAME_START, 8);
win(atk, 3, AG_WINDOW_CUSTOM_GRAVITY, .3)

win(atk, 4, AG_WINDOW_LENGTH, 25);
win(atk, 4, AG_WINDOW_ANIM_FRAMES, 1);
win(atk, 4, AG_WINDOW_ANIM_FRAME_START, 10);
win(atk, 4, AG_WINDOW_CUSTOM_GRAVITY, .3)

win(atk, 5, AG_WINDOW_TYPE, 9);
win(atk, 5, AG_WINDOW_LENGTH, 30);
win(atk, 5, AG_WINDOW_ANIM_FRAMES, 6);
win(atk, 5, AG_WINDOW_ANIM_FRAME_START, 11);
win(atk, 5, AG_WINDOW_CUSTOM_GRAVITY, .3)

win(atk, 6, AG_WINDOW_LENGTH, 20);
win(atk, 6, AG_WINDOW_ANIM_FRAMES, 16);
win(atk, 6, AG_WINDOW_ANIM_FRAME_START, 17);

win(atk, 7, AG_WINDOW_LENGTH, 3);
win(atk, 7, AG_WINDOW_ANIM_FRAMES, 1);
win(atk, 7, AG_WINDOW_ANIM_FRAME_START, 33);
win(atk, 7, AG_WINDOW_CUSTOM_GRAVITY, 0);

win(atk, 8, AG_WINDOW_LENGTH, 18);
win(atk, 8, AG_WINDOW_ANIM_FRAMES, 4);
win(atk, 8, AG_WINDOW_ANIM_FRAME_START, 34);
win(atk, 8, AG_WINDOW_CUSTOM_GRAVITY, .5);

set_num_hitboxes(atk, 2);

hv(atk, 1, HG_HITBOX_TYPE, 2);
hv(atk, 1, HG_SHAPE, 0);
hv(atk, 1, HG_HITBOX_GROUP, 1);
hv(atk, 1, HG_LIFETIME, 38);
hv(atk, 1, HG_HITBOX_X, 36);
hv(atk, 1, HG_HITBOX_Y, -55);
hv(atk, 1, HG_PRIORITY, 9);
hv(atk, 1, HG_DAMAGE, 7);
hv(atk, 1, HG_VISUAL_EFFECT, hit_proj);

hv(atk, 1, HG_BASE_KNOCKBACK, 8);
hv(atk, 1, HG_BASE_HITPAUSE, 3);
hv(atk, 1, HG_ANGLE, 90);
hv(atk, 1, HG_IGNORES_PROJECTILES, true);
hv(atk, 1, HG_PROJECTILE_SPRITE, sprite_get("final_smash_proj"));
hv(atk, 1, HG_PROJECTILE_MASK, sprite_get("final_smash_proj"));
hv(atk, 1, HG_PROJECTILE_ANIM_SPEED, 1);
hv(atk, 1, HG_PROJECTILE_WALL_BEHAVIOR, 1);
hv(atk, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
hv(atk, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
hv(atk, 1, HG_PROJECTILE_UNBASHABLE, 1);
hv(atk, 1, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
hv(atk, 1, HG_PROJECTILE_IS_TRANSCENDENT, 1);
hv(atk, 1, HG_PROJECTILE_PLASMA_SAFE, 1);
hv(atk, 1, HG_PROJECTILE_PARRY_STUN, 1);
hv(atk, 1, HG_HIT_SFX, sound_get("hit_deep"));
hv(atk, 1, HG_MUNO_HITBOX_MISC_ADD, "On contact with opponent, will continually fly back and forward hitting the opponent. Carol will then Warp jump towards the opponent after 5 hits..");


hv(atk, 2, HG_HITBOX_TYPE, 1);
hv(atk, 2, HG_WINDOW, 7);
hv(atk, 2, HG_HITBOX_GROUP, 1);
hv(atk, 2, HG_LIFETIME, 3);
hv(atk, 2, HG_HITBOX_X, 36);
hv(atk, 2, HG_HITBOX_Y, -44);
hv(atk, 2, HG_WIDTH, 64);
hv(atk, 2, HG_HEIGHT, 66);
hv(atk, 2, HG_PRIORITY, 2);
hv(atk, 2, HG_DAMAGE, 24);
hv(atk, 2, HG_ANGLE, 90);
hv(atk, 2, HG_BASE_KNOCKBACK, 12);
hv(atk, 2, HG_KNOCKBACK_SCALING, 1.2);
hv(atk, 2, HG_BASE_HITPAUSE, 12);
hv(atk, 2, HG_HITPAUSE_SCALING, .9);
hv(atk, 2, HG_VISUAL_EFFECT, hit_large);
hv(atk, 2, HG_HIT_SFX, sound_get("hit_heavy"));