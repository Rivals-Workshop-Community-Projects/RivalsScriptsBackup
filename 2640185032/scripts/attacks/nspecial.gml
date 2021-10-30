set_attack_value(AT_NSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_NSPECIAL, AG_SPRITE, sprite_get("nspecial"));
set_attack_value(AT_NSPECIAL, AG_NUM_WINDOWS, 5);
set_attack_value(AT_NSPECIAL, AG_OFF_LEDGE, 0);
set_attack_value(AT_NSPECIAL, AG_AIR_SPRITE, sprite_get("nspecial_air"));
set_attack_value(AT_NSPECIAL, AG_HURTBOX_SPRITE, sprite_get("nspecial_hurt"));

//startup startup
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_LENGTH, 5);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 1);

//charge cycle
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_TYPE, 9);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_LENGTH, 18); //25
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 1);

//throw startup
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_LENGTH, 7);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_SFX, sound_get("sfx_dag_throw"));
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_SFX_FRAME, 6);

//throw
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_LENGTH, 3);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 7);

//endlag
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_LENGTH, 22);
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 8);

//store
set_window_value(AT_NSPECIAL, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL, 6, AG_WINDOW_LENGTH, 5);
set_window_value(AT_NSPECIAL, 6, AG_WINDOW_ANIM_FRAMES, 1);

set_num_hitboxes(AT_NSPECIAL, 2);

//projectiles are spawned manually due to knife stacks on window 4 first frame
set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL, 1, HG_LIFETIME, 18);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_X, 0);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_Y, 0);
set_hitbox_value(AT_NSPECIAL, 1, HG_WIDTH, 45);
set_hitbox_value(AT_NSPECIAL, 1, HG_HEIGHT, 9);
set_hitbox_value(AT_NSPECIAL, 1, HG_SHAPE, 1);
set_hitbox_value(AT_NSPECIAL, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_NSPECIAL, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_NSPECIAL, 1, HG_ANGLE, 70);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_NSPECIAL, 1, HG_VISUAL_EFFECT, vfx_knifebreak);
set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_NSPECIAL, 1, HG_KNOCKBACK_SCALING, 0.3);
set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITPAUSE_SCALING, 0.3);
set_hitbox_value(AT_NSPECIAL, 1, HG_HIT_SFX, sound_get("sfx_knifehit_m"));
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_SPRITE, sprite_get("nspec_proj"));
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_ANIM_SPEED, .25);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_DESTROY_EFFECT, vfx_knifebreak);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_HSPEED, 18);
set_hitbox_value(AT_NSPECIAL, 1, HG_EFFECT, 12);
set_hitbox_value(AT_NSPECIAL, 1, HG_EXTENDED_PARRY_STUN, true); //parrystun is set manually in hitbox_update, they only have parrystun when delayed

set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL, 2, HG_LIFETIME, 18);
set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_X, 0);
set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_Y, 0);
set_hitbox_value(AT_NSPECIAL, 2, HG_WIDTH, 25);
set_hitbox_value(AT_NSPECIAL, 2, HG_HEIGHT, 25);
set_hitbox_value(AT_NSPECIAL, 2, HG_SHAPE, 0);
set_hitbox_value(AT_NSPECIAL, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_NSPECIAL, 2, HG_DAMAGE, 2);
set_hitbox_value(AT_NSPECIAL, 2, HG_ANGLE, 70);
set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_NSPECIAL, 2, HG_VISUAL_EFFECT, vfx_knifebreak);
set_hitbox_value(AT_NSPECIAL, 2, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_NSPECIAL, 2, HG_KNOCKBACK_SCALING, 0.3);
set_hitbox_value(AT_NSPECIAL, 2, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_NSPECIAL, 2, HG_HITPAUSE_SCALING, 0.3);
set_hitbox_value(AT_NSPECIAL, 2, HG_HIT_SFX, sound_get("sfx_knifehit_m"));
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_SPRITE, sprite_get("nspec_proj"));
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_ANIM_SPEED, .25);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_DESTROY_EFFECT, vfx_knifebreak);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_HSPEED, 15.58); //i did the math
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_VSPEED, 9);
set_hitbox_value(AT_NSPECIAL, 2, HG_EFFECT, 12);
set_hitbox_value(AT_NSPECIAL, 2, HG_EXTENDED_PARRY_STUN, true); //parrystun is set manually in hitbox_update, they only have parrystun when delayed