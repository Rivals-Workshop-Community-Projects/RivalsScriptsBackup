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
//lol
if (attack == AT_USPECIAL)
{
	if (window_timer == 1 and window == 4) taunt_fstrong = false;
	
	if (taunt_down and window == 4)
	{
	    taunt_fstrong = true;
	}
	
	if (taunt_fstrong and window_timer == 1)
	{
	    sound_play(sound_get("hado"));
	    taunt_fstrong = false;
	}
}

if (attack == AT_NSPECIAL)
{
	if (window_timer == 1 and window == 1) taunt_fstrong = false;
	
	if (taunt_down and window == 1)
	{
	    taunt_fstrong = true;
	}
	
	if (taunt_fstrong and window_timer == 1)
	{
	    sound_play(sound_get("hado"));
	    taunt_fstrong = false;
	}
}

if (attack == AT_FSPECIAL)
{
	if (window_timer == 1 and window == 1) taunt_fstrong = false;
	
	if (taunt_down and window == 1)
	{
	    taunt_fstrong = true;
	}
	
	if (taunt_fstrong and window_timer == 1)
	{
	    sound_play(sound_get("tatsu"));
	    taunt_fstrong = false;
	}
}

if (attack == AT_USPECIAL)
{
	if (window_timer == 1 and window == 1) taunt_fstrong = false;
	
	if (taunt_down and window == 1)
	{
	    taunt_fstrong = true;
	}
	
	if (taunt_fstrong and window_timer == 1)
	{
	    sound_play(sound_get("shoru"));
	    taunt_fstrong = false;
	}
}

if (attack == AT_EXTRA_1)
{
	if (window_timer == 1 and window == 1) taunt_fstrong = false;
	
	if (taunt_down and window_timer == 1 and window == 1)
	{
	    taunt_fstrong = true;
	}
	
	if (taunt_fstrong and window == 1)
	{
	    sound_play(sound_get("dorya"));
	    taunt_fstrong = false;
	}
}