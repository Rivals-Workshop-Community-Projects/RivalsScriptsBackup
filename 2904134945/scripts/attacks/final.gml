#macro atk set_attack_value
#macro win set_window_value
#macro hbox set_hitbox_value
var a=49;

atk(a,AG_CATEGORY,2);
atk(a,AG_NUM_WINDOWS,3);
atk(a,AG_OFF_LEDGE,1);
atk(a,AG_SPRITE,sprite_get("dspecial"));
atk(a,AG_HURTBOX_SPRITE,sprite_get("dspecial_hurt"));

win(a,1,AG_WINDOW_TYPE,1);
win(a,1,AG_WINDOW_LENGTH,12);
win(a,1,AG_WINDOW_ANIM_FRAMES,3);
win(a,1,AG_WINDOW_HAS_SFX,1);
win(a,1,AG_WINDOW_SFX,asset_get("sfx_absa_jump"));
win(a,1,AG_WINDOW_SFX_FRAME,6);
win(a,1,AG_WINDOW_HSPEED_TYPE,1);
win(a,1,AG_WINDOW_VSPEED_TYPE,1);

win(a,2,AG_WINDOW_TYPE,9);
win(a,2,AG_WINDOW_LENGTH,24);
win(a,2,AG_WINDOW_ANIM_FRAMES,4);
win(a,2,AG_WINDOW_ANIM_FRAME_START,3);
win(a,2,AG_WINDOW_HSPEED_TYPE,1);
win(a,2,AG_WINDOW_VSPEED_TYPE,1);

win(a,3,AG_WINDOW_TYPE,1);
win(a,3,AG_WINDOW_LENGTH,8);
win(a,3,AG_WINDOW_ANIM_FRAMES,1);
win(a,3,AG_WINDOW_ANIM_FRAME_START,7);

set_num_hitboxes(a,1);

hbox(a,1,HG_HITBOX_TYPE,1);
hbox(a,1,HG_WINDOW,3);
hbox(a,1,HG_LIFETIME,8);
hbox(a,1,HG_HITBOX_X,0);
hbox(a,1,HG_HITBOX_Y,0);
hbox(a,1,HG_WIDTH,room_width*2);
hbox(a,1,HG_HEIGHT,room_height*2);
hbox(a,1,HG_PRIORITY,9);
hbox(a,1,HG_DAMAGE,0);
hbox(a,1,HG_ANGLE,90);
hbox(a,1,HG_BASE_KNOCKBACK,30);
hbox(a,1,HG_BASE_HITPAUSE,4);
hbox(a,1,HG_EXTRA_HITPAUSE,4);
hbox(a,1,HG_HIT_SFX,asset_get("sfx_icehit_heavy1"));
hbox(a,1,HG_HITBOX_GROUP,-1);