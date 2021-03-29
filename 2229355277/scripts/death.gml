// for when you die.
sound_play(sound_get("deck_shuffle"));

suspended_frames = 0;

// Shuffle Shuffle.
var i, j, k;
for (i = 0; i < amountofspells - 1; i += 1){
    j = i+random_func_2(i, amountofspells - i, true);
    if (i != j)
    {
        k = spell_list[i];
        spell_list[i] = spell_list[j];
        spell_list[j] = k;
    }
}

  for (m = 0; m < amountofspells; m++){
    spellslot[m] = spell_list[m] + 1;
  }
