x_scale = 1;

if attack == AT_NSPECIAL and hbox_num == 1
{
    t = instance_create(x, y,"obj_article1")
    t.hsp = 3*player_id.spr_dir + player_id.hsp;
    t.hitbox = id;
    
    player_id.nspecial_projectile = t;
    owner = t;
}

if attack == AT_NSPECIAL_2
{
    t = instance_create(x, y,"obj_article1")
    t.hitbox = id;
    t.hsp = hsp
    t.vsp = vsp;
    t.split_baby = true;
    owner = t;
}