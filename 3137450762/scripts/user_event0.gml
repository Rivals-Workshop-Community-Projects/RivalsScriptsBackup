// populate available_taunts
var temp_taunt_array = [];
for (var i = 0; i < array_length(available_taunts); i += 1) {
  if (available_taunts[i] != selected_taunt) {
    array_push(temp_taunt_array, available_taunts[i]);
  }
}

if (array_length(temp_taunt_array) <= 0) {
  var temp_taunt_array2 = [];
  for (var i = 0; i < array_length(total_taunts); i += 1) {
    if (total_taunts[i] != selected_taunt) {
      array_push(temp_taunt_array2, total_taunts[i]);
    }
  }
  available_taunts = temp_taunt_array2;
} else {
  available_taunts = temp_taunt_array;
}

// move to selected taunt's window
var random_var = random_func(5, array_length(available_taunts), true)
selected_taunt = available_taunts[random_var];
spr_dir = 2*random_func(1, 2, true) - 1;
window = (selected_taunt*2)+1;
