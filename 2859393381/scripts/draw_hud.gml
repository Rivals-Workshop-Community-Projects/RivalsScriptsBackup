if ("strong_notif_timer" not in self) exit;

shader_start();
if (strong_notif_timer > 0 && good_evidence_count > 0) draw_debug_text(temp_x,temp_y-56 - floor((120-strong_notif_timer)/8),"+Strong Attacks");

if (get_gameplay_time() <= 120 && !cornered_disabled) draw_debug_text(temp_x,temp_y-56,"TAUNT: Mute Phoenix Music");

if (turnabout)
{
    draw_sprite_ext(sprite_get("turnabout_bar"), turnabout, temp_x+62, temp_y-8, 1, 1, 0, c_white, 1);
    draw_rectangle_colour(temp_x+(124*(turnabout_timer/turnabout_timer_max)), temp_y-10, temp_x+123, temp_y-3, c_black, c_black, c_black, c_black, false);
}

shader_end();

draw_sprite_ext(sprite_get("mode_icon"), turnabout, temp_x+126, temp_y, 1, 1, 0, c_white, 1);

draw_sprite_ext(sprite_get("evidence_slot"), evidence1_status, temp_x+20, temp_y-(turnabout*12), 1, 1, 0, c_white, 1);
draw_sprite_ext(sprite_get("evidence_slot"), evidence2_status, temp_x+62, temp_y-(turnabout*12), 1, 1, 0, c_white, 1);
draw_sprite_ext(sprite_get("evidence_slot"), evidence3_status, temp_x+104, temp_y-(turnabout*12), 1, 1, 0, c_white, 1);

if (evidence1_status != 0) draw_sprite_ext(sprite_get("evidence_icons"), evidence1-1, temp_x+20, temp_y-16-(turnabout*12), 1, 1, 0, c_white, 1);
if (evidence2_status != 0) draw_sprite_ext(sprite_get("evidence_icons"), evidence2-1, temp_x+62, temp_y-16-(turnabout*12), 1, 1, 0, c_white, 1);
if (evidence3_status != 0) draw_sprite_ext(sprite_get("evidence_icons"), evidence3-1, temp_x+104, temp_y-16-(turnabout*12), 1, 1, 0, c_white, 1);

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