//hitbox_update.gml
//NUEVA INTERACCION EN LINEA 28

//OK SO, ESTA ES LA ANTIGUA INTERACCION DE DSPECIAL
if (attack == AT_DSPECIAL && hbox_num == 1)
{		
	// Estas son las condiciones para que rebote el dspecial
	if  player_id.attack == AT_FSPECIAL && player_id.window > 3 && player_id.window < 7 && vsp >0 && (player_id.state == PS_ATTACK_GROUND ||player_id.state == PS_ATTACK_AIR) && ( y > player_id.y -60 &&  y < player_id.y) && player_id.spr_dir == spr_dir{
		if spr_dir == 1{
			 if x < player_id.x + 200 {					//Con estos valores se forma la caja de deteccion, se puede variar
				vsp = vsp * -1;
				hsp = hsp * 1;
				camera_shake = 1;
				spawn_hit_fx( x, y, 302 );			//Puedes cambiar aqui el efecto que sale al rebotar
			}
			sound_play(sound_get("PMETAL"));
		} else	if spr_dir == -1{
			if x > player_id.x - 200 {
				vsp = vsp * -1;	
				camera_shake = 1;
				spawn_hit_fx( x, y, 302 );			//Puedes cambiar aqui el efecto que sale al rebotar
			}			
			sound_play(sound_get("PMETAL"));
		}
		//Podrias aumentar la duracion del proyectil por esta nueva funcionalidad
	}
	// Estas son las condiciones para que rebote el dspecial
	if  player_id.attack == AT_FSTRONG && player_id.window > 2 && player_id.window < 4 && vsp >0 && (player_id.state == PS_ATTACK_GROUND) && ( y > player_id.y -60 &&  y < player_id.y) && player_id.spr_dir == spr_dir{
		if spr_dir == 1{
			 if x < player_id.x + 200 {					//Con estos valores se forma la caja de deteccion, se puede variar
				vsp = vsp * -0.6;
				hsp = hsp * 3;
				camera_shake = 1;
				spawn_hit_fx( x, y + 10, 302 );			//Puedes cambiar aqui el efecto que sale al rebotar
			}
			sound_play(asset_get("sfx_blow_medium3"));
		} else	if spr_dir == -1{
			if x > player_id.x - 200 {
				vsp = vsp * -0.6;	
				hsp = hsp * 3;
				camera_shake = 1;
				spawn_hit_fx( x, y + 10, 302 );			//Puedes cambiar aqui el efecto que sale al rebotar
			}			
			sound_play(asset_get("sfx_blow_medium3"));
		}
		//Podrias aumentar la duracion del proyectil por esta nueva funcionalidad
	}
	
//NUEVA INTERACCION: DSPECIAL Y USPECIAL
	if  player_id.attack == AT_USPECIAL && player_id.window == 2 && vsp >0 && player_id.state == PS_ATTACK_AIR && ( y < player_id.y +64 &&  y > player_id.y) {
		 if x < (player_id.x + 32) && x > (player_id.x - 32) {					//Con estos valores se forma la caja de deteccion, se puede variar
			destroyed = true;
			player_id.vsp = -8;													//Aqui puedes cambiar el boost que recibe
			//Y por supuesto, aqui iria un posible sound effect
		}
	}

	if  player_id.attack == AT_USPECIAL_GROUND && player_id.window == 2 && vsp >0 && player_id.state == PS_ATTACK_GROUND && ( y < player_id.y &&  y > player_id.y - 64) {
		if player_id.spr_dir == 1{					//Derecha
			if (x < player_id.x + 96) && (x > player_id.x) {					//Con estos valores se forma la caja de deteccion, se puede variar
				destroyed = true;
				//player_id.hsp = -10;													//Aqui puedes cambiar el boost HORIZONTAL que recibe	
				//Y por supuesto, aqui iria un posible sound effect
			}
		} else if player_id.spr_dir == -1 {			//Izquierda
			if (x > player_id.x - 96) && (x < player_id.x) {					//Con estos valores se forma la caja de deteccion, se puede variar
				destroyed = true;
				//player_id.hsp = 10;													//Aqui puedes cambiar el boost HORIZONTAL que recibe
				//Y por supuesto, aqui iria un posible sound effect
			}
		}

	}

	if (!free)
		destroyed = true;
	if (destroyed)
	{
		sound_play(sound_get("EXPLODCL"));
		create_hitbox( AT_DSPECIAL, 2, x + 1*spr_dir, y + 4*spr_dir );
	}
}
if (attack == AT_DSPECIAL && hbox_num == 1)
{		
	// Estas son las condiciones para que rebote el dspecial
	if  player_id.attack == AT_FAIR && player_id.window == 2 && vsp >0 && (player_id.state == PS_ATTACK_GROUND ||player_id.state == PS_ATTACK_AIR) && ( y > player_id.y -60 &&  y < player_id.y) && player_id.spr_dir == spr_dir{
		if player_id.spr_dir == 1{
			 if x < player_id.x + 120 {					//Con estos valores se forma la caja de deteccion, se puede variar
				vsp = vsp * -1.5;
				hsp = hsp * 3;
				camera_shake = 1;
				spawn_hit_fx( x, y + 10, 302 );	
			sound_play(asset_get("sfx_blow_medium3"));
				//Aqui le puedes agregar un sound effect
			}
		} else if player_id.spr_dir == -1{
			if x > player_id.x - 120 {
				vsp = vsp * -1.5;
				hsp = hsp * 3;
				camera_shake = 1;
				spawn_hit_fx( x, y + 10, 302 );
			sound_play(asset_get("sfx_blow_medium3"));				 
				//Aqui le puedes agregar un sound effect
			}			
		}
		//Podrias aumentar la duracion del proyectil por esta nueva funcionalidad
	}
}


//destroy pitchthrow
if (attack == AT_DAIR && hbox_num == 4)
{	
	if (!free)
		destroyed = true;
		if (destroyed)
	{
		sound_play(asset_get("sfx_shovel_hit_heavy2"));
	}
}

//ARTICL
if (attack == AT_DAIR && hbox_num == 4 ){
	var  pitch = hit_fx_create( sprite_get( "pitchthrow_afterimg" ), 10);
	spawn_hit_fx( x + 0*spr_dir , y + -40 , pitch ) 
}
//Afterimage

if attack == AT_DSPECIAL && hbox_num == 1 {
		var  trail = hit_fx_create( sprite_get( "Trail" ), 15);
	spawn_hit_fx( x + -4*spr_dir , y , trail )
	
}

//BULLT
if (attack == AT_NSPECIAL && hbox_num > 0 && sprite_index = sprite_get ("bulletF")){
	var  trail2 = hit_fx_create( sprite_get( "TrailF" ), 10);
	spawn_hit_fx( x + -9*spr_dir , y + 3 , trail2 ) 
}
if (attack == AT_NSPECIAL && hbox_num > 0 && sprite_index = sprite_get ("bulletI")){
	var  trail3 = hit_fx_create( sprite_get( "TrailI" ), 10);
	spawn_hit_fx( x + -9*spr_dir , y + 3 , trail3 ) 
}
if (attack == AT_NSPECIAL && hbox_num > 0 && sprite_index = sprite_get ("tesla")){
	var  trail4 = hit_fx_create( sprite_get( "TrailT" ), 10);
	spawn_hit_fx( x + -9*spr_dir , y + 3 , trail4 ) 
}
if ((attack == AT_NSPECIAL_2 or attack == AT_NSPECIAL_AIR) && hbox_num > 0 && sprite_index = sprite_get ("bullet")){
	var  trail5 = hit_fx_create( sprite_get( "TrailD" ), 10);
	spawn_hit_fx( x + 8*spr_dir , y + 0 , trail5 ) 
}