// called when the character gets KO'd
item_held = "none";
curry_timer = 0;
metal_timer = 0;
scale_timer = 0;

if "fs_charge" in self {
    fs_using_final_smash = false;
}

with pHitBox if player_id == other && type == 2 destroyed = true;