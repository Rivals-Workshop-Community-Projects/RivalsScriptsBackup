//
inited = false;

epicx = get_marker_x(7) - get_marker_x(5);
epicy = get_marker_y(6) - get_marker_y(5);

x = random_func(0, epicx / 2, true) + 600;
y = random_func(0, epicy / 2, true) + 200;

scratchit = random_func(0, 2, true);

if (scratchit == 0)
{
    hsp = 0.5;
}
else
{
    hsp = -0.5;
}

drawing = random_func(0, 4, true);
post_num = 0;
changepost = 0;
alphamale = 0;
vsp = 0;
bruh = true;
depth = 30;
cancreate = 0;

sprite_index = sprite_get("postmask");






sprite_change_offset("failsafe_1", 60, 30);
sprite_change_offset("failsafe_2", 60, 30);
sprite_change_offset("failsafe_3", 60, 30);
sprite_change_offset("failsafe_4", 60, 30);
sprite_change_offset("miiverse_post_zetter", 60, 30);
sprite_change_offset("miiverse_post_orcane", 60, 30);
sprite_change_offset("miiverse_post_kragg", 60, 30);
sprite_change_offset("miiverse_post_wrastor", 60, 30);
sprite_change_offset("miiverse_post_forsburn", 60, 30);
sprite_change_offset("miiverse_post_absa", 60, 30);
sprite_change_offset("miiverse_post_maypul", 60, 30);
sprite_change_offset("miiverse_post_etalus", 60, 30);
sprite_change_offset("miiverse_post_ranno", 60, 30);
sprite_change_offset("miiverse_post_clairen", 60, 30);

sprite_change_offset("miiverse_post_elliana", 60, 30);
sprite_change_offset("miiverse_post_shovel", 60, 30);
sprite_change_offset("miiverse_post_orisein", 60, 30);
sprite_change_offset("miiverse_post_sandbert", 60, 30);
sprite_change_offset("miiverse_post_guadua", 60, 30);
sprite_change_offset("miiverse_post_sylvanos", 60, 30);
sprite_change_offset("p2_border", 60, 30);
sprite_change_offset("p3_border", 60, 30);
sprite_change_offset("p4_border", 60, 30);

post_target = noone;



post_target1 = instance_nearest(get_marker_x(10), get_marker_y(10), asset_get("oPlayer"));

