//pre_draw.gml
shader_start();
var style = 0;


with oPlayer {
  if id != other.id && url == "1976183668" {
    style = styler;
  }
}


if halo >= 1 and halo < 5 {
	


 if spr_dir == 1 {
     draw_sprite_ext(sprite_get("halo1"), get_gameplay_time() / 3, x - 15, y + 5, 1,1,0,-1,0.2 + halo/6  );
}


if spr_dir == -1 {
     draw_sprite_ext(sprite_get("halo2"), get_gameplay_time() / 3, x + 15, y + 5, 1,1,0,-1,0.2 + halo/6  );
}

  if spr_dir == 1 {
     draw_sprite(sprite_get("haloq1"), get_gameplay_time() / 6, x - 15, y + 5  );

}


if spr_dir == -1 {
     draw_sprite(sprite_get("haloq2"), get_gameplay_time() / 6, x + 15, y + 5 );


}
}


if halo >= 3 and halo < 5 {
 
  
  if get_player_color(player) == 5 && sakura == 1 {
  		if get_player_color(player) == 5 && sakura == 1 {
		

		
  }
  }
	
 if spr_dir == 1 {
     draw_sprite(sprite_get("haloq1"), get_gameplay_time() / 4, x - 15, y + 5  );


}


if spr_dir == -1 {
     draw_sprite(sprite_get("haloq2"), get_gameplay_time() / 4, x + 15, y + 5 );


}
}

if halo >= 4 and halo < 5 {
	
	if get_player_color(player) == 5 && sakura == 1 {
		
		if get_gameplay_time() % 25 == 0 {
		spawn_hit_fx(x + random_func(3, 10, true) - 20 * spr_dir, y - 30 + random_func(1, 10, true), shit8 )
		}
		
  }
  
	
  if spr_dir == 1 {
     draw_sprite(sprite_get("haloh1"), get_gameplay_time() / 5, x - 15, y + 5  );


}


if spr_dir == -1 {
     draw_sprite(sprite_get("haloh2"), get_gameplay_time() / 5, x + 15, y + 5 );


}
}

if halo >= 5 {
	
		if get_player_color(player) == 5 && sakura == 1 {
		
		if get_gameplay_time() % 25 == 0 {
		spawn_hit_fx(x + random_func(3, 10, true) - 20 * spr_dir, y - 30 + random_func(1, 10, true), shit8 )
		}
		
  }
	
if spr_dir == 1 {
     draw_sprite(sprite_get("halo1"), get_gameplay_time() / 3, x - 15, y + 5  );
}


if spr_dir == -1 {
     draw_sprite(sprite_get("halo2"), get_gameplay_time() / 3, x + 15, y + 5 );
}



}






///Dash 

if state == PS_DASH {
	

    shadow = 1
    
    if spr_dir == 1 {
	
 draw_sprite(sprite_get("dashshadow"), state_timer / 1, x - 5 , y  );
 
 if state_timer > 6 and shadow == 1 {
     draw_sprite(sprite_get("dashshadow"), state_timer / 2, x - 25 , y  );
 }
    }
    
       if spr_dir == -1 {
	
 draw_sprite(sprite_get("dashshadow2"), state_timer / 1, x + 15 , y  );
 
  if state_timer > 6  and shadow == 1 {
     draw_sprite(sprite_get("dashshadow2"), state_timer / 2, x + 35 , y  );
 }
    }
	


	
	
}


if attacking && attack == AT_FSPECIAL  {
	draw_sprite_ext(sprite_index, image_index - 1, x - shsp*2, y - svsp*2, spr_dir,1,0,-1, 1 - state_timer/22  );
	draw_sprite_ext(sprite_index, image_index - 2, x - shsp*4, y - svsp*4, spr_dir,1,0,-1, 0.8 - state_timer/22  );
}

if attacking && attack == AT_DAIR && vsp > 0  {
	draw_sprite_ext(sprite_index, image_index , x - shsp*2, y - svsp*2, spr_dir,1,0,-1, .4 );
	draw_sprite_ext(sprite_index, image_index , x - shsp*4, y - svsp*4, spr_dir,1,0,-1, .2  );
}

shader_end();



///Boss Zetta support


with oPlayer {
  if id != other.id && url == "1976183668" {
    style = styler;
  }
}
if style > 250 {
halo = 5
halotimer += 1
}
