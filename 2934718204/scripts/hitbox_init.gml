//hitbox_init
if attack == AT_USPECIAL && hbox_num == 1 {
    init_hsp = hsp
    init_vsp = vsp
    depth = 0
    manual_hit = false
    proj_angle = -darctan(init_vsp/init_hsp);
    can_grapple = true
}