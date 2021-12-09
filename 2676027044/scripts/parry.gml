// parry.gml
// called when you parry a hitbox.
// Use hit_player_obj to reference the player object that you parried. 
// Use hit_player to reference which player's hitbox you parried
// Use enemy_hitboxID to reference the hitbox you parried

parried = true;

// You can't really hear this but it exists
sound_play(sound_get("parry_success"));