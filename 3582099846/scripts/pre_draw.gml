

if (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND)
&& attack == AT_FSPECIAL
&& (window == 2 || window == 5 || window == 11 )
&& fspec_has_hit
{
    //Starting animation frame
    var hfx_subimg_start;
    
    switch (fspecial_type){
        
        case 1: //if fspecial_type == 1
            hfx_subimg_start = 0;
        break;
        
        case 2:
            hfx_subimg_start = 2;
        break;  
        
        case 3: //if fspecial_type == 0
            hfx_subimg_start = 4;
        break;
        
    }
    
    
    //Current Animation Frame Modifier
    var hfx_subimg_add = 2*(window_timer / get_window_value(attack, window, AG_WINDOW_LENGTH));
    
    //draw the Sprite
    draw_sprite_ext(sprite_get("hfx_fspecial"), hfx_subimg_start+hfx_subimg_add, x, y-32, 2*spr_dir, 2, 0, c_white, 1);
}
    
if (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND)
&& attack == AT_FSPECIAL_2
&& (window == 2 || window == 4 || window == 5 || window == 7 || window == 9)
&& fspec_has_hit
{
    //Starting animation frame
    var hfx_subimg_start;
    
    switch (window){
        
        case 5:
            hfx_subimg_start = 0;
        break;
        
        case 7:
            hfx_subimg_start = 2;
        break;  
        
        case 2: case 4: case 9:
            hfx_subimg_start = 4;
        break;
        
    }
    
    
    //Current Animation Frame Modifier
    var hfx_subimg_add = 2*(window_timer / get_window_value(attack, window, AG_WINDOW_LENGTH));
    if(window == 2 || window == 4) hfx_subimg_add = (hitstop <= hitstop_full/2);
    //draw the Sprite
    draw_sprite_ext(sprite_get("hfx_fspecial"), hfx_subimg_start+hfx_subimg_add, x, y-32, 2*spr_dir, 2, 0, c_white, 1);
}
    