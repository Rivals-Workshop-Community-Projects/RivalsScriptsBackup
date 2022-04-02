//got_hit

//strongs/charge attacks get reset
charge_attack = false;

//fspec can be used again
fspec_used = false;

//getting hit reduces the time the marker stays on the field
if (instance_exists(artc_marker) && artc_marker.state == 1)
{
    artc_marker.active_time += 30;
    if (artc_marker.active_time >= 300) artc_marker.active_time = 299;
}