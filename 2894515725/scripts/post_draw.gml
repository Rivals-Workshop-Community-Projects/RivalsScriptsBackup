//post-draw

enum _ {
    PS_NA, // not applicable
    PS_PULLING, // pulling perch
    PS_HANGING, // hanging from perch
    PS_GRAPPLING, // grappling to object
}

if sprite_index == sprite_get("uspecial") {
    switch image_index {
        case 0:
            shader_start();
            draw_sprite_ext(
                    sprite_get("uspecial"), ((get_gameplay_time() * 0.5) % 5) + 4, 
                    x, y, 
                    2*spr_dir, 2, 
                    0, c_white, 1
                );
            draw_sprite_ext(
                sprite_get("uspecial_dir_arrow"), 0, 
                x, y - 30, 
                1, 1, 
                point_direction(
                    0, 0,
                    get_hitbox_value(AT_USPECIAL, 1, HG_PROJECTILE_HSPEED) * spr_dir,
                    get_hitbox_value(AT_USPECIAL, 1, HG_PROJECTILE_VSPEED)
                ), c_white, 0.5
            );
            shader_end();
            break;
        case 1:
        case 2:
            var anchor_x = x;
            var anchor_y = y;
            var anchor_ref = noone;
            with pHitBox if player_id == other && attack == AT_USPECIAL && type == 2 {
                anchor_x = x;
                anchor_y = y;
                anchor_ref = self;
            }
            shader_start();
            draw_sprite_ext(
                    sprite_get("uspecial_arm"), 0, 
                    x - 24 * spr_dir, y - 38, 
                    2 * spr_dir, 2,
                    90 + spr_dir * 90 + point_direction(anchor_x,anchor_y, x,y), 
                    c_white, 1
                );
            shader_end();
            break;
    }
}