//hitbox_init

if (attack == AT_FSPECIAL) && (hbox_num == 1) {
    if sign(hsp) != spr_dir {
        hsp *= -1;
    }
}

oldHsp = 0;
oldVsp = 0;
hitPlayerID = undefined;
movePlayerID = undefined;
throwDir = undefined;
hasHit = false;
hasMoved = false; //hit in the air with a hitbox
was_bashed = false;

prevHitbox = undefined;

if (attack == AT_NSPECIAL) && (hbox_num == 1) {
    isTrash = true;
    if power >= player_id.compactThreshhold {
        willExplode = true;
    }
}

if (attack == AT_NSPECIAL) && (hbox_num == 2) {
    if has_rune("M") {
        can_hit_self = false;
    }
}