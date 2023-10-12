if (attack == AT_USPECIAL)
{
    x = player_id.x;
    y = player_id.y + 80;
    
    if (player_id.state_cat == SC_HITSTUN || player_id.attack != AT_USPECIAL)
        destroyed = true;
}

if (attack == AT_FSPECIAL && hbox_num == 3) {
    if (image_index > 1)
    {
        hsp = 0;
        vsp = 0;
    }
}
    
if (attack == AT_NSPECIAL)
{
    var accel = 0.1;
    var max_hsp = 12;
    
    hsp += accel * spr_dir;
    if (abs(hsp) > max_hsp)
        hsp = max_hsp * spr_dir;
}

if (attack == AT_USTRONG and type == 2)
{
    if (hitbox_timer >= 5) for (var i = 0; i < array_length(can_hit); ++i) can_hit[i] = false;
}
