//post draw
if ("mutebg" in self && mutebg) suppress_stage_music( 0, 0.05 );

if ("fspeccoolhud" in self && fspeccoolhud)
{
	draw_debug_text(x - 64, y + 16, "FSpec Cooldown: "+string(move_cooldown[AT_FSPECIAL]));
	draw_debug_text(x - 64, y + 32, "USpec Timer: "+string(uspec_timer));
}

if ("transformeffect" in self && transformeffect)
{
	transformeffect = false;
	transformeffecttime = 15;
	drawxx = x;
	drawyy = y;
}

if ("transformeffecttime" in self && transformeffecttime > 0)
{
	draw_sprite_ext(sprite_get("transform"), (5 - transformeffecttime / 3), drawxx, drawyy, 1, 1, 0, c_white, 1);
	--transformeffecttime;
}

if ("as_charging" in self && as_charging)
{
	shader_start();
	draw_sprite_ext(sprite_get("swirl"), get_gameplay_time()/4, x+38*spr_dir, y-30, spr_dir, 1, 0, c_white, 1);
	shader_end();
}

if ("alts" in self && get_player_color(tempplayer) == 15 && ((get_gameplay_time() >= 68 && get_gameplay_time() < 120) || object_index == oTestPlayer))
{
	if (object_index != oTestPlayer) draw_set_alpha(lerp(1,0,(get_gameplay_time()-100)/(120-100)));
	draw_debug_text(x-30, y, string(altnum)+". "+string(alts[altnum].name));
	draw_set_alpha(1);
}

if ("auraalpha" in self && auraalpha != 0 && draw_indicator && aura)
{
	var sprite = sprite_get("playful");
	var specialcolour = c_white;
	draw_set_alpha(auraalpha);
	shader_start();
	draw_sprite_ext(sprite, get_gameplay_time()*.1, x, y-char_height*.7+floor(auraalpha*4)*2-8, 1, 1, 0, specialcolour, 1);
	shader_end();
	draw_set_alpha(1);
}

if ("auraburn" in self && auraburn != 0 && draw_indicator && !aura)
{
	var sprite = sprite_get("playful2");
	var specialcolour = c_white;
	shader_start();
	draw_sprite_ext(sprite, 11-auraburn/2, x, y-char_height*.7, 1, 1, 0, specialcolour, 1);
	shader_end();
}

if (move_cooldown[AT_DSPECIAL_2] != 0 && draw_indicator)
{
	var fadeFrames = 6;
	var funnyNumber = clamp(abs(50-move_cooldown[AT_DSPECIAL_2])-(50-fadeFrames), 0, fadeFrames);
    draw_set_alpha(1-funnyNumber/fadeFrames);
	var col = make_colour_rgb(255*(move_cooldown[AT_DSPECIAL_2]/100),
						  255*((100-move_cooldown[AT_DSPECIAL_2])/100),
						  0);
	var blackred = (dspeccancelled&&!(attack==AT_DSPECIAL_2||attack==AT_DSPECIAL_AIR)?c_white:c_black);
	draw_rectangle_colour(x-27+dspecshiver, y-char_height-18-floor(funnyNumber*0.5)*2, x+27+dspecshiver, y-char_height-10-floor(funnyNumber*0.5)*2, blackred, blackred, blackred, blackred, false);
	draw_rectangle_colour(x-25+dspecshiver, y-char_height-16-floor(funnyNumber*0.5)*2, x+floor(ease_quadOut(0, 100, move_cooldown[AT_DSPECIAL_2], 100)*0.25)*2-25+dspecshiver, y-char_height-12-floor(funnyNumber*0.5)*2, col, col, col, col, false);
    draw_set_alpha(1);
}

shader_start();
if (beast_deity && random_func(0, 15, 1) == 0 && beast_state == 7)
{
	var temp_dir = spr_dir;
	spr_dir = 1;
	var randx = random_func( 1, room_width, 1);
	var randy = random_func( 2, room_height, 1); // ayy it's randy
	if (random_func(3, 2, 1))
		spawn_hit_fx( randx, randy, curse_effect );
	else
		spawn_hit_fx( randx, randy, fire_effect );
	spr_dir = temp_dir;
}
shader_end();

if (beast_deity)
{
	with (pHitBox)
	{
		if (attack == AT_EXTRA_3 && hbox_num == 3 && vsp < 0)
			draw_sprite_ext(asset_get("rock_pillar_spr"), 1, x, 0, 1, 1, 0, c_gray, 0.5);
	}
}

var yeettt = (get_hitbox_value(AT_NSPECIAL, 3, HG_VISUAL_EFFECT_Y_OFFSET) == -100);
with (pHitBox) {
    if (attack == AT_NSPECIAL && hbox_num == 3 && yeettt && other.walksword && player_id == other.id && asset_get("sword_walk_sword")){
		draw_sprite_ext(asset_get("sword_walk_sword"),hitbox_timer * 0.2,x,y, spr_dir, 1, 0, -1, 1);
    }
}

if ("thevoid" in self && thevoid)
{
	draw_sprite_ext(sprite_index,image_index,x,y,spr_dir,1,0,c_black,1);
}

if ("timebreak" in self && timebreak && counterid && instance_exists(counterid)) {
    gpu_set_blendmode_ext_sepalpha(bm_inv_dest_color,bm_inv_src_color,bm_src_alpha,bm_src_alpha);
    gpu_set_colorwriteenable(true,true,true,true);
    draw_set_alpha(0.5);
	
	if (beast_deity)
		zawarudotime = zawarudomaxtime;
	//draw_circle_colour(counterid.x, counterid.y - floor(counterid.char_height/2), counterid.char_height*(zawarudotime/zawarudomaxtime)*1.2, c_white, c_white, false);
	draw_circle_colour(counterid.x, counterid.y - floor(counterid.char_height/2), counterid.char_height*ease_expoOut(0,12,zawarudotime,zawarudomaxtime)/10, c_white, c_white, false);

    draw_set_alpha(1);
    gpu_set_colorwriteenable(true,true,true,true);
    gpu_set_blendmode(bm_normal);
	
	shader_start();
	draw_sprite_ext(sprite_index,image_index,x,y,spr_dir,1,0,c_white,1);
	shader_end()
}

if ("state" in self && state == PS_ATTACK_GROUND && attack == AT_NTHROW)
{
	suppress_stage_music( 0, 0.05 );
	var colourr = c_white;
	switch (round((get_gameplay_time() / 20)) % 7)
	{
	case 0:
		colourr = c_red;
		break;
	case 1:
		colourr = c_lime;
		break;
	case 2:
		colourr = c_blue;
		break;
	case 3:
		colourr = c_orange;
		break;
	case 4:
		colourr = c_fuchsia;
		break;
	case 5:
		colourr = c_yellow;
		break;
	case 6:
		colourr = c_aqua;
		break;
	}
    draw_set_alpha(0.2);
    draw_rectangle_color(0,0,room_width,room_height,colourr,colourr,colourr,colourr,false);
    draw_set_alpha(1);
}

with (obj_article2)
{
	if ("orig_player" in self && orig_player == other.player && "counterid" in other && other.counterid != noone && (other.counterid.state == PS_RESPAWN || other.counterid.state == PS_DEAD) && "dummy" in self && !dummy && !tick)
	{
		var i = bm_src_alpha;
		var love = bm_inv_dest_color;
		var karu = bm_inv_src_color;
		var hikaru = bm_normal;
		gpu_set_blendmode_ext_sepalpha(love,karu,i,i);
		var you_furry = c_white;
		gpu_set_colorwriteenable(true,true,true,true);
		draw_circle_colour(x, y, floor(size*0.5), you_furry, you_furry, false);
		gpu_set_colorwriteenable(true,true,true,true);
		gpu_set_blendmode(hikaru);
		with (other)
		{
			if (state != PS_RESPAWN && state != PS_DEAD)
			{
				shader_start();
				draw_sprite_ext(sprite_index,image_index,x,y,spr_dir,1,0,c_white,1);
				shader_end();
			}
		}
	}
}

//with (oPlayer)
//{
//	if (can_attack)
//	{
//		draw_set_alpha(0.5);
//		draw_rectangle(x, y, x, y-char_height, x-50, y - char_height/2, x+50, y - char_height/2, c_white);
//		draw_set_alpha(1);
//	}
//}

#define draw_rectangle(x1, y1, x2, y2, x3, y3, x4, y4, colour)
{
	draw_triangle_colour(x1, y1, x2, y2, x3, y3, colour, colour, colour, false);
	draw_triangle_colour(x1, y1, x2, y2, x4, y4, colour, colour, colour, false);
}