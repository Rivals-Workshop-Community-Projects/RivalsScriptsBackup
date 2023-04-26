if (get_player_color( player ) == 17) {
    hue_offset += hue_speed;
	hue_offset = hue_offset mod 255; //keeps hue_offset within the 0-255 range

	color_rgb = make_color_rgb(225, 50, 50); //input rgb values here, uses rgb to create a gamemaker colour variable
	color_rgb2 = make_color_rgb(191, 194, 194);
	color_rgb3 = make_color_rgb(255, 204, 204);
	hue = (color_get_hue(color_rgb) + hue_offset) mod 255;//finds the hue and shifts it
	color_hsv = make_color_hsv(hue, color_get_saturation(color_rgb), color_get_value(color_rgb)); //creates a new gamemaker colour variable using the shifted hue
	color_hsv2 = make_color_hsv(hue, color_get_saturation(color_rgb2), color_get_value(color_rgb2));
	color_hsv3 = make_color_hsv(hue, color_get_saturation(color_rgb3), color_get_value(color_rgb3));
	set_color_profile_slot(17, 0, color_get_red(color_hsv2), color_get_green(color_hsv2), color_get_blue(color_hsv2)); //uses that variable to set the slot's new colours
	set_color_profile_slot(17, 2, color_get_red(color_hsv), color_get_green(color_hsv), color_get_blue(color_hsv)); //uses that variable to set the slot's new colours
	set_color_profile_slot(17, 5, 455-color_get_red(color_hsv), 455-color_get_green(color_hsv), 455-color_get_blue(color_hsv)); //uses that variable to set the slot's new colours
	set_color_profile_slot(17, 6, 455-color_get_red(color_hsv3), 455-color_get_green(color_hsv3), 455-color_get_blue(color_hsv3));
	set_article_color_slot(0, color_get_red(color_hsv2), color_get_green(color_hsv2), color_get_blue(color_hsv2), 1); //uses that variable to set the slot's new colours
	set_article_color_slot(2, color_get_red(color_hsv), color_get_green(color_hsv), color_get_blue(color_hsv), 1); //uses that variable to set the slot's new colours
	set_article_color_slot(5, 455-color_get_red(color_hsv), 455-color_get_green(color_hsv), 455-color_get_blue(color_hsv), 1);
	set_article_color_slot(6, color_get_red(color_hsv3), color_get_green(color_hsv3), color_get_blue(color_hsv3), 1);//uses that variable to set the slot's new colours
	init_shader();
}
if(get_player_color(player) != 10){
	outline_color = [0,0,0];
}
else{
	outline_color = [255,255,255];
}
init_shader();

//Hud Stuff
hudpos_x = ceil((hudpos_x+x-44*spr_dir) / 2);
if(oldSuit != curSuit) { oldSuit = curSuit; hudtimer = 20;}
if(hudtimer != 0) hudtimer --;

//USpecial stuff
if(!free || state == PS_WALL_JUMP || state == PS_HITSTUN)
{
	uspecUsed = false;
}
if(uspecUsed)
	move_cooldown[AT_USPECIAL] = 2;
//FSpec
if(fspecFreeze != 0 && fspecProj != noone)
{
	fspecFreeze --;
	if(fspecFreeze % 8 == 0)
	{
		create_hitbox(AT_FSPECIAL, 3, fspecProj.x, fspecProj.y);
		fspecJack++;
	}
	if(fspecFreeze == 0)
	{
		fspecProj.in_hitpause = false;
		fspecProj = noone;
		fspecJack = 0;
	}
}

if get_player_color(player) == 19{
	set_window_value(AT_TAUNT, 2, AG_WINDOW_SFX, sound_get("DS_jevil"));
}
if get_player_color(player) == 20{
	set_window_value(AT_TAUNT, 2, AG_WINDOW_SFX, sound_get("DS_lancer"));
}
if get_player_color(player) == 21{
	set_window_value(AT_TAUNT, 2, AG_WINDOW_SFX, sound_get("DS_ballyhoo"));
}
if get_player_color(player) == 22{
	set_window_value(AT_TAUNT, 2, AG_WINDOW_SFX, sound_get("DS_daroach"));
}
if get_player_color(player) == 23{
	set_window_value(AT_TAUNT, 2, AG_WINDOW_SFX, sound_get("DS_spamton"));
}
if get_player_color(player) == 24{
	set_window_value(AT_TAUNT, 2, AG_WINDOW_SFX, sound_get("DS_hamburger"));
}

//In training mode figure out
if (get_training_cpu_action() != CPU_FIGHT) 
{
	if(ds_Timer > 0)
		ds_Timer --;
	else
		ds_Msg = "";

	if(taunt_pressed && up_down && ds_Timer == 0)
	{
		ds_Lock = !ds_Lock;
		ds_Timer = 40;
		if(ds_Lock)
			ds_Msg = "Symbol Lock activated.";
		else
			ds_Msg = "Symbol Lock deactivated.";

	}
}

if (!cfToggle){
	cardFlipScale += 0.2;
	if (cardFlipScale < -1){
		cardFlipScale = -1;
	}
}
else{
	cardFlipScale -= 0.2;
	if (cardFlipScale > 1){
		cardFlipScale = 1;
	}
}

if(curSuit > 3)
	curSuit = 0;
if(hudtimer != 0)
	hudtimer --;
if (state != PS_ATTACK_GROUND)
	sound_stop(sound_get("DS_Acumalaka"));

randomizeSFX = 0.975+(random_func(1, 1, false)/20);