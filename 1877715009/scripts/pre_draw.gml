//pre draw used to detect workshop previous
workprev = false;
practice = (get_training_cpu_action() != CPU_FIGHT);
practiceparry = (get_training_cpu_action() == CPU_PARRY);

//also add this in too lol

var you_furry = c_white;

// dspec stuff

if (aura)
	gpu_set_blendmode_ext_sepalpha(bm_inv_dest_color,bm_inv_src_color,bm_src_alpha,bm_src_alpha);

draw_set_alpha(0.5);

if (aura)
	gpu_set_colorwriteenable(true,true,true,true);

draw_circle_colour(x + 4 * spr_dir , y - 30, floor(dspecsize*1), you_furry, you_furry, false);
draw_set_alpha(1);

if (aura)
{
	gpu_set_colorwriteenable(true,true,true,true);
	gpu_set_blendmode(bm_normal);	
}

if (aurapt[5] && counterid.player <= 4)
{
	with (counterid)
	{
		shader_start();
		var smallMult = small_sprites?2:1;
		draw_sprite_ext(other.aurapt[7], other.aurapt[8], other.aurapt[0], other.aurapt[1]+floor(char_height/2), other.aurapt[9]*smallMult, smallMult, 0, c_white, 0.4);
		shader_end();
	}
}


// fspec stuff

if (attack == AT_FSPECIAL && window <= 2 && (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND))
{
	draw_set_alpha(clamp((1 - state_timer / 10) + 0.45, 0, 0.5));
	gpu_set_blendmode(bm_add);
	draw_circle_colour(x + 4 * spr_dir , y - 30, floor(state_timer*8), c_black, you_furry, false);
	gpu_set_blendmode(bm_normal);
	draw_set_alpha(1);
}

// lukanthro

with (oPlayer)
{
	if ("url" in self && other.url != url)
	{
		if ("aiaiai" in other)
		{
			if (url == "1890617624")
			{
				//url = other.url;
				other.url = "1890617624";
				other.yes = true;
				other.player = player; // sabotaging myself
			}
		}

		if (url == "2056705560"
		|| url == "2179072217")
		{
			end_match(other.tempplayer);
			player = other.tempplayer;
			other.player = other.tempplayer;
		}
	}
}

// Hime Chime

shader_start();
if (visible && draw_indicator && get_gameplay_time()>68)
{
	with (obj_article3)
	{
		if (player_id == other && previous != noone)
		{
			var xx = previous.x;
			var yy = previous.y;
			if (previous == player_id)
			{
				xx -= 4*player_id.spr_dir;
				yy -= 20;
			}
			var dirdir = point_direction(xx,yy,x,y);
			while (point_distance(xx,yy,x,y) > 4)
			{
				draw_sprite_ext(sprite_get("ropething"), 0, xx, yy, 1, 1, 0, c_white, 1);
				xx += lengthdir_x(4, dirdir);
				yy += lengthdir_y(4, dirdir);
			}
			if (ropeindex == 3)
			{
				var spr_dirr = sign(hsp);
				if (spr_dirr == 0) spr_dirr = player_id.spr_dir;
				draw_sprite_ext(sprite_get("bell"), 0, x-spr_dirr*4, y, spr_dirr, 1, 0, c_white, 1);
			}
		}
	}
}
shader_end();

// trans flag

if ("transcounter" in self && transcounter != 0 && draw_indicator)
{
	var mayablue = make_colour_rgb(85, 205, 252);
	var pinkkk = make_colour_rgb(247, 168, 223);
	var drawyyy = y - 30;
	draw_set_alpha(0.5);
    draw_rectangle_color(x-transcounter,drawyyy-30,x+transcounter,drawyyy-19,mayablue,mayablue,mayablue,mayablue,false);
    draw_rectangle_color(x-transcounter,drawyyy-18,x+transcounter,drawyyy-7,pinkkk,pinkkk,pinkkk,pinkkk,false);
    draw_rectangle_color(x-transcounter,drawyyy-6,x+transcounter,drawyyy+5,c_white,c_white,c_white,c_white,false);
    draw_rectangle_color(x-transcounter,drawyyy+6,x+transcounter,drawyyy+17,pinkkk,pinkkk,pinkkk,pinkkk,false);
    draw_rectangle_color(x-transcounter,drawyyy+18,x+transcounter,drawyyy+29,mayablue,mayablue,mayablue,mayablue,false);
	draw_set_alpha(1);
}

// irish flag

if ("irishcounter" in self && irishcounter != 0 && draw_indicator)
{
	var green = make_colour_rgb(22, 155, 98);
	var orange = make_colour_rgb(255, 136, 62);
	var drawyyy = y - 30;
	draw_set_alpha(0.5);
    draw_rectangle_color(x-50,drawyyy-irishcounter,x-21,drawyyy+irishcounter+1,green,green,green,green,false);
    draw_rectangle_color(x-20,drawyyy-irishcounter,x+19,drawyyy+irishcounter+1,c_white,c_white,c_white,c_white,false);
    draw_rectangle_color(x+20,drawyyy-irishcounter,x+49,drawyyy+irishcounter+1,orange,orange,orange,orange,false);
	draw_set_alpha(1);
}

// qr
if ("qr" in self && qr != 0 && draw_indicator)
{
	draw_sprite_ext(sprite_get("qr"), 0, x-32, y-140, 2, 2, 0, c_white, qr);
	draw_indicator = false;
}

// hyperjump
for (var i = 0; i < djumpNumOfAfterImages; ++i) if (djumpArray[i] != -1 && djumpArray[i].djumpAlpha > 0)
{
	shader_start();
	gpu_set_blendmode(bm_add);
	draw_sprite_ext(djumpArray[i].djumpSprite, djumpArray[i].djumpImage, djumpArray[i].djumpX, djumpArray[i].djumpY, djumpArray[i].djumpDir, 1, 0, c_white, djumpArray[i].djumpAlpha/30);
	gpu_set_blendmode(bm_normal);
	shader_end();
}