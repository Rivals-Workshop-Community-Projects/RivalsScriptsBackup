// CHARGE
var plas_img = get_gameplay_time() / 6;
var air_img = get_gameplay_time() *.15;
var air_ang = point_direction(x, y, x + hsp, y + vsp) + 90;

switch(state){
    case 0:
        draw_sprite_ext(spr_air, air_img, x + (0 * spr_dir), y, 1, 1, air_ang, c_white, 1);
        break;
    case 1:
        if pen_c4_charged == 1{
            draw_sprite_ext(spr_charge, plas_img, x + (0 * spr_dir), y, 1, 1, 0, c_white, 1);
        }
        break;
}

//draw_debug_text(x, y + 16,string(player_id));