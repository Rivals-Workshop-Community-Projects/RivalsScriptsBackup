//pre-draw

if (samson_honeyed && other_player_id == samson_honeyed_ID){
    var honeysplat_sprite = -1;
    with (samson_honeyed_ID){
            honeysplat_sprite = sprite_get("honeysplat");
        shader_start();
    }
    if (honeysplat_sprite != -1)
        draw_sprite_ext( honeysplat_sprite, 0, x, y-char_height*.5, 1, 1, 1, c_white, 0.7 );
    with (samson_honeyed_ID){
        shader_end();
    }
}



	


        if ((samson_honeyed && other_player_id == samson_honeyed_ID) and !hitpause){

		if "honeyed_sprite" in self
		{
			sprite_index = honeyed_sprite;
			if "honeyed_amn_speed" in self
			{image_index = honeyed_frame;
            }
		}
        else if "owie_hurt_sprite" in self
        {
        sprite_index = owie_hurt_sprite;
        }


        }