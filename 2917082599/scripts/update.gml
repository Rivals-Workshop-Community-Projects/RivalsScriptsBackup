user_event(9); //Leave this at the top of update.
//UPDATE GML
//if (!free || state_cat == SC_HITSTUN || state == PS_WALL_JUMP) {
//	groundswitch = 0
//    uspec_used = false;
//}
init_shader();

if state == PS_RESPAWN
	{
	    if state_timer == 0
	    {
	    		sound_play(sound_get("revive_mad"),false, noone,  1.5, 1);  
	    }
	}
	
if (state == PS_DASH && (state_timer % 10 == 0 or state_timer == 1))  {
    sound_stop(asset_get("sfx_dash_start"))
    sound_play(asset_get("sfx_dash_start"),false,noone,0.6, 1 + random_func(1,30,true)/100)
}

//if(state == PS_RESPAWN) 
//{
//	dashes = 0;
//}

if (attack == AT_FSPECIAL ||attack == AT_USPECIAL ||attack == AT_DSPECIAL){
	if (window >= 1){
		if(get_gameplay_time()% 2 == 0) 
        CreateAfterimage();
	}
}
if (!free){
	dashes = 1;
	crystalair = 0;
	dspecialboost = 0;
}
if (crystalair == 2){
	move_cooldown[AT_NSPECIAL] = 40;
}


if (dspecialboost == 1 || dspecialboost == 2){
	set_window_value(AT_DSPECIAL_2, 1, AG_WINDOW_VSPEED, -1);
	set_window_value(AT_DSPECIAL_2, 1, AG_WINDOW_VSPEED_TYPE, 0);
	set_window_value(AT_DSPECIAL_2, 1, AG_WINDOW_HSPEED, 0);
	set_window_value(AT_DSPECIAL_2, 1, AG_WINDOW_HSPEED_TYPE, 0);
}
if (dspecialboost == 0){
	set_window_value(AT_DSPECIAL_2, 1, AG_WINDOW_VSPEED, -6);
	set_window_value(AT_DSPECIAL_2, 1, AG_WINDOW_VSPEED_TYPE, 1);
	set_window_value(AT_DSPECIAL_2, 1, AG_WINDOW_HSPEED, -6);
	set_window_value(AT_DSPECIAL_2, 1, AG_WINDOW_HSPEED_TYPE, 1);
}

if (dashes == 2){
	move_cooldown[AT_DSPECIAL] = 0;
    move_cooldown[AT_USPECIAL] = 0;
    move_cooldown[AT_FSPECIAL] = 0;
    set_window_value(AT_FSPECIAL, 1, AG_WINDOW_SFX, sound_get("dash_2"));
    set_window_value(AT_USPECIAL, 1, AG_WINDOW_SFX, sound_get("dash_2"));
    set_window_value(AT_DSPECIAL, 1, AG_WINDOW_SFX, sound_get("dash_2"));
}
if (dashes == 1){
	move_cooldown[AT_DSPECIAL] = 0;
    move_cooldown[AT_USPECIAL] = 0;
    //move_cooldown[AT_FSPECIAL] = 0;
    set_window_value(AT_FSPECIAL, 1, AG_WINDOW_SFX, sound_get("dash_1"));
    set_window_value(AT_USPECIAL, 1, AG_WINDOW_SFX, sound_get("dash_1"));
    set_window_value(AT_DSPECIAL, 1, AG_WINDOW_SFX, sound_get("dash_1"));

}
	// Once per airtime crystal
///if (move_cooldown[AT_NSPECIAL] < 999 and !free) {move_cooldown[AT_NSPECIAL] = 0}

// update afterimage array
var newArray = 0;
for (var i = 0; i < array_length_1d(afterimage_array); ++i)
{
    var obj = afterimage_array[i];
    if (++obj.timer <= obj.timerMax) newArray[array_length_1d(newArray)] = obj;
}
afterimage_array = newArray;

//intro
if (introTimer2 < 3) {
    introTimer2++;
} else {
    introTimer2 = 0;
    introTimer++;
}
//this increments introTimer every few frames, depending on the number entered

if (introTimer < 14) {
    draw_indicator = false;
} else {
    draw_indicator = true;
}
//this stops the overhead HUD from getting in the way of the animation. If your animation does not involve much movement, this may not be necessary.
#define CreateAfterimage()
{
    afterimage_array[array_length_1d(afterimage_array)] = {x:x+draw_x, y:y+draw_y, spr_dir:spr_dir, sprite_index:sprite_index, image_index:image_index, rot:spr_angle, col:/*#*/$FF901E , timer:0, timerMax:20};
}

/*
if ((state == PS_DOUBLE_JUMP or state == PS_WALL_JUMP) && state_timer == 1)  {
    sound_stop(sound_get("ha"))
    sound_play(sound_get("ha"),false,noone,0.6, 1)
}

if (state == PS_FIRST_JUMP && state_timer == 1)  {
    sound_stop(sound_get("hoo"))
    sound_play(sound_get("hoo"),false,noone,0.6, 1 + random_func(1,30,true)/100)
}


