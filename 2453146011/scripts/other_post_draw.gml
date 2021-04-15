var otherexists;
otherexists = instance_exists(other_player_id)

if !otherexists exit;
if (otherexists and (!("lite" in other_player_id) or other_player_id.lite)) exit;

// Other post draw
with(other_player_id) shader_start();

// Small sprites check
var small = small_sprites+1;
var j = 0;

// Universal flicker oscillator
if(other_flickerback) other_flickercount-=.5 else other_flickercount+=.5;
other_flickerback = other_flickercount == 10 ? true : other_flickercount == -10 ? false : other_flickerback;

var j = 0;

repeat(2)
{
    
var px = 0;
var py = 0;
var pref = noone;
var light = noone;
var portalid = 0;

with(other_player_id) if (init)
{
    if(portal_1 != noone && j == 0)
    {
    	px = portal_1.x;
    	py = portal_1.y;
    	pref = portal_1;
    	light = sprite_get("blight");
    	portalid = 1;
    }
    
    if(portal_2 != noone && j == 1)
    {
    	px = portal_2.x;
    	py = portal_2.y;
    	pref = portal_2;
    	light = sprite_get("rlight");
    	portalid = 2;
    }
}

if(pref != noone)
{
	
    // Portal x distance
    var NewValue = (point_distance(x,y,px,py)) / 20;
    
    // Flicker
    var flickerVal = abs(NewValue) - sin(other_flickercount/50);
    
    // Outline color
    // outline_color = portalid == 1 ? [ min(26,26/flickerVal-sin(other_flickercount)*7), min(96,96/flickerVal-sin(other_flickercount)*7), min(143,143/flickerVal-sin(other_flickercount)*7) ] :
    // [ min(100,196/flickerVal-sin(other_flickercount)*7), min(44,44/flickerVal-sin(other_flickercount)*7), min(40,69/flickerVal-sin(other_flickercount)*7) ];
    // init_shader();
    
    // Offset + distance value
    var sprval = sprite_get_width(sprite_index)/flickerVal;
    
    // Portal direction
    var pdir = (px-x) > 0 ? 1 : -1;
    
	var offset = 0;
	
	if(pref.isFloor)		offset = pref.y > y ? 120 : 40;
	else if(pref.isCeil)	offset = pref.y > y ? 40 : 120;
	else if(pref.rightWall) offset = pref.x > x ? 120 : 40;
	else					offset = pref.x > x ? 40 : 120;
    
    // Additional portal mask lighting
	gpu_set_blendenable(false)
	gpu_set_colorwriteenable(false,false,false,true);
	draw_set_alpha(0);
	draw_rectangle_color(0,0, room_width,room_height, c_white,c_white,c_white,c_white,false);


	draw_set_alpha(1);
	draw_sprite_ext(sprite_index,image_index, x,y,small*spr_dir,small,0,c_white,(other_flickercount/100)+min(.4,.8-((point_distance(x,y,px,py)/offset))/1.4));
	gpu_set_blendenable(true);
	gpu_set_colorwriteenable(true,true,true,true);
	
	gpu_set_blendmode_ext(bm_dest_alpha,bm_inv_dest_alpha);
	gpu_set_alphatestenable(true);
	draw_sprite_ext(light,0,px - (pref.image_angle == 90 ? 97.5 : pref.image_angle == -90 ? -97.5 : 0),py - (pref.image_angle == 0 ? 97.5 : pref.image_angle == 180 ? -97.5 : 0),.75,.75,pref.image_angle,c_white,1);
	draw_sprite_ext(light,0,px - (pref.image_angle == 90 ? -11 : pref.image_angle == -90 ? 11.5 : 0),py - (pref.image_angle == 0 ? -11 : pref.image_angle == 180 ? 11.5 : 0),.75,-.10,pref.image_angle,c_white,1);
	gpu_set_alphatestenable(false);
	gpu_set_blendmode(bm_normal);
	
	
}
else
{
    outline_color = [ 0, 0, 0 ];
}
j++;
}

// Portal white
if(portal_white > 0)
{
	gpu_set_blendmode(bm_normal);
	gpu_set_blendenable(false)
	gpu_set_colorwriteenable(false,false,false,true);
	draw_set_alpha(0);
	draw_rectangle_color(0,0, room_width,room_height, c_white,c_white,c_white,c_white,false);
	
	draw_set_alpha(1);
	draw_sprite_ext(sprite_index,image_index, x,y,small*spr_dir,small,0,c_white,(portal_white <= 10) ? (portal_white / 10) : 1);
	gpu_set_blendenable(true);
	gpu_set_colorwriteenable(true,true,true,true);
	
	gpu_set_blendmode_ext(bm_dest_alpha,bm_inv_dest_alpha);
	gpu_set_alphatestenable(true);
	draw_rectangle_color(0,0, room_width,room_height, c_white,c_white,c_white,c_white,false);
	gpu_set_alphatestenable(false);
	gpu_set_blendmode(bm_normal);
}



gpu_set_blendmode(bm_normal);
shader_end();