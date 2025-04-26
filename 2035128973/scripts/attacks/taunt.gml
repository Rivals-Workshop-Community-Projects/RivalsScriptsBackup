#macro atk set_attack_value
#macro win set_window_value
#macro hbox set_hitbox_value
var a=AT_TAUNT;

if (get_synced_var(player) == 15005)
{
	atk(a,AG_SPRITE,sprite_get("tauntAcc"));
	atk(a,AG_NUM_WINDOWS,2);
	atk(a,AG_HURTBOX_SPRITE,asset_get("ex_guy_hurt_box"));
	
	win(a,1,AG_WINDOW_TYPE,1);
	win(a,1,AG_WINDOW_LENGTH,10);
	win(a,1,AG_WINDOW_ANIM_FRAMES,1);
	win(a,1,AG_WINDOW_HAS_SFX,1);
	win(a,1,AG_WINDOW_SFX,sound_get("luc_taunt"));
	win(a,1,AG_WINDOW_SFX_FRAME,1);
}
else
{
	atk(a,AG_SPRITE,sprite_get("taunt"));
	atk(a,AG_NUM_WINDOWS,3);
	
	win(a,1,AG_WINDOW_LENGTH,20);
	win(a,1,AG_WINDOW_ANIM_FRAMES,5);
	win(a,1,AG_WINDOW_HAS_SFX,1);
	win(a,1,AG_WINDOW_SFX,sound_get("luc_taunt"));
	win(a,1,AG_WINDOW_SFX_FRAME,10);
	
	win(a,2,AG_WINDOW_LENGTH,16);
	win(a,2,AG_WINDOW_ANIM_FRAMES,4);
	win(a,2,AG_WINDOW_ANIM_FRAME_START,5);
	
	win(a,3,AG_WINDOW_LENGTH,12);
	win(a,3,AG_WINDOW_ANIM_FRAMES,3);
	win(a,3,AG_WINDOW_ANIM_FRAME_START,9);
	
	atk(AT_EXTRA_1,AG_SPRITE,sprite_get("intro"));
	atk(AT_EXTRA_1,AG_NUM_WINDOWS,2);
	win(AT_EXTRA_1,1,AG_WINDOW_LENGTH,24);
	win(AT_EXTRA_1,1,AG_WINDOW_ANIM_FRAMES,4);
}