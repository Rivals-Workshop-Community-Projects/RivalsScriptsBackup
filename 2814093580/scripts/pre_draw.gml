// pre-draw
//if secret_code_input == true

if secret_code_input 
{

    if  get_player_color(player) != 18
    {
    sugarcoat = (sugarcoat - 0.03)
    notgonna = draw_sprite_ext( sprite_get( "sugarcoat" ), 0, view_get_xview(), view_get_yview(), 2, 2, 0, c_white, sugarcoat );
    }

}


// pre_draw.gml
var alt = get_player_color(player);
var grad_alt = 9;

if alt == grad_alt {
    maskHeader();
    //mask out your character sprite
    draw_sprite_ext(sprite_index,image_index,x+draw_x,y+draw_y,spr_dir*(1+small_sprites), 1+small_sprites, spr_angle, -1, 1);
    maskMidder();
    //Replace this with whatever you want to draw under, what I have here is vertical pixel perfect tiling.
    //the example sprite is 64x64.
    var scale = 2;
    var sprite = sprite_get("fuzzyooze");  // set it to be a square sprite of whatever you want
    var _sprite_height = sprite_get_height(sprite)*scale;
    for (var i = -1; i <= 1; i++) {
        draw_sprite_ext(sprite_get("fuzzyooze"),
            0,
            x-_sprite_height/2,
            y-_sprite_height+
                (_sprite_height*i)+ //tile offset
                (floor(spawn_timer)&~1)%_sprite_height+16, //tile scrolling
            2,
            2,
            0,
            -1,
            1
        );
    }
    maskFooter();
}

if alt == 12 {
    maskHeader();
    //mask out your character sprite
    draw_sprite_ext(sprite_index,image_index,x+draw_x,y+draw_y,spr_dir*(1+small_sprites), 1+small_sprites, spr_angle, -1, 1);
    maskMidder();
    //Replace this with whatever you want to draw under, what I have here is vertical pixel perfect tiling.
    //the example sprite is 64x64.
    var scale = 2;
    var sprite = sprite_get("gingham");  // set it to be a square sprite of whatever you want
    var _sprite_height = sprite_get_height(sprite)*scale;
    for (var i = -1; i <= 1; i++) {
        draw_sprite_ext(sprite_get("gingham"),
            0,
            x-_sprite_height/2,
            y-_sprite_height+
                (_sprite_height*i), //tile offset
              
            2,
            2,
            0,
            -1,
            1
        );
    }
    maskFooter();
}


#define maskHeader()

gpu_set_blendenable(false);
gpu_set_colorwriteenable(false,false,false,true);
draw_set_alpha(0);
draw_rectangle_color(0, 0, room_width, room_height, c_white, c_white, c_white, c_white, false);
draw_set_alpha(1);


#define maskMidder()

gpu_set_blendenable(true);
gpu_set_colorwriteenable(true,true,true,true);
gpu_set_blendmode_ext(bm_dest_alpha,bm_inv_dest_alpha);
gpu_set_alphatestenable(true);


#define maskFooter()

if object_index = oTestPlayer{
    gpu_set_blendenable(false);
    gpu_set_colorwriteenable(false, false, false, true);
    draw_rectangle_color(0, 0, room_width, room_height, c_white, c_white, c_white, c_white, false);
}
gpu_set_alphatestenable(false);
gpu_set_blendmode(bm_normal);
draw_set_alpha(1);
gpu_set_blendenable(1);
gpu_set_colorwriteenable(true,true,true,true);

