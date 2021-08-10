//



//mirror

//TODO: do this in article pre_draw instead?
with (oPlayer)
{
    //if(player == 1)
    //draw_sprite_ext(sprite_index, image_index, x-128, y-80, 1*spr_dir, 1, 0, c_white, 0.5);
    //TODO: mask it
    //draw_sprite(sprite_get("piece"),0,0,0);
    //draw_sprite_ext(sprite_get("mirrorMask"),0,128,-50,2,2,0,c_white,1);

    
    /*gpu_set_fog(1, c_white, 0, 0);
    draw_sprite_ext(sprite_index, image_index,  round(x), round(y), spr_dir, image_yscale, image_angle, c_white, 0.5);
    gpu_set_fog(0, 0, 0, 0);*/
    
    /*gpu_set_blendenable(false);
    gpu_set_colorwriteenable(false, false, false, true);
    draw_set_alpha(0);
    draw_rectangle_color(0,0, room_width,room_height, c_black, c_black, c_black, c_black, false);
    draw_set_alpha(1);
    
    //draw_sprite(sprite_get("mirrorMask"),0,0,0);
    draw_sprite_ext(sprite_index, image_index, x-128, y-80, 1*spr_dir, 1, 0, c_white, 0.5);
    
    gpu_set_blendenable(true);
    gpu_set_colorwriteenable(true,true,true,true);
    gpu_set_blendmode_ext(bm_dest_alpha,bm_inv_dest_alpha);
    gpu_set_alphatestenable(true);
    
    //draw_sprite(sprite_get("mirrorMask"),0,0,0);
    //draw_sprite_tiled_ext(sprite_get("rainbow"),0,x,y,0,0,c_white,0.5);
    draw_sprite_ext(sprite_index, image_index, x-128, y-80, 1*spr_dir, 1, 0, c_white, 0.5);
    
    gpu_set_alphatestenable(false);
    gpu_set_blendmode(bm_normal);
    draw_set_alpha(1);*/
}



//fake 3D draw test

/*
x++;
scale += 0.01;

//draw_rectangle_color(x,y,x+size,y+size,c_black,c_black,c_black,c_black,false);
//draw_rectangle_color(x+2,y+2,x+size-2,y+size-2,c_white,c_white,c_white,c_white,false);

//draw_sprite_stretched_ext
//draw_sprite_ext(sprite_get("piece"), 0, x, y, 2, 2, 0, c_white, 1);

draw_sprite_ext(sprite_get("piece"), 0, x, y, 0.9*scale, 2*scale, 0, c_white, 1);
draw_sprite_ext(sprite_get("piece"), 0, x+10, y, 0.6*scale, 2*scale, 0, c_white, 1);
//-> add fake 3D axis? change size + move to center or away
*/



//draw_debug_text(-400,-400,"DDDDD");

/*with (oPlayer)
{
    if(player == 1)
    {
        draw_debug_text(x,y,"DDDDDDDDD");
        print(string(x) + " " + string(y));
    }
}*/

//https://twitter.com/sunfished/status/1369157577444126722
//https://docs.yoyogames.com/source/dadiospice/002_reference/drawing/drawing%20primitives/index.html
//-> possible rotations...
/*var i, steps, xx, yy, radius;
xx=200;
yy=200;
draw_primitive_begin(pr_trianglelist);
draw_vertex(xx, yy);
draw_vertex(xx + 16, yy);
draw_vertex(xx, yy+16);
draw_primitive_end();*/


//with (oPlayer)
//    draw_debug_text(x,y,string(x) + " " + string(y));

#define convert(VJ,VI,VK)
{
    var sxy = 0;
    var cxy = 0;
    var cz = 0;
    var sz = 0;
    var zoom = 0;
    var originX = 200;
    var originY = 200;
    var pX = floor(((VJ * sxy) - VI * cxy) * zoom);
    var pY = floor(((VK * cz) - (VI * sxy * sz) - (VJ * sz * cxy)));
    draw_sprite(sprite_get("piece"),0,originX + pX, originY - pY);
}