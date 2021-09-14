// called when the character gets KO'd
move_cooldown[AT_NTHROW] = 0
move_cooldown[AT_FTHROW] = 0
move_cooldown[AT_UTHROW] = 0
move_cooldown[AT_DTHROW] = 0
move_cooldown[AT_FSPECIAL] = 0
move_cooldown[AT_USPECIAL] = 0
move_cooldown[AT_DSPECIAL] = 0
grov_fspecial_cooldown = 0
grov_fspecial_airuse = false

with(asset_get("obj_article1")){
    if player_id == other life_timer = 0
}