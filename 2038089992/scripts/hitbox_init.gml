//hitbox_init

if (attack == AT_DSPECIAL) && (hbox_num == 1) {
    hitPlayer = false;
    dspecSteamTrailFx = hit_fx_create(sprite_get("steam_trail"), 6);
    //sound_play(sound_get("missile_trail_sfx1"));
}

if (attack == AT_DSPECIAL) && (hbox_num == 2) {
	var hspChange = (random_func(0, 1, false) - 0.5) * 5;
    var vspChange = (random_func(1, 1, false) - 0.5) * 5;
    
    hsp += hspChange;
    vsp += vspChange;
}

if (attack == AT_NSPECIAL) {
    playSound = true;
    with player_id {
        if (meter_water > 0 && (other.hbox_num == 1)) {
            meter_water -= nspecialWater;
        }
        
        if (meter_steam > 0 && (other.hbox_num == 2)) {
            meter_steam -= nspecialSteam;
        }
    }
    
    //randomise velocity slightly
    if (hbox_num == 2) {
        var hspChange = (random_func(0, 1, false) - 0.5) * 1;
        var vspChange = (random_func(1, 1, false) - 0.5) * 1;
        var xChange = (random_func(0, 1, false) - 0.5) * 5;
        var yChange = (random_func(1, 1, false) - 0.5) * 5;
        
        hsp += hspChange;
        vsp += vspChange;
        x += xChange;
        y += yChange;
    }
}

if (attack == AT_FSPECIAL) && (hbox_num == 3) {
    if place_meeting(x, y, asset_get("plasma_field_obj")) {
	    player_id.window = 5;
	    player_id.window_timer = 0;
    	sound_play(asset_get("sfx_clairen_hit_med"));
    }
}

if attack == AT_NSPECIAL {
	activated = false;
	activated_timer = 0;
}