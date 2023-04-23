// rainbow code
if get_player_color(player) == 3 || (attack == 49 && (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) && window >= 2 && window <= 4){
    for (var e = 0; e < array_length(particles); e++){
        var p = particles[e];
        gpu_set_fog(1, p[5], 0, 0);
        draw_sprite_ext(p[0], p[8], p[6], p[7], p[10] * p[9], p[10], 0, p[5], p[1]);
        gpu_set_fog(0, p[5], 0, 1);
    }
}

// trans flag!!!
if get_player_color(player) == 4{
    FlagPart(make_colour_rgb(85, 205, 252), 1, 0); // mayablue
    FlagPart(make_colour_rgb(247, 168, 223), 3/10, 11/20); // pink
    FlagPart(c_white, 1/10, 13/20);//white
    
    with pHitBox if player_id = other && type = 2{
        obj_flag(make_colour_rgb(85, 205, 252), 1, 0); // mayablue
        obj_flag(make_colour_rgb(247, 168, 223), 3/10, 11/20); // pink
        obj_flag(c_white, 1/10, 13/20);//white
    }
}

if state == PS_DOUBLE_JUMP{
    // trans flag!!!
    if get_player_color(player) == 4{
        draw_sprite_ext(sprite_get("wings_trans_outline"), image_index, x, y, spr_dir * 2, 2, 0, c_white, 1);
    }
    draw_sprite_ext(sprite_get("wings"), image_index, x, y, spr_dir * 2, 2, 0, make_color_hsv(hue, color_get_saturation(color_rgb), color_get_value(color_rgb)), 1);
}

//don't touch VVVVVV - whoever wrote this probably should have commented it cause I have to edit this move and read this here :skull_emoji: deeply sorry, I'll add comments for future reference
if instance_exists(flowey_vine){
    shader_start();
    if (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) && attack == AT_FSPECIAL && (window == 2 || window == 3){ //draws the middle pieces based on hand distance, the last piece that connects to the hand is drawn with sprite part because using masking (even if it looks easier) atually doesn't allow you to recolor the sprite with regular shader
        for(var h = 0; h < floor(abs(((x + 52 * spr_dir) - flowey_vine.x) / 22)) + 1; h++){ //a for that repeats based on the distance between flowey and the vine
            if h + 1 >= floor(abs(((x + 52 * spr_dir) - flowey_vine.x) / 22)) + 1{
                draw_sprite_part_ext(sprite_get("fspecial_vinemidsection"), 0, 0, 0, point_distance(flowey_vine.x, flowey_vine.y, x + (74 + ((h-1) * 22)) * spr_dir, y - 24) - 4, 16, x + (52 + (h * 22)) * spr_dir, y - 24, spr_dir, 1, c_white, 1);//draws the final piece of the vine right before the hand with sprite part, the size of the sprite is calculated with the distance between flowey + that of the preceding segments and the hand
            }
            else{
                draw_sprite_ext(sprite_get("fspecial_vinemidsection"), 0, x + (52 + (h * 22)) * spr_dir, y - 24, spr_dir, 1, 0, c_white, 1); //draws the regular part of the vine since it's not the last bit of it
            }
            
        }
    }
    //I'm not going in detail with the formulas because I tend to write them on a whim but just remember that flowey_vine is the hitbox used but fspecial for the grab
    with flowey_vine{ //draws the hand part of the flowey grab
        draw_sprite_ext(sprite_get("fspecial_vineend"), other.has_grab, x, y, spr_dir, 1, 0, c_white, 1);
    }
    shader_end();
}

#define FlagePart(_colour, _heightRatio, _xOffsetRatio)
{
draw_rectangle_color(x -(sprite_xoffset + sprite_width/2)*spr_dir, y-sprite_yoffset+(sprite_height*_heightRatio) + 1 + sprite_height*_xOffsetRatio/1.5, x + (sprite_xoffset + sprite_width/2)*spr_dir, y-sprite_yoffset-(sprite_height*_heightRatio) - 1 + sprite_height*_xOffsetRatio/1.5, _colour, _colour, _colour, _colour, 0);
}

#define obj_flag(_colour, _heightRatio, _xOffsetRatio)
{
    gpu_set_fog(1, _colour, 0, 1);
    for (i = -1; i < 2; ++i) for (j = -1; j < 2; ++j){
        draw_sprite_part_ext(sprite_index, image_index, 0, sprite_height*_xOffsetRatio, sprite_width*spr_dir, sprite_height*_heightRatio, x+i*2-sprite_xoffset, y+j*2+(-sprite_yoffset+sprite_height*_xOffsetRatio), spr_dir, 1, c_white, 1);
    }
    gpu_set_fog(0, c_white, 0, 0);
}
#define FlagPart(_colour, _heightRatio, _xOffsetRatio)
{
    shader_end();
    gpu_set_fog(1, _colour, 0, 1);
    for (i = -1; i < 2; ++i) for (j = -1; j < 2; ++j){
        draw_sprite_part_ext(sprite_index, image_index, 0, sprite_height*_xOffsetRatio, sprite_width*spr_dir, sprite_height*_heightRatio, x+i*2+draw_x-sprite_xoffset*(1+small_sprites), y+j*2+(draw_y-sprite_yoffset+sprite_height*_xOffsetRatio)*(1+small_sprites), spr_dir*(1+small_sprites), 1+small_sprites, c_white, 1);
    }
    gpu_set_fog(0, c_white, 0, 0);
    if instance_exists(flowey_vine){
        maskHeader();
        maskMidder();
        maskFooter();
        
        maskHeader();
        draw_set_alpha(0);
        draw_rectangle_color(0, 0, room_width, room_height, c_white, c_white, c_white, c_white, 0);
        draw_set_alpha(1);
        if spr_dir draw_rectangle_color(x - (sprite_xoffset + sprite_width/2)*spr_dir, y-sprite_yoffset+(sprite_height*_heightRatio) + 1 + sprite_height*_xOffsetRatio/1.5, x + (sprite_xoffset + sprite_width/2 + 200)*spr_dir, y-sprite_yoffset-(sprite_height*_heightRatio) - 1 + sprite_height*_xOffsetRatio/1.5, _colour, _colour, _colour, _colour, 0);
        else draw_rectangle_color(x - (-sprite_xoffset + -sprite_width/2 + 200), y-sprite_yoffset+(sprite_height*_heightRatio) + 1 + sprite_height*_xOffsetRatio/1.5, x +abs(sprite_xoffset + sprite_width/2), y-sprite_yoffset-(sprite_height*_heightRatio) - 1 + sprite_height*_xOffsetRatio/1.5, _colour, _colour, _colour, _colour, 0);
        maskMidder();
        gpu_set_fog(1, _colour, 0, 1);
        for (i = -1; i < 2; ++i) for (j = -1; j < 2; ++j){
            if (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) && attack == AT_FSPECIAL && (window == 2 || window == 3){
                for(var h = 0; h < floor(abs(((x + 52 * spr_dir) - flowey_vine.x) / 22)) + 1; h++){
                    if h + 1 >= floor(abs(((x + 52 * spr_dir) - flowey_vine.x) / 22)) + 1{
                        draw_sprite_part_ext(sprite_get("fspecial_vinemidsection"), 0, 0, 0, point_distance(flowey_vine.x, flowey_vine.y, x + (74 + ((h-1) * 22)) * spr_dir, y - 24) - 4, 16, x + (52 + (h * 22)) * spr_dir +i*2+draw_x, y - 24 +j*2+draw_y, spr_dir, 1, c_white, 1);
                    }
                    else{
                        draw_sprite_ext(sprite_get("fspecial_vinemidsection"), 0, x + (52 + (h * 22)) * spr_dir +i*2+draw_x, y - 24 +j*2+draw_y, spr_dir, 1, 0, c_white, 1);
                    }
                }
            }
            draw_sprite_ext(sprite_get("fspecial_vineend"), has_grab, flowey_vine.x +i*2+draw_x, flowey_vine.y +j*2+draw_y, flowey_vine.spr_dir, 1, 0, c_white, 1);
        }
        gpu_set_fog(0, c_white, 0, 0);
        maskFooter();
    }
}

#define maskHeader()
// Mask renderer utility: disables Normal draw.
// Draw shapes or sprites to be used as the stencil(s) by maskMidder.
//================================================================================
{
    gpu_set_blendenable(false);
    gpu_set_colorwriteenable(false,false,false,true);
    
}
//================================================================================
#define maskMidder()
// Reenables draw but only within the region drawn between maskHeader and maskMidder.
// Lasts until maskFooter is called.
//================================================================================
{
    gpu_set_blendenable(true);
    gpu_set_colorwriteenable(true,true,true,true);
    gpu_set_blendmode_ext(bm_dest_alpha,bm_inv_dest_alpha);
    gpu_set_alphatestenable(true);
}
//================================================================================
#define maskFooter()
// Restores normal drawing parameters//================================================================================
{
    gpu_set_alphatestenable(false);
    gpu_set_blendmode(bm_normal);
    draw_set_alpha(1);
}
