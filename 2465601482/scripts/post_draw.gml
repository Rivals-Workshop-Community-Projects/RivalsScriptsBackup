//post-draw
if state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND {
    if attack == AT_NSPECIAL {
        shader_start();
        draw_sprite_ext(sprite_get(`item_held_${item_pulling}`),0,x+30*spr_dir*player_scale,y-35*player_scale,player_scale,player_scale,0,c_white,1);
        shader_end();
    }
    if item_held == "beamsword" switch attack {
        default:
            break;
        case AT_FSPECIAL:
            shader_start();
            draw_sprite_ext(sprite_get("item_fswing_beamsword"),image_index,x,y,2*spr_dir*player_scale,2*player_scale,0,c_white,1);
            shader_end();
            break;
        case AT_USPECIAL:
            shader_start();
            draw_sprite_ext(sprite_get("item_uswing_beamsword"),image_index,x,y,2*spr_dir*player_scale,2*player_scale,0,c_white,1);
            shader_end();
            break;
        case AT_DSPECIAL:
            shader_start();
            draw_sprite_ext(sprite_get("item_dswing_beamsword"),image_index,x,y,2*spr_dir*player_scale,2*player_scale,0,c_white,1);
            shader_end();
            break;
    } else if item_held == "superscope" switch attack {
        default:
            break;
        case AT_FSPECIAL_2:
            shader_start();
            draw_sprite_ext(sprite_get("item_held_superscope"),0,x+8*spr_dir,y-26,spr_dir*player_scale,player_scale,0,c_white,1);
            if strong_charge >= 15 && window <= 4 draw_sprite_ext(sprite_get("superscope_bullet_small"),0,x+40*spr_dir,y-40,spr_dir*player_scale,player_scale,0,c_white,1);
            shader_end();
            break;
        case AT_USPECIAL_2:
            shader_start();
            draw_sprite_ext(sprite_get("item_held_superscope"),0,x+12*spr_dir,y-50,player_scale,spr_dir*player_scale,90,c_white,1);
            if strong_charge >= 15 && window <= 4 draw_sprite_ext(sprite_get("superscope_bullet_small"),0,x*spr_dir,y-80,spr_dir*player_scale,player_scale,0,c_white,1);
            shader_end();
            break;
        case AT_DSPECIAL_2:
            shader_start();
            draw_sprite_ext(sprite_get("item_held_superscope"),0,x-4*spr_dir,y-30,player_scale,spr_dir*player_scale,-90,c_white,1);
            if strong_charge >= 15 && window <= 4 draw_sprite_ext(sprite_get("superscope_bullet_small"),0,x+8*spr_dir,y+4,spr_dir*player_scale,player_scale,0,c_white,1);
            shader_end();
            break;
    } else if item_held == "gust_bellows" && attack == AT_TAUNT_2 {
            draw_sprite_ext(sprite_get("item_held_gust_bellows"),0,x+8*spr_dir,y-40,spr_dir*player_scale,player_scale,0,c_white,1);
    }
    if attack == AT_USTRONG && window == 1 {
        hud_offset += 25;
        draw_sprite_ext(has_rune("I")? sprite_get("mega_mushroom") :sprite_get("mushroom"),0,x-4*spr_dir,y-char_height*player_scale-16,2*player_scale,2*player_scale,0,c_white,1);

    }
    if attack == AT_DSTRONG && window == 1 {
        hud_offset += 25;
        draw_sprite_ext(has_rune("N")? sprite_get("super_star") : sprite_get("metal_box"),0,x-4*spr_dir,y-char_height*player_scale-16,2*player_scale,2*player_scale,0,c_white,1);
    }
    if attack == AT_FSTRONG && window == 1 {
        hud_offset += 25;
        draw_sprite_ext(sprite_get("curry"),0,x-4*spr_dir,y-char_height*player_scale-16,2*player_scale,2*player_scale,0,c_white,1);
    }
} else if item_held != "none" {
    
    if item_held == "squeaky_hammer" {
        draw_sprite_ext(sprite_get("item_swing_squeaky_hammer"),image_index,x,y,2*spr_dir*player_scale,2*player_scale,0,c_white,1);
    } else {
        shader_start();
        draw_sprite_ext(sprite_get("item_held_"+item_held),0,x-spr_dir*20*player_scale,y-20*player_scale,spr_dir*player_scale,player_scale,0,c_white,1);
        shader_end();
    }
}
//