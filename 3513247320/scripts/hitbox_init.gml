uses_shader = false;

switch attack{
    case AT_FSTRONG:
        switch hbox_num{
            case 3:
                hashitplayer = false;
                lifetime = length-20;
                num2 = 0;
            case 1: case 2:
                hsp = (hsp + (strong_charge/10) * sign(hsp));
                orig_hsp = hsp;
                damage *= 1 + (strong_charge/100);
                kb_value *= 1 + (strong_charge/240);
                kb_scale *= 1 + (strong_charge/240);
            break;
            break;
        }
    break;
    case AT_DAIR:
        current_dir = proj_angle;
        var dist = 16;
        while place_meeting(x, y, asset_get("par_block")) y--;
        while place_meeting(x + (dist * spr_dir), y, asset_get("par_block")) x -= spr_dir;
    break;
    case AT_NSPECIAL:
        lemon_weight = hbox_num == 1? 1:3;
    break;
    case AT_TAUNT:
        if orig_player_id.alt != 0 && orig_player_id.alt != 31 uses_shader = true;
    break;
}