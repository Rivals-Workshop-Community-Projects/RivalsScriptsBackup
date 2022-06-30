//article1_init


if (get_player_color(player) == 17 || get_player_color(player) ==13 ||get_player_color(player) == 15){sprite_index = sprite_get("intro_proj");}
else{sprite_index = sprite_get("intro2_proj");}

gravity = 0.4;

vsp = -10;
spr_dir = -player_id.spr_dir;                        //The direction the article should face when it spawns. Here I have it set to face the same way as the character

hsp = 10*spr_dir; 

state_timer = 0;
free = true;
can_be_grounded=false;
ignores_walls=true;
//free=true;