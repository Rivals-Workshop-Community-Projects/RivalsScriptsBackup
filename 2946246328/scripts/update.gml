if (get_synced_var(player)) {
	voice = 0;
	set_ui_element( UI_CHARSELECT, sprite_get( "alt" ));
} else { 
	voice = 1;
	set_ui_element( UI_CHARSELECT, sprite_get( "charselect" ));
}



if (!free || state_cat == SC_HITSTUN || state == PS_WALL_JUMP) {
	groundswitch = 0
}


if (state == PS_DASH && (state_timer % 10 == 0 or state_timer == 1))  {
    sound_stop(asset_get("sfx_dash_start"))
    sound_play(asset_get("sfx_dash_start"),false,noone,0.6, 1 + random_func(1,30,true)/100)
}

if (state == PS_WALK && (state_timer % 20 == 0 or state_timer == 1))  {
    sound_stop(asset_get("sfx_dash_start"))
    sound_play(asset_get("sfx_dash_start"),false,noone,0.6, 1 + random_func(1,30,true)/100)
}

if ((state == PS_DOUBLE_JUMP or state == PS_WALL_JUMP) && state_timer == 1)  {
    sound_stop(sound_get("wa2"))
    sound_play(sound_get("wa2"),false,noone,0.6, 1)
}



//if (state == PS_DOUBLE_JUMP and state_timer > 10) {
//	if (jump_pressed){
//	set_attack(AT_FSPECIAL);
//}
//
	
if (move_cooldown[AT_FSPECIAL] < 999 and !free){
	move_cooldown[AT_FSPECIAL] = 0
}

if (introTimer2 < 3) {
    introTimer2++;
} else {
    introTimer2 = 0;
    introTimer++;
}
//this increments introTimer every few frames, depending on the number entered

if (introTimer < 16) {
    draw_indicator = false;
} else {
    draw_indicator = true;
}
//this stops the overhead HUD from getting in the way of the animation. If your animation does not involve much movement, this may not be necessary.


//afterimage from zard
if (get_gameplay_time() mod 5 == 0) && ((state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR) && ((attack == AT_FSPECIAL && window > 1 && window < 3) || (attack == AT_USPECIAL)|| (attack == AT_EXTRA_1)))
afterimage_array[array_length_1d(afterimage_array)] = {x:x+draw_x, y:y+draw_y, spr_dir:spr_dir, sprite_index:sprite_index, image_index:image_index, rot:spr_angle, col:afterimage_colour, timer:0, timerMax:16};


var newArray = 0;
for (var i = 0; i < array_length_1d(afterimage_array); ++i)
{
    var obj = afterimage_array[i];
    if (++obj.timer <= obj.timerMax) newArray[array_length_1d(newArray)] = obj;
}
afterimage_array = newArray;