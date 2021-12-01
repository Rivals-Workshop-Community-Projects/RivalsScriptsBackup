//article1_init.gml
sprite_index = sprite_get("explode");
lifetime = 0;
article_anim_speed = 0.5;
article_friction = 0.1;
article_gravity = 0;
article_max_fall_speed = 12;
Initial_Speed = 0;
spr_dir = player_id.spr_dir;

ignores_walls = true;
if spr_dir = 1 {
    create_hitbox( AT_NSPECIAL, 4, obj_article2.x, obj_article2.y );
} else {
    create_hitbox( AT_NSPECIAL, 4, obj_article2.x, obj_article2.y );
}

uses_shader = true;
ReadyToExplode = false;
