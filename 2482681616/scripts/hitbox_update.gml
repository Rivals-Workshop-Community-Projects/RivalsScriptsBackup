//NSpecial ground tracking

if (attack == AT_NSPECIAL)
{
    image_xscale = player_id.image_xscale;
    image_yscale = player_id.image_yscale;
    if ("plat_x" not in self) {
        plat_x = 0;
        plat_y = 0;
        plat_xprev = 0;
        plat_yprev = 0;
        
        var block_below = collision_point(x, y + 2, asset_get("par_block"), 1, 1);
        var plat_below = collision_point(x, y + 2, asset_get("par_jumpthrough"), 1, 1);
        if (instance_exists(block_below)) {
            plat_xprev = get_instance_x(block_below);
            plat_yprev = get_instance_y(block_below);
            plat_x = plat_xprev;
            plat_y = plat_yprev;
        }
        if (instance_exists(plat_below)) {
            plat_xprev = get_instance_x(plat_below);
            plat_yprev = get_instance_y(plat_below);
            plat_x = plat_xprev;
            plat_y = plat_yprev;
        }
    
    }
    
    if (hitbox_timer > 14) {
        img_spd = 0.1;
        
        if (floor(image_index) >= image_number - 1) {
            instance_destroy();
            exit;
        }
    }
    
    var block_below = collision_point(x, y + 2, asset_get("par_block"), 1, 1);
    var plat_below = collision_point(x, y + 2, asset_get("par_jumpthrough"), 1, 1);
    
    if (instance_exists(block_below)) {
        plat_x = get_instance_x(block_below) - plat_xprev;
        plat_y = get_instance_y(block_below) - plat_yprev;
    }
    if (instance_exists(plat_below)) {
        plat_x = get_instance_x(plat_below) - plat_xprev;
        plat_y = get_instance_y(plat_below) - plat_yprev;
    }
    
    x += plat_x;
    y += plat_y;
    
    if (instance_exists(block_below)) {
        plat_xprev = get_instance_x(block_below);
        plat_yprev = get_instance_y(block_below);
    }
    if (instance_exists(plat_below)) {
        plat_xprev = get_instance_x(plat_below);
        plat_yprev = get_instance_y(plat_below);
    }
    if (hbox_num == 2) {
        while (position_meeting(x, y, asset_get("par_block")))
        {
            x += spr_dir;
            if (x < 0 || x > room_width)
            {
                break;
            }
        }
    }
    
    //print(string(x) + ", " + string(y));
}