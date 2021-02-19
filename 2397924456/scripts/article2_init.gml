chain_length = player_id.chain_length;
sprite_index = player_id.spr_chain_segment;

visible = (player_id.state != PS_RESPAWN && player_id.state != PS_DEAD);

gravity_speed = 0.25;
max_fall = 10;



var amt = chain_length / 2;

top_x = x;
top_y = y - amt;
bot_x = x;
bot_y = y + amt;



ignores_walls = 1;

exist_timer = 0;