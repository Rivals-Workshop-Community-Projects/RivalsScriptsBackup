// pre-draw

enum _ {
    PS_NA, // not applicable
    PS_PULLING, // pulling perch
    PS_HANGING, // hanging from perch
    PS_GRAPPLING, // grappling to object
}
var p = 1.0;
var bx = x;
var by = y - 30;
var anchor_x = x;
var anchor_y = y;
var anchor_ref = noone;
with pHitBox if player_id == other && attack == AT_USPECIAL && type == 2 {
    anchor_x = x;
    anchor_y = y;
    anchor_ref = self;
}
if anchor_ref != noone && attack == AT_USPECIAL && perch_state == _.PS_NA {
    by = y - 38;
    bx = x - 24 * spr_dir;
}
if anchor_ref == noone  && perch_target != noone {
    if perch_target.object_index == obj_article2 && "hit_x" in perch_target {
        anchor_x = perch_target.x + perch_target.hit_x;
        anchor_y = perch_target.y + perch_target.hit_y;
        switch (state) {
            case PS_DOUBLE_JUMP:
            case PS_FIRST_JUMP:
            case PS_IDLE_AIR:
                p = 0.3;
                break;
        }
    } else if perch_target.object_index == oPlayer {
        anchor_x = perch_target.x;
        anchor_y = perch_target.y - 30;
    } else {
        anchor_x = perch_target.x;
        anchor_y = perch_target.y;
    }
    anchor_ref = perch_target;
} 
if anchor_ref != noone {
    
    
    draw_rope(bx,by,anchor_x,anchor_y, p);
}


if (nair_hit_player == noone && attack == AT_EXTRA_1 && (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND)) {
    
    shader_start();
    draw_sprite_ext(sprite_index, image_index, x + draw_x, y, 2 * spr_dir, 2, spr_angle, c_white, 1.0);
    shader_end();
// with oPlayer if (other.nair_hit_player == id) {
//     depth  = -50;
//     force_depth  = -50;
// }
}


#define draw_rope(x1,y1,x2,y2, percent_to)
    shader_start();
    draw_sprite_ext(sprite_get("rope"),0,x2,y2,2,(point_distance(x1,y1,x2,y2) / 80) * percent_to,point_direction(x2,y2,x1,y1)+90,c_white,1);
    shader_end();