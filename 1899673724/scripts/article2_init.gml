//article2_init.gml

//Spring

springimagespeed = 0

sprite_index = sprite_get("spring");
image_index = 0;
spr_dir = player_id.spr_dir;
uses_shader = true; 

state = 0;
state_timer = 0;
hsp = 0;
vsp = 0;

//Limit on number of articles
replacedcount = 0;
maxarticles = 1;  
shoulddie = false;

can_be_grounded = true;  
ignores_walls = true;
free = false;

springtimer = 0

with(asset_get("obj_article2")){
    if (player_id == other.player_id){
        replacedcount++;                            //If there are any other article1s owned by the same person, tell them to increment their replacedcount by 1
    }
}