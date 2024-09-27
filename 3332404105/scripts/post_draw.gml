//Drawing atop

//projectile hbox

if (instance_exists(pHitBox)){
    with (pHitBox){
        if (player_id == other.id){
            if (get_match_setting(SET_HITBOX_VIS) == true && type == 2){
                if (depth < player_id.depth){
                    depth = player_id.depth + 1
                }
                gpu_set_fog(true, $0000ff, 1, 0)
                draw_sprite_ext(mask_index, 0, x, y, 1, 1, 0, $0000ff, 0.5)
                gpu_set_fog(false, $0000ff, 0, 1)
            }
        }
    }
}

//shading

set_character_color_shading(0, cool_factor * base_shade[0]);
set_character_color_shading(1, cool_factor * base_shade[0]);
set_character_color_shading(2, cool_factor * base_shade[0]);
set_character_color_shading(3, cool_factor * base_shade[0]);
set_character_color_shading(4, cool_factor * base_shade[0]);
set_character_color_shading(5, cool_factor * base_shade[0]);
set_character_color_shading(6, cool_factor * base_shade[0]);
set_character_color_shading(7, cool_factor * base_shade[0]);
set_color_profile_slot( 10, 1, round(255 * (cool_factor - 1) / (max_cool - 1)), round(128 * (cool_factor - 1) / (max_cool - 1)), 0 ); //face

//shadesing 

if (shades_wearing > 0){
    draw_sprite_ext(sprite_get("bust_shades_proj"), 0, x + 1 * spr_dir, y - 38, 1, 1, 0, c_black, 1);
}
//holding item

if (sprite_index == sprite_get("fspecial")){
    if (image_index == 0){
        draw_held_item(-45, -33, 1)
    }
    if (image_index == 1){
        draw_held_item(-53, -22, 1)
    }
}


if (sprite_index == sprite_get("uspecial")){
    if (image_index == 0){
        draw_held_item(-10, -67, 1)
    }
    if (image_index == 1){
        draw_held_item(-25, -63, 1)
    }
}

if (sprite_index == sprite_get("dspecial2")){
    draw_held_item(-4, -76, 1)
}

if (sprite_index == sprite_get("dspecial")){
    draw_held_item(18, -36, .5)
}

//smoking is bad kids

if (sprite_index == sprite_get("ustrong") && image_index == 2){
    shader_start()
    draw_sprite_ext(sprite_get("ustrong_smoke"), state_timer / 4, x, y, spr_dir, image_yscale, image_angle, image_blend, image_alpha)
    shader_end()
}

//trnasgneder

if (sprite_index == sprite_get("parried")){
    shader_start();
    if (get_player_color(player) != 0){
        var dame_sprite = sprite_get("parried_damed");
    } else{
        var dame_sprite = sprite_get("parried_damed_c");
    }
    draw_sprite_ext(dame_sprite, 0, x + draw_x, y + draw_y, spr_dir, image_yscale, image_angle, c_white, state_timer / 90);
    shader_end();
}

//alleigence_draw

if (attack == AT_TAUNT && attacking_now != 0){
    var medal_distance = 42
    var y_height = -40
    if (attacking_now == 3){
        var transpar = 1 - window_timer / 8
    } else
        if (state_timer < 15){
            var transpar = state_timer / 15
        } else{
            var transpar = 1
        }
    draw_medal(-1, 0, 1, y_height, transpar);
    draw_medal(0, 1, 2, y_height, transpar);
    draw_medal(1, 0, 3, y_height, transpar);
    draw_medal(0, -1, 4, y_height, transpar);
    draw_sprite_ext(sprite_get("4way_pointer"), allegiance, x, y + y_height, -1, 1, 0, c_white, transpar);
}

//drop_draw

if (instance_exists(hit_fx_obj) && body_hud == 1){
    with (hit_fx_obj){
        if (player_id == other.id){
            if (sprite_index == sprite_get("hfx_res1")){
                with (other){
                    draw_sprite_ext(sprite_get("resources_drops"), 0, other.x, other.y, 1, 1, 0, c_white, other.image_alpha)
                }
            }
            
            if (sprite_index == sprite_get("hfx_res2")){
                with (other){
                    draw_sprite_ext(sprite_get("resources_drops"), 1, other.x, other.y, 1, 1, 0, c_white, other.image_alpha)
                }
            }
            
            if (sprite_index == sprite_get("hfx_res3")){
                with (other){
                    draw_sprite_ext(sprite_get("resources_drops"), 2, other.x, other.y, 1, 1, 0, c_white, other.image_alpha)
                }
            }
            
            if (sprite_index == sprite_get("hfx_res4")){
                with (other){
                    draw_sprite_ext(sprite_get("resources_drops"), 3, other.x, other.y, 1, 1, 0, c_white, other.image_alpha)
                }
            }
        }
    }
}

//dspecial2 draw

if (attack == AT_DSPECIAL_2 && attacking_now == 2){
    switch (inv_selection_unend){
        case 2:
            draw_dspecial2_item("flask")
        break
        
        case 3:
            draw_dspecial2_item("coffee")
        break
        
        case 4:
            draw_dspecial2_item("candycorn")
        break
        
        case 5:
            draw_dspecial2_item("window")
        break
        
        case 6:
            draw_dspecial2_item("knifebear")
        break
        
        case 7:
            draw_dspecial2_item("bust")
        break
        
        case 8:
            draw_dspecial2_item("cc_sack")
        break
        
        case 9:
            draw_dspecial2_item("code")
        break
        
        case 10:
            draw_dspecial2_item("lock")
        break
        
        case 11:
        
        break
        
        case 12:
        break
        
        case 13:
        break
        
        case 14:
        break
        
        case 15:
        break
    }
}

if (sprite_index == spr_intro){
    draw_sprite_ext(sprite_get("lay_intro"), image_index, x + draw_x, y + draw_y, spr_dir, image_yscale, image_angle, image_blend, image_alpha);
}

#define draw_held_item(held_item_x, held_item_y, held_item_size)
var held_item_image = inv_slot[inv_selection];
draw_sprite_ext(sprite_get("items_icon"), held_item_image, x + held_item_x * spr_dir, y + held_item_y * image_yscale, held_item_size * spr_dir, held_item_size, 0, c_white, 1);

#define draw_medal(medal_x, medal_y, medal_id, y_height, transpar)
var medal_distance = 42;
if (allegiance == medal_id && attacking_now != 1){
    var selected = 1;
} else{
    var selected = 0;
}
draw_sprite_ext(spr_medal, medal_id, x + medal_distance * medal_x, y + y_height + medal_distance * medal_y , 1, 1 , 0, c_white, transpar * 0.5 + selected);
if (attacking_now == 3){
    draw_sprite_ext(spr_medal, medal_id, x + medal_distance * medal_x, y + y_height + medal_distance * medal_y , 1 - selected, 1 , 0, c_black, transpar * 0.5 + selected);
}

#define draw_dspecial2_item(dspecial_2_anim_sprite)
draw_sprite_ext(sprite_get("lay_dspecial_" + dspecial_2_anim_sprite), image_index, x + draw_x, y + draw_y, spr_dir, image_yscale, image_angle, image_blend, image_alpha);