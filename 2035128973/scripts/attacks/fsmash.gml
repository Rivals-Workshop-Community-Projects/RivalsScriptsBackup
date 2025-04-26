#macro atk set_attack_value
#macro win set_window_value
#macro hbox set_hitbox_value
if (get_synced_var(player) == 15005) exit;
var a=49;

atk(a,AG_CATEGORY,2);
atk(a,AG_SPRITE,sprite_get("nspecial"));
atk(a,AG_NUM_WINDOWS,4);
atk(a,AG_HURTBOX_SPRITE,sprite_get("nspecial_hurt"));

win(a,1,AG_WINDOW_TYPE,1);
win(a,1,AG_WINDOW_LENGTH,7);
win(a,1,AG_WINDOW_ANIM_FRAMES,1);
win(a,1,AG_WINDOW_HAS_SFX,1);

win(a,2,AG_WINDOW_TYPE,9);
win(a,2,AG_WINDOW_LENGTH,6);
win(a,2,AG_WINDOW_ANIM_FRAMES,3);
win(a,2,AG_WINDOW_ANIM_FRAME_START,1);

win(a,3,AG_WINDOW_TYPE,1);
win(a,3,AG_WINDOW_LENGTH,10);
win(a,3,AG_WINDOW_ANIM_FRAMES,2);
win(a,3,AG_WINDOW_ANIM_FRAME_START,4);
win(a,3,AG_WINDOW_HAS_SFX,1);
win(a,3,AG_WINDOW_SFX,asset_get("sfx_boss_laser"));

win(a,4,AG_WINDOW_TYPE,1);
win(a,4,AG_WINDOW_LENGTH,12);
win(a,4,AG_WINDOW_ANIM_FRAMES,2);
win(a,4,AG_WINDOW_ANIM_FRAME_START,6);
win(a,4,AG_WINDOW_HSPEED,-2);

set_num_hitboxes(a,2);

hbox(a,1,HG_HITBOX_TYPE,1);
hbox(a,1,HG_WINDOW,2);
hbox(a,1,HG_LIFETIME,6);
hbox(a,1,HG_HITBOX_X,-26);
hbox(a,1,HG_HITBOX_Y,-30);
hbox(a,1,HG_PRIORITY,3);
hbox(a,1,HG_DAMAGE,1);
hbox(a,1,HG_ANGLE,90);
hbox(a,1,HG_BASE_KNOCKBACK,7);
hbox(a,1,HG_EXTRA_HITPAUSE,5);
hbox(a,1,HG_HITBOX_GROUP,-1);
hbox(a,1,HG_ANGLE_FLIPPER,9);

hbox(a,2,HG_HITBOX_TYPE,1);
hbox(a,2,HG_WINDOW,3);
hbox(a,2,HG_WINDOW_CREATION_FRAME,8);
hbox(a,2,HG_LIFETIME,1);
hbox(a,2,HG_WIDTH,1000);
hbox(a,2,HG_HEIGHT,300);
hbox(a,2,HG_HITBOX_X,400);
hbox(a,2,HG_HITBOX_Y,-30);
hbox(a,2,HG_PRIORITY,9);
hbox(a,2,HG_DAMAGE,1);
hbox(a,2,HG_SHAPE,1);
hbox(a,2,HG_ANGLE,5);
hbox(a,2,HG_BASE_KNOCKBACK,50);
hbox(a,2,HG_HITBOX_GROUP,-1);
hbox(a,2,HG_EXTRA_HITPAUSE,10);
hbox(a,2,HG_HIT_SFX,asset_get("sfx_ori_energyhit_weak"));