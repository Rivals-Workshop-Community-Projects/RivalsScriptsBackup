//other post draw
var smallMult = small_sprites?2:1;
if ("yeetimebreak" in self && yeetimebreak) {
    gpu_set_blendmode_ext_sepalpha(bm_inv_dest_color,bm_inv_src_color,bm_src_alpha,bm_src_alpha);
    gpu_set_colorwriteenable(true,true,true,true);
    draw_set_alpha(0.5);

	draw_circle_colour(other_player_id.x, other_player_id.y - floor(other_player_id.char_height/2), other_player_id.char_height*1.2, c_white, c_white, false);

    draw_set_alpha(1);
    gpu_set_colorwriteenable(true,true,true,true);
    gpu_set_blendmode(bm_normal);
	
	shader_start();
	draw_sprite_ext(sprite_index,image_index,x,y,spr_dir*smallMult,smallMult,0,c_white,1);
	shader_end()
}

if ("yeetimebreak2" in self && yeetimebreak2) {
	shader_start();
	draw_sprite_ext(sprite_index,image_index,x,y,spr_dir*smallMult,smallMult,0,c_white,1);
	shader_end()

    gpu_set_blendmode_ext_sepalpha(bm_inv_dest_color,bm_inv_src_color,bm_src_alpha,bm_src_alpha);
    gpu_set_colorwriteenable(true,true,true,true);
    draw_set_alpha(0.5);
	
	var radii0 = floor(char_height*ease_expoOut(0,7,floor(hitstop),floor(hitstop_full))/10);
	var radii = floor(char_height*ease_expoOut(0,10,floor(hitstop),floor(hitstop_full))/10);
	var radii2 = floor(char_height*ease_expoOut(0,17,floor(hitstop),floor(hitstop_full))/10);

	switch (other_player_id.b_shape)
	{
	case 1: // square
		draw_rectangle_colour(x-radii0, y-floor(char_height/2)-radii0, x+radii0, y-floor(char_height/2)+radii0, c_white, c_white, c_white, c_white, false);
		draw_rectangle_colour(x-radii, y-floor(char_height/2)-radii, x+radii, y-floor(char_height/2)+radii, c_white, c_white, c_white, c_white, false);
		draw_rectangle_colour(x-radii2, y-floor(char_height/2)-radii2, x+radii2, y-floor(char_height/2)+radii2, c_white, c_white, c_white, c_white, false);
		break;
	case 2: // diamond
		draw_rectangle(x,y-floor(char_height/2)-radii0,x,y-floor(char_height/2)+radii0,x-radii0,y-floor(char_height/2),x+radii0,y-floor(char_height/2),c_white);
		draw_rectangle(x,y-floor(char_height/2)-radii,x,y-floor(char_height/2)+radii,x-radii,y-floor(char_height/2),x+radii,y-floor(char_height/2),c_white);
		draw_rectangle(x,y-floor(char_height/2)-radii2,x,y-floor(char_height/2)+radii2,x-radii2,y-floor(char_height/2),x+radii2,y-floor(char_height/2),c_white);
		break;
	case 3: // triangle
		draw_tri(x,y-floor(char_height/2),radii0*1.5,radii2*3,c_white);
		draw_tri(x,y-floor(char_height/2),radii*1.5,radii2*3,c_white);
		draw_tri(x,y-floor(char_height/2),radii2*1.5,radii2*3,c_white);
		break;
	case 4: // spike
		draw_tri(x,y-floor(char_height/2),radii2,radii2*3,c_white);
		draw_tri(x,y-floor(char_height/2),radii2,radii2*3+60,c_white);
		break;
	default: // circle
		draw_circle_colour(x, y - floor(char_height/2), radii0, c_white, c_white, false);
		draw_circle_colour(x, y - floor(char_height/2), radii, c_white, c_white, false);
		draw_circle_colour(x, y - floor(char_height/2), radii2, c_white, c_white, false);
		break;
	}

    draw_set_alpha(1);
    gpu_set_colorwriteenable(true,true,true,true);
    gpu_set_blendmode(bm_normal);
	suppress_stage_music( 0.2, 0.05 );
}

if ("other_player_id" in self && "thevoid" in other_player_id && other_player_id.thevoid)
{
	draw_sprite_ext(sprite_index,image_index,x,y,spr_dir*smallMult,smallMult,0,c_black,1);
	if ("beast_deity" in other_player_id && !other_player_id.beast_deity)
		draw_sprite_ext(other_player_id.sprite_index,other_player_id.image_index,other_player_id.x,other_player_id.y,other_player_id.spr_dir,1,0,c_black,1);
}

if ("other_player_id" in self && "instakill" in other_player_id && other_player_id.instakill)
{
	draw_circle_colour(x, y - floor(char_height/2), char_height*1.2, c_white, c_white, false);
	draw_sprite_ext(sprite_index,image_index,x,y,spr_dir*smallMult,smallMult,0,c_white,1);
	draw_debug_text(x - 16,y - char_height - 8, "Crash");
	if ("beast_deity" in other_player_id && !other_player_id.beast_deity)
		draw_sprite_ext(other_player_id.sprite_index,other_player_id.image_index,other_player_id.x,other_player_id.y,other_player_id.spr_dir,1,0,c_white,1);
}

// Ori
if url == CH_ORI
{
	if attack == AT_DSPECIAL &&
	(state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) && !has_hit
	{
		switch (window)
		{
			case 2:
			bash_index = 0;
			bash_dir = -30;
			bash_end = false;
			case 1: draw_bash = 0;
			break;
			case 4:
			if bashed_proj != noone
			if bashed_proj.type != 2
			{
				draw_bash = 1;
				if window_timer >= 40 bash_index += 0.5;
				else if window_timer >= 59 draw_bash = 0;
			}
			bash_x = x;
			bash_y = y;
			if !joy_pad_idle bash_dir = joy_dir;
			break;
			case 5:
			if window_timer == 1
			{
				bash_index = 10;
				sound_play(asset_get("sfx_ori_bash_projectile"));
			}
			bash_end = true;
			if bashed_proj != noone
			if bashed_proj.type != 2
			{
				bashed_proj.hsp = lengthdir_x(10, bash_dir - 180);
				bashed_proj.vsp = lengthdir_y(10, bash_dir - 180);
			}
			draw_bash = 1;
			break;
		}
	}
	if bash_index >= 10 bash_index += 0.5;
	if bashed_proj != noone
	if bash_end && bashed_proj.type != 2 bashed_proj = noone;
	if (bashed_proj != noone && "type" in bashed_proj && bashed_proj.type == 2) || bash_index >= 22 || (bash_index < 10 &&
	(window != 4 && window != 5)) { draw_bash = 0; bash_index = 0;}
	shader_start();
	draw_sprite_ext(asset_get("bash_dir_spr"), floor(bash_index), bash_x+17*spr_dir, bash_y-12, 1, 1,
	bash_dir -45 , c_white, draw_bash);
	shader_end();
}

with (obj_article2)
{
	if ("other_player_id" in other && orig_player == other.other_player_id.player && other.other_player_id.counterid == other && !dummy && !tick)
	{
		var i = bm_src_alpha;
		var love = bm_inv_dest_color;
		var karu = bm_inv_src_color;
		var hikaru = bm_normal;
		gpu_set_blendmode_ext_sepalpha(love,karu,i,i);
		var you_furry = c_white;
		gpu_set_colorwriteenable(true,true,true,true);
		draw_set_alpha(0.5);
		draw_circle_colour(x, y, floor(size*0.5), you_furry, you_furry, false);
		draw_set_alpha(1);
		gpu_set_colorwriteenable(true,true,true,true);
		gpu_set_blendmode(hikaru);
		with (other.other_player_id)
		{
			if (state != PS_RESPAWN && state != PS_DEAD)
			{
				shader_start();
				draw_sprite_ext(sprite_index,image_index,x,y,spr_dir,1,0,c_white,1);
				shader_end();
			}
		}
		//draw_debug_text(x,y - 30, string(state));
	}
}

#define draw_rectangle(x1, y1, x2, y2, x3, y3, x4, y4, colour)
{
	draw_triangle_colour(x1, y1, x2, y2, x3, y3, colour, colour, colour, false);
	draw_triangle_colour(x1, y1, x2, y2, x4, y4, colour, colour, colour, false);
}

#define draw_tri(x, y, rad, deg, colour)
{
    var x1 = x + rad * sin(degtorad(0+deg));
    var y1 = y + rad * cos(degtorad(0+deg));
    var x2 = x + rad * sin(degtorad(120+deg));
    var y2 = y + rad * cos(degtorad(120+deg));
    var x3 = x + rad * sin(degtorad(240+deg));
    var y3 = y + rad * cos(degtorad(240+deg));
	draw_triangle_colour(x1, y1, x2, y2, x3, y3, colour, colour, colour, false);
}