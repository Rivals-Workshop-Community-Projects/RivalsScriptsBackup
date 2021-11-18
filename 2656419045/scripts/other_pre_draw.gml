//other pre draw: puts the character in the correct place when they're being held by Mario
if(object_index == oTestPlayer || "other_player_id" not in self || !instance_exists(other_player_id) || !other_player_id.small_sprites) exit;

if(other_player_id.phone_cheats[other_player_id.CHEAT_NOHUD]) draw_indicator = false;