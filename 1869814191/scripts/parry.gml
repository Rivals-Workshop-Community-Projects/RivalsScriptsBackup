//parry.gml

/*
var miss = spawn_hit_fx(hit_player_obj.x+(44*hit_player_obj.spr_dir), hit_player_obj.y-(hit_player_obj.char_height+44), vfx_miss);
miss.spr_dir = 1;
miss.depth -= 20;
*/
var miss = spawn_hit_fx(enemy_hitboxID.x, enemy_hitboxID.y-30, vfx_miss);
miss.spr_dir = 1;
miss.depth -= 20;

sound_play(sound_get("sfx_sans_blink"));