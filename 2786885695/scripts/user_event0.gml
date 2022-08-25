//user_event 0
//lyre playing

playing_lyre_timer ++;

if (playing_lyre_timer == -1) //lyre init
{
    cur_octwave = 0; //1: low | 2: mid | 3: high
    strong_down_counter = 0; //i need to do this cuz dan moment\
    temp_note = noone;
}
else //lyre update
{
    if (up_down) cur_octwave = 3;
    else if (down_down) cur_octwave = 1;
    else cur_octwave = 2;

    //the dan moment(tm)
    if (strong_down) strong_down_counter ++;
    else strong_down_counter = 0;

    //lyre controls
    //kinda limited but it works and it's very similar to the one in genshin so i don't care
    if (jump_pressed && jump_counter == 1)       note_input_show[0 + 7 * (cur_octwave - 1)] = note_show_time_set; // 0, 7 , 14
    if (attack_pressed && attack_counter == 1)   note_input_show[1 + 7 * (cur_octwave - 1)] = note_show_time_set; // 1, 8 , 15
    if (special_pressed && special_counter == 1) note_input_show[2 + 7 * (cur_octwave - 1)] = note_show_time_set; // 2, 9 , 16
    if (shield_pressed && shield_counter == 1)   note_input_show[3 + 7 * (cur_octwave - 1)] = note_show_time_set; // 3, 10, 17
    if (strong_down && strong_down_counter == 1) note_input_show[4 + 7 * (cur_octwave - 1)] = note_show_time_set; // 4, 11, 18
    if (left_pressed)                            note_input_show[5 + 7 * (cur_octwave - 1)] = note_show_time_set; // 5, 12, 19
    if (right_pressed)                           note_input_show[6 + 7 * (cur_octwave - 1)] = note_show_time_set; // 6, 13, 20

    //print (note_input_show)
    for (var note = 0; note < array_length(note_input_show); note ++)
    {
        //display button press timer
        if (note_input_show[note] > 0) note_input_show[note] --;

        //play sound
        if (note_input_show[note] == note_show_time_set-1)
        {
            switch (note)
            {
                case 0: case 7: case 14:  temp_note = sound_get(is_gb ? "lyre_note_a_gb" : "lyre_note_a"); break;
                case 1: case 8: case 15:  temp_note = sound_get(is_gb ? "lyre_note_b_gb" : "lyre_note_b"); break;
                case 2: case 9: case 16:  temp_note = sound_get(is_gb ? "lyre_note_c_gb" : "lyre_note_c"); break;
                case 3: case 10: case 17: temp_note = sound_get(is_gb ? "lyre_note_d_gb" : "lyre_note_d"); break;
                case 4: case 11: case 18: temp_note = sound_get(is_gb ? "lyre_note_e_gb" : "lyre_note_e"); break;
                case 5: case 12: case 19: temp_note = sound_get(is_gb ? "lyre_note_f_gb" : "lyre_note_f"); break;
                case 6: case 13: case 20: temp_note = sound_get(is_gb ? "lyre_note_g_gb" : "lyre_note_g"); break;
            }

            var pitch = cur_octwave == 3 ? 4 : cur_octwave; //alternatively:   power(2, (0 + note)/7); | power(2, (0 + note)/12); (this one is for 12 notes)
            sound_play(temp_note, false, 0, get_local_setting(4), pitch);
        }
    }
}