//article1_init
//sprite_index = sprite_get("fspec_aim");

Eggman_Aim = true;

if("fspec_target" not in self)fspec_target = noone;
if("fspec_target_player" not in self)fspec_target_player = false;
//if("fspec_target_theplayer" not in self)fspec_target_theplayer = 0;
if("fspec_target_offset" not in self)fspec_target_offset = 0;

fspec_projectile = noone;
fspec_projectile_targeting = false;
cantarget = 0;

depth = -100;
timer = 0;
destroytimer = 0;
aim_size = 3.0;
aim_alpha = 0.75;
can_be_grounded = false;
ignores_walls = false;
uses_shader = true;
destroyed = false;

MattCanGrab = false;
MorshuCanGrab = false;
CalCanSnack = 0;
Pocketable = false;
UnReflectable = true;
Untargetable = true;