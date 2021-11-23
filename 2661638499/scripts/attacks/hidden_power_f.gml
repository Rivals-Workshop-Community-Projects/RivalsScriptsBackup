var atk = 6; // F
set_attack_value(atk, AG_CATEGORY, 2);
set_attack_value(atk, AG_SPRITE, sprite_get("attack_F"));
set_attack_value(atk, AG_HURTBOX_SPRITE, sprite_get("attack_F_hurt"));
set_attack_value(atk, AG_NUM_WINDOWS, 10);

//common startup (able to turnaround)
set_window_value(atk, 1, AG_WINDOW_LENGTH, 12);
set_window_value(atk, 1, AG_WINDOW_ANIM_FRAMES, 2);

//startup (Right)
set_window_value(atk, 2, AG_WINDOW_LENGTH, 9);
set_window_value(atk, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(atk, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(atk, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, 2, AG_WINDOW_SFX, asset_get("sfx_forsburn_reappear_hit"));
set_window_value(atk, 2, AG_WINDOW_SFX_FRAME, get_window_value(atk, 2, AG_WINDOW_LENGTH) - 1);
//Right shot
set_window_value(atk, 3, AG_WINDOW_LENGTH, 3);
set_window_value(atk, 3, AG_WINDOW_HSPEED, -7);
set_window_value(atk, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(atk, 3, AG_WINDOW_ANIM_FRAME_START, 3);
//recoil
set_window_value(atk, 4, AG_WINDOW_LENGTH, 12);
set_window_value(atk, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(atk, 4, AG_WINDOW_ANIM_FRAME_START, 4);
//endlag
set_window_value(atk, 5, AG_WINDOW_LENGTH, 12);
set_window_value(atk, 5, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(atk, 5, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(atk, 5, AG_WINDOW_GOTO, 10);

//mostly synced from RIGHT shot
//startup (Left)
set_window_value(atk, 6, AG_WINDOW_LENGTH, get_window_value(atk, 2, AG_WINDOW_LENGTH));
set_window_value(atk, 6, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(atk, 6, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(atk, 6, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, 6, AG_WINDOW_SFX, get_window_value(atk, 2, AG_WINDOW_SFX));
set_window_value(atk, 6, AG_WINDOW_SFX_FRAME, get_window_value(atk, 2, AG_WINDOW_SFX_FRAME));
//Left shot
set_window_value(atk, 7, AG_WINDOW_LENGTH, get_window_value(atk, 3, AG_WINDOW_LENGTH));
set_window_value(atk, 7, AG_WINDOW_HSPEED, -get_window_value(atk, 3, AG_WINDOW_HSPEED));
set_window_value(atk, 7, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(atk, 7, AG_WINDOW_ANIM_FRAME_START, 12);
//recoil
set_window_value(atk, 8, AG_WINDOW_LENGTH, get_window_value(atk, 4, AG_WINDOW_LENGTH));
set_window_value(atk, 8, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(atk, 8, AG_WINDOW_ANIM_FRAME_START, 13);
//endlag
set_window_value(atk, 9, AG_WINDOW_LENGTH, get_window_value(atk, 5, AG_WINDOW_LENGTH));
set_window_value(atk, 9, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(atk, 9, AG_WINDOW_ANIM_FRAME_START, 15);

//common endlag
set_window_value(atk, 10, AG_WINDOW_LENGTH, 4);
set_window_value(atk, 10, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(atk, 10, AG_WINDOW_ANIM_FRAME_START, 8);

set_num_hitboxes(atk, 4);

for (var i = 1; i <= 2; i++)
{
    var flip = (i == 2);
    var wdw = flip ? 7 : 3;
    //burst
    set_hitbox_value(atk, i, HG_HITBOX_TYPE, 1);
    set_hitbox_value(atk, i, HG_WINDOW, wdw);
    set_hitbox_value(atk, i, HG_LIFETIME, 3);
    set_hitbox_value(atk, i, HG_HITBOX_X, (flip ? -1 : 1) * 36);
    set_hitbox_value(atk, i, HG_HITBOX_Y, -30);
    set_hitbox_value(atk, i, HG_WIDTH, 40);
    set_hitbox_value(atk, i, HG_HEIGHT, 40);
    set_hitbox_value(atk, i, HG_PRIORITY, 2);
    set_hitbox_value(atk, i, HG_DAMAGE, 6);
    set_hitbox_value(atk, i, HG_ANGLE, flip ? 130 : 50);
    set_hitbox_value(atk, i, HG_EFFECT, 1);
    set_hitbox_value(atk, i, HG_BASE_KNOCKBACK, 7);
    set_hitbox_value(atk, i, HG_KNOCKBACK_SCALING, .65);
    set_hitbox_value(atk, i, HG_BASE_HITPAUSE, 8);
    set_hitbox_value(atk, i, HG_HITPAUSE_SCALING, .35);
    set_hitbox_value(atk, i, HG_HIT_LOCKOUT, 8);
    set_hitbox_value(atk, i, HG_HIT_SFX, asset_get("sfx_ori_grenade_hit_ground"));
    set_hitbox_value(atk, i, HG_VISUAL_EFFECT, 3);
    
    //projectile
    //See hitbox_init: left fireball needs a spr_dir flip
    set_hitbox_value(atk, i+2, HG_HITBOX_TYPE, 2);
    set_hitbox_value(atk, i+2, HG_WINDOW, wdw);
    set_hitbox_value(atk, i+2, HG_LIFETIME, 50);
    set_hitbox_value(atk, i+2, HG_HITBOX_X, (flip ? -1 : 1) * 32);
    set_hitbox_value(atk, i+2, HG_HITBOX_Y, -28);
    set_hitbox_value(atk, i+2, HG_WIDTH, 20);
    set_hitbox_value(atk, i+2, HG_HEIGHT, 12);
    set_hitbox_value(atk, i+2, HG_SHAPE, 1);
    set_hitbox_value(atk, i+2, HG_PRIORITY, 3);
    set_hitbox_value(atk, i+2, HG_DAMAGE, 2);
    set_hitbox_value(atk, i+2, HG_ANGLE, 50);
    set_hitbox_value(atk, i+2, HG_EFFECT, 1);
    set_hitbox_value(atk, i+2, HG_BASE_KNOCKBACK, 6);
    set_hitbox_value(atk, i+2, HG_KNOCKBACK_SCALING, .10);
    set_hitbox_value(atk, i+2, HG_BASE_HITPAUSE, 6);
    set_hitbox_value(atk, i+2, HG_HITSTUN_MULTIPLIER, .5);
    set_hitbox_value(atk, i+2, HG_HIT_SFX, asset_get("sfx_burnapplied"));
    set_hitbox_value(atk, i+2, HG_VISUAL_EFFECT, 3);
    
    set_hitbox_value(atk, i+2, HG_PROJECTILE_SPRITE, asset_get("zet_proj_spr"));
    set_hitbox_value(atk, i+2, HG_PROJECTILE_ANIM_SPEED, 0.25);
    set_hitbox_value(atk, i+2, HG_PROJECTILE_MASK, -1);
    set_hitbox_value(atk, i+2, HG_PROJECTILE_HSPEED, 7);
    set_hitbox_value(atk, i+2, HG_PROJECTILE_AIR_FRICTION, 0);
    set_hitbox_value(atk, i+2, HG_PROJECTILE_GROUND_FRICTION, 0);
}

//================================================================
//WORD DATA
set_window_value(UNOWN_ATK.F, 3, AG_UNOWN_WINDOW_ACTIVE, true);
set_window_value(UNOWN_ATK.F, 7, AG_UNOWN_WINDOW_ACTIVE, true);
if ("f" not in unown_dictionary) unown_dictionary.f = make_trie_F();
//================================================================
//contains words starting with F
#define make_trie_F()
    return {};