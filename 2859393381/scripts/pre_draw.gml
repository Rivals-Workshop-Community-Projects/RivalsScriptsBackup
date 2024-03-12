if ((state = PS_ATTACK_GROUND || state = PS_ATTACK_AIR) && attack = AT_EXTRA_1) 
{
        if (window = 1) draw_set_alpha((0+window_timer/8)/3);
        else if (window = 5) draw_set_alpha((1-window_timer/6)/3);
        else draw_set_alpha(1/3);
        draw_rectangle_colour(view_get_xview(), view_get_yview(), view_get_xview()+view_get_wview(), view_get_yview()+view_get_hview(), c_black, c_black, c_black, c_black, false);
        draw_set_alpha(1);
}

if (just_a_theory) 
{
	if (theory_length < 40)
	{
		theory_sprite = draw_sprite_ext(sprite_get("matpat_tribute"), floor(theory_length/(40/9)), theorx, theory, 2, 2, 0, c_white, 1);
	}
	else if (theory_length < 70)
	{
		theory_sprite = draw_sprite_ext(sprite_get("matpat_tribute"), min(floor(9+((theory_length-42)/(30/11))), 16), theorx, theory, 2, 2, 0, c_white, 1);
	}
	else if (theory_length < 90)
	{
		theory_sprite = draw_sprite_ext(sprite_get("matpat_tribute"), min(floor(16+((theory_length-70)/5)), 19), theorx, theory, 2, 2, 0, c_white, 1);
	}
	else if (theory_length < 150)
	{
		theory_sprite = draw_sprite_ext(sprite_get("matpat_tribute"), 19, theorx, theory, theory_length/30-1, theory_length/30-1, round(sqr(1+((theory_length-90)/5))-1), c_white, 1- ((theory_length-90)/60) );
	}
	else	
	{
		just_a_theory = false;
	}
	theory_length++;
	if (theory_length < 90) player_i_hit.depth = depth+1
	else player_i_hit.depth = depth-1

}

// afterimage
for (var i = 0; i < array_length_1d(afterimage_array); ++i)
{
    var obj = afterimage_array[i];
    gpu_set_fog(1, obj.col, 0, 1);
    draw_sprite_ext(obj.sprite_index, obj.image_index, obj.x, obj.y, obj.spr_dir*(1+small_sprites), 1+small_sprites, obj.rot, obj.col, 1-obj.timer/obj.timerMax);
}
gpu_set_fog(0, c_white, 0, 0);



if (turnabout && turnaboutID == self)
{
    suppress_stage_music(0, 0.1);
    if (cornered_segment == 0 && cornered_timer == 0)
    {
        cornered_segment = 1;
        if (get_player_color(player) == 14) // saul
        {
            cornered_sound = sound_play(sound_get("saul_intro"), 0, 0, cornered_volume, 1,);
            song_type = 1;
        }
        else if (get_player_color(player) == 15) // matpat
        {
            cornered_sound = sound_play(sound_get("matpat_intro"), 0, 0, cornered_volume, 1,);
            song_type = 2;
        }
        else // phoenix
        {
            cornered_sound = sound_play(sound_get("cornered_intro"), 0, 0, cornered_volume, 1,);
            song_type = 0;
        }
    }
    if (cornered_segment == 1) switch (song_type)
    {
        default: // phoenix theme
            if (cornered_timer >= 371) //371
            {
                cornered_segment = 2;
                cornered_timer = 0;
                cornered_sound = sound_play(sound_get("cornered"), 1, 0, cornered_volume, 1,);
            } 
            break;
        case 1: // saul theme
            if (cornered_timer >= 179) //179
            {
                cornered_segment = 2;
                cornered_timer = 0;
                cornered_sound = sound_play(sound_get("saul"), 1, 0, cornered_volume, 1,);
            }  
            break;
        case 2: // matpat theme
            if (cornered_timer >= 161) //161
            {
                cornered_segment = 2;
                cornered_timer = 0;
                cornered_sound = sound_play(sound_get("matpat"), 1, 0, cornered_volume, 1,);
            }  
            break;
    }
    if (cornered_segment > 0) cornered_timer++;
}
else
{
    if (cornered_sound != noone)
    {
        if (turnaboutID == self)
        {
            var handOver = noone;
            with (oPlayer) if ("turnaboutID" in self && "turnabout" in self && turnabout) //with other player, if turnabout
            {
                handOver = self; //hands over turnabout song ater turnabout ends
                cornered_segment = other.cornered_segment;
                cornered_timer = other.cornered_timer;
                cornered_sound = other.cornered_sound;
                song_type = other.song_type;
                break;
            }
            if (handOver == noone) //no one in turnabout (no one to handover too)
            {
                sound_stop(cornered_sound);
            }
            else
            {
                with (oPlayer) if ("turnaboutID" in self) turnaboutID = handOver; //if someone = handover, set turnabout id to them
            }
        }
        else sound_stop(cornered_sound);
        cornered_sound = noone;
    }
}
