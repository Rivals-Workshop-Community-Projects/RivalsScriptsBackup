	spawn_hit_fx( blaster.x, blaster.y, blaster_smoke_big );
    blaster.shoulddie = true;
    blaster.state_timer = 20;
    sound_play(sound_get("blasterdeath_smw"));
