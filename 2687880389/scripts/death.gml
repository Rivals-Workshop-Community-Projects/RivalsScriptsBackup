// Restore to factory settings on dealth
//booster_rush_charges = max_booster_rush_charges;
rocket_fuel = max_rocket_fuel;
fuel_recovery_active = true;
pity_available = true;

afterimage_countdown = 0;

sound_stop(engine_revving_up_sound);
sound_stop(current_effect_sound);
sound_stop(current_rocket_sound);
sound_stop(horn_current);
cabinet_song_clip_current = cabinet_song_clip_max - 1; // reset value

// Release anyone we may have grabbed
with (asset_get("oPlayer")) {
    if (RETROBLAST_HOLDER_ID == other.id) {
        RETROBLAST_HOLDER_ID = noone;
    }
    if (RETROBLAST_TARGETTING_ME == other.id) {
        RETROBLAST_TARGETTING_ME = noone;
        RETROBLAST_TARGET_STACKS = 0;
    }
}

armor_available = false;
super_armor = false;
driving_dash_stored = false;

destroy_hitboxes();