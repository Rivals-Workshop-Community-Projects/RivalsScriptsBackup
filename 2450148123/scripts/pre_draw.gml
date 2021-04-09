


if (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR)
{
	if (attack == AT_EXTRA_1)
	{
	if (window < 6)
	draw_sprite_ext( sprite_get("installfx"), image_index, x, y, spr_dir, 1, 0, c_white, 0.75);

	}
	
	
	if (attack == AT_EXTRA_2){
	
	
	with (pHitBox)
	{
		if (attack = AT_EXTRA_2)
		{
			other.hitbox_x = x;
			other.hitbox_y = y;
		}
		
		
	}
	
	if (window = 3){
		shader_start();
		draw_sprite_ext( sprite_get("photo"), image_index, hitbox_x, hitbox_y, 1, 1, 0, c_white, 1);
		shader_end();
	}
	
		
	}
	
	

}

if (install)
{
	
var imagecolor;

    if (drawloop = 0)
    {
    imagecolor = merge_colour($10a100, $ffee6a, drawlooptimer / 10);
    drawlooptimer++;
        if (drawlooptimer > 10)
        {
        drawlooptimer = 0;
        drawloop = 1;
            
        }
    }
    
    if (drawloop = 1)
    {
    imagecolor = merge_colour($ffee6a, $1818de, drawlooptimer / 10);
    drawlooptimer++;
        if (drawlooptimer > 10)
        {
        drawlooptimer = 0;
        drawloop = 2;
            
        }
    }
    
    if (drawloop = 2)
    {
    imagecolor = merge_colour($1818de, $e66541, drawlooptimer / 10);
    drawlooptimer++;
        if (drawlooptimer > 10)
        {
        drawlooptimer = 0;
        drawloop = 3;
            
        }
    }
    
    if (drawloop = 3)
    {
    imagecolor = merge_colour($e66541, $0078fd, drawlooptimer / 10);
    drawlooptimer++;
        if (drawlooptimer > 10)
        {
        drawlooptimer = 0;
        drawloop = 4;
            
        }
    }
    
    if (drawloop = 4)
    {
    imagecolor = merge_colour($0078fd, $10a100, drawlooptimer / 10);
    drawlooptimer++;
        if (drawlooptimer > 10)
        {
        drawlooptimer = 0;
        drawloop = 1;
            
        }
    }
    
gpu_set_fog(1,imagecolor,0,0);
draw_sprite_ext( sprite_index, image_index, x - 7 * spr_dir, y, spr_dir, 1, 0, c_white, 0.8);
gpu_set_fog(0,0,0,0);
	
	


}