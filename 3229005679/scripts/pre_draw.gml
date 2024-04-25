/*
shader_start();




shader_end();*/





if (attack = AT_TAUNT && (state = PS_ATTACK_GROUND || state = PS_ATTACK_AIR)){

    draw_sprite_ext(sprite_get("tauntEffect"), min(floor(window_timer/3), 3), x, y, 2 * spr_dir, 2, 0, -1, 1)

}


if (attack == AT_EXTRA_1 && (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR)){

    
    draw_sprite_ext(sprite_get("intro2"), image_index, x, y, 2*spr_dir, 2, 0, -1, 1);

    if (image_index < 4){
        var nearest_player = noone;
        var nearest_distance = -1;
        with (oPlayer) {
          if (id != other.id && state != PS_DEAD && state != PS_RESPAWN) {
            if (nearest_player == noone || point_distance(x, y, other.x, other.y) < nearest_distance) {
                nearest_player = id;
                nearest_distance = point_distance(x, y, other.x, other.y);
            } 
          }
        }

        if (instance_exists(nearest_player)){

            if (image_index % 2 == 0){
                var posterOffset = 48;
            } else {
                var posterOffset = 46;
            }

            if (nearest_player.custom == true){
                draw_sprite_ext(get_char_info(nearest_player.player, INFO_ICON), 0, x - 44 * spr_dir, y - posterOffset, 2*spr_dir, 2, 0, -1, 1);
            } else {
                draw_sprite_ext(sprite_get("bc_icons"), nearest_player.url, x - 44 * spr_dir, y - posterOffset, 1*spr_dir, 1, 0, -1, 1);
                
            }

        }
    }

}


for (var i = 0; i < array_length_1d(afterimage_array); ++i)
{

    var currentColor = get_player_color(player);
    var finalColor = make_colour_rgb(get_color_profile_slot_r(currentColor, 0), get_color_profile_slot_g(currentColor, 0), get_color_profile_slot_b(currentColor, 0));

    gpu_set_fog(true, finalColor, 0, 0);
    var obj = afterimage_array[i];
    var spriteSize = obj.smallSprites;
    draw_sprite_ext(obj.sprite_index, obj.image_index, obj.x, obj.y, obj.spr_dir*(1+spriteSize), 1+spriteSize, obj.rot, obj.col, 1-obj.timer/obj.timerMax);
    gpu_set_fog(false, c_black, 0, 0);

}



//Image Mask
if  (get_synced_var(player) != 0) {
    if(start_predraw){
        //crash prevention line
        shader_end();
        maskHeader();
        draw_sprite_ext(sprite_index, image_index, x + draw_x, y + draw_y, 2*spr_dir, 2, image_angle + spr_angle, -1, 1);
        

        maskMidder();

        var maskSprite = sprite_get("map_sprite" + string(get_synced_var(player)));
        //draw_sprite_ext(maskSprite, 0, (x + draw_x) + (get_gameplay_time()/2 % (sprite_get_width(maskSprite)/2)), (y + draw_y) + (get_gameplay_time()/2 % (sprite_get_height(maskSprite)/2)), 2, 2, 0, -1, 1)
        draw_sprite_ext(maskSprite, 0, (x + draw_x), (y + draw_y - char_height), 2, 2, 0, -1, 1)
        maskFooter();
    }
}


#define maskHeader
// Mask renderer utility: disables Normal draw.
// Draw shapes or sprites to be used as the stencil(s) by maskMidder.
//================================================================================
{
    gpu_set_blendenable(false);
    gpu_set_colorwriteenable(false,false,false,true);
    draw_set_alpha(0);
    draw_rectangle_color(0,0, room_width, room_height, c_white, c_white, c_white, c_white, false);
    draw_set_alpha(1);
}
//================================================================================
#define maskMidder
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

if instance_number(oTestPlayer) > 0 {
    gpu_set_blendenable(false);
    gpu_set_colorwriteenable(false, false, false, true);
    draw_rectangle_color(0, 0, room_width, room_height, c_white, c_white, c_white, c_white, false);
}
gpu_set_alphatestenable(false);
gpu_set_blendmode(bm_normal);
draw_set_alpha(1);
gpu_set_blendenable(1);
gpu_set_colorwriteenable(true,true,true,true);

