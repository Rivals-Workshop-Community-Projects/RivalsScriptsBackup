#macro atk set_attack_value
#macro win set_window_value
#macro hbox set_hitbox_value
var a=AT_UTILT;

atk(a,AG_NUM_WINDOWS,3);
atk(a,AG_SPRITE,sprite_get("utilt"));
atk(a,AG_HURTBOX_SPRITE,sprite_get("utilt_hurt"));

win(a,1,AG_WINDOW_TYPE,1);
win(a,1,AG_WINDOW_LENGTH,9);
win(a,1,AG_WINDOW_ANIM_FRAMES,3);
win(a,1,AG_WINDOW_HAS_SFX,1);
win(a,1,AG_WINDOW_SFX,asset_get("sfx_swipe_medium1"));
win(a,1,AG_WINDOW_SFX_FRAME,6);

win(a,2,AG_WINDOW_TYPE,1);
win(a,2,AG_WINDOW_LENGTH,6);
win(a,2,AG_WINDOW_ANIM_FRAMES,2);
win(a,2,AG_WINDOW_ANIM_FRAME_START,3);

win(a,3,AG_WINDOW_TYPE,1);
win(a,3,AG_WINDOW_LENGTH,12);
win(a,3,AG_WINDOW_ANIM_FRAMES,2);
win(a,3,AG_WINDOW_ANIM_FRAME_START,5);
win(a,3,AG_WINDOW_HAS_WHIFFLAG,1);

set_num_hitboxes(a,3);

// Back
hbox(a,1,HG_HITBOX_TYPE,1);
hbox(a,1,HG_WINDOW,2);
hbox(a,1,HG_LIFETIME,3);
hbox(a,1,HG_HITBOX_X,-50);
hbox(a,1,HG_HITBOX_Y,-30);
hbox(a,1,HG_WIDTH,50);
hbox(a,1,HG_HEIGHT,60);
hbox(a,1,HG_PRIORITY,3);
hbox(a,1,HG_DAMAGE,7);
hbox(a,1,HG_ANGLE,65);
hbox(a,1,HG_BASE_KNOCKBACK,7);
hbox(a,1,HG_KNOCKBACK_SCALING,.4);
hbox(a,1,HG_BASE_HITPAUSE,6);
hbox(a,1,HG_HITPAUSE_SCALING,.4);
hbox(a,1,HG_HIT_SFX,asset_get("sfx_shovel_hit_light2"));

// Up
hbox(a,2,HG_HITBOX_TYPE,1);
hbox(a,2,HG_WINDOW,2);
hbox(a,2,HG_LIFETIME,3);
hbox(a,2,HG_HITBOX_X,6);
hbox(a,2,HG_HITBOX_Y,-54);
hbox(a,2,HG_WIDTH,120);
hbox(a,2,HG_HEIGHT,90);
hbox(a,2,HG_PRIORITY,1);
hbox(a,2,HG_DAMAGE,7);
hbox(a,2,HG_ANGLE,80);
hbox(a,2,HG_BASE_KNOCKBACK,7);
hbox(a,2,HG_KNOCKBACK_SCALING,.4);
hbox(a,2,HG_BASE_HITPAUSE,6);
hbox(a,2,HG_HITPAUSE_SCALING,.4);
hbox(a,2,HG_HIT_SFX,asset_get("sfx_shovel_hit_light1"));

// Front
hbox(a,3,HG_HITBOX_TYPE,1);
hbox(a,3,HG_WINDOW,2);
hbox(a,3,HG_LIFETIME,6);
hbox(a,3,HG_HITBOX_X,46);
hbox(a,3,HG_HITBOX_Y,-20);
hbox(a,3,HG_WIDTH,60);
hbox(a,3,HG_HEIGHT,40);
hbox(a,3,HG_PRIORITY,2);
hbox(a,3,HG_SHAPE,2);
hbox(a,3,HG_DAMAGE,7);
hbox(a,3,HG_ANGLE,90);
hbox(a,3,HG_BASE_KNOCKBACK,7);
hbox(a,3,HG_KNOCKBACK_SCALING,.4);
hbox(a,3,HG_BASE_HITPAUSE,6);
hbox(a,3,HG_HITPAUSE_SCALING,.4);
hbox(a,3,HG_HIT_SFX,asset_get("sfx_shovel_hit_light1"));