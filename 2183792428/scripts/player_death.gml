/*

with hit_player_obj {
if get_player_stocks( player ) = 1 {
with obj_stage_main {
sound_play(sound_get("Game Over"))
}
} else {
with obj_stage_main {
sound_play(sound_get("Die"))
}
}
}

*/



if obj_stage_main.guiltyScreen = -4 {
obj_stage_main.guiltyScreen = 0
with hit_player_obj {
obj_stage_main.player_death = player

if "temp_level" in self {
obj_stage_main.player_death = 0
}




if "guiltySprite" in self {
obj_stage_main.guiltySprite = guiltySprite
} else {

obj_stage_main.guiltySprite = -1

if url = CH_ZETTERBURN { // We're about to get funky fresh with no switch statements cause it was annoying me that it wasn't working. Sorry lol
obj_stage_main.guiltySprite = 0
}
if url = CH_ORCANE {
obj_stage_main.guiltySprite = 1
}
if url = CH_WRASTOR {
obj_stage_main.guiltySprite = 2
}
if url = CH_KRAGG {
obj_stage_main.guiltySprite = 3
}
if url = CH_FORSBURN {
obj_stage_main.guiltySprite = 4
}
if url = CH_MAYPUL{
obj_stage_main.guiltySprite = 5
}
if url = CH_ABSA {
obj_stage_main.guiltySprite = 6
}
if url = CH_ETALUS {
obj_stage_main.guiltySprite = 7
}
if url = CH_ORI {
obj_stage_main.guiltySprite = 8
}
if url = CH_RANNO {
obj_stage_main.guiltySprite = 9
}
if url = CH_CLAIREN {
obj_stage_main.guiltySprite = 10
}
if url = CH_SYLVANOS {
obj_stage_main.guiltySprite = 11
}
if url = CH_ELLIANA {
obj_stage_main.guiltySprite = 12
}
if url = CH_SHOVEL_KNIGHT {
obj_stage_main.guiltySprite = 13
}
if url = 1865940669 {
obj_stage_main.guiltySprite = -2
}
if url = 1866016173 {
obj_stage_main.guiltySprite = -3
}



}


}


instance_create( room_width / 2 ,room_height, "obj_stage_article", 5)
instance_create( room_width / 2 ,room_height, "obj_stage_article", 6)
}