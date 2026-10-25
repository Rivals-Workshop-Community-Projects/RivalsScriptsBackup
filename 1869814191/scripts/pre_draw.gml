//pre_draw

var point = joy_dir;

var isAttacking = (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR);

/*
if (state == PS_WALK) {
    shader_start();
    var walk_spr = sprite_get("walk_pre");
    draw_sprite_ext(walk_spr, image_index, x, y, 1*spr_dir, 1, 0, -1, walkFade);
    //draw_sprite_ext(walk_spr, image_index, x, y, 1*spr_dir, 1, 0, -1, 1);
    //draw_sprite_ext(walk_spr, image_index, x, y, 1*spr_dir, 1, 0, c_black, walkFade);
    shader_end();
}
*/

/*
if (isAttacking && attack == AT_TAUNT) {
    draw_rectangle_color(x - 112, y - 132 - 12, x + 126, y - 70 - 12, c_black, c_black, c_black, c_black, noone);
    draw_rectangle_color(x - 108, y - 128 - 12, x + 122, y - 74 - 12, c_white, c_white, c_white, c_white, noone);
    draw_rectangle_color(x - 106, y - 126 - 12, x + 120, y - 76 - 12, c_black, c_black, c_black, c_black, noone);    
}
*/

/*
if (hit_player_obj != noone) {
    point = point_direction(x, y-(char_height/2), hit_player_obj.x, hit_player_obj.y-(hit_player_obj.char_height/2))
}
*/

//if (isAttacking && attack == AT_USPECIAL && image_index == 0) {
//draw_sprite_ext(sprite_get("arrow"), 0, x, y-(char_height/2), 1, 1, joy_dir, c_white, 1);
//}

switch state{
    case PS_ATTACK_GROUND: case PS_ATTACK_AIR:
        switch attack{
            case AT_DATTACK:
                var col = free? c_blue:c_red;
                //draw_line_color(x + (dattack_back_bound[image_index] * spr_dir) + -1, y + dattack_height[image_index], x + (dattack_front_bound[image_index] * spr_dir) + (spr_dir? 1:-3), y + dattack_height[image_index], col, col);
                
                var bbound = round(x + ((dattack_back_bound[image_index] - 16) * spr_dir) + -1);
                var fbound = round(x + ((dattack_front_bound[image_index] + 8) * spr_dir) + (spr_dir? 1:-3));
                var ubound = round(y + dattack_height[image_index]);
                var lvl = dattack_height[image_index] == -12? 1:(dattack_height[image_index] < -12? 2:0);
                var base = [6, 8, 12];
                for (var i = (spr_dir? bbound:fbound) - dattack_trail; i < (spr_dir? fbound:bbound) + dattack_lead; i++;){
                    if i % 32 == 0 && ((place_meeting(i + (32 * spr_dir), y + 1, asset_get("par_block")) && place_meeting(i - (16 * spr_dir), y + 1, asset_get("par_block"))) ||
                    (place_meeting(i + (32 * spr_dir), y + 1, asset_get("par_jumpthrough")) && place_meeting(i - (16 * spr_dir), y + 1, asset_get("par_jumpthrough")))) &&
                    !((place_meeting(i + (32 * spr_dir), y, asset_get("par_block")) && place_meeting(i - (16 * spr_dir), y, asset_get("par_block"))) ||
                    (place_meeting(i + (32 * spr_dir), y, asset_get("par_jumpthrough")) && place_meeting(i - (16 * spr_dir), y, asset_get("par_jumpthrough")))){
                        var outer = i < (spr_dir? bbound:fbound) || i > (spr_dir? fbound:bbound);
                        var working_ubound = outer? ubound + round((y - ubound) / 2):ubound;
                        var working_lvl = outer? 0:lvl;
                        draw_sprite_stretched_ext(sprite_get(spr_dir? "dattack_bones_base":"dattack_bones_base_rev"), working_lvl, i + (spr_dir? 0:-32), working_ubound + base[working_lvl], 32, y - (working_ubound + base[working_lvl]), c_white, 1);
                        draw_sprite_part_ext(sprite_get("dattack_bones_head"), working_lvl, 0, 0, 32, y - working_ubound, i, working_ubound, spr_dir, 1, c_white, 1);
                    }
                }
            break;
        }
    break;
}