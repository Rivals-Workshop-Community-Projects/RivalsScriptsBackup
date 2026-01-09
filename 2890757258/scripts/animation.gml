//	animation.gml
//---------------------------------------------------------------------------------------

//	Fight Intro

var intro_time = get_gameplay_time();

if (intro_time <= 52 * 2 - 1) 
{
	sprite_index = sprite_get("intro");
	image_index = floor(intro_time/2);
}

//---------------------------------------------------------------------------------------
//	My stuff

switch (state)
{
	case PS_AIR_DODGE: 
		if (!free && image_index == 0)
		{
			sprite_index = sprite_get("jumpstart");
			image_index = 1;
		}
		break;
}

if (state== PS_ATTACK_GROUND && attack == AT_USTRONG && window == 2 && window_timer == 4) 
{ 
	//	5 is the frame_start, 3 is the number of frames                                         
	//	3 is the in-game frames per animation frame
    image_index = 2 + (strong_charge/4)%4;	
}

//	Genie Crawling
if (is_crawling && hsp != 0)
{
    var find_img_index 	= image_index;
    sprite_index 		= sprite_get("crawling");
    image_index 		= state_timer / 6;
}

//	A stupid Parry colour Fix
if (get_player_color(player) == 0)
{	
	changeAnim(spr_parry, sprite_get("parryfix"));
}

else
{
	changeAnim(spr_parry, sprite_get("parry"));
}

//---------------------------------------------------------------------------------------
//	Muno Stuff

//	make the nametag go higher while using ustrong
if (phone_attacking && attack == AT_USTRONG && window > 2 
&& !(window == 3 && window_timer > phone_window_end / 2))
{
	hud_offset = lerp(hud_offset, 80, 0.5);
}

// fix weird jittering that can happen when it tries to return to 0
if (abs(hud_offset) < 1)
{
	hud_offset = 0;
}

//---------------------------------------------------------------------------------------

#define changeAnim
{
	var old_spr = argument[0];
	var new_spr = argument[1];

	if (sprite_index == old_spr && old_spr != new_spr)
	{
		sprite_index = new_spr;
	}
}