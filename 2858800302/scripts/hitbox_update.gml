if (attack == AT_USTRONG){
    if (hitbox_timer == length - 1){
        sound_play(asset_get("sfx_ell_steam_hit"));
        spawn_hit_fx( x + 0*spr_dir, y + 0, 144 );
    }
    
    if (!free){
        destroyed = true;
    }
    
    if (hitbox_timer > 1){
        groundedness = 0;
    }
    
    proj_angle += 3*spr_dir;
}

if (attack == AT_DATTACK){
    if (hitbox_timer == length - 1){
        sound_play(asset_get("sfx_kragg_rock_land"));
        spawn_hit_fx( x + 0*spr_dir, y + 0, 144 );
    }
    
    if (!free){
        sound_play(asset_get("sfx_kragg_rock_land"));
        destroyed = true;
    }
    
    proj_angle += 3*spr_dir;
}

if (attack == AT_NSPECIAL){
    
    if (hitbox_timer == length - 1){
        sound_play(asset_get("sfx_ell_steam_hit"));
        spawn_hit_fx( x + 0*spr_dir, y + 0, 144 );
    }
    
    if (!free){
        sound_play(asset_get("sfx_ell_steam_hit"));
        destroyed = true;
    }
    
    hsp -= player_id.boomerang_speed*spr_dir;
    
}