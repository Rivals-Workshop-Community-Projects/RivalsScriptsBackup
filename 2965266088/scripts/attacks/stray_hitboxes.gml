//this attak is used for stray hitboxes
atk = 0;

hitbox_num = 1; //dark blast
set_hitbox_value(atk, hitbox_num, HG_HITBOX_GROUP, hitbox_num);
set_hitbox_value(atk, hitbox_num, HG_LIFETIME, 5);
set_hitbox_value(atk, hitbox_num, HG_WIDTH, 64);
set_hitbox_value(atk, hitbox_num, HG_HEIGHT, 64);
set_hitbox_value(atk, hitbox_num, HG_PRIORITY, 2);
set_hitbox_value(atk, hitbox_num, HG_DAMAGE, 10);
set_hitbox_value(atk, hitbox_num, HG_BASE_HITPAUSE, 30);
set_hitbox_value(atk, hitbox_num, HG_VISUAL_EFFECT, fx_darkness_consume);
set_hitbox_value(atk, hitbox_num, HG_HIT_SFX, asset_get("sfx_abyss_explosion"));

set_num_hitboxes(atk, hitbox_num);

for (var i = 1; i <= hitbox_num; i++;)
{
    set_hitbox_value(atk, i, HG_HITBOX_TYPE, 2);
    set_hitbox_value(atk, i, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
    set_hitbox_value(atk, i, HG_PROJECTILE_MASK, -1);
    set_hitbox_value(atk, i, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
    set_hitbox_value(atk, i, HG_PROJECTILE_WALL_BEHAVIOR, 1);
    set_hitbox_value(atk, i, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
    set_hitbox_value(atk, i, HG_PROJECTILE_UNBASHABLE, 1);
    set_hitbox_value(atk, i, HG_PROJECTILE_PLASMA_SAFE, 1);
}