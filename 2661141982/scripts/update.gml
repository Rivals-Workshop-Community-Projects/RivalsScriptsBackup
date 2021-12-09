//
// afterimage
if (afterImageTimer > 0)
{
    afterImage[afterImageTimer-1]={sprite_index:sprite_index,image_index:image_index,x:x,y:y,spr_dir:spr_dir,alpha:5};
    afterImageTimer--;
}
for (var i = 0; i < afterImageMax; ++i) if (afterImage[i] != -1 && afterImage[i].alpha > 0) afterImage[i].alpha--;

if(ewgf_timer > 0)
    ewgf_timer --;
else
    ewgf_input = -1

if(state != PS_ATTACK_AIR && attack != AT_USPECIAL)
    shoryu_obj = -1;

if(lure_timer != 0)
{    lure_timer --; lure_fade = 1; hud_offset = 24;}
else
{
    lure_fade -= 0.1;
}

if(lure_timer == 1)
{
    sound_play(sound_get("lightready2"));
    white_flash_timer = 8;
}

//Secret Alts
if(state == PS_SPAWN)
{
	if(get_player_color(player) == 24)
	{
		switch(alt1_secret)
		{
			case 0:
			case 1: if(jump_pressed) { alt1_secret++; clear_button_buffer(PC_JUMP_PRESSED) }  break;
			case 2: if(right_pressed && spr_dir == 1 || left_pressed && spr_dir == -1) { alt1_secret++;}  break;
			case 3: if(attack_pressed) { alt1_secret++;} break;
			case 4: if(special_pressed) 
			{ 
				alt2_secret = 0;
				// Duckers
				set_color_profile_slot( 24, 0, 255, 251, 0 ); //Skin
				set_color_profile_slot( 24, 1, 255, 106, 0 ); //Fins
				set_color_profile_slot( 24, 2, 255, 140, 243 ); //Marks
				set_color_profile_slot( 24, 3, 0, 255, 255 ); //Light
				set_color_profile_slot( 24, 4, 255, 255, 255 ); //Skin 2
				set_color_profile_slot( 24, 5, 145, 0, 0 ); //water
				set_article_color_slot(3, 0, 255, 255 ); //Light
				set_article_color_slot(5, 145, 0, 0 ); //water
				set_victory_portrait(sprite_get("secretduckyportrait"));
				init_shader();
			}  break;
		}
		switch(alt2_secret)
		{
			case 0: if(down_down) alt2_secret ++; break;
			case 1: if(down_down && (left_pressed && spr_dir == 1 || right_pressed && spr_dir == -1)) alt2_secret ++; break;
			case 2: if(left_down && spr_dir == 1 || right_down && spr_dir == -1) alt2_secret ++; break;
			case 3: 
			if(special_pressed)
			{
				alt1_secret = 0;
				set_color_profile_slot( 24, 0, 162, 50, 13 ); //Skin
				set_color_profile_slot( 24, 1, 99, 89, 107 ); //Fins
				set_color_profile_slot( 24, 2, 99, 89, 107 ); //Marks
				set_color_profile_slot( 24, 3, 255, 213, 0 ); //Light
				set_color_profile_slot( 24, 4, 255, 207, 90 ); //Skin 2
				set_color_profile_slot( 24, 5, 255, 221, 0 ); //water
				set_article_color_slot(3, 255, 213, 0 ); //Light
				set_article_color_slot(5, 255, 221, 0 ); //water
				init_shader();
			}
		}
	}
}

if(taunt_down && shield_down)
	set_victory_portrait(sprite_get("passivefishe"));
else if(alt1_secret != 4)
	set_victory_portrait(sprite_get("portrait"));
//lol

//Taunt SFX
if(taunt_down && window == 1 && window_timer == 1)
{
	if (attack == AT_NSPECIAL) { if(get_player_color(player) == 24) sound_play(sound_get("nspecial")); else sound_play(sound_get("hado")); }
	if (attack == AT_FSPECIAL) { if(get_player_color(player) == 24) sound_play(sound_get("fspecial")); else sound_play(sound_get("tatsu")); }
	if (attack == AT_USPECIAL) { if(get_player_color(player) == 24) sound_play(sound_get("uspecial")); else sound_play(sound_get("shoru")); }
	if (attack == AT_EXTRA_1) sound_play(sound_get("dorya"));
}