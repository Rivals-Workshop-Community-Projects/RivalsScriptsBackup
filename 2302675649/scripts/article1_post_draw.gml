var hudCol = get_player_hud_color(player_id.player);
if (replacedCount == 1) DrawHUD(hudCol);

if (get_player_color(player) == 19) draw_sprite_ext(sprite_get("cross"),0,x,y,1,1,get_gameplay_time(),c_white,1);
if (state != 4 && articleInit && player_id.object_index != oTestPlayer) with (player_id)
{
    var shine = !instance_exists(other.otherPortal);
    var dist = shine?0:point_distance(x,y,other.otherPortal.x,other.otherPortal.y);
	var maxDist = 200;
    var mask = sprite_get("portal_mask");
    var maskIndex = other.image_index;
    switch (other.state)
    {
        case 0:
            mask = sprite_get("portalSpawnMask");
            break;
    }
	if (dist<maxDist)
	{
        // set mask
        gpu_set_blendenable(false)
        gpu_set_colorwriteenable(false,false,false,true);
            // mask goes here
                draw_set_alpha(0);
                draw_rectangle_color(0,0,room_width,room_height,c_white,c_white,c_white,c_white,false);
                draw_set_alpha(1);
		        draw_sprite_ext(mask,maskIndex,other.x,other.y,1,1,0,c_white,1);
            // end mask
        gpu_set_colorwriteenable(true,true,true,true);
        gpu_set_blendenable(true);

        // draw sprite in mask
        //gpu_set_blendmode_ext(bm_dest_alpha,bm_inv_dest_alpha);
        gpu_set_blendmode_ext(bm_dest_alpha,bm_inv_src_alpha);
        gpu_set_alphatestenable(true);
            // draw sprite
		        shader_start();
                if (shine)
		            draw_sprite_ext(sprite_get("shine"),0,x+floor((other.y-y)/4),other.y,2,2,0,c_white,0);
                else
		            draw_sprite_ext(sprite_index,image_index,x-other.otherPortal.x+other.x,y-other.otherPortal.y+other.y,spr_dir,1,0,c_gray,0);
		        shader_end();
            // end draw
        gpu_set_alphatestenable(false);
        gpu_set_blendmode(bm_normal);
	}
}

with (oPlayer) if ("afterImageLonin" in self && afterImageLonin != -1 && afterImageLonin.lonin == other.player_id.player)
{
    shader_start();
    gpu_set_blendmode(bm_add);
    var smallAdj = afterImageLonin.small?2:1;
    draw_sprite_ext(afterImageLonin.sprite, afterImageLonin.image, afterImageLonin.xPos+(30-afterImageLonin.alpha)/2, afterImageLonin.yPos, afterImageLonin.dir*smallAdj, smallAdj, 0, c_fuchsia, afterImageLonin.alpha/30);
    draw_sprite_ext(afterImageLonin.sprite, afterImageLonin.image, afterImageLonin.xPos-(30-afterImageLonin.alpha)/2, afterImageLonin.yPos, afterImageLonin.dir*smallAdj, smallAdj, 0, c_aqua, afterImageLonin.alpha/30);
    gpu_set_blendmode(bm_normal);
    shader_end();
}

#define DrawHUD(_hudCol)
{    
    var xpos = x;
    var ypos = y-80;

    draw_rectangle_color(xpos-6,ypos-2,xpos+7,ypos+1,c_black,c_black,c_black,c_black,false);
    draw_rectangle_color(xpos-4,ypos,xpos+5,ypos+1,_hudCol,_hudCol,_hudCol,_hudCol,false);

    draw_rectangle_color(xpos-4,ypos+2,xpos+5,ypos+3,c_black,c_black,c_black,c_black,false);
    draw_rectangle_color(xpos-2,ypos+2,xpos+3,ypos+3,_hudCol,_hudCol,_hudCol,_hudCol,false);

    draw_rectangle_color(xpos-2,ypos+4,xpos+3,ypos+5,c_black,c_black,c_black,c_black,false);
    draw_rectangle_color(xpos,ypos+4,xpos+1,ypos+5,_hudCol,_hudCol,_hudCol,_hudCol,false);

    draw_rectangle_color(xpos,ypos+6,xpos+1,ypos+7,c_black,c_black,c_black,c_black,false);
}