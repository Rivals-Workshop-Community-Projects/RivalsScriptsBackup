// Article Update is ran for every frame that the article object is in-game.

image_index = (time_alive % 11) / 5;

if time_alive % 6 == 4 && !hitpause && time_alive < 46 {
    create_hitbox(AT_FSPECIAL, 1, round(x + hsp), round(y - 48));
}

if time_alive > 8 hsp -= spr_dir*.32;

time_alive++;

if time_alive == 46 {
    sound_play(sound_get("violent_pierce_javelin"), 0, noone, .95, .99);
    create_hitbox(AT_FSPECIAL, 2, round(x + hsp), round(y - 48));
}
if time_alive > 46 should_die = true;

if !hitpause spawn_hit_fx(x + random_func(1, 70, 1) - 35, y - random_func(2, 100, 1) + 2, player_id.sparkle)

if should_die {
    with player_id {
        with obj_article3 if player_id == other {
            with other spawn_hit_fx(other.x, other.y, bubble_fx);
            instance_destroy(self);
        }
        var obj3 = instance_create(other.x, other.y - 48, "obj_article3");
        //obj3.spr_dir = other.spr_dir;
        spawn_hit_fx(other.x, other.y - 48, 115);
    }
    instance_destroy(self);
}