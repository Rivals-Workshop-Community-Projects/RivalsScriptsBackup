//pre_draw.gml
var alt = get_player_color(player);
var grad_alt = 19;
var numb_alt = 26;

switch(alt){
    case 19:
        maskHeader();
        //mask out your character sprite
        draw_sprite_ext(sprite_index,image_index,x+draw_x,y+draw_y,spr_dir*(1+small_sprites), 1+small_sprites, spr_angle, -1, 1);
        maskMidder();
        //Replace this with whatever you want to draw under, what I have here is vertical pixel perfect tiling.
        //the example sprite is 64x64.
        var scale = 2;
        var sprite = sprite_get("starcloak");
        var _sprite_height = sprite_get_height(sprite)*scale;
        for (var i = -1; i <= 1; i++) {
            draw_sprite_ext(sprite_get("starcloak"),
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
        break;
    case 26:
        maskHeader();
        //mask out your character sprite
        draw_sprite_ext(sprite_index,image_index,x+draw_x,y+draw_y,spr_dir*(1+small_sprites), 1+small_sprites, spr_angle, -1, 1);
        maskMidder();
        //Replace this with whatever you want to draw under, what I have here is vertical pixel perfect tiling.
        //the example sprite is 64x64.
        var scale = 2;
        var sprite = sprite_get("vfx_penumbrablade");
        var _sprite_height = sprite_get_height(sprite)*scale;
        for (var i = -1; i <= 1; i++) {
            draw_sprite_ext(sprite_get("vfx_penumbrablade"),
                0,
                x-_sprite_height+
                    (_sprite_height*i)+ //tile offset
                    (floor(spawn_timer)&~1)%_sprite_height+.5, //tile scrolling,
                y-_sprite_height+
                    (_sprite_height*i)+ //tile offset
                    (floor(spawn_timer)&~1)%_sprite_height+.5, //tile scrolling
                2,
                2,
                0,
                color_hsv,
                1
            );
            draw_sprite_ext(sprite_get("vfx_penumbrablade"),
                1,
                x-_sprite_height+
                    (_sprite_height*i)+ //tile offset
                    (floor(spawn_timer)&~1)%_sprite_height+.5, //tile scrolling,
                y-_sprite_height+
                    (_sprite_height*i)+ //tile offset
                    (floor(spawn_timer)&~1)%_sprite_height+.5, //tile scrolling
                2,
                2,
                0,
                color_hsv2,
                1
            );
            draw_sprite_ext(sprite_get("vfx_penumbrablade"),
                2,
                x-_sprite_height+
                    (_sprite_height*i)+ //tile offset
                    (floor(spawn_timer)&~1)%_sprite_height+.5, //tile scrolling,
                y-_sprite_height+
                    (_sprite_height*i)+ //tile offset
                    (floor(spawn_timer)&~1)%_sprite_height+.5, //tile scrolling
                2,
                2,
                0,
                color_hsv3,
                1
            );
        }
        maskFooter();
        break;
}

if state == PS_ATTACK_GROUND or state == PS_ATTACK_AIR{
    switch(attack){
        case AT_FSTRONG:
            draw_sprite_ext(spr_noelle, image_index, x, y, spr_dir * 2, 2, 0, c_white, 1);
            break;
        case AT_USTRONG:
            draw_sprite_ext(spr_susie, image_index, x, y, spr_dir * 2, 2, 0, c_white, 1);
            break;
    }
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