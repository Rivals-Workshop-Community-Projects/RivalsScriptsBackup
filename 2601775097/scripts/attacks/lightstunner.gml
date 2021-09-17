//this is not actually a move, it's just the light spark stunner
atk = 48;

set_num_hitboxes(atk, 10);

//fodder hitboxes
for (var i = 1; i < get_num_hitboxes(atk); i ++) hitboxNum ++;

//the reason it's hitbox 10 is because i don't want it to overwrite other hitboxes properties
hitboxNum = get_num_hitboxes(atk);

set_hitbox_value(atk, hitboxNum, HG_HITBOX_TYPE, 2); // 1 = physical attack || 2 = projectile
set_hitbox_value(atk, hitboxNum, HG_LIFETIME, 6); //hitbox duration in frames
set_hitbox_value(atk, hitboxNum, HG_HITBOX_X, 0);
set_hitbox_value(atk, hitboxNum, HG_HITBOX_Y, 0);
set_hitbox_value(atk, hitboxNum, HG_WIDTH, 2); //world's tiniest hitbox part 2 (part 1 is wrastor lol)
set_hitbox_value(atk, hitboxNum, HG_HEIGHT, 2);
set_hitbox_value(atk, hitboxNum, HG_PRIORITY, 8);
set_hitbox_value(atk, hitboxNum, HG_DAMAGE, 0);
set_hitbox_value(atk, hitboxNum, HG_ANGLE, 361);
set_hitbox_value(atk, hitboxNum, HG_BASE_KNOCKBACK, 1);
set_hitbox_value(atk, hitboxNum, HG_BASE_HITPAUSE, 2);
set_hitbox_value(atk, hitboxNum, HG_VISUAL_EFFECT, 301);
set_hitbox_value(atk, hitboxNum, HG_HITBOX_COLOR, 1);
set_hitbox_value(atk, hitboxNum, HG_HITBOX_GROUP, 1);
set_hitbox_value(atk, hitboxNum, HG_TECHABLE, 3);
set_hitbox_value(atk, hitboxNum, HG_VISUAL_EFFECT, fx_empty);
set_hitbox_value(atk, hitboxNum, HG_PROJECTILE_SPRITE, sprite_get("empty"));
set_hitbox_value(atk, hitboxNum, HG_PROJECTILE_MASK, -1);
set_hitbox_value(atk, hitboxNum, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(atk, hitboxNum, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(atk, hitboxNum, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
set_hitbox_value(atk, hitboxNum, HG_IGNORES_PROJECTILES, 1);
set_hitbox_value(atk, hitboxNum, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(atk, hitboxNum, HG_PROJECTILE_WALL_BEHAVIOR, 1);