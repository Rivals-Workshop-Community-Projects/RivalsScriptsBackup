//article3_init
life_timer = 0;
sprite_index = sprite_get("blank");
spr_dir = 1;
image_index = 0;
state = 0;
can_be_grounded = true;
ignores_walls = false;
statetimer = 0;
uses_shader = true;
type = 0;
tnttimer4 = 0;
movetimer = 0;
creepressed = 0;
tnttimer = 0;
tnttimer2 = 0;
jumptimer = 0;
tnthithit = false;
tnthitcount = 0;
timerr = 0;
tnthit = 0;
mask_index = sprite_get("tnthitbox");
tntdir = 0;
rune_tnt = 0;
firesteal = 0;
upb_tnt = 0;
boomtntweeee = 0;
tntblap = 0;
freetimer2 = 0;
freetimer = 0;
hit_lockout = 0;
colliding_hitboxes = ds_list_create();
dj = false;
tntsendervar = false;