//death.gml

//reset ammo
ralsei_dair_ammo = ralsei_dair_max_ammo;
ralsei_nspec_ammo = ralsei_nspec_max_ammo;

//reset dspecial
ralsei_heart_active = false;

//lose TP
ralsei_tp = max(0, ralsei_tp - ceil(ralsei_max_tp / 8));

//sfx
sound_play(sound_get("dr_break1"));
