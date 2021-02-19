//ORCANE PUDDLE
AT_NSPECIAL_ETA = AT_USPECIAL_GROUND
AT_NSPECIAL_ORI = AT_USPECIAL_2
AT_NSPECIAL_ZET = AT_FSTRONG_2
AT_NSPECIAL_ORCA = AT_DSTRONG_2
AT_NSPECIAL_FROG = AT_DSPECIAL_AIR
AT_NSPECIAL_SYLV = AT_TAUNT_2
AT_NSPECIAL_ELLI = AT_EXTRA_1
AT_NSPECIAL_ABSA = AT_FSPECIAL_2

sprite_index = sprite_get("puddle_mask");
coolsprite = sprite_get("puddle_spr");
coolindex = 0;

can_be_grounded = true;
ignores_walls = false;
free = true;

lifetime = 600
ysize = 0

state = 0;
//0 - idle
//1 - destroyed
//2 - bubble