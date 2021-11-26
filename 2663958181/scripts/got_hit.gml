if raincloud != noone{
    if raincloud.state > 0 and raincloud.state < 3{
        raincloud.state = 1;
    }
}

if attack == AT_FSPECIAL{
    if window == 2{
        hsp = -6 * spr_dir;
        old_hsp = -6 * spr_dir;
    }
}