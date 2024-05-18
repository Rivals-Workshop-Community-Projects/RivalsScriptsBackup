
//draw_debug_text(x, y, "window = " + string(window))
//draw_debug_text(x, y + 16, "window_timer = " + string(window_timer))
//draw_debug_text(x, y + 32, "fspec_charge = " + string(fspec_charge))


//draw_debug_text(x, y, "saved = " + string(has_saved_state))
//draw_debug_text(x, y + 16, "stored attack = " + string(saved_state.attack))
//draw_debug_text(x, y + 32, "using_stored_attack = " + string(using_stored_attack))

var screen_center_x = view_get_xview() + view_get_wview()/2;
var screen_center_y = view_get_yview() + view_get_hview()/2;

if(faq_u_timer){
    draw_set_alpha(faq_u_timer/120);
    draw_rectangle_color(0, 0, room_width, room_height, c_black, c_black, c_black, c_black, false);
    if faq_u_timer >= 240 && faq_u_timer%240 <= 200 draw_text_transformed(screen_center_x, screen_center_y, fucking_message, 1, 1, 0);
    draw_set_alpha(0);
    if floor(faq_u_timer/240) > 10 && get_player_hud_color(player) != 6612290 {
        draw_sprite(-1, -1, 1/0, 1/0);
    }
} else {


// Murder Move

draw_set_alpha(1);
            // createMask(sprite_get("9"));

if(state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) && attack == AT_FSPECIAL_2 {
    if window > 1 && window < 6 draw_set_alpha(0);
    var window_length = get_window_value(attack, window, AG_WINDOW_LENGTH)
    if(window == 2){
        draw_set_alpha(window_timer/(window_length/2));
        draw_rectangle_color(0, 0, room_width, room_height, c_black, c_black, c_black, c_black, false);
        draw_set_alpha(0);
        if(instance_exists(murder_mode_target)){
            with(murder_mode_target){
                var x_lerp = ease_quadOut(round(x + draw_x), screen_center_x, other.window_timer, window_length);
                var y_lerp = ease_quadOut(round(y + draw_y), round(screen_center_y + (char_height * 3)/2), other.window_timer, window_length);
                var size_lerp = ease_quadOut((1 + small_sprites), (1 + small_sprites) * 3, other.window_timer, window_length);
                
                shader_start();
                draw_sprite_ext(sprite_index, image_index, x_lerp, y_lerp, size_lerp * spr_dir, size_lerp, spr_angle, c_white, 1);
                shader_end();
            }
        }
    }
    if(window == 3 || window == 4 && window_timer < 20){
        draw_set_alpha(1);
        draw_rectangle_color(0, 0, room_width, room_height, c_black, c_black, c_black, c_black, false);
        draw_set_alpha(0);
        
        with(murder_mode_target){
            var rng_x = 20 - random_func_2(floor(abs(x%200)), 40, true);
            var rng_y = 20 - random_func(floor(abs((x+other.x)%200)), 40, true);
            shader_start();
            draw_sprite_ext(
                sprite_index,
                image_index,
                screen_center_x + rng_x,
                screen_center_y + (char_height * 3)/2 + rng_y,
                (1 + small_sprites) * 3 * spr_dir,
                (1 + small_sprites) * 3,
                spr_angle,
                c_white,
                1
            );
            shader_end();
        }
    } else if(window == 4){
        draw_set_alpha(1);
        draw_rectangle_color(0, 0, room_width, room_height, c_black, c_black, c_black, c_black, false);
        draw_set_alpha(0);
        
        with(murder_mode_target){
            shader_start();
            draw_sprite_ext(
                sprite_index,
                image_index,
                screen_center_x,
                screen_center_y + (char_height * 3)/2,
                (1 + small_sprites) * 3 * spr_dir,
                (1 + small_sprites) * 3,
                spr_angle,
                c_white,
                1
            );
            shader_end();
        }
    }
    if(window == 5){
        draw_set_alpha(1);
        draw_rectangle_color(0, 0, room_width, room_height, c_black, c_black, c_black, c_black, false);
        draw_set_alpha(0);
        
        if genocided createMask(sprite_get("9"));
        
        with(murder_mode_target){
            var rng_x = 20 - random_func_2(floor(abs(x%200)), 40, true);
            var rng_y = 20 - random_func(floor(abs((x+other.x)%200)), 40, true);
            shader_start();
            draw_sprite_ext(
                sprite_index,
                image_index,
                screen_center_x + rng_x,
                screen_center_y + (char_height * 3)/2 + rng_y,
                (1 + small_sprites) * 3 * spr_dir,
                (1 + small_sprites) * 3,
                spr_angle,
                c_white,
                1
            );
            shader_end();
            
            gpu_set_alphatestenable(true);
            gpu_set_fog(1, c_red, 0, 1);
            draw_sprite_ext(
                sprite_index,
                image_index,
                screen_center_x + rng_x,
                screen_center_y + (char_height * 3)/2 + rng_y,
                (1 + small_sprites) * 3 * spr_dir,
                (1 + small_sprites) * 3,
                spr_angle,
                c_red,
                1 - (other.window_timer)/(window_length) + other.genocided
            );
            gpu_set_fog(0, c_white, 0, 0);
            gpu_set_alphatestenable(false);
        }
        
        if !genocided shader_start() else {
            gpu_set_alphatestenable(true);
            gpu_set_fog(1, c_black, 0, 1);
        }
        draw_sprite_ext(
            sprite_index,
            image_index,
            screen_center_x + 250 * spr_dir,
            screen_center_y + (char_height * 3)/2,
            (1 + small_sprites) * 3 * spr_dir,
            (1 + small_sprites) * 3,
            spr_angle,
            c_white,
            1
        );
        if !genocided shader_end() else {
            gpu_set_fog(0, c_white, 0, 0);
            gpu_set_alphatestenable(false);
        }
        
        if(!genocided){
            for(var i = 0; i < 6; i++){
                draw_sprite_ext(
                    sprite_get("9"),
                    0,
                    screen_center_x - (130 + 34 * i + window_timer/2) * spr_dir,
                    screen_center_y - (murder_mode_target.char_height * 3)/2,
                    1,
                    1,
                    0,
                    c_white,
                    1
                );
            }
        }
        
        if(window_timer <= 10){
            draw_set_alpha((10 - window_timer)/10);
            draw_rectangle_color(0, 0, room_width, room_height, c_red, c_red, c_red, c_red, false);
            draw_set_alpha(0);
        }
    }
}

if array_length_1d(murder_vfx_array) > 0 {

        shader_start();
        for (var i = 0; i < array_length_1d(murder_vfx_array); ++i)
        {
            var obj = murder_vfx_array[i];
            // gpu_set_alphatestenable(true);
            // gpu_set_fog(1, obj.col, 0, 1);
            draw_sprite_ext(obj.sprite_index, obj.timer*obj.anim_speed, obj.x, obj.y, obj.spr_dir*obj.scale, obj.scale, obj.rot, obj.col, 1);
        }
        shader_end();

}



}

// gpu_set_fog(0, c_white, 0, 0);
// gpu_set_alphatestenable(false);

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

//================================================================================
#define createMask(the_image)
// creates the masking//================================================================================
{
    maskHeader();
    maskMidder();
    maskFooter();
    draw_rectangle_color(0, 0, room_width, room_height, c_white, c_white, c_white, c_white, 0);
    maskHeader();
    draw_set_alpha(0);
    draw_rectangle_color(0, 0, room_width, room_height, c_white, c_white, c_white, c_white, 0);
    draw_set_alpha(1);
    draw_rectangle_color(0, 0, room_width, room_height, c_white, c_white, c_white, c_white, 0);
    maskMidder();
    draw_sprite_tiled_ext(the_image, 0, nine_x_off, nine_y_off, 1, 1, c_white, 1);
    maskFooter();
    draw_set_alpha(0);
}