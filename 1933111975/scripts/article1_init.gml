//article1_init

//Sprite and direction
sprite_index = player_id.spr_cloudrise;
image_index = 5;
mask_index = sprite_get("cloud");
spr_dir = player_id.spr_dir;

//State
state = 0;
state_timer = 0;

//Terrain behavior
can_be_grounded = false;
ignores_walls = true;
free = true;

//Attack buffering
bufferedstate = 0;
buffertimer = 0;

//Animation speeds and timers
idle_anim_rate = 8;
die_anim_rate = 4;
die_time = 20;
warnedalready = false;
animation_type = 1;
new_sprite = player_id.spr_cloud;
glitchtimer = 0;

//Rising animation
spawny = y;
stopy = player_id.finalcloudheight;
if (spawny > stopy){
    player_id.cloudparticlevsp = -3;
}
else{
    player_id.cloudparticlevsp = 1;
}

//NSPECIAL
nspecdelay = 44;                //Delay between parts of NSPECIAL.
nspecduration = 60;             //Duration for NSPECIAL cloud follow-up.
soaksprite = false;

//2-Cloud Limit
replacedcount = 0;
maxclouds = 2;
if player_id.runeA{
    maxclouds++;
}

//Cure depression
shoulddie = false;