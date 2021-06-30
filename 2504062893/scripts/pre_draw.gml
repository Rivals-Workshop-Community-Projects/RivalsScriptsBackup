// shader_start();

var sub_img = get_gameplay_time()/5;
if (!wall_available){
    draw_sprite_ext(sprite_get("loxoblock"), sub_img, wall_x, wall_y, spr_dir, 1, 0, c_white, 1);
}

if (floating 
|| (attack == AT_NSPECIAL && window == 2|| attack == AT_NSPECIAL && window == 3 || attack == AT_USPECIAL && window == 3 && window_timer > 2 || attack == AT_USPECIAL && window == 4)
    ){
    //  print("yyyyy")
    // draw_sprite_ext(sprite_get("fx_float"), image_index, x + 200, y, 1, 1, 0, GetColourPlayer(3), 1);
    gpu_set_blendmode(bm_add);
    gpu_set_fog(1, GetColourPlayer(3), 0, 1);
        // draw_ellipse_color(x-32, y-8, x+ 32, y+8, GetColourPlayer(3), GetColourPlayer(3), 0);
        draw_sprite_ext(sprite_index, image_index-1, prev_X - (0.4*hsp*hsp*sign(hsp)), prev_Y - (0.1*vsp*vsp*sign(vsp)), spr_dir, 1, 0, GetColourPlayer(3), .7);
        // spawn_hit_fx(x, y, vfx_float)
        if !(attack == AT_NSPECIAL && window == 2) {
        draw_sprite_ext(sprite_index, image_index-1, prev_X - (0.9*hsp*hsp*sign(hsp)), prev_Y - (0.2*vsp*vsp*sign(vsp)), spr_dir, 1, 0, GetColourPlayer(3), .5);
        }
        if (state == PS_ATTACK_AIR && (attack == AT_NAIR || attack == AT_FAIR || attack == AT_UAIR || attack == AT_DAIR || attack == AT_BAIR)){
        // draw_sprite(sprite_get("fx_float"), image_index, x, y);
        draw_sprite_ext(sprite_get("fx_float"), image_index, prev_X, prev_Y, spr_dir, 1, 0, c_white, 1);
    }
    gpu_set_blendmode(bm_normal);   
gpu_set_fog(0, c_white, 0, 1);
} 
    

    
//     } || (attack == AT_NSPECIAL || attack == AT_USPECIAL || attack == AT_DSPECIAL
// && (window != get_attack_value(attack, AG_NUM_WINDOWS)))){
prev_X = x;
prev_Y = y;
// shader_end();

// FUNCTION STUFF
#define GetColourPlayer(_index){
    return make_color_rgb(get_color_profile_slot_r(get_player_color(player), _index),
        get_color_profile_slot_g(get_player_color(player), _index),
        get_color_profile_slot_b(get_player_color(player), _index));
}