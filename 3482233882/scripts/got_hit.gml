
nspec_charge_level = 0;
sound_stop(call_sfx_instance);

// Heart Barrier
heart_barrier_endangered = 1;
heart_barrier_timer = 0;

// Ignition Tank
do_ignite_hbox = 0;

// Fireman's Boots
if (fireboots_lockout < 20) fireboots_lockout = 20;

// Brilliant Behemoth
do_behemoth_hbox = 0;

// 57-Leaf Clover
clover_do_test = clover_active;

//Death Message (N/A Compat)
is_na = (hit_player_obj.url == 2229832619);