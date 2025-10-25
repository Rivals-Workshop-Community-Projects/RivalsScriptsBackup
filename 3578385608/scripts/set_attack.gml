///args set_attack

if !move_cooldown[attack] switch attack{
	case AT_DSPECIAL:
	steve_cooking = 0;
	if free{
		attack = AT_DSPECIAL_AIR;
		if (stevepotion && array_find_index(recipes_index, stored_recipe) < 5) || (!stevepotion && array_find_index(drinkable_index, stored_recipe)+1) window = 4;
		break;
	}
	if instance_exists(table) && table.closeby{
		if instance_exists(table.meth_hb){
			move_cooldown[attack] = 2;
			break;
		}
		window = 3 + (table.state == 2)*6;
		instance_destroy(table.meth_hb);
	}else if steve_enabled{
		var _list = ds_list_create();
		var _num = instance_place_list(x, y, obj_article1, _list, false);
		if _num > 0{
			var pri = 0;
			var i = 0;
			repeat(_num){
				if "steve_station" in _list[| i] && (_list[| i].article_type == "steve_crafting_table" || _list[| i].article_type == "steve_brewing_stand"){
					window = 3;
					steve_cooking = 1;
    		        materials = [0, 0, 0];
	        	    lab_ui_act = 0;
					break;
				}
				i++;
			}
		}
		ds_list_destroy(_list);
	}
	if move_cooldown[attack] break;
	break;
	
	case AT_NSPECIAL:
	if (stevepotion && array_find_index(recipes_index, stored_recipe) < 5) || (!stevepotion && array_find_index(drinkable_index, stored_recipe)+1) window = 4;
	break;
	
	case AT_USPECIAL:
	set_window_value(AT_USPECIAL, 5, AG_WINDOW_TYPE, 7*free);
	break;
	
	case AT_FSPECIAL:
	if instance_exists(car) && car.state <= 3 window = 2;
	break;
}