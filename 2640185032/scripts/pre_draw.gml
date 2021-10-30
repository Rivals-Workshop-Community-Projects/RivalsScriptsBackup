

shader_start();
//ice clock for projectiles
with(pHitBox){
    if(player_id = other && effect == 12 && "focus" in self && focus){        
        draw_sprite_ext(spr_iceclock_back_sm, 0, x, y, 2, 2, 0, c_white, 0.25 );
        draw_sprite_ext(spr_iceclock_hand_sm, 0, x, y, 2, 2, (freeze * (360/freeze_max)), c_white, 0.5 );
    }
}
shader_end();

//afterimage drawing
var ice_color = make_colour_rgb(col_R, col_G, col_B);
for (var i = 0; i < 10; i++){
    if (after_image[i] != -1 && after_image[i].alpha > 0){
        
        gpu_set_fog(true,ice_color,0,1);
        
        draw_sprite_ext(after_image[i].sprite_index, after_image[i].image_index, after_image[i].x, after_image[i].y, (1 + small_sprites) * after_image[i].spr_dir,
            1 + small_sprites, 0, c_white, after_image[i].alpha/10 );
            
        gpu_set_fog(false,c_white,0,0);
        
    }
}
