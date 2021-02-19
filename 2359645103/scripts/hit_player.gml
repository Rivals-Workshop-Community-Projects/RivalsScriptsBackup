
if (my_hitboxID.attack == AT_EXTRA_1)
{
    kk_rat.detonate = true;
    my_hitboxID.destroyed = true;
}

if (kk_hitcount < 4 && attack == AT_FSTRONG){
    kk_heart = instance_create(x + 100*spr_dir, y-10, "obj_article2");
    kk_hitcount = -1;
}

if (kk_hitcount < 4){
    kk_hitcount++;
    kk_combotimer = 90;
}
else {
    var heartx = get_instance_x(pHitBox);
    var hearty = get_instance_y(pHitBox);
    kk_heart = instance_create(heartx, hearty, "obj_article2");
    kk_hitcount = 0;
}
