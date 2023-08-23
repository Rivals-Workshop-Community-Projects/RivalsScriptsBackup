var n, notes_to_remove
n = get_num_notes()
notes_to_remove = ceil(n / 2);

var j = n-1;
while j > -1 and notes_to_remove > 0 {
    notes[j] = -1;
    
    notes_to_remove--;
    j--;
}

var g = get_num_notes()

if g != 0
{
    last_note = notes[g-1];
}
else {
    last_note = -1;
}


#define get_num_notes
var i = 0
while i != array_length(notes) and notes[i] != -1 {
    i++;
}

return i
