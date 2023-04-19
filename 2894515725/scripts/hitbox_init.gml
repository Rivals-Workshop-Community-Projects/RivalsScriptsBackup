//hitbox_init

if attack == AT_USPECIAL && type == 2 {
    anchor_phase = 0;
    ihsp = hsp;
    ivsp = vsp;
    rope_amt = 0;
    perch_hit = noone;
    hit_x = 0;
    hit_y = 0;
    grabbed_wall = false;
    hook_timer = 0;
}