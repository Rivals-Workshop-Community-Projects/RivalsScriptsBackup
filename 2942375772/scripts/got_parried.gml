var n, notes_to_remove
n = get_num_notes()
notes_to_remove = ceil(n / 2);

var j = n-1;
while j > -1 and notes_to_remove > 0 {
    notes[j] = -1;
    
    notes_to_remove--;
    j--;
}



#define get_num_notes
var i = 0
while i != array_length(notes) and notes[i] != -1 {
    i++;
}

return i
