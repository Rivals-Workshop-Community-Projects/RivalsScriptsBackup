///

hurtbox_spr = sprite_get("stand_box");

cheatingreal = 0 
fireon = 0
firerange = -100
with (asset_get("pHitBox")) {
if(player_id == other.id) {
    destroyed = true;
}
}

if has_rune("F") {
  daigomode = 0
}


with (asset_get("oPlayer")) {
    if "cheating" in self {
    if cheating == 1 {
        cheating = 0 
        visible = true 
        invincible = false 
        invince_time = 0
        hitstop = 0
        hitpause = false
        create_deathbox(
        x, // x
        y, // y
        100, // w
        100, // h
        player, // player
        true, // free
        1, // shape
        4, // lifespan
        0 // bg_type
        )
    }
    }
}


