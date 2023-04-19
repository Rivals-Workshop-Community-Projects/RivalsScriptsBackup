#macro NOTE_NONE -1
#macro NOTE_WEAK 0
#macro NOTE_MED 1
#macro NOTE_STRONG 2
#macro NOTE_SYNC -2

var note_data = ds_map_find_value(note_mappings, my_hitboxID.attack);
var unique = array_find_index(unique_hitboxes, my_hitboxID.hbox_num) == -1; 

if (note_data != undefined and notes[3] == -1 and unique) {
    var note_to_add = note_data[my_hitboxID.hbox_num - 1];
    last_note = append_note(note_to_add)
    array_push(unique_hitboxes, my_hitboxID.hbox_num);
    
    if note_to_add != NOTE_NONE {
        var ang = random_func(4,360,true);
        var numparts = 7
        var vfx = note_trail;
        switch last_note {
            case 0:
                vfx = note_trail_purple
            break;
            case 2:
                vfx = note_trail_orange
            break;
        }
        
        repeat (numparts) {
            var part = spawn_hit_fx(hit_player_obj.x + lengthdir_x(30,ang), hit_player_obj.y - (hit_player_obj.char_height/2) + lengthdir_y(30,ang),vfx)
            part.hsp = lengthdir_x(5,ang);
            part.vsp = lengthdir_y(5,ang);
            ang += 360/numparts
        }    
    }

}

switch (my_hitboxID.attack)
{
    case AT_DSPECIAL:
        sound_play(asset_get("sfx_ori_energyhit_heavy"),false,noone,0.7,0.96)
    break;
    case AT_NSPECIAL:
        if my_hitboxID.hbox_num == 2 {
            sound_play(sound_get("sfx_purple_nspecial_hit"))
        } else if (my_hitboxID.hbox_num == 5) {
            sound_play(asset_get("sfx_blow_heavy2"),false,noone,0.8,1.1)
        }
    break;
    case AT_USTRONG:
        if (my_hitboxID.hbox_num == 1) break;
    case AT_DSTRONG:
        sound_play(sound_get("sfx_tambo_slap1"), false,noone, 0.25, 0.95)
        sound_play(sound_get("sfx_cymbal_crash"),false, noone, 0.4, 1.2)        
    break;
    case AT_FSTRONG:
        if (my_hitboxID.hbox_num == 1) {
            sound_play(asset_get("sfx_blow_medium2"),false,noone,0.7,1.1)
        }
        else {
            sound_play(sound_get("sfx_nspecial_note_2"))
            sound_play(sound_get("sfx_tambo_slap1"), false,noone, 0.25, 0.95)
            sound_play(sound_get("sfx_cymbal_crash"),false, noone, 0.4, 1.2)
        }
    break;
    case AT_NAIR:
        if (my_hitboxID.hbox_num == 2) sound_play(sound_get("sfx_nspecial_note_3"), false, noone, 0.7, 1);
    break;
    case AT_FAIR:
        if (my_hitboxID.hbox_num == 1)
        {
            should_create_shockwave = false;
            
            if (my_hitboxID.y - hit_player_obj.y) > 15 and hit_player_obj.free and !hit_player_obj.super_armor {
                print("succ")
                hit_player_obj.y = lerp(hit_player_obj.y, my_hitboxID.y, 0.1)
            }
        }
    break;
    case AT_USPECIAL:
        if (my_hitboxID.hbox_num == 1)
        {
            sound_play(sound_get("sfx_cymbal_crash"))
        }    
    break;
    case AT_FTILT:
    case AT_BAIR:
        if (my_hitboxID.hbox_num == 2)
        {
            var pitch = random_range(0.93, 1.07);
            //print(pitch)
            
            sound_play(sound_get("sfx_tambo_slap1"), false, noone, 1, pitch)
        }
    break;
    case AT_DTILT:
        old_vsp = -14;
        old_hsp = hsp / 5
    break;
    case AT_DATTACK:
        off_edge = false;
    break;
}

#define append_note(note)

if note == NOTE_SYNC
{
    note = last_note;
}

if note == NOTE_NONE
{
    return last_note;
}

var i = 0;

while (i < array_length(notes)) {
    if notes[i] == -1 {
        notes[i] = note;
        break;
    }
    i += 1;
}

return note;

#define random_range()
/// random_range(minimum, maximum)
var minimum = argument0, maximum = argument1;

var key = floor( abs(x + y - hsp - vsp) mod 10 );  

var range = (maximum - minimum)*100

return  (random_func(key, range, false)/100) + minimum