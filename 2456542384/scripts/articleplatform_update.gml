//a
with asset_get("oPlayer") {
    if self != other.player_id {
        if place_meeting(x,y+1,other) && !freemd {
            other.bite_timer_rn += 1;
        }
    }
}

if bite_timer_rn > bite_timer_max {
    player_id.should_bite = true;
}