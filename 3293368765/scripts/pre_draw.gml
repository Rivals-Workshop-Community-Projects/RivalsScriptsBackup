var alt_cur = get_player_color(player);
var col = make_color_rgb(
get_color_profile_slot_r(alt_cur, 7),
get_color_profile_slot_g(alt_cur, 7),
get_color_profile_slot_b(alt_cur, 7)
);

for (var i = 0; i < array_length_1d(afterimage_array); ++i)
{
    var obj = afterimage_array[i];
    draw_sprite_ext(obj.sprite_index, obj.image_index, obj.x, obj.y, obj.spr_dir*(1+small_sprites), 1+small_sprites, obj.rot, col, 1.2 - 1.2*(obj.timer/obj.timerMax));
}

///Draw after-images of Teenah during down special.
if(((state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) && attack == AT_DSPECIAL && window != 0) ||
   (will_charge > 1150)) {

    var _opacity_base = .1;
    var _opacity_scale = 1.05;

    //Keep track of Teenah's previous sprite and location, up to a maximum number.
    if(get_gameplay_time() % tn_afterimage_spacing == 0) {
        // print(sprite_index);
        ds_list_add(tn_afterimage_ledger, [sprite_index, image_index, x, y]);
        // print(ds_list_find_value(tn_afterimage_ledger, tn_max_afterimages-1)[1])
        
        if(ds_list_size(tn_afterimage_ledger) > tn_max_afterimages) {
            ds_list_delete(tn_afterimage_ledger, 0);
        }
    }

    if((state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) && attack == AT_DSPECIAL) {
        switch(window) {
            // Draw max number of afterimages during active frames of dspecial, all on frame 5 of animation.
            case 2:
                draw_after_image(8, col, _opacity_base, _opacity_scale, 5);
                break;
            
            // Slowly fade afterimages during endlag of dpecial.
            case 3:
                var _num_images = floor(ease_linear(1, tn_max_afterimages, window_timer, get_window_value(attack, window, AG_WINDOW_LENGTH)))-1;
                draw_after_image(_num_images, col, _opacity_base, _opacity_scale, -1);
                break;
        }
    } else if(!(hsp == 0 && !free) && will_lvl == 2){
        draw_after_image(3, col, _opacity_base, _opacity_scale, 0);
    }
}

gpu_set_fog(false, c_white, 0, 0);


// draw_point_color(x, y, c_yellow);

// #region Define Functions
// Draw afterimages
#define draw_after_image(num_images, color, opacity, opacity_scale, frame_lock) {
    gpu_set_fog(true, color, 0, 1);

    for(var i = tn_max_afterimages-1; i >= tn_max_afterimages - num_images ; i--) {
        if(is_array(ds_list_find_value(tn_afterimage_ledger, i))) {
            var _alpha = 1 - ((1-opacity) / power(opacity_scale,i));  //Fading opacity.
            var _sprite = ds_list_find_value(tn_afterimage_ledger, i)[0];
            var _frame = frame_lock != -1 ? ds_list_find_value(tn_afterimage_ledger, i)[1] : frame_lock;
            var _x = ds_list_find_value(tn_afterimage_ledger, i)[2];
            var _y = ds_list_find_value(tn_afterimage_ledger, i)[3];

            // print(string(_sprite) + ", " + string(_frame));
            draw_sprite_ext(_sprite, _frame, _x, _y, spr_dir, 1, 0, c_white, _alpha);
        }
    }

    gpu_set_fog(false, c_white, 0, 0);

    return 1;
}