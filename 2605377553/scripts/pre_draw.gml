//afterimages
if (get_player_color(player) == 9) {  
	var col_trail = make_colour_rgb(get_color_profile_slot_r( get_player_color(player), 0 ), get_color_profile_slot_g( get_player_color(player), 0 ), get_color_profile_slot_b( get_player_color(player), 0 ));
}
else {
   var col_trail = make_colour_rgb(get_color_profile_slot_r( get_player_color(player), 6 ), get_color_profile_slot_g( get_player_color(player), 6 ), get_color_profile_slot_b( get_player_color(player), 6 )); 
}
for (var i = 0; i < 10; i++){
    if (after_image[i] != -1 && after_image[i].alpha > 0){
        
        gpu_set_fog(true,col_trail,0,1);
        
        draw_sprite_ext(after_image[i].sprite_index, after_image[i].image_index, after_image[i].x, after_image[i].y, (1 + small_sprites) * after_image[i].spr_dir,
            1 + small_sprites, 0, c_white, after_image[i].alpha/10 );
            
        gpu_set_fog(false,c_white,0,0);
        
    }
}



if galaxy_timer > 0 {
	
	draw_sprite_ext(sprite_get("los_pronouns_hormones"),0, view_get_xview(), view_get_yview(), 2 , 2 ,0, c_white, (galaxy_timer/2)/60 );
	
}

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
     a = window_timer > get_window_value(AT_DSTRONG, window, AG_WINDOW_LENGTH)-15 ? (1-(window_timer/10)) : 0;
  
    draw_sprite_ext(sprite_get("chains_back"), get_gameplay_time()/10, x, y, -spr_dir, 1, 0, c_white, a);
}

if (state == PS_ATTACK_GROUND && attack == AT_USTRONG)
{
    var a = 1;
    if window == 1
    a = window_timer < 10 ? window_timer/10 : 1;
    else if window == (4)
     a = window_timer > get_window_value(AT_USTRONG, window, AG_WINDOW_LENGTH)-17 ? (1-(window_timer/10)) : 0;
  
    draw_sprite_ext(sprite_get("chains_back"), get_gameplay_time()/10, x, y, -spr_dir, 1, 0, c_white, a);
}

if (state == PS_ATTACK_AIR && attack == AT_FAIR)
{
    var a = 1;
    if window == 1
    a = window_timer < 10 ? window_timer/10 : 1;
    else if window == (3)
     a = window_timer > get_window_value(AT_FAIR, window, AG_WINDOW_LENGTH)-14 ? (1-(window_timer/10)) : 0;
  
    draw_sprite_ext(sprite_get("chains_back"), get_gameplay_time()/10, x, y, -spr_dir, 1, 0, c_white, a);
}

if (state == PS_ATTACK_GROUND && attack == AT_NSPECIAL || state == PS_ATTACK_AIR && attack == AT_NSPECIAL )
{
    var a = 1;
    if window == 1
    a = window_timer < 10 ? window_timer/10 : 1;
    else if window == (4)
     a = window_timer > get_window_value(AT_NSPECIAL, window, AG_WINDOW_LENGTH)-20 ? (1-(window_timer/10)) : 0;
  
    draw_sprite_ext(sprite_get("chains_back"), get_gameplay_time()/10, x, y, -spr_dir, 1, 0, c_white, a);
}

if (state == PS_ATTACK_AIR && attack == AT_NAIR )
{
    var a = 1;
    if window == 1
    a = window_timer < 10 ? window_timer/10 : 1;
    else if window == (4)
     a = window_timer > get_window_value(AT_NAIR, window, AG_WINDOW_LENGTH)-20 ? (1-(window_timer/10)) : 0;
  
    draw_sprite_ext(sprite_get("chains_back"), get_gameplay_time()/10, x, y, -spr_dir, 1, 0, c_white, a);
}


//respawn plat
if (state == PS_RESPAWN) {
    shader_start();
    draw_sprite(respawnPlatSprite,get_gameplay_time()/8,x,y);
}





if  (get_player_color(player) == 9) {
//crash prevention line
shader_end();
maskHeader();
    draw_sprite_ext(sprite_index, image_index, x, y, 1*spr_dir, 1, 0, c_white, 1); //change the 2*spr_dir and 2 to 1 if the character doesnt use small_sprites

maskMidder();
    draw_sprite_tiled_ext(sprite_get("galaxy"), image_index, x * spr_dir, y, 1, 1, c_white, 1)
maskFooter();

if object_index != asset_get("oTestPlayer") {
      maskHeader();
      draw_sprite_ext(sprite_index, image_index, x+draw_x, y+draw_y, spr_dir, 1, spr_angle, c_white, 1);
      with pHitBox if player_id == other && type == 2 {
        draw_sprite_ext(sprite_index, image_index, x, y, 1*spr_dir, 1, 1, c_white, 1);
    }
    maskMidder();
    draw_sprite_tiled_ext(sprite_get("galaxy"), 1, x, y, 1, 1, c_white, 1)
    maskFooter();
    }


}


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

