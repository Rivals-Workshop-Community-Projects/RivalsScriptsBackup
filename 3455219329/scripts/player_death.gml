plr_x = hit_player_obj.x;
plr_col = hit_player_obj.player
balloon = instance_create(plr_x, 800, "obj_stage_article", 3);
balloon.sprite_index = sprite_get("balloon" + string(plr_col));