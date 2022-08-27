set_attack_value(AT_DSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_DSPECIAL, AG_SPRITE, sprite_get("dspecial"));
set_attack_value(AT_DSPECIAL, AG_HURTBOX_SPRITE, sprite_get("dspecial_hurt"));
set_attack_value(AT_DSPECIAL, AG_MUNO_ATTACK_USES_ROLES, 1);

set_attack_value(AT_DSPECIAL, AG_NUM_WINDOWS, 3);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.1);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.15);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_SFX, sound_get("sfx_smb3_item"));
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_SFX_FRAME, 5);
set_window_value(AT_DSPECIAL, 1, AG_MUNO_WINDOW_ROLE, 1);

set_window_value(AT_DSPECIAL, 2, AG_WINDOW_LENGTH, 16);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.15);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_INVINCIBILITY, 1);
set_window_value(AT_DSPECIAL, 2, AG_MUNO_WINDOW_ROLE, 2);

set_window_value(AT_DSPECIAL, 3, AG_WINDOW_LENGTH, 29);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.1);
set_window_value(AT_DSPECIAL, 3, AG_MUNO_WINDOW_ROLE, 3);


var counter_frame = get_window_value(AT_DSPECIAL, 1, AG_WINDOW_LENGTH)
var counter_active = get_window_value(AT_DSPECIAL, 2, AG_WINDOW_LENGTH)

set_attack_value(AT_DSPECIAL, AG_MUNO_ATTACK_MISC_ADD, "Counterable during frames " + string(counter_frame) + "-" + string(counter_frame + counter_active) + " 
Invincible on frames " + string(counter_frame) + "-" + string(counter_frame + counter_active));

set_num_hitboxes(AT_DSPECIAL, 0);
