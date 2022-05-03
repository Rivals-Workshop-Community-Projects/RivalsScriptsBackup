// Restore some recovery options on hit
//booster_rush_charges = max_booster_rush_charges;
//rocket_fuel = max_rocket_fuel;
//fuel_recovery_active = !uspecial_rework;
//rocket_fuel += pity_fuel_amount;
//rocket_fuel = (rocket_fuel > max_rocket_fuel) ? max_rocket_fuel : rocket_fuel;

afterimage_countdown = 0;

sound_stop(current_rocket_sound);
sound_stop(horn_current);

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

if (super_armor && armor_available) {
    armor_available = false;
    super_armor = false;
    sound_play(asset_get("sfx_ice_shatter_big"));
    //var continued_hitbox = create_hitbox(AT_DSPECIAL, 1, x + (10 * spr_dir), y - 16);
    //continued_hitbox.hitbox_timer = 100;
    //continued_hitbox.hitbox_timer = driving_dash_duration - window_timer;
} else {
    sound_stop(current_effect_sound);
}

//destroy_hitboxes();