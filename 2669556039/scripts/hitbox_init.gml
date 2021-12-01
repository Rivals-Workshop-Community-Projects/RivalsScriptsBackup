//hitbox_init

lastVsp = vsp;
startUp = hsp == 0;
startDir = player.spr_dir;

if (attack == AT_NSPECIAL && hbox_num == 1)
    can_hit_self = true;
    
if (attack == AT_DSPECIAL && hbox_num == 2)
    can_hit_self = true;