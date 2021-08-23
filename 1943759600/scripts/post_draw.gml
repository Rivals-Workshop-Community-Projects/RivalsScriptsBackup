if(instance_exists(gem_ins))
    if(gem_ins.orig_player != player)
        instance_destroy(gem_ins);
        
//sound_play(asset_get("sfx_birdflap"));

//Holiday Skin
// if wearing_hat {
//     draw_sprite(sprite_get("surfboard_idle"), image_index, 40, 78);
// }
//Start Shader
shader_start();

//Dashlines


if (fadc_timer > 0){
    var fadc_frame = floor(ease_linear(fadc_frames, 0, fadc_timer, fadc_dur));
    draw_sprite_ext(spr_fadc, fadc_frame, x, y, spr_dir, 1, 0, c_white, 1);
}

if (fadc_back_timer > 0){
    var fadc_back_frame = floor(ease_linear(fadc_back_frames, 0, fadc_back_timer, fadc_back_dur));
    draw_sprite_ext(spr_fadc_back, fadc_back_frame, x, y, spr_dir, 1, 0, c_white, 1);
}


//Armor Sparkles


if (armor_timer > 0){
    var armor_frame = floor(ease_linear(armor_frames, 0, armor_timer, armor_dur));
    draw_sprite_ext(spr_armor, armor_frame, x, y, spr_dir, 1, 0, c_white, 1);
}


//Dash Burst effect


if (fsvfx_timer > 0){
	var fsvfx_frame= floor(ease_linear(fsvfx_frames, 0, fsvfx_timer, fsvfx_dur));
   draw_sprite_ext(spr_fsvfx, state_timer/4, x, y, spr_dir, 1, 0, c_white, 1);
}


//Gembreak VFX


if (gembreak_timer > 0 && instance_exists(gem_ins) ){
	var gembreak_frame= floor(ease_linear(gembreak_frames, 0, gembreak_timer, gembreak_dur));
   draw_sprite_ext(spr_gembreak, gembreak_frame, gem_ins.x, gem_ins.y, 1, 1, gem_ins.image_angle, c_white, 1);
}



//G7 Glitch effect by Giik

if get_player_color(player) == 15 && random_func(4, 2, 1) == 0 {
var fs = random_func(0, sprite_height -1, 1);
draw_sprite_part_ext(sprite_index,image_index,0,fs, abs(sprite_width), random_func(1, 20, 1)+1, (x+(random_func(2, 3, 1)-1)*7)  - sprite_get_xoffset(sprite_index)*spr_dir*2, y+fs*2 - sprite_get_yoffset(sprite_index)*2, spr_dir*2, 2, image_blend, 1);

}
//End shader, now that everything is done being drawn.
shader_end();
