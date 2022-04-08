//chains
//do stuff for every attack with the chains, to customize chain placement and also cuz they have different windows and window lengths
if (state == PS_ATTACK_GROUND && attack == AT_FSTRONG)
{
    var a = 1;
    if window == 1
    a = window_timer < 10 ? window_timer/10 : 1;
    else if window == (4)
     a = window_timer > get_window_value(AT_FSTRONG, window, AG_WINDOW_LENGTH)-17 ? (1-(window_timer/10)) : 0;
  
    draw_sprite_ext(sprite_get("chains_back"), get_gameplay_time()/10, x, y, -spr_dir, 1, 0, c_white, a);
}

if (state == PS_ATTACK_GROUND && attack == AT_DSTRONG)
{
    var a = 1;
    if window == 1
    a = window_timer < 10 ? window_timer/10 : 1;
    else if window == (6)
     a = window_timer > get_window_value(AT_FSTRONG, window, AG_WINDOW_LENGTH)-15 ? (1-(window_timer/10)) : 0;
  
    draw_sprite_ext(sprite_get("chains_back"), get_gameplay_time()/10, x, y, -spr_dir, 1, 0, c_white, a);
}

if (state == PS_ATTACK_GROUND && attack == AT_USTRONG)
{
    var a = 1;
    if window == 1
    a = window_timer < 10 ? window_timer/10 : 1;
    else if window == (4)
     a = window_timer > get_window_value(AT_FSTRONG, window, AG_WINDOW_LENGTH)-17 ? (1-(window_timer/10)) : 0;
  
    draw_sprite_ext(sprite_get("chains_back"), get_gameplay_time()/10, x, y, -spr_dir, 1, 0, c_white, a);
}

if (state == PS_ATTACK_AIR && attack == AT_FAIR)
{
    var a = 1;
    if window == 1
    a = window_timer < 10 ? window_timer/10 : 1;
    else if window == (3)
     a = window_timer > get_window_value(AT_FSTRONG, window, AG_WINDOW_LENGTH)-14 ? (1-(window_timer/10)) : 0;
  
    draw_sprite_ext(sprite_get("chains_back"), get_gameplay_time()/10, x, y, -spr_dir, 1, 0, c_white, a);
}

if (state == PS_ATTACK_GROUND && attack == AT_NSPECIAL || state == PS_ATTACK_AIR && attack == AT_NSPECIAL )
{
    var a = 1;
    if window == 1
    a = window_timer < 10 ? window_timer/10 : 1;
    else if window == (4)
     a = window_timer > get_window_value(AT_FSTRONG, window, AG_WINDOW_LENGTH)-20 ? (1-(window_timer/10)) : 0;
  
    draw_sprite_ext(sprite_get("chains_back"), get_gameplay_time()/10, x, y, -spr_dir, 1, 0, c_white, a);
}



//respawn plat
if (state == PS_RESPAWN) {
    shader_start();
    draw_sprite(respawnPlatSprite,get_gameplay_time()/8,x,y);
}




//pattern test
//copy and paste this anywhere in the file, BUT make sure the code past "#define" is at the end of the file. 
//Also, make sure to use "shader_end();" before you start the code, and "shader_start(); if you want to put more code after.

//if (get_player_color(player) == 9) {
//    if object_index != asset_get("oTestPlayer") {
//      maskHeader();
//      draw_sprite_ext(sprite_index, image_index, x+draw_x, y+draw_y, spr_dir, 1, spr_angle, c_white, 1);
//      with pHitBox if player_id == other && type == 2 {
//        draw_sprite_ext(sprite_index, image_index, x, y, 2*spr_dir, 2, 1, c_white, 1);
//    }
//    maskMidder();
//    draw_sprite_tiled_ext(sprite_get("omorispace"), 1, x, y, 1, 1, c_white, 1)
//    maskFooter();
//    }
//}


//================================================================================
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
#define maskFooter
// Restores normal drawing parameters
//================================================================================
{
    gpu_set_alphatestenable(false);
    gpu_set_blendmode(bm_normal);
    draw_set_alpha(1);
}
