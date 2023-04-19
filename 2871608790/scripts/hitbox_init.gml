//hitbox_init.gml

if (destroy_fx == 0)
{
    if (attack != AT_NSPECIAL) destroy_fx = hit_effect;
    else destroy_fx = 1;
}

no_azi_pocket = 0;
if(!variable_instance_exists(id,"no_azi_backfire")) no_azi_backfire = 0;

with (player_id)
{
    other.no_azi_pocket = get_hitbox_value(other.attack, other.hbox_num, HG_AZI_CANT_POCKET);
    if(!variable_instance_exists(other,"no_azi_backfire")) other.no_azi_backfire = get_hitbox_value(other.attack, other.hbox_num, HG_AZI_CANT_BACKFIRE);
}

if ("owner" not in self) owner = noone;