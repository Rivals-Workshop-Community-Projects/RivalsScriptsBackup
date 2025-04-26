set_attack_value(AT_NSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_NSPECIAL, AG_NUM_WINDOWS, 1);
set_attack_value(AT_NSPECIAL, AG_SPRITE, sprite_get("nspecial"));
set_attack_value(AT_NSPECIAL, AG_HURTBOX_SPRITE, sprite_get("dashbox"));
set_attack_value(AT_NSPECIAL, AG_HURTBOX_AIR_SPRITE, sprite_get("dashbox"));
set_attack_value(AT_NSPECIAL, AG_HAS_LANDING_LAG, 0);

if(has_rune("A"))
	set_window_value(AT_NSPECIAL, 1, AG_WINDOW_LENGTH, 22);
else
	set_window_value(AT_NSPECIAL, 1, AG_WINDOW_LENGTH, 36);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_HSPEED, 0);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_VSPEED, 0);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_VSPEED_TYPE, 1);

//hitboxes
set_num_hitboxes(AT_NSPECIAL, 1);

set_hitbox_value(AT_NSPECIAL, 1, HG_DAMAGE, 1);
set_hitbox_value(AT_NSPECIAL, 1, HG_ANGLE_FLIPPER, 1);
set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_NSPECIAL, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_HITPAUSE, 0);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITPAUSE_SCALING, 0);

set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_X, 0);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_Y, -48);
set_hitbox_value(AT_NSPECIAL, 1, HG_WIDTH, 128);
set_hitbox_value(AT_NSPECIAL, 1, HG_HEIGHT, 128);
set_hitbox_value(AT_NSPECIAL, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_NSPECIAL, 1, HG_SHAPE, 0);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NSPECIAL, 1, HG_WINDOW, 1);
set_hitbox_value(AT_NSPECIAL, 1, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_NSPECIAL, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_NSPECIAL, 1, HG_EFFECT, 11);
set_hitbox_value(AT_NSPECIAL, 1, HG_THROWS_ROCK, 1);
set_hitbox_value(AT_NSPECIAL, 1, HG_IGNORES_PROJECTILES, 1);

//munophone
set_hitbox_value(AT_NSPECIAL, 1, HG_MUNO_HITBOX_MISC_ADD, "Pathetic");
