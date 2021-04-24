set_attack_value(AT_FSTRONG, AG_SPRITE, sprite_get("ustrong"));
set_attack_value(AT_FSTRONG, AG_HURTBOX_SPRITE, sprite_get("ustrong_hurt"));
set_attack_value(AT_FSTRONG, AG_NUM_WINDOWS, 2);
set_attack_value(AT_FSTRONG, AG_STRONG_CHARGE_WINDOW, 1);

set_window_value(AT_FSTRONG, 1, AG_WINDOW_LENGTH, 60);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_LENGTH, 4);

set_num_hitboxes(AT_FSTRONG, 1);

set_hitbox_value(AT_FSTRONG,1,HG_HITBOX_TYPE,2);
set_hitbox_value(AT_FSTRONG,1,HG_PRIORITY,10);
set_hitbox_value(AT_FSTRONG,1,HG_WIDTH,5);
set_hitbox_value(AT_FSTRONG,1,HG_HEIGHT,5);
set_hitbox_value(AT_FSTRONG,1,HG_HITBOX_Y,-20);
set_hitbox_value(AT_FSTRONG,1,HG_BASE_KNOCKBACK,1);
set_hitbox_value(AT_FSTRONG,1,HG_LIFETIME,3);
set_hitbox_value(AT_FSTRONG,1,HG_EXTRA_HITPAUSE,-50);
set_hitbox_value(AT_FSTRONG,1,HG_EFFECT,1);
set_hitbox_value(AT_FSTRONG,1,HG_PROJECTILE_SPRITE,asset_get("empty_sprite"));
set_hitbox_value(AT_FSTRONG,1,HG_PROJECTILE_MASK,-1);