//
if (rotAngle == 90) {
    draw_sprite_ext(sprite_get("bone_head"), 0, x, y, 1, -1, 90, image_blend, 1);
    draw_sprite_ext(sprite_get("bone_head"), 0, x - (length*2), y, 1, 1, 90, image_blend, 1);
} else {
    if (halfSide != 1) { //remove bottom
        draw_sprite_ext(sprite_get("bone_head"), 0, x, y, 1, -1, 0, image_blend, 1);
    }
    
    if (halfSide != 2) { //remove top
        draw_sprite_ext(sprite_get("bone_head"), 0, x, y - (length*2), 1, 1, 0, image_blend, 1);
    }
}



