//death.gml
with (pHitBox) {
    if player_id == other.id {
        if (attack == AT_NSPECIAL) {
            if (hbox_num == 3)
            {
                // this should cause trap to move to its despawn state- doing it this way means changes to the main despawn state code are easy to maintain :)
                hitbox_timer = 291
            }
        }
    }
}

with(oPlayer){
    if("past_ink_owner" in self && past_ink_owner == other){
        past_ink_r = 0;
        past_ink_b = 0;
        past_ink_y = 0;
    }
}