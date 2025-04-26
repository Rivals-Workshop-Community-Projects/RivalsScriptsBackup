//fully charged pead pod
var player_col = get_player_color(player)
var col = make_color_rgb(get_color_profile_slot_r(player_col, 0), get_color_profile_slot_g(player_col, 0), get_color_profile_slot_b(player_col, 0))
if (nspecial_charge >= 4) && get_gameplay_time() mod 30 < 10 {
    gpu_set_fog(1, col, 0, 1);
	draw_sprite_ext(sprite_index, image_index, x+2, y, spr_dir*2, 2, 0, c_white, 1)
    draw_sprite_ext(sprite_index, image_index, x-2, y, spr_dir*2, 2, 0, c_white, 1)
    draw_sprite_ext(sprite_index, image_index, x, y+2, spr_dir*2, 2, 0, c_white, 1)
    draw_sprite_ext(sprite_index, image_index, x, y-2, spr_dir*2, 2, 0, c_white, 1)
}

gpu_set_fog(0, c_white, 0, 0);
gpu_set_alphatestenable(false);

// pre_draw.gml
var alt = get_player_color(player);
var grad_alt = 15;

if alt == grad_alt {
    maskHeader();
    //mask out your character sprite
    draw_sprite_ext(sprite_index,image_index,x+draw_x,y+draw_y,spr_dir*(1+small_sprites), 1+small_sprites, spr_angle, -1, 1);
    maskMidder();
    //Replace this with whatever you want to draw under, what I have here is vertical pixel perfect tiling.
    //the example sprite is 64x64.
    var scale = 2;
    var sprite = sprite_get("cosmic_mask");  // set it to be a square sprite of whatever you want
    var _sprite_height = sprite_get_height(sprite)*scale;
    for (var i = -1; i <= 1; i++) {
        draw_sprite_ext(sprite_get("cosmic_mask"),
            0,
            x-_sprite_height/2,
            y-_sprite_height+
                (_sprite_height*i)+ //tile offset
                2,
            2,
            2,
            0,
            -1,
            1
        );
    }
    maskFooter();
}

//Defines, put at bottom of file
#define maskHeader
{
    gpu_set_blendenable(false);
    gpu_set_colorwriteenable(false,false,false,true);
    draw_set_alpha(0);
    draw_rectangle_color(0,0, room_width, room_height, c_white, c_white, c_black, c_black, false);
    draw_set_alpha(1);
}

#define maskMidder
{
    gpu_set_blendenable(true);
    gpu_set_colorwriteenable(true,true,true,true);
    gpu_set_blendmode_ext(bm_dest_alpha,bm_inv_dest_alpha);
    gpu_set_alphatestenable(true);
}

#define maskFooter
{
    gpu_set_alphatestenable(false);
    gpu_set_blendmode(bm_normal);
    draw_set_alpha(1);
}