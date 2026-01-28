var atk = AT_JAB;
var num = 1;

set_attack_value(atk, AG_SPRITE, sprite_get(has_rune("O")? "jabrune": "jab"));
set_attack_value(atk, AG_HURTBOX_SPRITE, sprite_get("jab_hurt"));

set_window_value(atk, num, AG_WINDOW_LENGTH, 5);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAMES, 2);

num++;
set_window_value(atk, num, AG_WINDOW_LENGTH, 3);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAME_START, 2);

num++;
set_window_value(atk, num, AG_WINDOW_LENGTH, 14);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(atk, num, AG_WINDOW_CANCEL_TYPE, 1);
set_window_value(atk, num, AG_WINDOW_CANCEL_FRAME, 1);

num++;
set_window_value(atk, num, AG_WINDOW_LENGTH, 6);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAME_START, 9);

num++;
set_window_value(atk, num, AG_WINDOW_LENGTH, 3);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAME_START, 11);

num++;
set_window_value(atk, num, AG_WINDOW_LENGTH, 12);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAME_START, 12);
set_window_value(atk, num, AG_WINDOW_CANCEL_TYPE, 1);
set_window_value(atk, num, AG_WINDOW_CANCEL_FRAME, 2);

if has_rune("C"){

num++;
set_window_value(atk, num, AG_WINDOW_LENGTH, 4);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAMES, 2);

num++;
set_window_value(atk, num, AG_WINDOW_LENGTH, 3);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAME_START, 2);

num++;
set_window_value(atk, num, AG_WINDOW_LENGTH, 14);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(atk, num, AG_WINDOW_CANCEL_TYPE, 1);
set_window_value(atk, num, AG_WINDOW_CANCEL_FRAME, 4);

}

num++;
set_window_value(atk, num, AG_WINDOW_LENGTH, 6);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAME_START, 18);

num++;
set_window_value(atk, num, AG_WINDOW_LENGTH, 9);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAME_START, 20);

num++;
set_window_value(atk, num, AG_WINDOW_LENGTH, 20);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAME_START, 23);

set_attack_value(atk, AG_NUM_WINDOWS, num);

num = 1;
set_hitbox_value(atk, num, HG_HITBOX_GROUP, -1);
set_hitbox_value(atk, num, HG_WINDOW, 2);
set_hitbox_value(atk, num, HG_LIFETIME, 3);
set_hitbox_value(atk, num, HG_HITBOX_X, 44);
set_hitbox_value(atk, num, HG_HITBOX_Y, -42);
set_hitbox_value(atk, num, HG_WIDTH, 92);
set_hitbox_value(atk, num, HG_HEIGHT, 74);
set_hitbox_value(atk, num, HG_PRIORITY, 7);
set_hitbox_value(atk, num, HG_DAMAGE, 4);
set_hitbox_value(atk, num, HG_ANGLE, 50);
set_hitbox_value(atk, num, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(atk, num, HG_BASE_HITPAUSE, 4);
set_hitbox_value(atk, num, HG_FORCE_FLINCH, 1);
set_hitbox_value(atk, num, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(atk, num, HG_VISUAL_EFFECT, hit_slash_small);

num++;
set_hitbox_value(atk, num, HG_HITBOX_GROUP, -1);
set_hitbox_value(atk, num, HG_WINDOW, 5);
set_hitbox_value(atk, num, HG_LIFETIME, 3);
set_hitbox_value(atk, num, HG_HITBOX_X, 30);
set_hitbox_value(atk, num, HG_HITBOX_Y, -28);
set_hitbox_value(atk, num, HG_WIDTH, 118);
set_hitbox_value(atk, num, HG_HEIGHT, 58);
set_hitbox_value(atk, num, HG_PRIORITY, 6);
set_hitbox_value(atk, num, HG_DAMAGE, 4);
set_hitbox_value(atk, num, HG_ANGLE, 50);
set_hitbox_value(atk, num, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(atk, num, HG_BASE_HITPAUSE, 4);
set_hitbox_value(atk, num, HG_FORCE_FLINCH, 1);
set_hitbox_value(atk, num, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(atk, num, HG_VISUAL_EFFECT, hit_slash_small);

num++;
set_hitbox_value(atk, num, HG_WINDOW, 8 + 3*has_rune("C"));
set_hitbox_value(atk, num, HG_LIFETIME, 3);
set_hitbox_value(atk, num, HG_HITBOX_X, has_rune("O")? 88: 70);
set_hitbox_value(atk, num, HG_HITBOX_Y, has_rune("O")? -46: -34);
set_hitbox_value(atk, num, HG_WIDTH, has_rune("O")? 86: 50);
set_hitbox_value(atk, num, HG_HEIGHT, has_rune("O")? 98: 74);
set_hitbox_value(atk, num, HG_PRIORITY, 6);
set_hitbox_value(atk, num, HG_SHAPE, 2);
set_hitbox_value(atk, num, HG_DAMAGE, has_rune("O")? 12: 7);
set_hitbox_value(atk, num, HG_ANGLE, 50);
set_hitbox_value(atk, num, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(atk, num, HG_KNOCKBACK_SCALING, .8);
set_hitbox_value(atk, num, HG_BASE_HITPAUSE, 7);
set_hitbox_value(atk, num, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(atk, num, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(atk, num, HG_VISUAL_EFFECT, hit_slash_big);

num++;
set_hitbox_value(atk, num, HG_WINDOW, 8 + 3*has_rune("C"));
set_hitbox_value(atk, num, HG_LIFETIME, 3);
set_hitbox_value(atk, num, HG_HITBOX_X, has_rune("O")? 60: 42);
set_hitbox_value(atk, num, HG_HITBOX_Y, has_rune("O")? -88: -62);
set_hitbox_value(atk, num, HG_WIDTH, has_rune("O")? 136: 80);
set_hitbox_value(atk, num, HG_HEIGHT, has_rune("O")? 86: 64);
set_hitbox_value(atk, num, HG_PRIORITY, 6);
set_hitbox_value(atk, num, HG_DAMAGE, has_rune("O")? 12: 7);
set_hitbox_value(atk, num, HG_ANGLE, 50);
set_hitbox_value(atk, num, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(atk, num, HG_KNOCKBACK_SCALING, .8);
set_hitbox_value(atk, num, HG_BASE_HITPAUSE, 7);
set_hitbox_value(atk, num, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(atk, num, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(atk, num, HG_VISUAL_EFFECT, hit_slash_big);

if has_rune("C"){

num++;
set_hitbox_value(atk, num, HG_HITBOX_GROUP, -1);
set_hitbox_value(atk, num, HG_WINDOW, 8);
set_hitbox_value(atk, num, HG_LIFETIME, 3);
set_hitbox_value(atk, num, HG_HITBOX_X, 44);
set_hitbox_value(atk, num, HG_HITBOX_Y, -42);
set_hitbox_value(atk, num, HG_WIDTH, 92);
set_hitbox_value(atk, num, HG_HEIGHT, 74);
set_hitbox_value(atk, num, HG_PRIORITY, 7);
set_hitbox_value(atk, num, HG_DAMAGE, 4);
set_hitbox_value(atk, num, HG_ANGLE, 50);
set_hitbox_value(atk, num, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(atk, num, HG_BASE_HITPAUSE, 4);
set_hitbox_value(atk, num, HG_FORCE_FLINCH, 1);
set_hitbox_value(atk, num, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(atk, num, HG_VISUAL_EFFECT, hit_slash_small);

}

set_num_hitboxes(atk, num);