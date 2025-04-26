// LORD'S PUNISHMENT
var atk = AT_OVERDRIVE;

set_attack_value(atk, AG_CATEGORY, 2);
set_attack_value(atk, AG_SPRITE, sprite_get("overdrive"));
set_attack_value(atk, AG_HURTBOX_SPRITE, hurtbox_spr);
set_attack_value(atk, AG_NUM_WINDOWS, 21);

//INITIAL ACTIVATION (windows 1 - 4)
var window_num = 1; //start
set_window_value(atk, window_num, AG_WINDOW_TYPE, 1);
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 6); //controls speed
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 2); //frames amount on strip
set_window_value(atk, window_num, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, window_num, AG_WINDOW_SFX, sound_get("sfx_accelblitz_timestop"));

window_num ++; //stop 1
set_window_value(atk, window_num, AG_WINDOW_TYPE, 0);
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 28); //controls speed
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 1); //frames amount on strip
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 2); //starting frame. starts from 0
set_window_value(atk, window_num, AG_WINDOW_SFX_FRAME, 20);

window_num ++; //power up
set_window_value(atk, window_num, AG_WINDOW_TYPE, 1);
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 2); //controls speed
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 1); //frames amount on strip
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 3); //starting frame. starts from 0
set_window_value(atk, window_num, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, window_num, AG_WINDOW_SFX, asset_get("sfx_burnconsume"));

window_num ++; //power up freeze frame
set_window_value(atk, window_num, AG_WINDOW_TYPE, 0);
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 40); //controls speed
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 1); //frames amount on strip
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 4); //starting frame. starts from 0
set_window_value(atk, window_num, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, window_num, AG_WINDOW_SFX, asset_get("sfx_upbcharge"));


//LEAP (windows 5 - 11)
window_num ++; //windup - leap
set_window_value(atk, window_num, AG_WINDOW_TYPE, 0);
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 6); //controls speed
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 2); //frames amount on strip
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 5); //starting frame. starts from 0
set_window_value(atk, window_num, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, window_num, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));

window_num ++; //windup hold - leap
set_window_value(atk, window_num, AG_WINDOW_TYPE, 0);
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 6); //controls speed
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 1); //frames amount on strip
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 7); //starting frame. starts from 0
set_window_value(atk, window_num, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, window_num, AG_WINDOW_SFX, sound_get("sfx_forceleap_jump"));

window_num ++; //leap - jump
set_window_value(atk, window_num, AG_WINDOW_TYPE, 0);
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 20); //controls speed
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 3); //frames amount on strip
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 8); //starting frame. starts from 0
set_window_value(atk, window_num, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(atk, window_num, AG_WINDOW_VSPEED, -15);
set_window_value(atk, window_num, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, window_num, AG_WINDOW_SFX, asset_get("sfx_upbmove"));

window_num ++; //leap - fall
set_window_value(atk, window_num, AG_WINDOW_TYPE, 10);
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 8); //controls speed
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 2); //frames amount on strip
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 11); //starting frame. starts from 0

window_num ++; //leap land frame
set_window_value(atk, window_num, AG_WINDOW_TYPE, 0);
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 4); //controls speed
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 2); //frames amount on strip
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 13); //starting frame. starts from 0
set_window_value(atk, window_num, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, window_num, AG_WINDOW_SFX, asset_get("sfx_kragg_rock_shatter"));

window_num ++; //power smash catastrophe
set_window_value(atk, window_num, AG_WINDOW_TYPE, 0);
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 12); //controls speed
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 2); //frames amount on strip
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 15); //starting frame. starts from 0
set_window_value(atk, window_num, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, window_num, AG_WINDOW_SFX, asset_get("sfx_forsburn_combust"));

window_num ++; //power smash catastrophe end
set_window_value(atk, window_num, AG_WINDOW_TYPE, 0);
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 8); //controls speed
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 2); //frames amount on strip
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 17); //starting frame. starts from 0

//CREATING LIGHT SWORD (windows 12 - 14)
window_num ++; //light sword creation - part 1
set_window_value(atk, window_num, AG_WINDOW_TYPE, 0);
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 32); //controls speed
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 4); //frames amount on strip
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 19); //starting frame. starts from 0
set_window_value(atk, window_num, AG_WINDOW_SFX_FRAME, 30);
set_window_value(atk, window_num, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, window_num, AG_WINDOW_SFX, sound_get("sfx_lordpunishment_sword_spawn"));

window_num ++; //light sword creation - part 2
set_window_value(atk, window_num, AG_WINDOW_TYPE, 0);
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 8); //controls speed
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 3); //frames amount on strip
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 23); //starting frame. starts from 0

window_num ++; //light sword - hold up
set_window_value(atk, window_num, AG_WINDOW_TYPE, 0);
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 40); //controls speed
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 1); //frames amount on strip
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 26); //starting frame. starts from 0

//BURNING LIGHT SWORD SLASH (windows 15 - 18)
window_num ++; //light sword - slash windup
set_window_value(atk, window_num, AG_WINDOW_TYPE, 0);
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 6); //controls speed
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 2); //frames amount on strip
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 27); //starting frame. starts from 0

window_num ++; //light sword - pre-slash pose
set_window_value(atk, window_num, AG_WINDOW_TYPE, 0);
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 8); //controls speed
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 1); //frames amount on strip
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 29); //starting frame. starts from 0
set_window_value(atk, window_num, AG_WINDOW_SFX_FRAME, 7);
set_window_value(atk, window_num, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, window_num, AG_WINDOW_SFX, sound_get("sfx_lordpunishment_sword_slash"));

window_num ++; //light sword - slash attack
set_window_value(atk, window_num, AG_WINDOW_TYPE, 0);
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 16); //controls speed
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 4); //frames amount on strip
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 30); //starting frame. starts from 0

window_num ++; //light sword - slash end pose
set_window_value(atk, window_num, AG_WINDOW_TYPE, 0);
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 20); //controls speed
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 1); //frames amount on strip
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 34); //starting frame. starts from 0

//END (windows 19 - 21)
window_num ++; //attack end - part 1
set_window_value(atk, window_num, AG_WINDOW_TYPE, 0);
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 20); //controls speed
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 4); //frames amount on strip
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 35); //starting frame. starts from 0
set_window_value(atk, window_num, AG_WINDOW_SFX_FRAME, 17);
set_window_value(atk, window_num, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, window_num, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));

window_num ++; //attack end pose
set_window_value(atk, window_num, AG_WINDOW_TYPE, 0);
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 20); //controls speed
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 1); //frames amount on strip
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 39); //starting frame. starts from 0

window_num ++; //attack end - part 2
set_window_value(atk, window_num, AG_WINDOW_TYPE, 0);
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 12); //controls speed
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 2); //frames amount on strip
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 40); //starting frame. starts from 0

set_num_hitboxes(atk, 1);

var hitbox_num = 1; //sword slash (for some reason it doesn't hit)
set_hitbox_value(atk, hitbox_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_GROUP, -1);
set_hitbox_value(atk, hitbox_num, HG_WINDOW, 17);
set_hitbox_value(atk, hitbox_num, HG_LIFETIME, 6);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_X, 0);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_Y, -48);
set_hitbox_value(atk, hitbox_num, HG_WIDTH, 750);
set_hitbox_value(atk, hitbox_num, HG_HEIGHT, 450);
set_hitbox_value(atk, hitbox_num, HG_PRIORITY, 10);
set_hitbox_value(atk, hitbox_num, HG_DAMAGE, 18);
set_hitbox_value(atk, hitbox_num, HG_ANGLE, 40);
set_hitbox_value(atk, hitbox_num, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(atk, hitbox_num, HG_KNOCKBACK_SCALING, 1.5);
set_hitbox_value(atk, hitbox_num, HG_BASE_HITPAUSE, 9);
set_hitbox_value(atk, hitbox_num, HG_HITPAUSE_SCALING, 1.2);
set_hitbox_value(atk, hitbox_num, HG_EXTRA_HITPAUSE, 20);
set_hitbox_value(atk, hitbox_num, HG_EXTRA_CAMERA_SHAKE, 1);
set_hitbox_value(atk, hitbox_num, HG_VISUAL_EFFECT, fx_fireblow[2]);
set_hitbox_value(atk, hitbox_num, HG_HIT_PARTICLE_NUM, 6);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_COLOR, hb_color[1]);
set_hitbox_value(atk, hitbox_num, HG_TECHABLE, 1);
set_hitbox_value(atk, hitbox_num, HG_HIT_LOCKOUT, 20);