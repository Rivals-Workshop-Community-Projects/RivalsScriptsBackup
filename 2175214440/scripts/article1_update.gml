if (!released) {
    anim_speed = 0.1 + (max_anim_speed - 0.1) * min(1, ease_cubeIn(0, 1, timer, anim_spinup_frames));
} else {
    anim_speed = max_anim_speed;
}

image_index = floor(timer*anim_speed);

if (released) {
    if (!exploding) {
        vsp += chainsaw_gravity;
        image_angle += rot_speed;

        if (has_hit) {
            fuse_remaining--;
        }

        if (fuse_remaining > 0) {
            if (!was_parried && timer > last_hit_time + min_time_between_hits) {
                var hb = create_hitbox(AT_EXTRA_2, 1, floor(x), floor(y));
                hb.parent_chainsaw = self;
            }
        } else {
            if (!was_parried) {
                var hb = create_hitbox(AT_EXTRA_2, 2, floor(x), floor(y));
                hb.damage = explosion_damage;
            }
            sprite_index = sprite_get("explosion");
            exploding = true;
            vsp = 0;
            hsp = 0;
            image_angle = 0;
        }


        // clean up dead chainsaws
        if (!exploding && ((timer >= lifetime && !has_hit) || fuse_remaining <= 0)) {
            spawn_hit_fx(x, y, player_id.explosion_effect);
            destroyed = true;
        }
    } else {
        image_index = explosion_timer * anim_speed;
        if (explosion_timer > 0 && explosion_timer % 6 == 0) {
            var x_jitter = 25 - random_func(6, 50, true);
            var y_jitter = 25 - random_func(7, 50, true);
            spawn_hit_fx(x + x_jitter, y + y_jitter, player_id.explosion_effect);
            sound_play(sound_get("s15_destroy"));
        }

        explosion_timer++;

        if (explosion_timer >= 26) {
            destroyed = true;
        }
    }
}

timer++;

if (destroyed) {
    instance_destroy(self);
}