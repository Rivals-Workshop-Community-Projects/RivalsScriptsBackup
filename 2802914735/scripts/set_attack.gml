//a
if attack == AT_FAIR { //min min fair is just aerial min min ftilt I think
    attack = AT_FTILT;
}

//special throws
if attack == AT_FSPECIAL {
    fspec_jumpstart = false;
    fspec_jumpstart_timer = 0;
    fspec_land_timer = 0;
    fspec_walk_timer = 0;
    fspecial_charging = false;
    switch(axe_type) {
        case 1:
            attack = AT_FSPECIAL_RED;
            break;
        case 2:
            attack = AT_FSPECIAL_BLUE;
            break;
        case 3:
            attack = AT_FSPECIAL_GREEN;
            break;
    }
}
if attack == AT_FTILT {
    fspec_jumpstart = false;
    fspec_jumpstart_timer = 0;
    fspec_land_timer = 0;
    fspec_walk_timer = 0;
}

if attack == AT_DSPECIAL && move_cooldown[AT_DSPECIAL] > 1 && dspecial_fail_buffer == 0 {
    clear_button_buffer(PC_SPECIAL_PRESSED);
    if !has_touched_grass {
        sound_play(asset_get("mfx_unstar"),false,noone,0.75);
        sound_play(asset_get("sfx_boss_vortex_end"),false,noone,0.35,1.45);
        dspecial_fail_buffer = 16; 
        var gloomfx = spawn_hit_fx(x - 18*spr_dir, y- 48, vfx_dspecialfail);
        gloomfx.depth = depth-1
    }
    
}
//sfx
if attack == AT_BAIR {
    sound_play(asset_get("sfx_swipe_medium1"));
} else if attack == AT_UAIR {
    sound_play(asset_get("sfx_shovel_swing_light1"));
} else if attack == AT_DATTACK {
    sound_play(asset_get("sfx_shovel_swing_light2"));
}