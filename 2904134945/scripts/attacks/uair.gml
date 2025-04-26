#macro atk set_attack_value
#macro win set_window_value
#macro hbox set_hitbox_value
var a=AT_UAIR;

atk(a,AG_CATEGORY,1);
atk(a,AG_SPRITE,sprite_get("uair"));
atk(a,AG_NUM_WINDOWS,5);
atk(a,AG_HAS_LANDING_LAG,1);
atk(a,AG_LANDING_LAG,10);
atk(a,AG_HURTBOX_SPRITE,sprite_get("uair_hurt"));

win(a,1,AG_WINDOW_TYPE,1);
win(a,1,AG_WINDOW_LENGTH,10);
win(a,1,AG_WINDOW_ANIM_FRAMES,2);
win(a,1,AG_WINDOW_HAS_SFX,1);
win(a,1,AG_WINDOW_SFX,asset_get("sfx_ice_shieldup"));

win(a,2,AG_WINDOW_TYPE,1);
win(a,2,AG_WINDOW_LENGTH,10);
win(a,2,AG_WINDOW_ANIM_FRAMES,3);
win(a,2,AG_WINDOW_ANIM_FRAME_START,2);

win(a,3,AG_WINDOW_TYPE,1);
win(a,3,AG_WINDOW_LENGTH,2);
win(a,3,AG_WINDOW_ANIM_FRAMES,1);
win(a,3,AG_WINDOW_ANIM_FRAME_START,5);
win(a,3,AG_WINDOW_HAS_SFX,1);
win(a,3,AG_WINDOW_SFX,asset_get("sfx_ice_back_air"));
win(a,3,AG_WINDOW_VSPEED,-1);

win(a,4,AG_WINDOW_TYPE,1);
win(a,4,AG_WINDOW_LENGTH,9);
win(a,4,AG_WINDOW_ANIM_FRAMES,3);
win(a,4,AG_WINDOW_ANIM_FRAME_START,6);
win(a,4,AG_WINDOW_VSPEED,-1);

win(a,5,AG_WINDOW_TYPE,1);
win(a,5,AG_WINDOW_LENGTH,8);
win(a,5,AG_WINDOW_ANIM_FRAMES,1);
win(a,5,AG_WINDOW_ANIM_FRAME_START,9);
win(a,5,AG_WINDOW_HAS_WHIFFLAG,1);
win(a,5,AG_WINDOW_HAS_SFX,1);
win(a,5,AG_WINDOW_SFX,asset_get("sfx_ice_end"));

set_num_hitboxes(a,5);

hbox(a,1,HG_PARENT_HITBOX,1);
hbox(a,1,HG_HITBOX_TYPE,1);
hbox(a,1,HG_WINDOW,2);
hbox(a,1,HG_LIFETIME,2);
hbox(a,1,HG_HITBOX_X,-3);
hbox(a,1,HG_HITBOX_Y,-100);
hbox(a,1,HG_WIDTH,50);
hbox(a,1,HG_HEIGHT,50);
hbox(a,1,HG_PRIORITY,2);
hbox(a,1,HG_DAMAGE,2);
hbox(a,1,HG_ANGLE,90);
hbox(a,1,HG_BASE_KNOCKBACK,6);
hbox(a,1,HG_BASE_HITPAUSE,4);
hbox(a,1,HG_VISUAL_EFFECT,spinfx);
hbox(a,1,HG_HIT_SFX,asset_get("sfx_icehit_weak2"));
hbox(a,1,HG_ANGLE_FLIPPER,9);
hbox(a,1,HG_HITBOX_GROUP,1);
hbox(a,1,HG_HITSTUN_MULTIPLIER,0.7);

hbox(a,2,HG_PARENT_HITBOX,1);
hbox(a,2,HG_HITBOX_TYPE,1);
hbox(a,2,HG_WINDOW,2);
hbox(a,2,HG_WINDOW_CREATION_FRAME,4);
hbox(a,2,HG_LIFETIME,2);
hbox(a,2,HG_HITBOX_X,-3);
hbox(a,2,HG_HITBOX_Y,-100);
hbox(a,2,HG_HITBOX_GROUP,2);

hbox(a,3,HG_PARENT_HITBOX,1);
hbox(a,3,HG_HITBOX_TYPE,1);
hbox(a,3,HG_WINDOW,2);
hbox(a,3,HG_WINDOW_CREATION_FRAME,8);
hbox(a,3,HG_LIFETIME,2);
hbox(a,3,HG_HITBOX_X,-3);
hbox(a,3,HG_HITBOX_Y,-100);
hbox(a,3,HG_HITBOX_GROUP,3);

hbox(a,4,HG_PARENT_HITBOX,4);
hbox(a,4,HG_HITBOX_TYPE,1);
hbox(a,4,HG_WINDOW,4);
hbox(a,4,HG_WINDOW_CREATION_FRAME,3);
hbox(a,4,HG_LIFETIME,4);
hbox(a,4,HG_HITBOX_X,-3);
hbox(a,4,HG_HITBOX_Y,-100);
hbox(a,4,HG_WIDTH,70);
hbox(a,4,HG_HEIGHT,70);
hbox(a,4,HG_PRIORITY,2);
hbox(a,4,HG_DAMAGE,5);
hbox(a,4,HG_ANGLE,90);
hbox(a,4,HG_BASE_KNOCKBACK,7.5);
hbox(a,4,HG_KNOCKBACK_SCALING,.8);
hbox(a,4,HG_BASE_HITPAUSE,9);
hbox(a,4,HG_HITPAUSE_SCALING,.8);
hbox(a,4,HG_VISUAL_EFFECT,304);
hbox(a,4,HG_VISUAL_EFFECT_Y_OFFSET,-16);
hbox(a,4,HG_HIT_SFX,asset_get("sfx_icehit_heavy1"));
hbox(a,4,HG_HITBOX_GROUP,4);

hbox(a,5,HG_HITBOX_GROUP,5);
hbox(a,5,HG_HITBOX_TYPE,1);
hbox(a,5,HG_WINDOW,1);
hbox(a,5,HG_WINDOW_CREATION_FRAME,8);
hbox(a,5,HG_LIFETIME,2);
hbox(a,5,HG_HITBOX_X,-3);
hbox(a,5,HG_HITBOX_Y,-66);
hbox(a,5,HG_WIDTH,54);
hbox(a,5,HG_HEIGHT,50);
hbox(a,5,HG_SHAPE,1);
hbox(a,5,HG_PRIORITY,1);
hbox(a,5,HG_DAMAGE,0);
hbox(a,5,HG_ANGLE,90);
hbox(a,5,HG_BASE_KNOCKBACK,6);
hbox(a,5,HG_BASE_HITPAUSE,3);
hbox(a,5,HG_HIT_SFX,asset_get("sfx_blow_weak1"));
hbox(a,5,HG_VISUAL_EFFECT,301);