//set_attack_value(AT_JAB, AG_SPRITE, sprite_get("squareOrange"));
//set_attack_value(AT_JAB, AG_NUM_WINDOWS, 1);
//set_attack_value(AT_JAB, AG_HURTBOX_SPRITE, sprite_get("square_hurt"));

//sprite_index = sprite_get("squareOrange");
//mask_index = sprite_get("square_hurt");


set_num_hitboxes(AT_JAB, 1);

set_hitbox_value(AT_JAB, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_JAB, 1, HG_WINDOW, 1);
set_hitbox_value(AT_JAB, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_JAB, 1, HG_HITBOX_X, 0); //32);
set_hitbox_value(AT_JAB, 1, HG_HITBOX_Y, 0);
set_hitbox_value(AT_JAB, 1, HG_WIDTH, 80);//64);
set_hitbox_value(AT_JAB, 1, HG_HEIGHT, 80);//64);
set_hitbox_value(AT_JAB, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_JAB, 1, HG_DAMAGE, 6);
set_hitbox_value(AT_JAB, 1, HG_ANGLE, 361);
set_hitbox_value(AT_JAB, 1, HG_ANGLE_FLIPPER, 3);
set_hitbox_value(AT_JAB, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_JAB, 1, HG_KNOCKBACK_SCALING, 0.9);
set_hitbox_value(AT_JAB, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_JAB, 1, HG_KNOCKBACK_SCALING, 0.9);
set_hitbox_value(AT_JAB, 1, HG_VISUAL_EFFECT, 301);
//set_hitbox_value(AT_JAB, 1, HG_VISUAL_EFFECT_X_OFFSET, 24);
set_hitbox_value(AT_JAB, 1, HG_HIT_SFX, asset_get("sfx_blow_medium1"));

set_hitbox_value(AT_JAB, 1, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
//set_hitbox_value(AT_JAB, 1, HG_PROJECTILE_MASK, sprite_get("square_hurt"));
set_hitbox_value(AT_JAB, 1, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_JAB, 1, HG_SHAPE, 1);

//TODO: somehow more dmg on better clear?