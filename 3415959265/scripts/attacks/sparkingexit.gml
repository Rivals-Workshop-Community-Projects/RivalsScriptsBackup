atk = AT_EXTRA_2;

set_attack_value(atk, AG_CATEGORY, 2);
set_attack_value(atk, AG_SPRITE, sprite_get("sparking_exit"));
set_attack_value(atk, AG_AIR_SPRITE, sprite_get("sparking_exit_air"));
set_attack_value(atk, AG_HURTBOX_SPRITE, sprite_get("sparking_exit_hurt"));
set_attack_value(atk, AG_HURTBOX_AIR_SPRITE, sprite_get("sparking_exit_air_hurt"));
set_attack_value(atk, AG_OFF_LEDGE, 1);
set_attack_value(atk, AG_MUNO_ATTACK_EXCLUDE, true);

window_num = 1; //startup cancellable
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 13);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(atk, window_num, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, window_num, AG_WINDOW_SFX, asset_get("sfx_waveland_ori"));

window_num ++; //startup 2
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 2);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 2);
//set_window_value(atk, window_num, AG_WINDOW_HAS_SFX, 1);
//set_window_value(atk, window_num, AG_WINDOW_SFX_FRAME, 1);
//set_window_value(atk, window_num, AG_WINDOW_SFX, sound_get("sfx_saya_fspcdash"));



window_num ++; //Dash
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 12);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(atk, window_num, AG_WINDOW_HAS_SFX, 1);
//set_window_value(atk, window_num, AG_WINDOW_SFX, sound_get("sfx_saya_transform"));
set_window_value(atk, window_num, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(atk, window_num, AG_WINDOW_HSPEED, 14);


window_num ++; //fail
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 12);
//set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 4); Set in attack update
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(atk, window_num, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(atk, window_num, AG_WINDOW_HSPEED, 5);
set_window_value(atk, window_num, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(atk, window_num, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.3);
set_window_value(atk, window_num, AG_WINDOW_HAS_WHIFFLAG, 1);
set_window_value(atk, window_num, AG_WINDOW_GOTO, 31);


window_num ++; //grab success windup 5
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 19);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 13);
set_window_value(atk, window_num, AG_WINDOW_VSPEED_TYPE, 1);
//set_window_value(atk, window_num, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(atk, window_num, AG_WINDOW_VSPEED, -3); //Set in attack update
//set_window_value(atk, window_num, AG_WINDOW_HSPEED, 5); //Set in atack update
set_window_value(atk, window_num, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, window_num, AG_WINDOW_SFX_FRAME, 3);
set_window_value(atk, window_num, AG_WINDOW_SFX, sound_get("sfx_saya_spin3"));
set_window_value(atk, window_num, AG_WINDOW_INVINCIBILITY, 1);


window_num ++; //descent loop
set_window_value(atk, window_num, AG_WINDOW_TYPE, 8);
//set_window_value(atk, window_num, AG_WINDOW_LENGTH, 18); //Set in attack update
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 18);
set_window_value(atk, window_num, AG_WINDOW_INVINCIBILITY, 1);


window_num ++; //slam
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 6);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 19);
set_window_value(atk, window_num, AG_WINDOW_INVINCIBILITY, 1);

window_num ++; //endlag 
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 12);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 21);
set_window_value(atk, window_num, AG_WINDOW_GOTO, 31);

window_num ++; //aerial startup 
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 6);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 25);
set_window_value(atk, window_num, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(atk, window_num, AG_WINDOW_VSPEED, 0);
set_window_value(atk, window_num, AG_WINDOW_INVINCIBILITY, 1);


window_num ++; //aerial blast 
set_window_value(atk, window_num, AG_WINDOW_TYPE, 1);
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 36);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 27);
set_window_value(atk, window_num, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(atk, window_num, AG_WINDOW_HSPEED, -4);
set_window_value(atk, window_num, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(atk, window_num, AG_WINDOW_VSPEED, 0);
set_window_value(atk, window_num, AG_WINDOW_CUSTOM_GRAVITY, 0.4);
set_window_value(atk, window_num, AG_WINDOW_GOTO, 31);

window_num ++; //Cancel 11
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 10);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 5); 
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 33);
set_window_value(atk, window_num, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(atk, window_num, AG_WINDOW_HSPEED, 7);
set_window_value(atk, window_num, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(atk, window_num, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.8);
set_window_value(atk, window_num, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, window_num, AG_WINDOW_SFX, asset_get("sfx_oly_dspecial_dashcancel"));
//set_window_value(atk, window_num, AG_WINDOW_GOTO, 31);

/*
window_num ++; //Cancel (behind)
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 18);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 7); 
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 38);
set_window_value(atk, window_num, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(atk, window_num, AG_WINDOW_HSPEED, -7);
set_window_value(atk, window_num, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(atk, window_num, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.6);
*/


set_attack_value(atk, AG_NUM_WINDOWS, window_num);


//////////////////////////////////////////////////////////////// HITBOXES ////////////////////////////////////////////////////////////////

hitbox_num = 1; //grab
set_hitbox_value(atk, hitbox_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_GROUP, hitbox_num);
set_hitbox_value(atk, hitbox_num, HG_WINDOW, 3);
set_hitbox_value(atk, hitbox_num, HG_LIFETIME, 12);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_X, 22);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_Y, -24);
set_hitbox_value(atk, hitbox_num, HG_WIDTH, 60);
set_hitbox_value(atk, hitbox_num, HG_HEIGHT, 46);
set_hitbox_value(atk, hitbox_num, HG_PRIORITY, 2);
set_hitbox_value(atk, hitbox_num, HG_DAMAGE, 4);
set_hitbox_value(atk, hitbox_num, HG_ANGLE, 90);
set_hitbox_value(atk, hitbox_num, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(atk, hitbox_num, HG_BASE_HITPAUSE, 4);
set_hitbox_value(atk, hitbox_num, HG_IGNORES_PROJECTILES, true);
set_hitbox_value(atk, hitbox_num, HG_VISUAL_EFFECT, hfx_grab);
set_hitbox_value(atk, hitbox_num, HG_HIT_SFX, asset_get("sfx_blow_medium2"));


hitbox_num ++; //slam hitbox
set_hitbox_value(atk, hitbox_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_GROUP, hitbox_num);
set_hitbox_value(atk, hitbox_num, HG_LIFETIME, 1);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_X, 40);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_Y, -35);
set_hitbox_value(atk, hitbox_num, HG_WIDTH, 71);
set_hitbox_value(atk, hitbox_num, HG_HEIGHT, 69);
set_hitbox_value(atk, hitbox_num, HG_PRIORITY, 2);
set_hitbox_value(atk, hitbox_num, HG_ANGLE, 40);
set_hitbox_value(atk, hitbox_num, HG_DAMAGE, 8);
set_hitbox_value(atk, hitbox_num, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(atk, hitbox_num, HG_KNOCKBACK_SCALING, 1.1);
set_hitbox_value(atk, hitbox_num, HG_BASE_HITPAUSE, 9);
set_hitbox_value(atk, hitbox_num, HG_HITPAUSE_SCALING, 0.8);
set_hitbox_value(atk, hitbox_num, HG_VISUAL_EFFECT, hfx_big);
set_hitbox_value(atk, hitbox_num, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));

hitbox_num ++; //aerial throw hitbox 
set_hitbox_value(atk, hitbox_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_GROUP, hitbox_num);
set_hitbox_value(atk, hitbox_num, HG_LIFETIME, 1);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_X, 34);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_Y, -6);
set_hitbox_value(atk, hitbox_num, HG_PRIORITY, 3);
set_hitbox_value(atk, hitbox_num, HG_WIDTH, 62);
set_hitbox_value(atk, hitbox_num, HG_HEIGHT, 57);
set_hitbox_value(atk, hitbox_num, HG_DAMAGE, 8);
set_hitbox_value(atk, hitbox_num, HG_ANGLE, 50);
set_hitbox_value(atk, hitbox_num, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(atk, hitbox_num, HG_KNOCKBACK_SCALING, 0.8);
set_hitbox_value(atk, hitbox_num, HG_BASE_HITPAUSE, 9);
set_hitbox_value(atk, hitbox_num, HG_HITPAUSE_SCALING, 0.8);
set_hitbox_value(atk, hitbox_num, HG_VISUAL_EFFECT, hfx_medium);
set_hitbox_value(atk, hitbox_num, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));



set_num_hitboxes(atk, hitbox_num);