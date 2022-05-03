// Smoke update

// Spawn destroy effects.
with (player_id) {
    // Loop through smoke array
    for (var i = 0; i < array_length(sna_smoke_clouds); i++) {
        if (get_gameplay_time() == sna_smoke_clouds[i].creation_time + sna_smoke_lifetime + 1) {        // Once the smoke cloud expires...
            spawn_hit_fx(sna_smoke_clouds[i].x, sna_smoke_clouds[i].y, vfx_smoke_destoy);               // Spawn smoke destroy effect.
        }
    }
}