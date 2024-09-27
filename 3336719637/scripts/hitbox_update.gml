//hitbox_update.gml
//like update.gml, this script updates every frame whenever a hitbox that the player owns is around

//flips projectile sprite on parry
if (was_parried) draw_xscale = spr_dir;

switch (attack){
    case AT_FSPECIAL: //tether
    if hitbox_timer = length spawn_hit_fx(x, y, player_id.fspec_die);
    break;
    case AT_DSPECIAL: //shotgun blast
    vsp = (hsp / initial_hsp) * initial_vsp;
    if hitbox_timer = length-1 && hbox_num = 1
	spawn_hit_fx(x, y, player_id.dspec1_die);
    if hitbox_timer = length-1 && hbox_num = 2
	spawn_hit_fx(x, y, player_id.dspec2_die);
    if hitbox_timer = length-1 && hbox_num = 3
	spawn_hit_fx(x, y, player_id.dspec3_die);
    break;
    case AT_TAUNT:
    if hitbox_timer = length-1 && hbox_num = 1
	spawn_hit_fx(x, y, player_id.tauntcloud_die);
    break;
}