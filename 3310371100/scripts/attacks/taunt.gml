set_attack_value(AT_TAUNT, AG_CATEGORY, 0);
set_attack_value(AT_TAUNT, AG_SPRITE, sprite_get("taunt_v2"));
set_attack_value(AT_TAUNT, AG_HURTBOX_SPRITE, asset_get("ex_guy_hurt_box"));
set_attack_value(AT_TAUNT, AG_NUM_WINDOWS, 5);
set_attack_value(AT_TAUNT, AG_MUNO_ATTACK_MISC_ADD, "can you guys please like stop speaking in numbers i speak in windows. like i'm seriously like begging you please. i don't know what exact frame the hitbox spawns. i don't know where to where the endlag duration is, not to mention the whifflag. hitbox spawns on window 2 and everything from there is endlag. seriously please stop i'm crying");

//start
set_window_value(AT_TAUNT, 1, AG_WINDOW_LENGTH, 17);
set_window_value(AT_TAUNT, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_TAUNT, 1, AG_WINDOW_ANIM_FRAMES, 4);

//slowing
set_window_value(AT_TAUNT, 2, AG_WINDOW_LENGTH, 12);
set_window_value(AT_TAUNT, 2, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_TAUNT, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_TAUNT, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_TAUNT, 2, AG_WINDOW_SFX, asset_get("sfx_clairen_hair"));
set_window_value(AT_TAUNT, 2, AG_WINDOW_SFX_FRAME, 7);

//start
set_window_value(AT_TAUNT, 3, AG_WINDOW_LENGTH, 5);
set_window_value(AT_TAUNT, 3, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_TAUNT, 3, AG_WINDOW_ANIM_FRAMES, 1);

//start
set_window_value(AT_TAUNT, 4, AG_WINDOW_LENGTH, 40);
set_window_value(AT_TAUNT, 4, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_TAUNT, 4, AG_WINDOW_ANIM_FRAMES, 8);

//start
set_window_value(AT_TAUNT, 5, AG_WINDOW_LENGTH, 10);
set_window_value(AT_TAUNT, 5, AG_WINDOW_ANIM_FRAME_START, 15);
set_window_value(AT_TAUNT, 5, AG_WINDOW_ANIM_FRAMES, 1);