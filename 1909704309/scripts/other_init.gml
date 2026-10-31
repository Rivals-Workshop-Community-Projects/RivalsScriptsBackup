//other_init
if is_player_on(player) {
    with(other){
        other.collect_fx = hit_fx_create(sprite_get("collected_fx"), 30)
    }
}