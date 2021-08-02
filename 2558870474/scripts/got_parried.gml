var moveparried = my_hitboxID.attack;

charge = 0;

switch(moveparried){
    case AT_FSTRONG:
        if my_hitboxID.hbox_num == 1{
            illusion.state = 5;
            illusion.state_timer = 0;
            spawn_hit_fx(illusion.x + illusion.clonevf_x, illusion.y - 70, vfx_clonedashing_melt);
            illusion.hsp = 0;
        }
        break;
}