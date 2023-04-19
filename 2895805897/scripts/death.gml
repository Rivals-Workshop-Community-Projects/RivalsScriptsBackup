// called when the character gets KO'd

ds_list_clear(grabHitboxID); // clears the hitbox list when you die

if (FlytrapID != 0) {
    FlytrapID.killNow = true;
}