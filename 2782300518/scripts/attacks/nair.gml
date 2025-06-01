#macro atk AT_NAIR
#macro av set_attack_value
#macro win set_window_value
#macro hv set_hitbox_value

av(atk, AG_CATEGORY, 1);
av(atk, AG_SPRITE, sprite_get("nair"));
av(atk, AG_NUM_WINDOWS, 3);
av(atk, AG_HAS_LANDING_LAG, 1);
av(atk, AG_LANDING_LAG, 4);
av(atk, AG_HURTBOX_SPRITE, sprite_get("nair_hurt"));
av(atk, AG_MUNO_ATTACK_NAME, "NAir (Wild Claw)");
av(atk, AG_MUNO_ATTACK_MISC, "Can be jump cancelled on hit between frames 12 and 17");

win(atk, 1, AG_WINDOW_LENGTH, 6);
win(atk, 1, AG_WINDOW_ANIM_FRAMES, 1);
win(atk, 1, AG_WINDOW_HAS_SFX, 1);
win(atk, 1, AG_WINDOW_SFX, sound_get("wild_claw"));
win(atk, 1, AG_WINDOW_SFX_FRAME, 2);

win(atk, 2, AG_WINDOW_LENGTH, 3);
win(atk, 2, AG_WINDOW_ANIM_FRAMES, 1);
win(atk, 2, AG_WINDOW_ANIM_FRAME_START, 1);

win(atk, 3, AG_WINDOW_LENGTH, 10);
win(atk, 3, AG_WINDOW_ANIM_FRAMES, 3);
win(atk, 3, AG_WINDOW_ANIM_FRAME_START, 2);
win(atk, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(atk, 1);

hv(atk, 1, HG_HITBOX_TYPE, 1);
hv(atk, 1, HG_WINDOW, 2);
hv(atk, 1, HG_LIFETIME, 3);
hv(atk, 1, HG_HITBOX_X, 42);
hv(atk, 1, HG_HITBOX_Y, -30);
hv(atk, 1, HG_WIDTH, 60);
hv(atk, 1, HG_HEIGHT, 62);
hv(atk, 1, HG_PRIORITY, 2);
hv(atk, 1, HG_DAMAGE, 6);
hv(atk, 1, HG_ANGLE, 65);
hv(atk, 1, HG_BASE_KNOCKBACK, 7);
hv(atk, 1, HG_KNOCKBACK_SCALING, .25)
hv(atk, 1, HG_BASE_HITPAUSE, 6);
hv(atk, 1, HG_HITPAUSE_SCALING, .25);
hv(atk, 1, HG_VISUAL_EFFECT, hit_medium);
hv(atk, 1, HG_HIT_SFX, sound_get("hit"));
hv(atk, 1, HG_MUNO_HITBOX_MISC_ADD, "Does 7 damage instead of 6 if cancelled into from USpecial");
