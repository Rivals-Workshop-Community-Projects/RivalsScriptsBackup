if state == PS_RESPAWN
{
    plat_spr.spr_dir = 1;
    if spr_dir = 1 {
    var plat_spr = draw_sprite_ext(sprite_get("plat_behind"), get_gameplay_time() / 8, x, y, 1, 1, 0, -1, 1);
    } else {
    var plat_spr = draw_sprite_ext(sprite_get("plat_behind"), get_gameplay_time() / 8, x - 10, y, 1, 1, 0, -1, 1);
    }
        
    }

