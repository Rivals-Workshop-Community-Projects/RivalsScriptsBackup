// hit_player is a script that runs code when you hit an enemy player.

// Ripper Blade and Zero-G Thruster can hit multiple times

switch(my_hitboxID.attack) {
    case AT_USPECIAL: case AT_FSPECIAL:
        my_hitboxID.can_hit[hit_player_obj.player] = true;
    break;
}


// Stomp reloads Plasma Cutter

if my_hitboxID.attack == AT_NSPECIAL{
    var h = instance_create(my_hitboxID.x + 26*my_hitboxID.spr_dir, my_hitboxID.y - 24, "obj_article1");
    h.spr_dir = my_hitboxID.spr_dir;
}

if my_hitboxID.attack == AT_DTILT || my_hitboxID.attack == AT_DAIR{
    ammo = 6;
    sound_play(sound_get("isaac_pickup"));
    instance_create(x, y - 100, "obj_article2");
}