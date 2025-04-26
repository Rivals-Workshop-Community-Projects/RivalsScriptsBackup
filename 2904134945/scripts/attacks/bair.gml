#macro atk set_attack_value
#macro win set_window_value
#macro hbox set_hitbox_value
var a=AT_BAIR;

atk(a,AG_CATEGORY,1);
atk(a,AG_SPRITE,sprite_get("bair"));
atk(a,AG_NUM_WINDOWS,4);
atk(a,AG_HAS_LANDING_LAG,1);
atk(a,AG_LANDING_LAG,6);
atk(a,AG_HURTBOX_SPRITE,sprite_get("bair_hurt"));

win(a,1,AG_WINDOW_TYPE,1);
win(a,1,AG_WINDOW_LENGTH,6);
win(a,1,AG_WINDOW_ANIM_FRAMES,2);
win(a,1,AG_WINDOW_VSPEED,-1);
win(a,1,AG_WINDOW_HAS_SFX,1);
win(a,1,AG_WINDOW_SFX,asset_get("sfx_swipe_weak1"));
win(a,1,AG_WINDOW_SFX_FRAME,4);

win(a,2,AG_WINDOW_TYPE,1);
win(a,2,AG_WINDOW_LENGTH,4);
win(a,2,AG_WINDOW_ANIM_FRAMES,1);
win(a,2,AG_WINDOW_ANIM_FRAME_START,2);

win(a,3,AG_WINDOW_TYPE,1);
win(a,3,AG_WINDOW_LENGTH,5);
win(a,3,AG_WINDOW_ANIM_FRAMES,2);
win(a,3,AG_WINDOW_ANIM_FRAME_START,3);

win(a,4,AG_WINDOW_TYPE,1);
win(a,4,AG_WINDOW_LENGTH,8);
win(a,4,AG_WINDOW_ANIM_FRAMES,3);
win(a,4,AG_WINDOW_ANIM_FRAME_START,4);
win(a,4,AG_WINDOW_HAS_WHIFFLAG,1);

set_num_hitboxes(a,2);

hbox(a,1,HG_HITBOX_TYPE,1);
hbox(a,1,HG_WINDOW,2);
hbox(a,1,HG_LIFETIME,4);
hbox(a,1,HG_HITBOX_X,-34);
hbox(a,1,HG_HITBOX_Y,-34);
hbox(a,1,HG_WIDTH,68);
hbox(a,1,HG_HEIGHT,48);
hbox(a,1,HG_PRIORITY,2);
hbox(a,1,HG_DAMAGE,7);
hbox(a,1,HG_ANGLE,135);
hbox(a,1,HG_BASE_KNOCKBACK,6);
hbox(a,1,HG_KNOCKBACK_SCALING,.7);
hbox(a,1,HG_BASE_HITPAUSE,9);
hbox(a,1,HG_HITPAUSE_SCALING,.6);
hbox(a,1,HG_HIT_SFX,asset_get("sfx_icehit_medium1"));

hbox(a,2,HG_HITBOX_TYPE,1);
hbox(a,2,HG_WINDOW,3);
hbox(a,2,HG_LIFETIME,3);
hbox(a,2,HG_HITBOX_X,-34);
hbox(a,2,HG_HITBOX_Y,-34);
hbox(a,2,HG_WIDTH,52);
hbox(a,2,HG_HEIGHT,32);
hbox(a,2,HG_PRIORITY,1);
hbox(a,2,HG_DAMAGE,5);
hbox(a,2,HG_ANGLE,135);
hbox(a,2,HG_ANGLE_FLIPPER,6);
hbox(a,2,HG_BASE_KNOCKBACK,6);
hbox(a,2,HG_KNOCKBACK_SCALING,.4);
hbox(a,2,HG_BASE_HITPAUSE,5);
hbox(a,2,HG_HITPAUSE_SCALING,.3);
hbox(a,2,HG_HIT_SFX,asset_get("sfx_blow_weak1"));