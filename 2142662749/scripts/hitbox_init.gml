//hitbox_init

if (attack == AT_NSPECIAL) {
    if (player_id.zoID != undefined) {
        proj_angle = player_id.zoID.turretAngle;
    }
}

//g&w bucket
if (attack == AT_FSTRONG || attack == AT_FSTRONG_2 || attack == AT_DSTRONG || attack == AT_DSTRONG_2 || attack == AT_USTRONG || attack == AT_USTRONG_2 || attack == AT_FSPECIAL || attack == AT_USPECIAL || attack == AT_DSPECIAL_2) {
    no_absorb = 1;
}