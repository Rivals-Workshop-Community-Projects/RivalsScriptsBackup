//Extra music code
if (get_gameplay_time() < 129 and mus == -1) {
    if(music >= 4){
        music_play_file( "music_loop" + string(music+1) );
    }
}

with(pHitBox){
    if(attack == AT_JAB and orig_player == 5 and hbox_num == 1){
        with(oPlayer){
            if(player = other.player){
                other.x = x + hsp;
                other.y = y - 50 + vsp;
            }
        }
    }
}

with (oPlayer) {
    if ((get_player_stocks(player) = 1) && obj_stage_main.final_stock_cont == -1) {
    	obj_stage_main.final_stock_cont = 0;
    	obj_stage_main.final_stock = true;
    }
}

if(obj_stage_main.final_stock_cont == 0 and is_aether_stage() == true){
    with(obj_stage_article){
        if(variable_instance_exists(id, "final_stock_spawned")){
            if(final_stock_spawned == 0){
                final_stock_spawned = 20;
                leave_time = leave_max;
            }
        }
    }
    var barrels_num = 1;
	while(barrels_num < 7){
		barrel = instance_create(-2000, -2000, "obj_stage_article", 5);
		barrel.state = 0;
		barrel.state_timer = 30
		barrel.next_type = barrels_num;
		barrel.final_stock_spawned = barrels_num;
		barrels_num++;
	}
    obj_stage_main.final_stock_cont++;
}