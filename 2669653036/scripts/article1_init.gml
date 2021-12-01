//article1_init.gml
sprite_index = sprite_get("fireball");
lifetime = 0;
article_anim_speed = 0.2;
article_friction = 0.1;
article_gravity = 0;
article_max_fall_speed = 12;
Initial_Speed = 8 * player_id.spr_dir;
spr_dir = player_id.spr_dir;

ignores_walls = true;
if spr_dir = 1 {
    create_hitbox( AT_NSPECIAL, 2, obj_article1.x-10, obj_article1.y );
} else {
    create_hitbox( AT_NSPECIAL, 2, obj_article1.x+10, obj_article1.y );
}

uses_shader = true;
ReadyToExplode = false;
