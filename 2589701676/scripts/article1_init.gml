//article1_init

can_be_grounded = false;
ignores_walls = true;
uses_shader = false;

key_sprite = sprite_get("key");
beginning_owner_id = player_id;
current_owner_id = player_id;
prev_owner_id = player_id;
desired_color = get_player_hud_color(get_instance_player(current_owner_id));
/*
player1_id = -1;
player2_id = -1;
player3_id = -1;
player4_id = -1;
*/

desiredX = x;
desiredY = y;

spark_anim = 0;
collection_dist = 60;
