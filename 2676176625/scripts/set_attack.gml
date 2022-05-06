if (weapom_switch = 0 && attack == AT_NSPECIAL){
	weapom_switch += 25;
	sound_play(sound_get("item"));
}
else if (weapom_switch = 25 && attack == AT_NSPECIAL){
weapom_switch += 25;
}
if (weapom_switch = 50 && attack == AT_NSPECIAL){
	weapom_switch += 25;
	sound_play(sound_get("item"));
}
else if (weapom_switch = 75 && attack == AT_NSPECIAL){
weapom_switch += 24;
sound_play(sound_get("item"));
}
if (weapom_switch = 99 && attack == AT_NSPECIAL){
	weapom_switch += 1;
}
else if (weapom_switch = 100 && attack == AT_NSPECIAL){
weapom_switch -= 100;
sound_play(sound_get("item"));
}

if (attack == AT_FSPECIAL && weapom_switch = 0){
	attack= AT_FSPECIAL;
}
if (attack == AT_FSPECIAL && weapom_switch = 25){
	attack= AT_EXTRA_2;
}
if (attack == AT_FSPECIAL && weapom_switch = 75){
	attack= AT_EXTRA_3;
}
if (attack == AT_FSPECIAL && weapom_switch >= 80){
	attack= AT_EXTRA_2;
}

if (attack == AT_NSPECIAL && weapom_switch = 0){
	attack= AT_NSPECIAL;
        spawn_hit_fx( x, y-25, ron );
}
if (attack == AT_NSPECIAL && weapom_switch = 25){
	attack= AT_NSPECIAL_2;
        spawn_hit_fx( x, y-25, ron );
}
if (attack == AT_NSPECIAL && weapom_switch = 75){
	attack= AT_NSPECIAL_AIR;
        spawn_hit_fx( x, y-25, ron );
}
if (attack == AT_NSPECIAL && weapom_switch >= 80){
	attack= AT_NSPECIAL_2;
        spawn_hit_fx( x, y-25, ron );
}
