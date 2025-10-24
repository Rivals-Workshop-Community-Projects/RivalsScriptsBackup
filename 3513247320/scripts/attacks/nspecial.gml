var atk = AT_NSPECIAL;

set_attack_value(atk, AG_CATEGORY, 2);
set_attack_value(atk, AG_SPRITE, sprite_get("nspecial"));
set_attack_value(atk, AG_HAS_LANDING_LAG, 4);
set_attack_value(atk, AG_OFF_LEDGE, 1);
set_attack_value(atk, AG_AIR_SPRITE, sprite_get("nspecial_air"));
set_attack_value(atk, AG_HURTBOX_AIR_SPRITE, sprite_get("nspecial_air_hurt"));
set_attack_value(atk, AG_HURTBOX_SPRITE, sprite_get("nspecial_hurt"));

var win = 0;

win++; //startup
set_window_value(atk, win, AG_WINDOW_TYPE, 1);
set_window_value(atk, win, AG_WINDOW_LENGTH, 8);
set_window_value(atk, win, AG_WINDOW_ANIM_FRAMES, 2);

set_attack_value(atk, AG_NUM_WINDOWS, win);

var hit = 0;

hit++;
set_hitbox_value(atk, hit, HG_PARENT_HITBOX, 1);
set_hitbox_value(atk, hit, HG_HITBOX_TYPE, 2);
set_hitbox_value(atk, hit, HG_WINDOW, 99);
set_hitbox_value(atk, hit, HG_LIFETIME, 60);
set_hitbox_value(atk, hit, HG_HITBOX_X, 10);
set_hitbox_value(atk, hit, HG_HITBOX_Y, 28);
set_hitbox_value(atk, hit, HG_WIDTH, 20);
set_hitbox_value(atk, hit, HG_HEIGHT, 10);
set_hitbox_value(atk, hit, HG_PRIORITY, 3);
set_hitbox_value(atk, hit, HG_DAMAGE, 2);
set_hitbox_value(atk, hit, HG_ANGLE, 361);
set_hitbox_value(atk, hit, HG_VISUAL_EFFECT_Y_OFFSET, 8);
set_hitbox_value(atk, hit, HG_HITSTUN_MULTIPLIER, 0.5);
set_hitbox_value(atk, hit, HG_PROJECTILE_SPRITE, sprite_get("nspecial_proj"));
set_hitbox_value(atk, hit, HG_PROJECTILE_MASK, -1);
set_hitbox_value(atk, hit, HG_PROJECTILE_ANIM_SPEED, 2);
set_hitbox_value(atk, hit, HG_PROJECTILE_HSPEED, 10);
set_hitbox_value(atk, hit, HG_BASE_KNOCKBACK, 0.1);
set_hitbox_value(atk, hit, HG_HITSTUN_MULTIPLIER, .2);
set_hitbox_value(atk, hit, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(atk, hit, HG_FORCE_FLINCH, 1);
set_hitbox_value(atk, hit, HG_HIT_SFX, asset_get("sfx_absa_orb_hit"));
set_hitbox_value(atk, hit, HG_VISUAL_EFFECT, 109);
set_hitbox_value(atk, hit, HG_PROJECTILE_DESTROY_EFFECT, 109);
set_hitbox_value(atk, hit, HG_IGNORES_PROJECTILES, 1);

hit++;
set_hitbox_value(atk, hit, HG_HITBOX_TYPE, 2);
set_hitbox_value(atk, hit, HG_WINDOW, 99);
set_hitbox_value(atk, hit, HG_LIFETIME, 40);
set_hitbox_value(atk, hit, HG_HITBOX_X, 16);
set_hitbox_value(atk, hit, HG_HITBOX_Y, 30);
set_hitbox_value(atk, hit, HG_WIDTH, 50);
set_hitbox_value(atk, hit, HG_HEIGHT, 30);
set_hitbox_value(atk, hit, HG_PRIORITY, 3);
set_hitbox_value(atk, hit, HG_DAMAGE, 8);
set_hitbox_value(atk, hit, HG_ANGLE, 45);
set_hitbox_value(atk, hit, HG_VISUAL_EFFECT_Y_OFFSET, 8);
set_hitbox_value(atk, hit, HG_HITSTUN_MULTIPLIER, 0.7);
set_hitbox_value(atk, hit, HG_PROJECTILE_SPRITE, sprite_get("nspecial_proj_midcharged"));
set_hitbox_value(atk, hit, HG_PROJECTILE_MASK, -1);
set_hitbox_value(atk, hit, HG_PROJECTILE_ANIM_SPEED, 2.5);
set_hitbox_value(atk, hit, HG_PROJECTILE_HSPEED, 15);
set_hitbox_value(atk, hit, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(atk, hit, HG_KNOCKBACK_SCALING, 0.7);
set_hitbox_value(atk, hit, HG_BASE_HITPAUSE, 10);
set_hitbox_value(atk, hit, HG_HITPAUSE_SCALING, 0.7);
set_hitbox_value(atk, hit, HG_HIT_SFX, asset_get("sfx_absa_dattack"));
set_hitbox_value(atk, hit, HG_VISUAL_EFFECT, HFX_ORI_BLUE_SMALL);
set_hitbox_value(atk, hit, HG_PROJECTILE_DESTROY_EFFECT, HFX_ORI_BLUE_SMALL);

hit++;
set_hitbox_value(atk, hit, HG_HITBOX_TYPE, 2);
set_hitbox_value(atk, hit, HG_WINDOW, 99);
set_hitbox_value(atk, hit, HG_LIFETIME, 30);
set_hitbox_value(atk, hit, HG_HITBOX_X, 12);
set_hitbox_value(atk, hit, HG_HITBOX_Y, 30);
set_hitbox_value(atk, hit, HG_WIDTH, 55);
set_hitbox_value(atk, hit, HG_HEIGHT, 35);
set_hitbox_value(atk, hit, HG_PRIORITY, 3);
set_hitbox_value(atk, hit, HG_DAMAGE, 12);
set_hitbox_value(atk, hit, HG_ANGLE, 45);
set_hitbox_value(atk, hit, HG_VISUAL_EFFECT_Y_OFFSET, 8);
set_hitbox_value(atk, hit, HG_HITSTUN_MULTIPLIER, 0.7);
set_hitbox_value(atk, hit, HG_PROJECTILE_SPRITE, sprite_get("nspecial_proj_maxcharged"));
set_hitbox_value(atk, hit, HG_PROJECTILE_MASK, -1);
set_hitbox_value(atk, hit, HG_PROJECTILE_ANIM_SPEED, 2.5);
set_hitbox_value(atk, hit, HG_PROJECTILE_HSPEED, 20);
set_hitbox_value(atk, hit, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(atk, hit, HG_KNOCKBACK_SCALING, .8);
set_hitbox_value(atk, hit, HG_BASE_HITPAUSE, 12);
set_hitbox_value(atk, hit, HG_HITPAUSE_SCALING, .8);
set_hitbox_value(atk, hit, HG_HIT_SFX, asset_get("sfx_absa_harderhit"));
set_hitbox_value(atk, hit, HG_VISUAL_EFFECT, HFX_ORI_BLUE_BIG);
set_hitbox_value(atk, hit, HG_PROJECTILE_DESTROY_EFFECT, HFX_ORI_BLUE_SMALL);

set_num_hitboxes(atk, hit);