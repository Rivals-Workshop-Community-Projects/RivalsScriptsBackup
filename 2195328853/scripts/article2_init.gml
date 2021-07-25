//article3_init
if (get_player_color( player ) == 4 || get_player_color( player ) == 5  || get_player_color( player ) == 6 || get_player_color( player ) == 14){
    sprite_index = sprite_get("star_big");
}else {
    sprite_index = sprite_get("fspecial_cloud");
}
steam_anim = 0;
steam_anim2 = 0;
steam_timer = 0;

depth = player_id.depth-20;

orig_player = player;
current_player = player;
can_be_grounded = false;
ignores_walls = true;
hit_wall = false;
uses_shader = true;
steamhitbox = noone;
steamlifetime = 60;

lasthitbox = noone;
hitlockout = 0;
hitlockout2 = 0;

spr_dir = player_id.spr_dir;

steamlifetime = 480;
hsp = 7*spr_dir;