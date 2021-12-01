//post-draw


if (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR)
{
    if(attack == AT_DSPECIAL)
    {
        shader_start();
        if(window == 1 || window == 2 || window == 3 || window == 10)
        {
            if(window == 10)
            {
                var angle = dspecialAngle;
                if(angle > 180)
                {
                    angle -= 180;
                    angle *= -1;
                }
                dspecialAngle -= angle * 0.1;
            }
            sprite_change_offset("dspecialHead", 48, 79-16);
            draw_sprite_ext(sprite_get("dspecialHead"), image_index, x, y-32, spr_dir * 2, 2, dspecialAngle, c_white, 1);
        }
        else if(window == 4 && window_timer == 0)//prevent one frame missing head
        {
            sprite_change_offset("dspecialHead", 48, 53);
            draw_sprite_ext(sprite_get("dspecialHead"), image_index, x, y-45, spr_dir * 2, 2, dspecialAngle, c_white, 1);
        }
        shader_end();
    }
    
    if (attack == AT_USPECIAL)
    {
    	if (window == 1 && window_timer == 1)
    		uspecialAngle = 0;
    		
		if (window == 4)
		    uspecialAngle = ease_linear(floor(uspecialAngle), 0, 25, 100);
	    else
	    {
	        var hor = 0;
	        hor += right_down;
	        hor -= left_down;
		    var a = point_direction(0, 0, hor, -1) - 90;
		    if(hor == 0)
		        uspecialAngle = ease_linear(floor(uspecialAngle), floor(a), 10, 100);
		    else
		        uspecialAngle = ease_linear(floor(uspecialAngle), floor(a), 5, 100);
	    }
	    
		shader_start();
		draw_sprite_ext(sprite_get("uspecial"), image_index, x, y, 2 * spr_dir, 2, uspecialAngle, c_white, 1);
		shader_end();
    }
}

/*if(state == PS_AIR_DODGE)
{
	//TODO: hide normal dodge + make the color as in real dodge? but already white... so need different blend?
	shader_start();
	dodgeAngle = ease_linear(floor(dodgeAngle), floor(hsp * 4), 10, 100);
	draw_sprite_ext(sprite_get("airdodge"), image_index, x+64, y, 2 * spr_dir, 2, dodgeAngle, c_white, 1);
	shader_end();
}*/

if(taunt_down)
{
    draw_set_font(asset_get("fName"));
    draw_set_halign(fa_center);
    draw_set_valign(fa_middle);
    for(var i = -2; i < 3; i++)
    	for(var j = -2; j < 3; j++)
		    draw_text_ext_transformed_color(x+i, y-155+j, nspecialNames[nspecialType], 20, 
		                        100, 1, 1, 0, c_black, c_black, c_black, c_black, 1);
    draw_text_ext_transformed_color(x, y-155, nspecialNames[nspecialType], 20, 
                        100, 1, 1, 0, c_white, c_white, c_white, c_white, 1);
    
    //draw_sprite_ext(sprite_get("nspecialMenu"), nspecialType, x-23, y-145, 2, 2, 0, c_white, 1);
    draw_sprite_ext(sprite_get("nspecialMenuSelect"), nspecialType, x-23, y-145, 2, 2, 0, c_white, 1);

    for(var i = 0; i < nspecialTypes; i++)
        draw_sprite_ext(sprite_get("nspecialMenu"), i, x-23 + (i-nspecialType) * 50, y-145, 2, 2, 0, c_white, 1);
    //TODO: animated + fade alpha + loop one over if first or last is selected
}

if(head != noone)
{
	shader_start();
    with(head)
    {
        var dist = 20;
        
        var startX = other.x + other.headX*other.spr_dir;
        var startY = other.y + other.headY;
        var dirX = x-startX;
        var dirY = y-startY;
        
        //draw_line_width_color(startX, startY, startX + dirX, startY + dirY, 8, c_white, c_white);
        
        var length = sqrt(dirX * dirX + dirY * dirY);
        dirX = (dirX/length);
        dirY = (dirY/length);
        var totalSprites = length / dist;
        
        var sx = dirX * 9 * other.spr_dir;//normal
        var sy = dirY * 9 * other.spr_dir;//normal
        
        dirX *= dist;
        dirY *= dist;
        var neck1X = startX;
        var neck1Y = startY;
        var neck2X = neck1X + dirX;
        var neck2Y = neck1Y + dirY;
        
        for(var i = 0; i < totalSprites; i++)
        {
            draw_sprite_pos(sprite_get("dspecialNeck"), 0,
            neck2X + sy, neck2Y - sx,
            neck2X - sy, neck2Y + sx,
            neck1X - sy, neck1Y + sx,
            neck1X + sy, neck1Y - sx, 1);
            
            neck1X += dirX;
            neck1Y += dirY;
            neck2X += dirX;
            neck2Y += dirY;
        }/**/
        
		draw_sprite_ext(sprite_get("dspecialHeadFixed"), player_id.image_index, x+player_id.spr_dir, y, player_id.spr_dir * 2, 2, player_id.dspecialAngle, c_white, 1);
    }
    shader_end();
}