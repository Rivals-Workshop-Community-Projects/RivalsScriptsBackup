#macro atk set_attack_value
#macro win set_window_value
#macro hbox set_hitbox_value
var a=AT_DSTRONG;

atk(a,AG_NUM_WINDOWS,5);
atk(a,AG_STRONG_CHARGE_WINDOW,1);
atk(a,AG_SPRITE,sprite_get("dstrong"));
atk(a,AG_HURTBOX_SPRITE,sprite_get("dstrong_hurt"));

win(a,1,AG_WINDOW_TYPE,1);
win(a,1,AG_WINDOW_LENGTH,6);
win(a,1,AG_WINDOW_ANIM_FRAMES,3);
win(a,1,AG_WINDOW_HAS_SFX,1);
win(a,1,AG_WINDOW_SFX,asset_get("sfx_swipe_medium2"));

win(a,2,AG_WINDOW_TYPE,1);
win(a,2,AG_WINDOW_LENGTH,3);
win(a,2,AG_WINDOW_ANIM_FRAMES,1);
win(a,2,AG_WINDOW_ANIM_FRAME_START,3);
win(a,2,AG_WINDOW_HAS_SFX,1);
win(a,2,AG_WINDOW_SFX,asset_get("sfx_ice_dspecial_ground"));

win(a,3,AG_WINDOW_TYPE,1);
win(a,3,AG_WINDOW_LENGTH,6);
win(a,3,AG_WINDOW_ANIM_FRAMES,2);
win(a,3,AG_WINDOW_ANIM_FRAME_START,4);

win(a,4,AG_WINDOW_TYPE,1);
win(a,4,AG_WINDOW_LENGTH,8);
win(a,4,AG_WINDOW_ANIM_FRAMES,1);
win(a,4,AG_WINDOW_ANIM_FRAME_START,6);
win(a,4,AG_WINDOW_HAS_WHIFFLAG,1);

win(a,5,AG_WINDOW_TYPE,1);
win(a,5,AG_WINDOW_LENGTH,12);
win(a,5,AG_WINDOW_ANIM_FRAMES,3);
win(a,5,AG_WINDOW_ANIM_FRAME_START,7);
win(a,5,AG_WINDOW_HAS_WHIFFLAG,1);

set_num_hitboxes(a,1);

hbox(a,1,HG_PARENT_HITBOX,1);
hbox(a,1,HG_HITBOX_TYPE,1);
hbox(a,1,HG_WINDOW,3);
hbox(a,1,HG_LIFETIME,3);
hbox(a,1,HG_HITBOX_Y,-28);
hbox(a,1,HG_WIDTH,134);
hbox(a,1,HG_HEIGHT,60);
hbox(a,1,HG_PRIORITY,1);
hbox(a,1,HG_DAMAGE,11);
hbox(a,1,HG_SHAPE,2);
hbox(a,1,HG_ANGLE,80);
hbox(a,1,HG_ANGLE_FLIPPER,4);
hbox(a,1,HG_BASE_KNOCKBACK,7);
hbox(a,1,HG_KNOCKBACK_SCALING,0.95);
hbox(a,1,HG_BASE_HITPAUSE,8);
hbox(a,1,HG_HITPAUSE_SCALING,0.95);
hbox(a,1,HG_VISUAL_EFFECT,bigicefx);
hbox(a,1,HG_HIT_SFX,asset_get("sfx_icehit_heavy2"));