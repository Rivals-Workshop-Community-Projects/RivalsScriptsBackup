// pre-draw
if(dragon_install){
   
    gpu_set_fog(true, rainbow_color, 0, 0);
    draw_sprite_ext(sprite_index, image_index, x + 2 - random_func(4,8,true) , y - 2 + random_func(2,6,true)  , spr_dir*2, 2, 0 , c_black , .5);
    draw_sprite_ext(sprite_index, image_index, x - 2 + random_func(4,8,true) , y + 2 - random_func(2,6,true)  , spr_dir*2, 2, 0 , c_black , .5);
    for(var t = 0; t < install_trail_size; t++){
        var i = install_trail[t];
        if(i.life > 0){
            gpu_set_fog(true, i.color, 0, 0);
            draw_sprite_ext(i.sprite_index, i.image_index, i.x, i.y, (1+small_sprites)*i.spr_dir, 1+small_sprites, 0, i.color, (i.life/30)/1.5);
        }
    }
    gpu_set_fog(false, c_white, 0, 0);
}

if(attack == AT_NSPECIAL_2 and state == PS_ATTACK_GROUND and window == 1 and window_timer <4){
    var num2draw = ceil(y/400);
    for(var i = 0; i < num2draw; i++){
        draw_sprite_ext(sprite_get("lightning"), 0, x, y-i*400, -spr_dir, 1, 0, c_white, 1);
    }
}