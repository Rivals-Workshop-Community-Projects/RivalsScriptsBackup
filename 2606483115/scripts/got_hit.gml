//hi

nspec_cancel_buffer = false

steam_wall_dismiss = true

if(has_rune("O") || all_runes){
    with(hit_player_obj){
        if(chained){
            chained = false
            with(other){
                spawn_hit_fx(other.x, other.y - 25, vfx_icehit_small)
            }
            sound_play(asset_get("sfx_icehit_medium1"))
        }
    }
}