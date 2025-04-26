//hitbox_init.gml

if (destroy_fx == 0) destroy_fx = hit_effect;

if (attack == AT_FSTRONG)
{
    draw_xscale = 1;
    orig_hsp = hsp;
    orig_vsp = vsp;
    grounds = 1;
    walls = 1;

    proj_lockout_set = 10;
}