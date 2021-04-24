if (exploding) {
    image_index = 0;
} else {
    image_index = timer*anim_speed;
}

if (!exploding){
    if (free) {
        vsp += my_gravity;
        create_hitbox(AT_EXTRA_2, 3, x, y - 30);
    } else if (was_free) {
        sound_play(sound_get("s202_car01"));
        vsp = 0;
    }
}

if (timer <= grow_time) {
    var scale = ease_quadIn(0, 1, timer, grow_time);
    image_xscale = scale;
    image_yscale = scale;
}

// if an undestroyed vending machine is on the ground, check for collisions with the player or with a hitbox
if (!free && !exploding) {
    with(asset_get("pHitBox")) {
        // if this is an enemy hitbox and it's hitting us, RIP
        if (player_id != other.player_id && get_player_team(player) != get_player_team(other.player_id.player)) {
            if place_meeting(x, y, other) {
                other.exploding = true;
                other.explosion_start_time = other.timer;
                break;
            }
        }
    }

    if (!used) {
        with(asset_get("pHurtBox")) {
            // look for our owner's hurtbox touching us and fill up their magic if we find it and they're not in hitstun
            if (player == other.player && other.player_id.state_cat != SC_HITSTUN && place_meeting(x, y, other)) {
                other.used = true;
                other.time_used = other.timer;
                sound_play(sound_get("s1010_buy_juse"));
                break;
            }
        }
    }
}

if (used) {
    player_mp_maxed = player_id.mp >= player_id.max_mp;

    if (timer == time_used + 50) {
        sound_play(sound_get("s1010_goku"));
        mp_refilling = !player_mp_maxed;
    }

    if (mp_refilling) {
        // restore 3 seconds worth of MP per frame
        player_id.mp = min(player_id.mp + player_id.mp_regen*180, player_id.max_mp);

        if (player_id.mp == player_id.max_mp) {
            mp_refilling = false;
            if (player_id.mp_vox_cooldown <= 0) {
                sound_play(sound_get("vo_02fx"));
                player_id.mp_vox_cooldown = 300;
                var mpfx = player_id.mp_rec_fx;
                if (player_id.spr_dir == -1) {
                    mpfx = player_id.mp_rec_l_fx;
                }
                spawn_hit_fx(player_id.x, player_id.y - player_id.char_height - 12, mpfx);
            }
        }
    }
}

if (!exploding && ((used && timer > time_used + explosion_delay) || timer > max_lifetime)) {
    exploding = true;
    explosion_start_time = timer;
}

if (exploding) {
    var scale = ease_cubeIn(1, 0, timer - explosion_start_time, 90);
    image_xscale = max(0, scale);
    image_yscale = max(0, scale);
    if (times_to_explode > 0) {
        if (timer % 12 == 0) {
            times_to_explode--;
            var x_jitter = 25 - random_func(6, 50, true);
            var y_jitter = 25 - random_func(7, 50, true);
            spawn_hit_fx(x + x_jitter, y + y_jitter, player_id.explosion_effect);
            sound_play(sound_get("s15_destroy"));
        }
    } else {
        destroyed = true;
    }
}

if (!player_id.timestop_active && !player_id.timestopped) {
    timer++;
}
was_free = free;

if (destroyed) {
    instance_destroy(self);
}