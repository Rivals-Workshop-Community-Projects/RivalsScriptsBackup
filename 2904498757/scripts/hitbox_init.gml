should_die = false;

switch attack {
    case AT_DSTRONG: // cheese
        vfx_land = player_id.vfx_cheese_land;
        //sfx_land = asset_get("sfx_poison_hit_med");
        sfx_land = sound_get("pt_cheese_destroy");
        break;
    case AT_DSPECIAL: // pizza
        vfx_land = player_id.vfx_pizza_land;
        //sfx_land = asset_get("sfx_land_heavy");
        sfx_land = sound_get("pt_block_destroy");
        break;
}