#macro atk set_attack_value
#macro win set_window_value
#macro hbox set_hitbox_value
var a=AT_TAUNT;

atk(a,AG_SPRITE,sprite_get("taunt"));
atk(a,AG_NUM_WINDOWS,3);
atk(a,AG_HURTBOX_SPRITE,asset_get("ex_guy_hurt_box"));

win(a,1,AG_WINDOW_TYPE,1);
win(a,1,AG_WINDOW_LENGTH,24);
win(a,1,AG_WINDOW_ANIM_FRAMES,4);
win(a,1,AG_WINDOW_HAS_SFX,1);
win(a,1,AG_WINDOW_SFX,asset_get("sfx_jumpair"));
win(a,1,AG_WINDOW_SFX_FRAME,6);

win(a,2,AG_WINDOW_TYPE,1);
win(a,2,AG_WINDOW_LENGTH,32);
win(a,2,AG_WINDOW_ANIM_FRAMES,1);
win(a,2,AG_WINDOW_ANIM_FRAME_START,4);

win(a,3,AG_WINDOW_TYPE,1);
win(a,3,AG_WINDOW_LENGTH,8);
win(a,3,AG_WINDOW_ANIM_FRAMES,1);
win(a,3,AG_WINDOW_ANIM_FRAME_START,5);

a=AT_EXTRA_1;

atk(a,AG_SPRITE,sprite_get("phone"));
atk(a,AG_NUM_WINDOWS,7);
atk(a,AG_HURTBOX_SPRITE,asset_get("ex_guy_hurt_box"));

win(a,1,AG_WINDOW_TYPE,1);
win(a,1,AG_WINDOW_LENGTH,18);
win(a,1,AG_WINDOW_ANIM_FRAMES,3);
win(a,1,AG_WINDOW_HAS_SFX,1);
win(a,1,AG_WINDOW_SFX,asset_get("sfx_dash_start"));
win(a,1,AG_WINDOW_SFX_FRAME,12);

win(a,2,AG_WINDOW_TYPE,1);
win(a,2,AG_WINDOW_LENGTH,24);
win(a,2,AG_WINDOW_ANIM_FRAMES,4);
win(a,2,AG_WINDOW_ANIM_FRAME_START,1);
win(a,2,AG_WINDOW_HAS_SFX,1);
win(a,2,AG_WINDOW_SFX,asset_get("sfx_jumpair"));
win(a,2,AG_WINDOW_SFX_FRAME,6);

win(a,3,AG_WINDOW_TYPE,1);
win(a,3,AG_WINDOW_LENGTH,24);
win(a,3,AG_WINDOW_ANIM_FRAMES,1);
win(a,3,AG_WINDOW_ANIM_FRAME_START,5);

win(a,4,AG_WINDOW_TYPE,1);
win(a,4,AG_WINDOW_LENGTH,6);
win(a,4,AG_WINDOW_ANIM_FRAMES,1);
win(a,4,AG_WINDOW_ANIM_FRAME_START,4);

win(a,5,AG_WINDOW_TYPE,1);
win(a,5,AG_WINDOW_LENGTH,6);
win(a,5,AG_WINDOW_ANIM_FRAMES,1);
win(a,5,AG_WINDOW_ANIM_FRAME_START,3);

win(a,6,AG_WINDOW_TYPE,1);
win(a,6,AG_WINDOW_LENGTH,12);
win(a,6,AG_WINDOW_ANIM_FRAMES,2);
win(a,6,AG_WINDOW_ANIM_FRAME_START,1);
win(a,6,AG_WINDOW_HAS_SFX,1);
win(a,6,AG_WINDOW_SFX,asset_get("sfx_jumpair"));

win(a,7,AG_WINDOW_TYPE,1);
win(a,7,AG_WINDOW_LENGTH,6);
win(a,7,AG_WINDOW_ANIM_FRAMES,1);
win(a,7,AG_WINDOW_ANIM_FRAME_START,0);

a=AT_TAUNT_2;

atk(a,AG_SPRITE,sprite_get("dansen"));
atk(a,AG_NUM_WINDOWS,1);
atk(a,AG_HURTBOX_SPRITE,asset_get("ex_guy_hurt_box"));

win(a,1,AG_WINDOW_TYPE,9);
win(a,1,AG_WINDOW_LENGTH,48);
win(a,1,AG_WINDOW_ANIM_FRAMES,8);