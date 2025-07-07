//Tongue

if (state == PS_ATTACK_GROUND
|| state == PS_ATTACK_AIR)
&& ((attack == AT_NSPECIAL
&& window == 2)
|| (attack == AT_NSPECIAL_2
&& window == 1))
{
    
    var offset_x = 20*spr_dir;
    var offset_y = -18;
    
    shader_start();
    
    //Tongue
    draw_sprite_ext(sprite_get("tongue"), 0, x+offset_x, y+offset_y, (tongue_length*spr_dir), 2, 0, c_white, 1);
    
    //Tongue End
    draw_sprite_ext(sprite_get("tongue_end"), 0, x+(tongue_length*spr_dir)+offset_x, y+offset_y, 2*spr_dir, 2, 0, c_white, 1);
    
    shader_end();
}