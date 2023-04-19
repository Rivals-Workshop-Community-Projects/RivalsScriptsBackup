//Updating initializer

moved = false;
spark = false;
spark_rng = random_func(0, 3, true);
spark_dist = random_func(0, 20, false);

if (attack == AT_USPECIAL_2 && (hbox_num == 3 || hbox_num == 4)){
    var particleeffect = spawn_hit_fx(x, y-20, 109);
    sound_play(sound_get("S3&K_51"));
    //particleeffect.force_depth = true;
    //particleeffect.depth = depth-20;
}