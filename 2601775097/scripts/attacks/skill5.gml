// [5] POWER SMASH
var atk = AT_FSPECIAL_2;

set_attack_value(atk, AG_CATEGORY, 2);
set_attack_value(atk, AG_SPRITE, sprite_get("skill5"));
set_attack_value(atk, AG_HURTBOX_SPRITE, sprite_get("skill5_hurt"));
set_attack_value(atk, AG_NUM_WINDOWS, 8);
set_attack_value(atk, AG_OFF_LEDGE, 1);

var window_num = 1; //windup 1
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 4);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(atk, window_num, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(atk, window_num, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.2);
set_window_value(atk, window_num, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.2);

window_num ++; //windup 2
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 4);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 2);

window_num ++; //jump before attack
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 2);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(atk, window_num, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, window_num, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2"));
set_window_value(atk, window_num, AG_WINDOW_MP_CONSUME, skill[5].mp_cost1);

window_num ++; //attack
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 16);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(atk, window_num, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(atk, window_num, AG_WINDOW_VSPEED, -15); //-10

window_num ++; //still falling
set_window_value(atk, window_num, AG_WINDOW_TYPE, 10);
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 1);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 8);

window_num ++; //sfx frame
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 1);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(atk, window_num, AG_WINDOW_MP_CONSUME, skill[5].mp_cost2);
set_window_value(atk, window_num, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(atk, window_num, AG_WINDOW_HSPEED, 0);

window_num ++; //endlag 1
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 12);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(atk, window_num, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(atk, window_num, AG_WINDOW_HSPEED, 0);

window_num ++; //endlag 2
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 8);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 3); //skipping a frame on purpose cuz the easing looks kinda bad actually
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 11);

set_num_hitboxes(atk, 4)

var hitbox_num = 1; //falling spike hitbox (ground)
set_hitbox_value(atk, hitbox_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_GROUP, 1);
set_hitbox_value(atk, hitbox_num, HG_WINDOW, 5);
set_hitbox_value(atk, hitbox_num, HG_LIFETIME, 1);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_X, 8);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_Y, -40);
set_hitbox_value(atk, hitbox_num, HG_WIDTH, 48);
set_hitbox_value(atk, hitbox_num, HG_HEIGHT, 32);
set_hitbox_value(atk, hitbox_num, HG_DAMAGE, 3);
set_hitbox_value(atk, hitbox_num, HG_ANGLE, 280);
set_hitbox_value(atk, hitbox_num, HG_PRIORITY, 1);
set_hitbox_value(atk, hitbox_num, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(atk, hitbox_num, HG_KNOCKBACK_SCALING, 0.1);
set_hitbox_value(atk, hitbox_num, HG_BASE_HITPAUSE, 6);
set_hitbox_value(atk, hitbox_num, HG_HITPAUSE_SCALING, 0.4);
set_hitbox_value(atk, hitbox_num, HG_VISUAL_EFFECT, fx_hit_small);
set_hitbox_value(atk, hitbox_num, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(atk, hitbox_num, HG_GROUNDEDNESS, 1);
set_hitbox_value(atk, hitbox_num, HG_TECHABLE, 3);
set_hitbox_value(atk, hitbox_num, HG_NO_POLARIS, true);

hitbox_num ++; //falling spike hitbox (air)
set_hitbox_value(atk, hitbox_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, hitbox_num, HG_ANGLE, 300);
set_hitbox_value(atk, hitbox_num, HG_PRIORITY, 2);
set_hitbox_value(atk, hitbox_num, HG_GROUNDEDNESS, 2);
set_hitbox_value(atk, hitbox_num, HG_NO_POLARIS, true);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_GROUP,      get_hitbox_value(atk, hitbox_num-1, HG_HITBOX_GROUP)); //parent hitbox doesn't really work for
set_hitbox_value(atk, hitbox_num, HG_WINDOW,            get_hitbox_value(atk, hitbox_num-1, HG_WINDOW));       //just changing the angle lol
set_hitbox_value(atk, hitbox_num, HG_LIFETIME,          get_hitbox_value(atk, hitbox_num-1, HG_LIFETIME));
set_hitbox_value(atk, hitbox_num, HG_HITBOX_X,          get_hitbox_value(atk, hitbox_num-1, HG_HITBOX_X));
set_hitbox_value(atk, hitbox_num, HG_HITBOX_Y,          get_hitbox_value(atk, hitbox_num-1, HG_HITBOX_Y));
set_hitbox_value(atk, hitbox_num, HG_WIDTH,             get_hitbox_value(atk, hitbox_num-1, HG_WIDTH));
set_hitbox_value(atk, hitbox_num, HG_HEIGHT,            get_hitbox_value(atk, hitbox_num-1, HG_HEIGHT));
set_hitbox_value(atk, hitbox_num, HG_DAMAGE,            get_hitbox_value(atk, hitbox_num-1, HG_DAMAGE));
set_hitbox_value(atk, hitbox_num, HG_BASE_KNOCKBACK,    get_hitbox_value(atk, hitbox_num-1, HG_BASE_KNOCKBACK));
set_hitbox_value(atk, hitbox_num, HG_KNOCKBACK_SCALING, get_hitbox_value(atk, hitbox_num-1, HG_KNOCKBACK_SCALING));
set_hitbox_value(atk, hitbox_num, HG_BASE_HITPAUSE,     get_hitbox_value(atk, hitbox_num-1, HG_BASE_HITPAUSE));
set_hitbox_value(atk, hitbox_num, HG_HITPAUSE_SCALING,  get_hitbox_value(atk, hitbox_num-1, HG_HITPAUSE_SCALING));
set_hitbox_value(atk, hitbox_num, HG_VISUAL_EFFECT,     get_hitbox_value(atk, hitbox_num-1, HG_VISUAL_EFFECT));
set_hitbox_value(atk, hitbox_num, HG_HIT_SFX,           get_hitbox_value(atk, hitbox_num-1, HG_HIT_SFX));
set_hitbox_value(atk, hitbox_num, HG_TECHABLE,          get_hitbox_value(atk, hitbox_num-1, HG_TECHABLE));

hitbox_num ++; //ground collision - sweetspot
set_hitbox_value(atk, hitbox_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_GROUP, 2);
set_hitbox_value(atk, hitbox_num, HG_WINDOW, 7);
set_hitbox_value(atk, hitbox_num, HG_LIFETIME, 4);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_X, 0);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_Y, -16);
set_hitbox_value(atk, hitbox_num, HG_WIDTH, 60);
set_hitbox_value(atk, hitbox_num, HG_HEIGHT, 32);
set_hitbox_value(atk, hitbox_num, HG_SHAPE, 1);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_COLOR, hb_color[3]);
set_hitbox_value(atk, hitbox_num, HG_HIT_PARTICLE_NUM, 2);
set_hitbox_value(atk, hitbox_num, HG_PRIORITY, 4);
set_hitbox_value(atk, hitbox_num, HG_DAMAGE, 8);
set_hitbox_value(atk, hitbox_num, HG_ANGLE, 60);
set_hitbox_value(atk, hitbox_num, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(atk, hitbox_num, HG_KNOCKBACK_SCALING, 1.1);
set_hitbox_value(atk, hitbox_num, HG_BASE_HITPAUSE, 10);
set_hitbox_value(atk, hitbox_num, HG_HITPAUSE_SCALING, 0.6);
set_hitbox_value(atk, hitbox_num, HG_VISUAL_EFFECT, fx_fireblow[1]);
set_hitbox_value(atk, hitbox_num, HG_HIT_SFX, asset_get("sfx_forsburn_combust"));

hitbox_num ++; //ground collision - sourspot
set_hitbox_value(atk, hitbox_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_GROUP, 2);
set_hitbox_value(atk, hitbox_num, HG_WINDOW, 7);
set_hitbox_value(atk, hitbox_num, HG_LIFETIME, 4);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_X, 0);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_Y, -24);
set_hitbox_value(atk, hitbox_num, HG_WIDTH, 144);
set_hitbox_value(atk, hitbox_num, HG_HEIGHT, 48);
set_hitbox_value(atk, hitbox_num, HG_SHAPE, 1);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_COLOR, hb_color[3]);
set_hitbox_value(atk, hitbox_num, HG_HIT_PARTICLE_NUM, 2);
set_hitbox_value(atk, hitbox_num, HG_PRIORITY, 2);
set_hitbox_value(atk, hitbox_num, HG_DAMAGE, 5);
set_hitbox_value(atk, hitbox_num, HG_ANGLE, 80);
set_hitbox_value(atk, hitbox_num, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(atk, hitbox_num, HG_KNOCKBACK_SCALING, 0.8);
set_hitbox_value(atk, hitbox_num, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(atk, hitbox_num, HG_BASE_HITPAUSE, 6);
set_hitbox_value(atk, hitbox_num, HG_HITPAUSE_SCALING, 0.8);
set_hitbox_value(atk, hitbox_num, HG_VISUAL_EFFECT, fx_fireblow[0]);
set_hitbox_value(atk, hitbox_num, HG_HIT_SFX, asset_get("sfx_burnapplied"));