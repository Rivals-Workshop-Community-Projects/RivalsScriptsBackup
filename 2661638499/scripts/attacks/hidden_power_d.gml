var atk = 4; // D
set_attack_value(atk, AG_CATEGORY, 2);
set_attack_value(atk, AG_SPRITE, sprite_get("attack_D"));
set_attack_value(atk, AG_HURTBOX_SPRITE, sprite_get("attack_D_hurt"));
set_attack_value(atk, AG_NUM_WINDOWS, 3);

set_window_value(atk, 1, AG_WINDOW_LENGTH, 9);
set_window_value(atk, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(atk, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, 1, AG_WINDOW_SFX, asset_get("sfx_abyss_hazard_start"));
set_window_value(atk, 1, AG_WINDOW_SFX_FRAME, 0);

set_window_value(atk, 2, AG_WINDOW_LENGTH, 24);
set_window_value(atk, 2, AG_WINDOW_ANIM_FRAMES, 2); //manual control
set_window_value(atk, 2, AG_WINDOW_ANIM_FRAME_START, 1);

set_window_value(atk, 3, AG_WINDOW_LENGTH, 15);
set_window_value(atk, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(atk, 3, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(atk, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(atk, 5);

set_hitbox_value(atk, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, 1, HG_WINDOW, 2);
set_hitbox_value(atk, 1, HG_WINDOW_CREATION_FRAME, 5);
set_hitbox_value(atk, 1, HG_LIFETIME, 24);
set_hitbox_value(atk, 1, HG_HITBOX_X, 24);
set_hitbox_value(atk, 1, HG_HITBOX_Y, -30);
set_hitbox_value(atk, 1, HG_WIDTH, 48);
set_hitbox_value(atk, 1, HG_HEIGHT, 30);
set_hitbox_value(atk, 1, HG_PRIORITY, 6);
set_hitbox_value(atk, 1, HG_DAMAGE, 6);
set_hitbox_value(atk, 1, HG_ANGLE, 75);
set_hitbox_value(atk, 1, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(atk, 1, HG_FINAL_BASE_KNOCKBACK, 9);
set_hitbox_value(atk, 1, HG_KNOCKBACK_SCALING, .15);
set_hitbox_value(atk, 1, HG_BASE_HITPAUSE, 4);
set_hitbox_value(atk, 1, HG_HIT_LOCKOUT, 20);
set_hitbox_value(atk, 1, HG_HITPAUSE_SCALING, .35);
set_hitbox_value(atk, 1, HG_HIT_SFX, asset_get("sfx_blow_medium2"));

set_hitbox_value(atk, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(atk, 2, HG_WINDOW, 2);
set_hitbox_value(atk, 2, HG_LIFETIME, 20);
set_hitbox_value(atk, 2, HG_HITBOX_X, -12);
set_hitbox_value(atk, 2, HG_HITBOX_Y, -28);
set_hitbox_value(atk, 2, HG_WIDTH, 30);
set_hitbox_value(atk, 2, HG_HEIGHT, 48);
set_hitbox_value(atk, 2, HG_PRIORITY, 1);
set_hitbox_value(atk, 2, HG_DAMAGE, 2);
set_hitbox_value(atk, 2, HG_ANGLE, 90);
set_hitbox_value(atk, 2, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(atk, 2, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(atk, 2, HG_BASE_HITPAUSE, 8);
set_hitbox_value(atk, 2, HG_HIT_LOCKOUT, 20);
set_hitbox_value(atk, 2, HG_HITSTUN_MULTIPLIER, .5);
set_hitbox_value(atk, 2, HG_HIT_SFX, asset_get("sfx_abyss_hazard_hit"));
set_hitbox_value(atk, 2, HG_VISUAL_EFFECT, 67);

set_hitbox_value(atk, 2, HG_PROJECTILE_SPRITE, sprite_get("attack_D_pulse"));
set_hitbox_value(atk, 2, HG_PROJECTILE_ANIM_SPEED, 5.0/get_hitbox_value(atk, 2, HG_LIFETIME));
set_hitbox_value(atk, 2, HG_PROJECTILE_MASK, -1);
set_hitbox_value(atk, 2, HG_PROJECTILE_HSPEED, 1);
set_hitbox_value(atk, 2, HG_PROJECTILE_AIR_FRICTION, 0.1);
set_hitbox_value(atk, 2, HG_PROJECTILE_GROUND_FRICTION, 0.1);
set_hitbox_value(atk, 2, HG_PROJECTILE_DESTROY_EFFECT, 67);

set_hitbox_value(atk, 3, HG_HITBOX_TYPE, 2);
set_hitbox_value(atk, 3, HG_PARENT_HITBOX, 2);
set_hitbox_value(atk, 3, HG_WINDOW, 2);
set_hitbox_value(atk, 3, HG_WINDOW_CREATION_FRAME, 5);
set_hitbox_value(atk, 3, HG_HITBOX_X, -12);
set_hitbox_value(atk, 3, HG_HITBOX_Y, -28);

set_hitbox_value(atk, 4, HG_HITBOX_TYPE, 2);
set_hitbox_value(atk, 4, HG_PARENT_HITBOX, 2);
set_hitbox_value(atk, 4, HG_WINDOW, 2);
set_hitbox_value(atk, 4, HG_WINDOW_CREATION_FRAME, 10);
set_hitbox_value(atk, 4, HG_HITBOX_X, -12);
set_hitbox_value(atk, 4, HG_HITBOX_Y, -28);

set_hitbox_value(atk, 5, HG_HITBOX_TYPE, 2);
set_hitbox_value(atk, 5, HG_PARENT_HITBOX, 2);
set_hitbox_value(atk, 5, HG_WINDOW, 2);
set_hitbox_value(atk, 5, HG_WINDOW_CREATION_FRAME, 15);
set_hitbox_value(atk, 5, HG_LIFETIME, 6);
set_hitbox_value(atk, 5, HG_HITBOX_X, -12);
set_hitbox_value(atk, 5, HG_HITBOX_Y, -28);

//================================================================
//WORD DATA
set_window_value(UNOWN_ATK.D, 2, AG_UNOWN_WINDOW_ACTIVE, true);
if ("d" not in unown_dictionary) unown_dictionary.d = make_trie_D();
//================================================================
//contains words starting with D
#define make_trie_D()
    return {};