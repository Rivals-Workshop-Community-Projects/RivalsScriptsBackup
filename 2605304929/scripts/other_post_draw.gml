//other_post_draw

if(!instance_exists(other_player_id)){
    return;
}

if ("electric_buff_water_attack_threshold" not in other_player_id){
     return;
}

//#region Meter_Draw

var fx_image_index = get_gameplay_time() / 6;
var temp_x = x;
var temp_y = y;
var temp_char_height = char_height;

// Water
if(status_effect_water == true){
    if(status_effect_water == true){
        with(other_player_id){
            shader_start();
            draw_sprite_ext(sprite_get("buildup_water"),fx_image_index,temp_x,temp_y + 20,1,1,0,c_white,1);
            shader_end();
        }
    }
    

    gpu_set_fog(true,c_blue,0,0);
    draw_sprite_ext(sprite_index, image_index, x, y, (spr_dir) * (1 + small_sprites), 1 + small_sprites, image_angle, 1, .33);
    gpu_set_fog(false,c_blue,0,0);
    /*
    // set the character's outline color to red:
    outline_color = [ 164, 164, 0 ];
    // tell the shader to update the character's colors:
    init_shader();
    // set the character's outline color back to black, but don't tell the shader that you changed it. This way, if the character action is interrupted before you can manually set the outline color back to black, it will still change back:
    outline_color = [ 0, 0, 0 ];
    */
}
//#endregion

//#region Timer Region
if(status_effect_water == true){
buildup_water_fx_timer += 1; // increment timer
    if(buildup_water_fx_timer >= buildup_water_fx_time_limit){ // If at the time
      status_effect_water = false;
      buildup_water_fx_timer = 0;
    }
    if(was_parried){
        buildup_water_fx_timer = 0;
    }
}
else buildup_water_fx_timer = false;
//#endregion