//article2_init.gml
//minun's projectile. it's much more fancy than plusle's one.

//* hey, you. if you're looking for a multi-hit projectile script to steal, 
//  consider using this one instead:
//  https://github.com/Menace13/RoA-Workshop-Templates/blob/master/Templates/Attacks/multi_hit_projectile.md
//  it's simpler than the solution I used for Minun, and it doesn't require an article either.

// constants
max_hitbox_respawn_time = 5;
max_exist_timer = 150;
hp = 3;
move_speed = 1;
move_accel = 0.075;
sprite_index = sprite_get("fspecial_proj_minun");
mask_index = sprite_get("fspecial_proj_minun_article_mask");
ignores_walls = false;

// variables
hitbox_id = create_hitbox(AT_FSPECIAL_2, 1, x, y);
hitbox_id.spawned_by_article_id = id;
exist_timer = 0;
hitbox_respawn_time = -1;
was_parried = 0;
hitpause_timer = 0;
max_hitpause_timer = 5;
trigger_got_parried = 0;
trigger_hitbox_destroyed = 0;
trigger_respawn_hitbox = 0;
destroy = 0;
should_create_hitbox_upon_destroy = 1;
travel_sound = noone;//sound_play(asset_get("sfx_absa_jabloop"), true, noone, 0.1, 0.9);
parried_by_player = player_id.player;