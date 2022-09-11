
set_attack_value(48, AG_OFF_LEDGE, 1);
set_attack_value(48, AG_HURTBOX_SPRITE, hurtbox_spr);

switch get_player_color(player){
    
case 7:
set_attack_value(48, AG_NUM_WINDOWS, 4);
set_attack_value(48, AG_SPRITE, sprite_get("nero_intro"));

set_window_value(48, 1, AG_WINDOW_TYPE, 1);
set_window_value(48, 1, AG_WINDOW_LENGTH, 20);
set_window_value(48, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(48, 1, AG_WINDOW_ANIM_FRAME_START, 1);

set_window_value(48, 2, AG_WINDOW_TYPE, 1);
set_window_value(48, 2, AG_WINDOW_LENGTH, 15);
set_window_value(48, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(48, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(48, 2, AG_WINDOW_SFX, asset_get("mfx_star"));
set_window_value(48, 2, AG_WINDOW_SFX_FRAME, 10);

set_window_value(48, 3, AG_WINDOW_TYPE, 1);
set_window_value(48, 3, AG_WINDOW_LENGTH, 40);
set_window_value(48, 3, AG_WINDOW_ANIM_FRAMES, 8);
set_window_value(48, 3, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(48, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(48, 3, AG_WINDOW_SFX, asset_get("sfx_abyss_explosion"));
set_window_value(48, 3, AG_WINDOW_SFX_FRAME, 1);

set_window_value(48, 4, AG_WINDOW_TYPE, 1);
set_window_value(48, 4, AG_WINDOW_LENGTH, 20);
set_window_value(48, 4, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(48, 4, AG_WINDOW_ANIM_FRAME_START, 11);
if (nero_voice){
set_window_value(48, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(48, 4, AG_WINDOW_SFX, sound_get("nero_intro"));
set_window_value(48, 4, AG_WINDOW_SFX_FRAME, 1);
}
break;



case 10:
set_attack_value(48, AG_NUM_WINDOWS, 3);
set_attack_value(48, AG_SPRITE, sprite_get("mako_intro2"));

set_window_value(48, 1, AG_WINDOW_TYPE, 1);
set_window_value(48, 1, AG_WINDOW_LENGTH, 5);
set_window_value(48, 1, AG_WINDOW_ANIM_FRAMES, 1);

set_window_value(48, 2, AG_WINDOW_TYPE, 1);
set_window_value(48, 2, AG_WINDOW_LENGTH, 75);
set_window_value(48, 2, AG_WINDOW_ANIM_FRAMES, 17);
set_window_value(48, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(48, 2, AG_WINDOW_SFX, asset_get("sfx_abyss_explosion"));
set_window_value(48, 2, AG_WINDOW_SFX_FRAME, 40);

set_window_value(48, 3, AG_WINDOW_TYPE, 1);
set_window_value(48, 3, AG_WINDOW_LENGTH, 20);
set_window_value(48, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(48, 3, AG_WINDOW_ANIM_FRAME_START, 16);
break;













    
default:
set_attack_value(48, AG_NUM_WINDOWS, 3);
set_attack_value(48, AG_SPRITE, sprite_get("intro"));

set_window_value(48, 1, AG_WINDOW_TYPE, 1);
set_window_value(48, 1, AG_WINDOW_LENGTH, 25);
set_window_value(48, 1, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(48, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(48, 1, AG_WINDOW_SFX, asset_get("sfx_jumpground"));
set_window_value(48, 1, AG_WINDOW_SFX_FRAME, 4);

set_window_value(48, 2, AG_WINDOW_TYPE, 1);
set_window_value(48, 2, AG_WINDOW_LENGTH, 25);
set_window_value(48, 2, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(48, 2, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(48, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(48, 2, AG_WINDOW_SFX, asset_get("sfx_jumpground"));
set_window_value(48, 2, AG_WINDOW_SFX_FRAME, 4);

set_window_value(48, 3, AG_WINDOW_TYPE, 1);
set_window_value(48, 3, AG_WINDOW_LENGTH, 25);
set_window_value(48, 3, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(48, 3, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(48, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(48, 3, AG_WINDOW_SFX, asset_get("sfx_jumpground"));
set_window_value(48, 3, AG_WINDOW_SFX_FRAME, 4);
break;

}