if attack == AT_NSPECIAL
{
    popped_note = -1
}

if attack == AT_DAIR {
    var dir = (right_down-left_down);
    
    if dir != 0 and dir == -spr_dir {
        spr_dir = dir;
    }
}

fspecial_timer = 0;
dattack_loops = 0;

unique_hitboxes = [];

if attack == AT_TAUNT and down_down {
    attack = AT_TAUNT_2
    sound_play(sound_get("vineboom"))
}

if attack == AT_TAUNT and up_down {
    attack = AT_EXTRA_1
}

if attack == AT_FSPECIAL {
    var note_pos = note_pointer
    if note_pointer == -1 {
        note_pos = get_num_notes()-1
    }
    
    var popped = pop_note(note_pos);
    fspecial_distance = 9.5
    
    if popped != -1 {
        sound_play(sound_get("sfx_nspecial_note_" + string(3-note_pos) ))
        var ang = 0;
        var numparts = 7
        var vfx = note_trail;
        switch popped {
            case 0:
                fspecial_distance = 10.5
                reset_hitbox_value(AT_FSPECIAL, 1, HG_DAMAGE);
                vfx = note_trail_purple
            break;
            case 1:
                set_hitbox_value(AT_FSPECIAL, 1, HG_DAMAGE, 8);
            break;
            case 2:
                fspecial_distance = 12
                vfx = note_trail_orange
                set_hitbox_value(AT_FSPECIAL, 1, HG_DAMAGE, 10);
            break;
        }
        
        repeat (numparts) {
            
            var part = spawn_hit_fx(x + lengthdir_x(30,ang), y - 20 + lengthdir_y(30,ang),vfx)
            part.hsp = lengthdir_x(5,ang);
            part.vsp = lengthdir_y(5,ang);
            ang += 360/numparts
        }
    }
    else {
        reset_hitbox_value(AT_FSPECIAL, 1, HG_DAMAGE);
    }
    
    note_pointer = -1;
}

if attack == AT_USPECIAL {
    var note_pos = note_pointer
    if note_pointer == -1 {
        note_pos = get_num_notes()-1
    }
    
    var popped = pop_note(note_pos);
    fspecial_distance = -16
    
    if popped != -1 {
        sound_play(sound_get("sfx_nspecial_note_" + string(3-note_pos) ))
        var ang = 0;
        var numparts = 7
        var vfx = note_trail;
        switch popped {
            case 0:
                fspecial_distance = -18
                reset_hitbox_value(AT_USPECIAL, 1, HG_DAMAGE);
                vfx = note_trail_purple
            break;
            case 1:
                set_hitbox_value(AT_USPECIAL, 1, HG_DAMAGE, 10);
            break;
            case 2:
                fspecial_distance = -20
                vfx = note_trail_orange
                set_hitbox_value(AT_USPECIAL, 1, HG_DAMAGE, 12);
            break;
        }
        
        repeat (numparts) {
            
            var part = spawn_hit_fx(x + lengthdir_x(30,ang), y - 20 + lengthdir_y(30,ang),vfx)
            part.hsp = lengthdir_x(5,ang);
            part.vsp = lengthdir_y(5,ang);
            ang += 360/numparts
        }
    }
    else {
        reset_hitbox_value(AT_USPECIAL, 1, HG_DAMAGE);
    }
    
    note_pointer = -1;
}

#define pop_note
var ele = argument0;

if ele == -1 {
    return -1;
}

var val = notes[ele]
notes[ele] = -1;

var j = ele

while j != array_length(notes) - 1 and notes[j+1] != -1 {
    var p = notes[j];
    notes[j] = notes[j+1];
    notes[j+1] = p;
    
    j++;
}

return val;
#define get_num_notes
var i = 0
while i != array_length(notes) and notes[i] != -1 {
    i++;
}

return i