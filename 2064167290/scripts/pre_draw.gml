// pre-draw

var turntable_exist = false;
with (obj_article1)
{
    if (player_id == other)
    {
        turntable_exist = true;
        var inst = self;
    }
}

if (turntable_exist)
{
    
    
       
    // B:G:R
    switch (inst.col){
        case 0:
        	var col = $000000 // black
        break;
        case 1:
        	var col = $db9d3e; // BLUE
        break;
        case 2:
            var col = $0d9113; // GREEN
        break;
        case 3:
        	var col = $01feff; // YELLOW
        break;
        case 4: 
            var col = $106aff // ORANGE
        break;
        case 5:
         	var col = $2105ec; // RED     	 
        break;
        case 6:
         	var col = $99288c; // PURPLE       	 
        break;
    }
    
    
    
    
    if (!holding_turntable)
    {
        if (inst.sprite_index == sprite_get("turntable"))
        {
             var spr = sprite_get("turntable_hightlight");   
        }
        
        if (inst.sprite_index == sprite_get("turntable_spinning"))
        {
             var spr = sprite_get("turntable_spinning_hightlight");   
        }
        
        if (inst.sprite_index == sprite_get("uspecial_turntable"))
        {
            var spr = sprite_get("uspecial_turntable_hightlight"); 
        }
        
        
        if (inst.col != 0)
        {
            draw_sprite_ext(spr,inst.image_index,inst.x - 2,inst.y - 2,inst.spr_dir,1,0,col,1);
            draw_sprite_ext(spr,inst.image_index,inst.x + 2,inst.y - 2,inst.spr_dir,1,0,col,1);
            draw_sprite_ext(spr,inst.image_index,inst.x - 2,inst.y + 2,inst.spr_dir,1,0,col,1);
            draw_sprite_ext(spr,inst.image_index,inst.x + 2,inst.y + 2,inst.spr_dir,1,0,col,1);
        }
        
    }
    
}

//-----
//PRE_DRAW.GML
//-----

//pattern test
//copy and paste this anywhere in the file, but make sure the code past "#define" is at the end of the file. 
//Also, make sure to use "shader_end();" before you start the code, and "shader_start(); if you want to put more code after.

if  (get_player_color(player) == 22) { //check for the alt slot you want to do this on
    shader_end();
    maskHeader();
    draw_sprite_ext(sprite_index, image_index, x-hsp*3, y-vsp*3, (small_sprites + 1)*spr_dir, small_sprites + 1, 0, c_white, 0.25)
    maskMidder();
    draw_sprite_tiled_ext(sprite_get("wavetexture"), (get_gameplay_time() * 0.2), x, y, 1, 1, c_white, 1)
    maskFooter();
    maskHeader();
    draw_sprite_ext(sprite_index, image_index, x-hsp*2, y-vsp*2, (small_sprites + 1)*spr_dir, small_sprites + 1, 0, c_white, 0.5)
    maskMidder();
    draw_sprite_tiled_ext(sprite_get("wavetexture"), (get_gameplay_time() * 0.2), x, y, 1, 1, c_white, 1)
    maskFooter();
    maskHeader();
    draw_sprite_ext(sprite_index, image_index, x-hsp*1.5, y-vsp*1.5, (small_sprites + 1)*spr_dir, small_sprites + 1, 0, c_white, 0.6)
    maskMidder();
    draw_sprite_tiled_ext(sprite_get("wavetexture"), (get_gameplay_time() * 0.2), x, y, 1, 1, c_white, 1)
    maskFooter();
    //"glow"
    maskHeader();
    draw_sprite_ext(sprite_index, image_index, x+2, y+2, (small_sprites + 1)*spr_dir, small_sprites + 1, 0, c_white, 1)
    maskMidder();
    draw_sprite_tiled_ext(sprite_get("wavetexture"), (get_gameplay_time() * 0.2), x, y, 1, 1, c_white, 1)
    maskFooter();
        maskHeader();
    draw_sprite_ext(sprite_index, image_index, x-2, y-2, (small_sprites + 1)*spr_dir, small_sprites + 1, 0, c_white, 1)
    maskMidder();
    draw_sprite_tiled_ext(sprite_get("wavetexture"), (get_gameplay_time() * 0.2), x, y, 1, 1, c_white, 1)
    maskFooter();
    //glowend
    maskHeader();
    draw_sprite_ext(sprite_index, image_index, x, y, (small_sprites + 1)*spr_dir, small_sprites + 1, 0, c_white, 1)
    maskMidder();
    draw_sprite_tiled_ext(sprite_get("wavetexture"), (get_gameplay_time() * 0.2), x, y, 1, 1, c_white, 1)
    maskFooter();
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