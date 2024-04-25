
parachute_active = false;

// disable grappling hook
gh_state = 0; // GRAPPLE_DISABLED
if (instance_exists(gh_hitbox)) {
    gh_hitbox.destroyed = true;
    gh_hitbox = noone;
}

// despawn drones
with obj_article1 {
    if (player_id == other && state <= 1) {
        state = 2;
        state_timer = 0;
    }
}