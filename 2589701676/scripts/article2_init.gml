//article2_init

can_be_grounded = false;
ignores_walls = false;
uses_shader = true;

//key_sprite = sprite_get("key");
//beginning_owner_id = player_id;
//current_owner_id = player_id;
//prev_owner_id = player_id;
//desired_color = get_player_hud_color(get_instance_player(current_owner_id));
/*
player1_id = -1;
player2_id = -1;
player3_id = -1;
player4_id = -1;
*/

sprite_index = sprite_get("sideProjectile");

desiredX = x;
desiredY = y;
hsp = 10*player_id.spr_dir;

despawn_timer = 900;
bounced = 0;
cooldown = 0;

prev_V = 0;
prev_H = 0;

owner = noone;
/*

spark_anim = 0;
collection_dist = 60;
*/
