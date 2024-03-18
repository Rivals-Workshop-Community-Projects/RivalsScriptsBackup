//predraw

//respawn plat
if (state == PS_RESPAWN) {
    shader_start();
    draw_sprite(respawnPlatSprite,get_gameplay_time()/8,x,y);
}

if ((state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR) && attack == AT_USPECIAL){
    if window == 2
        draw_sprite_ext(sprite_get("vfx_crystals"), c_anim, x, y, -spr_dir, 1, 0, c_white, 1);
}
if ((state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR) && attack == AT_USPECIAL_2){
    if window == 2
    draw_sprite_ext(sprite_get("vfx_crystals_air"), c_anim, x, y, -spr_dir, 1, 0, c_white, 1);
}

if (shade_stock == 0 && shade_consumer == 0 ) {
    var shadecharge_anim = 0
    if (shade_timer < 15 && shade_timer > 9) {
        shadecharge_anim = 1
    }
    if (shade_timer > 9)
        draw_sprite_ext( sprite_get("vfx_shadecharge_back"), shadecharge_anim, x, y+(dsin(bobTime) * bobFreq) * bobAmp, spr_dir, 1, 0, c_white, shade_a);
}

shader_start()
if (vwings_timer < vwings_duration) {
    draw_sprite_ext(sprite_get("vfx_doublejumpwings"), (vwings_timer*sprite_get_number(sprite_get("vfx_doublejumpwings"))/vwings_duration), x, y, spr_dir, 1, 0, c_white, vwings_a);
}
shader_end()

//afterimages
var col_trail = make_colour_rgb(25, 23, 49); 

for (var i = 0; i < 10; i++){
    if (after_image[i] != -1 && after_image[i].alpha > 0){
        
        gpu_set_fog(true,col_trail,0,1);
        
        draw_sprite_ext(after_image[i].sprite_index, after_image[i].image_index, after_image[i].x, after_image[i].y, (1 + small_sprites) * after_image[i].spr_dir,
            1 + small_sprites, 0, c_white, after_image[i].alpha/10 );
            
        gpu_set_fog(false,c_white,0,0);
        
    }
}
