// Event 3 - Make hologram disappear
// Called on the hologram object

//print_debug("hologram be peacing out");

if (get_gameplay_time() > 10)
spawn_hit_fx(x, y, vfx_hologram_vanish);
x = 0; y = 0;
visible = false;
free = true;
ignore_camera = true;
set_state(PS_HITSTUN); // PS_DEAD causes CPUs to not attack; use PS_HITSTUN instead
hologram_active = false;
hitpause = true;
hitstop = 2147483647;
hitstop_full = 2147483647;
hitstun_full = 2147483647;
last_player_hit_me = noone;

hitstun = 2147483647;
invince_time = 2147483647;
invincible = true;
hsp = 0;
vsp = 0;
old_hsp = 0;
old_vsp = 0;

/*with (oPlayer) // This is to prevent grab logic.
{
    var vars = ds_list_create();
    variable_instance_get_names(self, vars);
    for (var i = 0; i < ds_list_size(vars); i++)
    {
        var s = ds_list_find_index(vars, i);
        try
        {
            if (variable_instance_get(self, s) == other)
            {
                variable_instance_set(self, s, noone);
            }
        }
        catch (_e) {
        }
    }
}*/