set_player_stocks( 1, 10);
set_player_stocks( 2, 15);
set_player_stocks( 3, 100);
set_player_stocks( 4, 105);
//
//


//==================================================

	with oPlayer {//oPlayer
//======================t============================
		//←
		if ( x <= get_marker_x( 1 )) {

				instance_destroy(obj_article1);
				instance_destroy(obj_article2);
				instance_destroy(obj_article3);
				instance_destroy(obj_article_solid);
				instance_destroy(obj_article_platform);
				instance_destroy(pHitBox);
				instance_destroy(pHurtBox);
				instance_destroy(hit_fx_obj);
				sound_play( asset_get("mfx_result_expand"));

			with ( obj_stage_article_platform ) {
			Delete = true
			}

			with ( obj_stage_article_solid ) {
			Delete = true
			x =0
			y =0
			}
			with ( obj_stage_article ) {
			destroy_hitboxes();
				if ( get_article_script( id ) == 96 ) {
				xq +=1;
				initialization = false
				}
			Delete = true
			}

			if (variable_instance_exists(id, "temp_level")) {
			y = 256;
			}else{
			x = 960
			}
		}
//======================t============================
//======================t============================
//→
		if ( x >= get_marker_x( 6 )) {

				instance_destroy(obj_article1);
				instance_destroy(obj_article2);
				instance_destroy(obj_article3);
				instance_destroy(obj_article_solid);
				instance_destroy(obj_article_platform);
				instance_destroy(pHitBox);
				instance_destroy(pHurtBox);
				instance_destroy(hit_fx_obj);
			sound_play( asset_get("sfx_frog_uspecial_cast"));
	
			with ( obj_stage_article_platform ) {
			Delete = true
			}

			with ( obj_stage_article_solid ) {
			Delete = true
			x =0
			y =0
			}
			with ( obj_stage_article ) {
			destroy_hitboxes();
				if ( get_article_script( id ) == 96 ) {
				xq -=1;
				initialization = false
				}
			Delete = true
			}
		
			if (variable_instance_exists(id, "temp_level")) {
			y = 256;
			}else{
			x = 64
			}
		}
//======================t============================
//======================t============================
//↑
		if ( y <= get_marker_y( 3 )) {

				instance_destroy(obj_article1);
				instance_destroy(obj_article2);
				instance_destroy(obj_article3);
				instance_destroy(obj_article_solid);
				instance_destroy(obj_article_platform);
				instance_destroy(pHitBox);
				instance_destroy(pHurtBox);
				instance_destroy(hit_fx_obj);
			sound_play( asset_get("sfx_frog_uspecial_cast"));
	
			with ( obj_stage_article_platform ) {
			Delete = true
			}

			with ( obj_stage_article_solid ) {
			x =0
			y =0
			Delete = true
			}
			with ( obj_stage_article ) {
			destroy_hitboxes();
			Delete = true
				if ( get_article_script( id ) == 96 ) {
				yq +=1;
				initialization = false
				}
			}
	
			if (variable_instance_exists(id, "temp_level")) {
			y = 256;
			}else{
			y = 576
			}

		}
//======================t============================
//======================t============================
//↓
		if ( y >= get_marker_y( 4 )) {

				instance_destroy(obj_article1);
				instance_destroy(obj_article2);
				instance_destroy(obj_article3);
				instance_destroy(obj_article_solid);
				instance_destroy(obj_article_platform);
				instance_destroy(pHitBox);
				instance_destroy(pHurtBox);
				instance_destroy(hit_fx_obj);
			sound_play( asset_get("sfx_frog_uspecial_cast"));
	
			with ( obj_stage_article_platform ) {
			Delete = true
			}

			with ( obj_stage_article_solid ) {
			x =0
			y =0
			Delete = true
			}
			with ( obj_stage_article ) {
			destroy_hitboxes();
				if ( get_article_script( id ) == 96 ) {
				yq -=1;
				initialization = false
				}
			Delete = true
			}

			if (variable_instance_exists(id, "temp_level")) {
			y = 256;
			}else{
			y = 128
			}

		}
//======================t============================
				if (get_player_damage( player ) >= 100) {
				create_deathbox(x, y, 1100, 1100, -1, true, 1, 5, 2);
				}
}



if(effect >= 1){
		if(timer >= 60){
		var smog_article = instance_create(x-500,y-500, "obj_stage_article" ,50);
			if(effect == 2){
			smog_article.y=random_func( 100, 1130, false );
				with(smog_article){
				sph = 1
				}
			}else{
			smog_article.x=random_func( 100, 1030, false );
			smog_article.y=random_func( 100, 1130, false );
			smog_article.x=random_func( 0, 1000, false );


			}
		timer =0
		}else{
			if(effect == 2){
			timer +=10
			}else{
			timer +=1
			}
		}
}else{
	if(effect == 0){
		with ( obj_stage_article ) {
			if ( get_article_script( id ) == 50 ) {
			destroy_hitboxes();
			}
		}
	}
}

if(xq == -1){
sprite_index = sprite_get("kiso18");
		take_damage( player, -1, -999 );
}


if(xq == 0){
sprite_index = sprite_get("kiso19");
		take_damage( player, -1, -999 );
}


if(xq == -4){
	if(yq == -4){
	sprite_index = sprite_get("kiso15");
		take_damage( player, -1, -999 );
	}
}





if (initialization == false){//8

instance_create(x-500,y-500, "obj_stage_article" , 296);
instance_create(x-500,y-500, "obj_stage_article" , 196);
instance_create(x-500,y-500, "obj_stage_article" , 95);
instance_create(x-500,y-500, "obj_stage_article" , 94);

		if(cep == 1){
				if(xq == -4){//-4-4
					if(yq == -4){
					instance_create(x+512,y+320, "obj_stage_article" , 520)
					}
				}
		}

if(xq == -4){
	if(yq == -4){

	instance_create(x+64,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+128,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+192,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+256,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+320,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+384,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+448,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+512,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+576,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+640,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+704,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+768,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+832,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+896,y+0, "obj_stage_article_solid" , 2);

instance_create(x+0,y+0, "obj_stage_article_solid" , 2);
instance_create(x+0,y+64, "obj_stage_article_solid" , 2);
instance_create(x+0,y+128, "obj_stage_article_solid" , 2);
instance_create(x+0,y+192, "obj_stage_article_solid" , 2);
instance_create(x+0,y+256, "obj_stage_article_solid" , 2);
instance_create(x+0,y+320, "obj_stage_article_solid" , 2);
instance_create(x+0,y+384, "obj_stage_article_solid" , 2);
instance_create(x+0,y+448, "obj_stage_article_solid" , 2);
instance_create(x+0,y+512, "obj_stage_article_solid" , 2);

instance_create(x+960,y+0, "obj_stage_article_solid" , 2);
//instance_create(x+960,y+64, "obj_stage_article_solid" , 2);
//instance_create(x+960,y+128, "obj_stage_article_solid" , 2);
//instance_create(x+960,y+192, "obj_stage_article_solid" , 2);
//instance_create(x+960,y+256, "obj_stage_article_solid" , 2);
//instance_create(x+960,y+320, "obj_stage_article_solid" , 2);
//instance_create(x+960,y+384, "obj_stage_article_solid" , 2);
//instance_create(x+960,y+448, "obj_stage_article_solid" , 2);
instance_create(x+960,y+512, "obj_stage_article_solid" , 2);

	instance_create(x+64,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+128,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+192,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+256,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+320,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+384,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+448,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+512,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+576,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+640,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+704,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+768,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+832,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+896,y+512, "obj_stage_article_solid" , 2);

//
	instance_create(x+512,y+448, "obj_stage_article_solid" , 2);
	instance_create(x+576,y+384, "obj_stage_article_solid" , 2);
	instance_create(x+640,y+320, "obj_stage_article_solid" , 2);
	instance_create(x+704,y+320, "obj_stage_article_solid" , 2);
	instance_create(x+768,y+320, "obj_stage_article_solid" , 2);
	instance_create(x+832,y+320, "obj_stage_article_solid" , 2);
	instance_create(x+896,y+320, "obj_stage_article_solid" , 2);
	instance_create(x+960,y+320, "obj_stage_article_solid" , 2);


//
	}

}

if(xq == -5){//-5-4
	if(yq == -4){

	instance_create(x+0,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+64,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+128,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+192,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+256,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+320,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+384,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+448,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+512,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+576,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+640,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+704,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+768,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+832,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+896,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+960,y+0, "obj_stage_article_solid" , 2);

instance_create(x+0,y+0, "obj_stage_article_solid" , 2);




instance_create(x+0,y+512, "obj_stage_article_solid" , 2);

instance_create(x+960,y+0, "obj_stage_article_solid" , 2);
instance_create(x+960,y+64, "obj_stage_article_solid" , 2);
instance_create(x+960,y+128, "obj_stage_article_solid" , 2);
instance_create(x+960,y+192, "obj_stage_article_solid" , 2);
instance_create(x+960,y+256, "obj_stage_article_solid" , 2);



instance_create(x+960,y+512, "obj_stage_article_solid" , 2);

	instance_create(x+0,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+64,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+128,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+192,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+256,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+320,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+384,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+448,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+512,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+576,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+640,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+704,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+768,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+832,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+896,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+960,y+512, "obj_stage_article_solid" , 2);



//
	instance_create(x+0,y+320, "obj_stage_article_solid" , 2);
	instance_create(x+64,y+320, "obj_stage_article_solid" , 2);
	instance_create(x+128,y+320, "obj_stage_article_solid" , 2);
	instance_create(x+192,y+320, "obj_stage_article_solid" , 2);
	instance_create(x+256,y+320, "obj_stage_article_solid" , 2);
	instance_create(x+320,y+384, "obj_stage_article_solid" , 2);
	instance_create(x+384,y+448, "obj_stage_article_solid" , 2);


	instance_create(x+448,y+64, "obj_stage_article_solid" , 2);
	instance_create(x+512,y+64, "obj_stage_article_solid" , 2);
	instance_create(x+576,y+64, "obj_stage_article_solid" , 2);
	instance_create(x+640,y+64, "obj_stage_article_solid" , 2);
	instance_create(x+704,y+64, "obj_stage_article_solid" , 2);
	instance_create(x+768,y+128, "obj_stage_article_solid" , 2);
	instance_create(x+832,y+192, "obj_stage_article_solid" , 2);
	instance_create(x+896,y+256, "obj_stage_article_solid" , 2);
//

	var t =instance_create(x+768,y+512, "obj_stage_article" , 701);
	with(t){
	type = 1
	}
//
	}
}

if(xq == -6){
	if(yq == -4){
music_play_file( "Shokubeni" );

	instance_create(x+0,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+64,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+128,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+192,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+256,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+320,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+384,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+448,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+512,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+576,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+640,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+704,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+768,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+832,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+896,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+960,y+0, "obj_stage_article_solid" , 2);

instance_create(x+0,y+0, "obj_stage_article_solid" , 2);
instance_create(x+0,y+64, "obj_stage_article_solid" , 2);
instance_create(x+0,y+128, "obj_stage_article_solid" , 2);
instance_create(x+0,y+192, "obj_stage_article_solid" , 2);
instance_create(x+0,y+256, "obj_stage_article_solid" , 2);



instance_create(x+0,y+512, "obj_stage_article_solid" , 2);

instance_create(x+960,y+0, "obj_stage_article_solid" , 2);
instance_create(x+960,y+64, "obj_stage_article_solid" , 2);
instance_create(x+960,y+128, "obj_stage_article_solid" , 2);



instance_create(x+960,y+384, "obj_stage_article_solid" , 2);
instance_create(x+960,y+448, "obj_stage_article_solid" , 2);
instance_create(x+960,y+512, "obj_stage_article_solid" , 2);

	instance_create(x+0,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+64,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+128,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+192,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+256,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+320,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+384,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+448,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+512,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+576,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+640,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+704,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+768,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+832,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+896,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+960,y+512, "obj_stage_article_solid" , 2);
//
	instance_create(x+256,y+448, "obj_stage_article_solid" , 2);
	instance_create(x+320,y+448, "obj_stage_article_solid" , 2);
	instance_create(x+384,y+448, "obj_stage_article_solid" , 2);
	instance_create(x+448,y+424, "obj_stage_article_solid" , 2);
	instance_create(x+512,y+424, "obj_stage_article_solid" , 2);
	instance_create(x+576,y+424, "obj_stage_article_solid" , 2);
	instance_create(x+640,y+424, "obj_stage_article_solid" , 2);
	instance_create(x+704,y+384, "obj_stage_article_solid" , 2);
	instance_create(x+768,y+384, "obj_stage_article_solid" , 2);
	instance_create(x+832,y+384, "obj_stage_article_solid" , 2);
	instance_create(x+896,y+384, "obj_stage_article_solid" , 2);
	instance_create(x+960,y+384, "obj_stage_article_solid" , 2);

//
	}
}


if(xq == -7){//-7-3
	if(yq == -3){
music_play_file( "Shokubeni" );

	instance_create(x+0,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+64,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+128,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+192,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+256,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+320,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+384,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+448,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+512,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+576,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+640,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+704,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+768,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+832,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+896,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+960,y+0, "obj_stage_article_solid" , 2);

instance_create(x+0,y+0, "obj_stage_article_solid" , 2);
instance_create(x+0,y+64, "obj_stage_article_solid" , 2);
instance_create(x+0,y+128, "obj_stage_article_solid" , 2);
instance_create(x+0,y+192, "obj_stage_article_solid" , 2);
instance_create(x+0,y+256, "obj_stage_article_solid" , 2);
instance_create(x+0,y+320, "obj_stage_article_solid" , 2);
instance_create(x+0,y+384, "obj_stage_article_solid" , 2);
instance_create(x+0,y+448, "obj_stage_article_solid" , 2);
instance_create(x+0,y+512, "obj_stage_article_solid" , 2);

instance_create(x+960,y+64, "obj_stage_article_solid" , 2);
instance_create(x+960,y+128, "obj_stage_article_solid" , 2);



instance_create(x+960,y+384, "obj_stage_article_solid" , 2);
instance_create(x+960,y+448, "obj_stage_article_solid" , 2);

	instance_create(x+0,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+64,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+128,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+192,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+256,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+320,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+384,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+448,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+512,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+576,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+640,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+704,y+512, "obj_stage_article_solid" , 2);



	instance_create(x+960,y+512, "obj_stage_article_solid" , 2);

//
	instance_create(x+320,y+320, "obj_stage_article_solid" , 2);
	instance_create(x+384,y+320, "obj_stage_article_solid" , 2);
	instance_create(x+448,y+320, "obj_stage_article_solid" , 2);
	instance_create(x+512,y+320, "obj_stage_article_solid" , 2);
	instance_create(x+576,y+320, "obj_stage_article_solid" , 2);
//
	instance_create(x+640,y+384, "obj_stage_article_solid" , 2);
	instance_create(x+704,y+384, "obj_stage_article_solid" , 2);
	instance_create(x+768,y+384, "obj_stage_article_solid" , 2);
	instance_create(x+832,y+384, "obj_stage_article_solid" , 2);
	instance_create(x+896,y+384, "obj_stage_article_solid" , 2);
	instance_create(x+960,y+384, "obj_stage_article_solid" , 2);

//

	instance_create(x+256,y+128, "obj_stage_article" , 1001);


	instance_create(x+640,y+320, "obj_stage_article" , 701);


	}
}
if(xq == -8){//-8-3
	if(yq == -3){
music_play_file( "Shokubeni" );

	instance_create(x+0,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+64,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+128,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+192,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+256,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+320,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+384,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+448,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+512,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+576,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+640,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+704,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+768,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+832,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+896,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+960,y+0, "obj_stage_article_solid" , 2);

instance_create(x+0,y+0, "obj_stage_article_solid" , 2);
instance_create(x+0,y+64, "obj_stage_article_solid" , 2);
instance_create(x+0,y+128, "obj_stage_article_solid" , 2);



instance_create(x+0,y+384, "obj_stage_article_solid" , 2);
instance_create(x+0,y+448, "obj_stage_article_solid" , 2);
instance_create(x+0,y+512, "obj_stage_article_solid" , 2);

instance_create(x+960,y+64, "obj_stage_article_solid" , 2);
instance_create(x+960,y+128, "obj_stage_article_solid" , 2);
instance_create(x+960,y+192, "obj_stage_article_solid" , 2);
instance_create(x+960,y+256, "obj_stage_article_solid" , 2);
instance_create(x+960,y+320, "obj_stage_article_solid" , 2);
instance_create(x+960,y+384, "obj_stage_article_solid" , 2);
instance_create(x+960,y+448, "obj_stage_article_solid" , 2);

	instance_create(x+0,y+550, "obj_stage_article_solid" , 2);
	instance_create(x+64,y+550, "obj_stage_article_solid" , 2);
	instance_create(x+128,y+550, "obj_stage_article_solid" , 2);
	instance_create(x+192,y+550, "obj_stage_article_solid" , 2);
	instance_create(x+256,y+550, "obj_stage_article_solid" , 2);
	instance_create(x+320,y+550, "obj_stage_article_solid" , 2);
	instance_create(x+384,y+550, "obj_stage_article_solid" , 2);
	instance_create(x+448,y+550, "obj_stage_article_solid" , 2);
	instance_create(x+512,y+550, "obj_stage_article_solid" , 2);
	instance_create(x+576,y+550, "obj_stage_article_solid" , 2);
	instance_create(x+640,y+550, "obj_stage_article_solid" , 2);
	instance_create(x+704,y+550, "obj_stage_article_solid" , 2);
	instance_create(x+768,y+550, "obj_stage_article_solid" , 2);
	instance_create(x+832,y+550, "obj_stage_article_solid" , 2);
	instance_create(x+896,y+550, "obj_stage_article_solid" , 2);
	instance_create(x+960,y+550, "obj_stage_article_solid" , 2);

//
	instance_create(x+64,y+384, "obj_stage_article_solid" , 2);
//
	instance_create(x+128,y+320, "obj_stage_article_solid" , 2);
	instance_create(x+128,y+256, "obj_stage_article_solid" , 2);
	instance_create(x+192,y+256, "obj_stage_article_solid" , 2);
//
	instance_create(x+320,y+64, "obj_stage_article_solid" , 2);
	instance_create(x+384,y+64, "obj_stage_article_solid" , 2);
	instance_create(x+384,y+128, "obj_stage_article_solid" , 2);
	instance_create(x+384,y+192, "obj_stage_article_solid" , 2);
	instance_create(x+384,y+256, "obj_stage_article_solid" , 2);
//
	instance_create(x+448,y+192, "obj_stage_article_platform" , 3);
//
	instance_create(x+576,y+192, "obj_stage_article_solid" , 2);
//
	instance_create(x+704,y+320, "obj_stage_article_solid" , 2);
	instance_create(x+704,y+256, "obj_stage_article_solid" , 2);
	instance_create(x+704,y+192, "obj_stage_article_solid" , 2);
	instance_create(x+704,y+128, "obj_stage_article_solid" , 2);
	instance_create(x+704,y+64, "obj_stage_article_solid" , 2);
//
	instance_create(x+768,y+320, "obj_stage_article_solid" , 2);

	}
}

if(xq == -7){//-7-4
	if(yq == -4){
music_play_file( "Shokubeni" );

	instance_create(x+0,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+64,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+128,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+192,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+256,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+320,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+384,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+448,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+512,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+576,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+640,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+704,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+768,y+128, "obj_stage_article_platform" , 3);
	instance_create(x+832,y+128, "obj_stage_article_platform" , 3);
	instance_create(x+896,y+128, "obj_stage_article_platform" , 3);
	instance_create(x+960,y+0, "obj_stage_article_solid" , 2);

instance_create(x+0,y+0, "obj_stage_article_solid" , 2);
instance_create(x+0,y+64, "obj_stage_article_solid" , 2);
instance_create(x+0,y+128, "obj_stage_article_solid" , 2);



instance_create(x+0,y+384, "obj_stage_article_solid" , 2);
instance_create(x+0,y+448, "obj_stage_article_solid" , 2);
instance_create(x+0,y+512, "obj_stage_article_solid" , 2);

instance_create(x+960,y+64, "obj_stage_article_solid" , 2);
instance_create(x+960,y+128, "obj_stage_article_solid" , 2);



instance_create(x+960,y+384, "obj_stage_article_solid" , 2);
instance_create(x+960,y+448, "obj_stage_article_solid" , 2);

	instance_create(x+0,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+64,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+128,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+192,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+256,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+320,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+384,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+448,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+512,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+576,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+640,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+704,y+512, "obj_stage_article_solid" , 2);



	instance_create(x+960,y+512, "obj_stage_article_solid" , 2);


//


	instance_create(x+0,y+128, "obj_stage_article_solid" , 2);
	instance_create(x+64,y+128, "obj_stage_article_solid" , 2);
	instance_create(x+128,y+128, "obj_stage_article_solid" , 2);
	instance_create(x+192,y+128, "obj_stage_article_solid" , 2);
	instance_create(x+256,y+128, "obj_stage_article_solid" , 2);
	instance_create(x+320,y+128, "obj_stage_article_solid" , 2);
	instance_create(x+384,y+128, "obj_stage_article_solid" , 2);
	instance_create(x+448,y+128, "obj_stage_article_solid" , 2);
	instance_create(x+512,y+128, "obj_stage_article_solid" , 2);
	instance_create(x+576,y+128, "obj_stage_article_solid" , 2);
	instance_create(x+640,y+128, "obj_stage_article_solid" , 2);
	instance_create(x+704,y+64, "obj_stage_article_solid" , 2);



	instance_create(x+960,y+64, "obj_stage_article_solid" , 2);

//
	instance_create(x+0,y+384, "obj_stage_article_solid" , 2);
	instance_create(x+64,y+384, "obj_stage_article_solid" , 2);
	instance_create(x+128,y+384, "obj_stage_article_solid" , 2);
	instance_create(x+192,y+384, "obj_stage_article_solid" , 2);
	instance_create(x+256,y+384, "obj_stage_article_solid" , 2);
	instance_create(x+320,y+384, "obj_stage_article_solid" , 2);
	instance_create(x+384,y+384, "obj_stage_article_solid" , 2);
	instance_create(x+448,y+384, "obj_stage_article_solid" , 2);
	instance_create(x+512,y+384, "obj_stage_article_solid" , 2);
	instance_create(x+576,y+384, "obj_stage_article_solid" , 2);
	instance_create(x+640,y+384, "obj_stage_article_solid" , 2);
	instance_create(x+704,y+384, "obj_stage_article_solid" , 2);



	instance_create(x+960,y+384, "obj_stage_article_solid" , 2);

	instance_create(x+704,y+448, "obj_stage_article_solid" , 2);



	instance_create(x+960,y+448, "obj_stage_article_solid" , 2);
//
	}
}
if(xq == -8){//-8-4
	if(yq == -4){
music_play_file( "Shokubeni" );

	instance_create(x+0,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+64,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+128,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+192,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+256,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+320,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+384,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+448,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+512,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+576,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+640,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+704,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+768,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+832,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+896,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+960,y+0, "obj_stage_article_solid" , 2);

instance_create(x+0,y+0, "obj_stage_article_solid" , 2);
instance_create(x+0,y+64, "obj_stage_article_solid" , 2);
instance_create(x+0,y+128, "obj_stage_article_solid" , 2);



instance_create(x+0,y+384, "obj_stage_article_solid" , 2);
instance_create(x+0,y+448, "obj_stage_article_solid" , 2);
instance_create(x+0,y+512, "obj_stage_article_solid" , 2);

instance_create(x+960,y+0, "obj_stage_article_solid" , 2);
instance_create(x+960,y+64, "obj_stage_article_solid" , 2);
instance_create(x+960,y+128, "obj_stage_article_solid" , 2);



instance_create(x+960,y+384, "obj_stage_article_solid" , 2);
instance_create(x+960,y+448, "obj_stage_article_solid" , 2);
instance_create(x+960,y+512, "obj_stage_article_solid" , 2);

	instance_create(x+0,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+64,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+128,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+192,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+256,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+320,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+384,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+448,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+512,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+576,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+640,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+704,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+768,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+832,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+896,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+960,y+512, "obj_stage_article_solid" , 2);

//
	instance_create(x+192,y+448, "obj_stage_article_solid" , 2);
	instance_create(x+256,y+384, "obj_stage_article_solid" , 2);
	instance_create(x+256,y+320, "obj_stage_article_solid" , 2);
	instance_create(x+320,y+320, "obj_stage_article_solid" , 2);
//
	instance_create(x+448,y+448, "obj_stage_article_solid" , 2);
	instance_create(x+448,y+384, "obj_stage_article_solid" , 2);
	instance_create(x+448,y+320, "obj_stage_article_solid" , 2);
//
	instance_create(x+640,y+64, "obj_stage_article_solid" , 2);
	instance_create(x+640,y+128, "obj_stage_article_solid" , 2);
	instance_create(x+640,y+192, "obj_stage_article_solid" , 2);
//
	instance_create(x+832,y+384, "obj_stage_article_solid" , 2);
	instance_create(x+896,y+384, "obj_stage_article_solid" , 2);
	}
}

if(xq == -9){//-9-4
	if(yq == -4){
music_play_file( "Shokubeni" );

	instance_create(x+0,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+64,y+0, "obj_stage_article_solid" , 2);



	instance_create(x+320,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+384,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+448,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+512,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+576,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+640,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+704,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+768,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+832,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+896,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+960,y+0, "obj_stage_article_solid" , 2);

instance_create(x+0,y+0, "obj_stage_article_solid" , 2);
instance_create(x+0,y+64, "obj_stage_article_solid" , 2);
instance_create(x+0,y+128, "obj_stage_article_solid" , 2);



instance_create(x+0,y+384, "obj_stage_article_solid" , 2);
instance_create(x+0,y+448, "obj_stage_article_solid" , 2);
instance_create(x+0,y+512, "obj_stage_article_solid" , 2);

instance_create(x+960,y+0, "obj_stage_article_solid" , 2);
instance_create(x+960,y+64, "obj_stage_article_solid" , 2);
instance_create(x+960,y+128, "obj_stage_article_solid" , 2);
instance_create(x+960,y+192, "obj_stage_article_solid" , 2);
instance_create(x+960,y+256, "obj_stage_article_solid" , 2);



instance_create(x+960,y+512, "obj_stage_article_solid" , 2);

	instance_create(x+0,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+64,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+128,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+192,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+256,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+320,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+384,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+448,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+512,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+576,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+640,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+704,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+768,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+832,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+896,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+960,y+512, "obj_stage_article_solid" , 2);
//
	instance_create(x+128,y+384, "obj_stage_article_solid" , 2);
	instance_create(x+192,y+384, "obj_stage_article_solid" , 2);
	instance_create(x+256,y+384, "obj_stage_article_solid" , 2);

	instance_create(x+128,y+192, "obj_stage_article_platform" , 3); 
	instance_create(x+192,y+192, "obj_stage_article_platform" , 3); 
	instance_create(x+256,y+192, "obj_stage_article_platform" , 3); 
	}
}


if(xq == -9){//-9-3
	if(yq == -3){
music_play_file( "Shokubeni" );

	instance_create(x+0,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+64,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+128,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+192,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+256,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+320,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+384,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+448,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+512,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+576,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+640,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+704,y+0, "obj_stage_article_solid" , 2);



	instance_create(x+960,y+0, "obj_stage_article_solid" , 2);

instance_create(x+0,y+0, "obj_stage_article_solid" , 2);
instance_create(x+0,y+64, "obj_stage_article_solid" , 2);
instance_create(x+0,y+128, "obj_stage_article_solid" , 2);
instance_create(x+0,y+192, "obj_stage_article_solid" , 2);
instance_create(x+0,y+256, "obj_stage_article_solid" , 2);
instance_create(x+0,y+320, "obj_stage_article_solid" , 2);
instance_create(x+0,y+384, "obj_stage_article_solid" , 2);
instance_create(x+0,y+448, "obj_stage_article_solid" , 2);
instance_create(x+0,y+512, "obj_stage_article_solid" , 2);

instance_create(x+960,y+0, "obj_stage_article_solid" , 2);
instance_create(x+960,y+64, "obj_stage_article_solid" , 2);
instance_create(x+960,y+128, "obj_stage_article_solid" , 2);
instance_create(x+960,y+192, "obj_stage_article_solid" , 2);
instance_create(x+960,y+256, "obj_stage_article_solid" , 2);
instance_create(x+960,y+320, "obj_stage_article_solid" , 2);
instance_create(x+960,y+384, "obj_stage_article_solid" , 2);
instance_create(x+960,y+448, "obj_stage_article_solid" , 2);
instance_create(x+960,y+512, "obj_stage_article_solid" , 2);

	instance_create(x+0,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+64,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+128,y+512, "obj_stage_article_platform" , 3); 
	instance_create(x+192,y+512, "obj_stage_article_platform" , 3); 
	instance_create(x+256,y+512, "obj_stage_article_platform" , 3); 
	instance_create(x+320,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+384,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+448,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+512,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+576,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+640,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+704,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+768,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+832,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+896,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+960,y+512, "obj_stage_article_solid" , 2);

//
	instance_create(x+128,y+256, "obj_stage_article_solid" , 2);
	instance_create(x+192,y+256, "obj_stage_article_solid" , 2);
	instance_create(x+256,y+256, "obj_stage_article_solid" , 2);
	instance_create(x+320,y+320, "obj_stage_article_solid" , 2);
	instance_create(x+320,y+384, "obj_stage_article_solid" , 2);
	instance_create(x+320,y+448, "obj_stage_article_solid" , 2);
//
	instance_create(x+448,y+64, "obj_stage_article_solid" , 2);
	instance_create(x+448,y+128, "obj_stage_article_solid" , 2);
	instance_create(x+448,y+192, "obj_stage_article_solid" , 2);
//
	instance_create(x+768,y+256, "obj_stage_article_solid" , 2);
	instance_create(x+832,y+256, "obj_stage_article_solid" , 2);
	instance_create(x+896,y+256, "obj_stage_article_solid" , 2);
//
	}
}

if(xq == -9){//-9-2
	if(yq == -2){
music_play_file( "Shokubeni" );

	instance_create(x+0,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+64,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+128,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+192,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+256,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+320,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+384,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+448,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+512,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+576,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+640,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+704,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+768,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+832,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+896,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+960,y+0, "obj_stage_article_solid" , 2);

instance_create(x+0,y+0, "obj_stage_article_solid" , 2);
instance_create(x+0,y+64, "obj_stage_article_solid" , 2);
instance_create(x+0,y+128, "obj_stage_article_solid" , 2);
instance_create(x+0,y+192, "obj_stage_article_solid" , 2);
instance_create(x+0,y+256, "obj_stage_article_solid" , 2);
instance_create(x+0,y+320, "obj_stage_article_solid" , 2);
instance_create(x+0,y+384, "obj_stage_article_solid" , 2);
instance_create(x+0,y+448, "obj_stage_article_solid" , 2);
instance_create(x+0,y+512, "obj_stage_article_solid" , 2);

instance_create(x+960,y+0, "obj_stage_article_solid" , 2);
instance_create(x+960,y+64, "obj_stage_article_solid" , 2);
instance_create(x+960,y+128, "obj_stage_article_solid" , 2);
//instance_create(x+960,y+192, "obj_stage_article_solid" , 2);
//instance_create(x+960,y+256, "obj_stage_article_solid" , 2);
//instance_create(x+960,y+320, "obj_stage_article_solid" , 2);
instance_create(x+960,y+384, "obj_stage_article_solid" , 2);
instance_create(x+960,y+448, "obj_stage_article_solid" , 2);
instance_create(x+960,y+512, "obj_stage_article_solid" , 2);

	instance_create(x+0,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+64,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+128,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+192,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+256,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+320,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+384,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+448,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+512,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+576,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+640,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+704,y+512, "obj_stage_article_solid" , 2);
		instance_create(x+768,y+512, "obj_stage_article_platform" , 3);
		instance_create(x+832,y+512, "obj_stage_article_platform" , 3);
		instance_create(x+896,y+512, "obj_stage_article_platform" , 3);
	instance_create(x+960,y+512, "obj_stage_article_solid" , 2);

//
	instance_create(x+128,y+64, "obj_stage_article_solid" , 2);
	instance_create(x+128,y+128, "obj_stage_article_solid" , 2);
	instance_create(x+128,y+192, "obj_stage_article_solid" , 2);
	instance_create(x+128,y+256, "obj_stage_article_solid" , 2);
	instance_create(x+128,y+320, "obj_stage_article_solid" , 2);
	instance_create(x+128,y+384, "obj_stage_article_solid" , 2);
	instance_create(x+128,y+448, "obj_stage_article_solid" , 2);
//
	instance_create(x+384,y+320, "obj_stage_article_solid" , 2);
	instance_create(x+448,y+320, "obj_stage_article_solid" , 2);
	instance_create(x+512,y+320, "obj_stage_article_solid" , 2);
	instance_create(x+576,y+320, "obj_stage_article_solid" , 2);
	instance_create(x+640,y+320, "obj_stage_article_solid" , 2);
	instance_create(x+704,y+320, "obj_stage_article_solid" , 2);
	instance_create(x+768,y+320, "obj_stage_article_solid" , 2);
	instance_create(x+832,y+320, "obj_stage_article_solid" , 2);
	instance_create(x+896,y+320, "obj_stage_article_solid" , 2);
//
	}
}

if(xq == -7){//-7-5
	if(yq == -5){
music_play_file( "Shokubeni" );
	instance_create(x+0,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+64,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+128,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+192,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+256,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+320,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+384,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+448,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+512,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+576,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+640,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+704,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+768,y+128, "obj_stage_article_platform" , 3);
	instance_create(x+832,y+128, "obj_stage_article_platform" , 3);
	instance_create(x+896,y+128, "obj_stage_article_platform" , 3);
	instance_create(x+960,y+0, "obj_stage_article_solid" , 2);

instance_create(x+0,y+0, "obj_stage_article_solid" , 2);
instance_create(x+0,y+64, "obj_stage_article_solid" , 2);
instance_create(x+0,y+128, "obj_stage_article_solid" , 2);
instance_create(x+0,y+192, "obj_stage_article_solid" , 2);
instance_create(x+0,y+256, "obj_stage_article_solid" , 2);
instance_create(x+0,y+320, "obj_stage_article_solid" , 2);
instance_create(x+0,y+384, "obj_stage_article_solid" , 2);
instance_create(x+0,y+448, "obj_stage_article_solid" , 2);
instance_create(x+0,y+512, "obj_stage_article_solid" , 2);

instance_create(x+960,y+0, "obj_stage_article_solid" , 2);
instance_create(x+960,y+64, "obj_stage_article_solid" , 2);
instance_create(x+960,y+128, "obj_stage_article_solid" , 2);
//instance_create(x+960,y+192, "obj_stage_article_solid" , 2);
//instance_create(x+960,y+256, "obj_stage_article_solid" , 2);
//instance_create(x+960,y+320, "obj_stage_article_solid" , 2);
instance_create(x+960,y+384, "obj_stage_article_solid" , 2);
instance_create(x+960,y+448, "obj_stage_article_solid" , 2);
instance_create(x+960,y+512, "obj_stage_article_solid" , 2);

	instance_create(x+0,y+530, "obj_stage_article_solid" , 2);
	instance_create(x+64,y+530, "obj_stage_article_solid" , 2);
	instance_create(x+128,y+530, "obj_stage_article_solid" , 2);
	instance_create(x+192,y+530, "obj_stage_article_solid" , 2);
	instance_create(x+256,y+530, "obj_stage_article_solid" , 2);
	instance_create(x+320,y+530, "obj_stage_article_solid" , 2);
	instance_create(x+384,y+530, "obj_stage_article_solid" , 2);
	instance_create(x+448,y+530, "obj_stage_article_solid" , 2);
	instance_create(x+512,y+530, "obj_stage_article_solid" , 2);
	instance_create(x+576,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+640,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+704,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+768,y+512, "obj_stage_article_platform" , 3);
	instance_create(x+832,y+512, "obj_stage_article_platform" , 3);
	instance_create(x+896,y+512, "obj_stage_article_platform" , 3);
	instance_create(x+960,y+512, "obj_stage_article_solid" , 2);
//
	instance_create(x+960,y+128, "obj_stage_article_solid" , 2)

//
	instance_create(x+448,y+64, "obj_stage_article_solid" , 2);
	instance_create(x+448,y+128, "obj_stage_article_solid" , 2);

	instance_create(x+448,y+266, "obj_stage_article_solid" , 2);
	instance_create(x+448,y+320, "obj_stage_article_solid" , 2);
	instance_create(x+448,y+384, "obj_stage_article_solid" , 2);
	instance_create(x+512,y+384, "obj_stage_article_solid" , 2);
	instance_create(x+576,y+384, "obj_stage_article_solid" , 2);
	instance_create(x+640,y+384, "obj_stage_article_solid" , 2);


	instance_create(x+704,y+384, "obj_stage_article_solid" , 2);
	instance_create(x+704,y+448, "obj_stage_article_solid" , 2);
	instance_create(x+960,y+448, "obj_stage_article_solid" , 2);
	instance_create(x+960,y+384, "obj_stage_article_solid" , 2);
//
	instance_create(x+256,y+384, "obj_stage_article_solid" , 2);
	instance_create(x+256,y+448, "obj_stage_article_solid" , 2);
	instance_create(x+320,y+448, "obj_stage_article_solid" , 2);
//
	instance_create(x+64,y+320, "obj_stage_article_solid" , 2);
	instance_create(x+128,y+320, "obj_stage_article_solid" , 2);
//
	instance_create(x+128,y+192, "obj_stage_article_solid" , 2);
	instance_create(x+192,y+192, "obj_stage_article_solid" , 2);
	instance_create(x+256,y+192, "obj_stage_article_solid" , 2);
	instance_create(x+320,y+192, "obj_stage_article_solid" , 2);
	instance_create(x+320,y+128, "obj_stage_article_solid" , 2);
	instance_create(x+320,y+64, "obj_stage_article_solid" , 2);
//
	}
}



if(xq == -8){
	if(yq == -5){
music_play_file( "Shokubeni" );

	instance_create(x+0,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+64,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+128,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+192,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+256,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+320,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+384,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+448,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+512,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+576,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+640,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+704,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+768,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+832,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+896,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+960,y+0, "obj_stage_article_solid" , 2);

instance_create(x+0,y+0, "obj_stage_article_solid" , 2);
instance_create(x+0,y+64, "obj_stage_article_solid" , 2);
instance_create(x+0,y+128, "obj_stage_article_solid" , 2);
//instance_create(x+0,y+192, "obj_stage_article_solid" , 2);
//instance_create(x+0,y+256, "obj_stage_article_solid" , 2);
//instance_create(x+0,y+320, "obj_stage_article_solid" , 2);
instance_create(x+0,y+384, "obj_stage_article_solid" , 2);
instance_create(x+0,y+448, "obj_stage_article_solid" , 2);
instance_create(x+0,y+512, "obj_stage_article_solid" , 2);

instance_create(x+960,y+0, "obj_stage_article_solid" , 2);
instance_create(x+960,y+64, "obj_stage_article_solid" , 2);
instance_create(x+960,y+128, "obj_stage_article_solid" , 2);
//instance_create(x+960,y+192, "obj_stage_article_solid" , 2);
//instance_create(x+960,y+256, "obj_stage_article_solid" , 2);
//instance_create(x+960,y+320, "obj_stage_article_solid" , 2);
instance_create(x+960,y+384, "obj_stage_article_solid" , 2);
instance_create(x+960,y+448, "obj_stage_article_solid" , 2);
instance_create(x+960,y+512, "obj_stage_article_solid" , 2);

	instance_create(x+0,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+64,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+128,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+192,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+256,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+320,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+384,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+448,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+512,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+576,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+640,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+704,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+768,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+832,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+896,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+960,y+512, "obj_stage_article_solid" , 2);
//
	instance_create(x+64,y+384, "obj_stage_article_solid" , 2);

	instance_create(x+128,y+320, "obj_stage_article_solid" , 2);
	instance_create(x+128,y+384, "obj_stage_article_solid" , 2);
	instance_create(x+128,y+448, "obj_stage_article_solid" , 2);
//

	instance_create(x+320,y+320, "obj_stage_article_solid" , 2);
	instance_create(x+320,y+320, "obj_stage_article_solid" , 2);
	instance_create(x+384,y+320, "obj_stage_article_solid" , 2);
	instance_create(x+448,y+320, "obj_stage_article_solid" , 2);
//
	instance_create(x+448,y+256, "obj_stage_article_solid" , 2);
	instance_create(x+448,y+192, "obj_stage_article_solid" , 2);
//
	instance_create(x+576,y+320, "obj_stage_article_solid" , 2);
//
	instance_create(x+704,y+320, "obj_stage_article_solid" , 2);
	instance_create(x+704,y+256, "obj_stage_article_solid" , 2);
	instance_create(x+704,y+192, "obj_stage_article_solid" , 2);

	instance_create(x+832,y+448, "obj_stage_article_solid" , 2);
	instance_create(x+832,y+384, "obj_stage_article_solid" , 2);
	instance_create(x+896,y+384, "obj_stage_article_solid" , 2);
	}
}

if(xq == -9){
	if(yq == -5){
music_play_file( "Shokubeni" );

	instance_create(x+0,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+64,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+128,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+192,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+256,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+320,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+384,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+448,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+512,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+576,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+640,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+704,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+768,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+832,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+896,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+960,y+0, "obj_stage_article_solid" , 2);

instance_create(x+0,y+0, "obj_stage_article_solid" , 2);
instance_create(x+0,y+64, "obj_stage_article_solid" , 2);
instance_create(x+0,y+128, "obj_stage_article_solid" , 2);
//instance_create(x+0,y+192, "obj_stage_article_solid" , 2);
//instance_create(x+0,y+256, "obj_stage_article_solid" , 2);
//instance_create(x+0,y+320, "obj_stage_article_solid" , 2);
instance_create(x+0,y+384, "obj_stage_article_solid" , 2);
instance_create(x+0,y+448, "obj_stage_article_solid" , 2);
instance_create(x+0,y+512, "obj_stage_article_solid" , 2);

instance_create(x+960,y+0, "obj_stage_article_solid" , 2);
instance_create(x+960,y+64, "obj_stage_article_solid" , 2);
instance_create(x+960,y+128, "obj_stage_article_solid" , 2);
//instance_create(x+960,y+192, "obj_stage_article_solid" , 2);
//instance_create(x+960,y+256, "obj_stage_article_solid" , 2);
//instance_create(x+960,y+320, "obj_stage_article_solid" , 2);
instance_create(x+960,y+384, "obj_stage_article_solid" , 2);
instance_create(x+960,y+448, "obj_stage_article_solid" , 2);
instance_create(x+960,y+512, "obj_stage_article_solid" , 2);

	instance_create(x+0,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+64,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+128,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+192,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+256,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+320,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+384,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+448,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+512,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+576,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+640,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+704,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+768,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+832,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+896,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+960,y+512, "obj_stage_article_solid" , 2);
	}
}

if(xq == -10){//-10-5
	if(yq == -5){
music_play_file( "Shokubeni" );

	instance_create(x+0,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+64,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+128,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+192,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+256,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+320,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+384,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+448,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+512,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+576,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+640,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+704,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+768,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+832,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+896,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+960,y+0, "obj_stage_article_solid" , 2);

instance_create(x+0,y+0, "obj_stage_article_solid" , 2);
instance_create(x+0,y+64, "obj_stage_article_solid" , 2);
instance_create(x+0,y+128, "obj_stage_article_solid" , 2);
//instance_create(x+0,y+192, "obj_stage_article_solid" , 2);
//instance_create(x+0,y+256, "obj_stage_article_solid" , 2);
//instance_create(x+0,y+320, "obj_stage_article_solid" , 2);
instance_create(x+0,y+384, "obj_stage_article_solid" , 2);
instance_create(x+0,y+448, "obj_stage_article_solid" , 2);
instance_create(x+0,y+512, "obj_stage_article_solid" , 2);

instance_create(x+960,y+0, "obj_stage_article_solid" , 2);
instance_create(x+960,y+64, "obj_stage_article_solid" , 2);
instance_create(x+960,y+128, "obj_stage_article_solid" , 2);
instance_create(x+960,y+192, "obj_stage_article_solid" , 2);
instance_create(x+960,y+256, "obj_stage_article_solid" , 2);
instance_create(x+960,y+320, "obj_stage_article_solid" , 2);
instance_create(x+960,y+384, "obj_stage_article_solid" , 2);
instance_create(x+960,y+448, "obj_stage_article_solid" , 2);
instance_create(x+960,y+512, "obj_stage_article_solid" , 2);

	instance_create(x+0,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+64,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+128,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+192,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+256,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+320,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+384,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+448,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+512,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+576,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+640,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+704,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+768,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+832,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+896,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+960,y+512, "obj_stage_article_solid" , 2);

	instance_create(x+640,y+64, "obj_stage_article_solid" , 2);
	instance_create(x+640,y+128, "obj_stage_article_solid" , 2);
	instance_create(x+640,y+192, "obj_stage_article_solid" , 2);
	instance_create(x+640,y+256, "obj_stage_article_solid" , 2);
	instance_create(x+640,y+320, "obj_stage_article_solid" , 2);
//
	instance_create(x+832,y+256, "obj_stage_article_solid" , 2);
	instance_create(x+896,y+256, "obj_stage_article_solid" , 2);
//
		var d = instance_create(x+832,y+192, "obj_stage_article" , 4);
		if(key2 == true){
			with(d){
			attackx = true
			}
		}

	}
}


if(xq == -7){//-7-6
	if(yq == -6){
music_play_file( "Shokubeni" );
	instance_create(x+0,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+64,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+128,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+192,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+256,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+320,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+384,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+448,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+512,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+576,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+640,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+704,y+0, "obj_stage_article_solid" , 2);

	instance_create(x+768,y+128, "obj_stage_article_platform" , 3);
	instance_create(x+832,y+128, "obj_stage_article_platform" , 3);
	instance_create(x+896,y+128, "obj_stage_article_platform" , 3);

	instance_create(x+960,y+0, "obj_stage_article_solid" , 2);

instance_create(x+0,y+0, "obj_stage_article_solid" , 2);
instance_create(x+0,y+64, "obj_stage_article_solid" , 2);
//instance_create(x+0,y+128, "obj_stage_article_solid" , 2);
//instance_create(x+0,y+192, "obj_stage_article_solid" , 2);
//instance_create(x+0,y+256, "obj_stage_article_solid" , 2);
instance_create(x+0,y+320, "obj_stage_article_solid" , 2);
instance_create(x+0,y+384, "obj_stage_article_solid" , 2);
instance_create(x+0,y+448, "obj_stage_article_solid" , 2);
instance_create(x+0,y+512, "obj_stage_article_solid" , 2);

instance_create(x+960,y+0, "obj_stage_article_solid" , 2);
instance_create(x+960,y+64, "obj_stage_article_solid" , 2);
instance_create(x+960,y+128, "obj_stage_article_solid" , 2);
instance_create(x+960,y+192, "obj_stage_article_solid" , 2);
instance_create(x+960,y+256, "obj_stage_article_solid" , 2);
instance_create(x+960,y+320, "obj_stage_article_solid" , 2);
instance_create(x+960,y+384, "obj_stage_article_solid" , 2);
instance_create(x+960,y+448, "obj_stage_article_solid" , 2);
instance_create(x+960,y+512, "obj_stage_article_solid" , 2);

	instance_create(x+0,y+560, "obj_stage_article_solid" , 2);
	instance_create(x+64,y+560, "obj_stage_article_solid" , 2);
	instance_create(x+128,y+560, "obj_stage_article_solid" , 2);
	instance_create(x+192,y+560, "obj_stage_article_solid" , 2);
	instance_create(x+256,y+560, "obj_stage_article_solid" , 2);
	instance_create(x+320,y+560, "obj_stage_article_solid" , 2);
	instance_create(x+384,y+560, "obj_stage_article_solid" , 2);
	instance_create(x+448,y+560, "obj_stage_article_solid" , 2);
	instance_create(x+512,y+560, "obj_stage_article_solid" , 2);
	instance_create(x+576,y+560, "obj_stage_article_solid" , 2);
	instance_create(x+640,y+560, "obj_stage_article_solid" , 2);
	instance_create(x+704,y+560, "obj_stage_article_solid" , 2);
	instance_create(x+768,y+560, "obj_stage_article_solid" , 2);
	instance_create(x+832,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+896,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+960,y+512, "obj_stage_article_solid" , 2);


//
   instance_create(x+256,y+256, "obj_stage_article_solid" , 2);
   instance_create(x+320,y+256, "obj_stage_article_solid" , 2);
   instance_create(x+384,y+256, "obj_stage_article_solid" , 2);
   instance_create(x+448,y+256, "obj_stage_article_solid" , 2);
   instance_create(x+512,y+256, "obj_stage_article_solid" , 2);
   instance_create(x+576,y+256, "obj_stage_article_solid" , 2);
   instance_create(x+640,y+256, "obj_stage_article_solid" , 2);
   instance_create(x+704,y+256, "obj_stage_article_solid" , 2);
   instance_create(x+768,y+256, "obj_stage_article_solid" , 2);

	instance_create(x+704,y+0, "obj_stage_article_solid" , 2);


		instance_create(x+704,y+64, "obj_stage_article_solid" , 2);
		instance_create(x+704,y+128, "obj_stage_article_solid" , 2);
		instance_create(x+704,y+192, "obj_stage_article_solid" , 2);

	 instance_create(x+832,y+256, "obj_stage_article_solid" , 2);
	 instance_create(x+832,y+320, "obj_stage_article_solid" , 2);
	 instance_create(x+832,y+342, "obj_stage_article_solid" , 2);

	instance_create(x+896,y+256, "obj_stage_article_platform" , 3);

   instance_create(x+512,y+448, "obj_stage_article_solid" , 2);
   instance_create(x+576,y+448, "obj_stage_article_solid" , 2);
   instance_create(x+640,y+448, "obj_stage_article_solid" , 2);


   instance_create(x+256,y+448, "obj_stage_article_solid" , 2);
   instance_create(x+320,y+448, "obj_stage_article_solid" , 2);
   instance_create(x+384,y+448, "obj_stage_article_solid" , 2);


   instance_create(x+64,y+448, "obj_stage_article_solid" , 2);
	}
}

if(xq == -6){//-6-6
	if(yq == -6){
music_play_file( "Shokubeni" );
	instance_create(x+0,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+64,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+128,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+192,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+256,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+320,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+384,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+448,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+512,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+576,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+640,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+704,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+768,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+832,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+896,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+960,y+0, "obj_stage_article_solid" , 2);


instance_create(x+0,y+0, "obj_stage_article_solid" , 2);
//instance_create(x+0,y+64, "obj_stage_article_solid" , 2);
//instance_create(x+0,y+128, "obj_stage_article_solid" , 2);
//instance_create(x+0,y+192, "obj_stage_article_solid" , 2);
instance_create(x+0,y+256, "obj_stage_article_solid" , 2);
instance_create(x+0,y+320, "obj_stage_article_solid" , 2);
instance_create(x+0,y+384, "obj_stage_article_solid" , 2);
instance_create(x+0,y+448, "obj_stage_article_solid" , 2);
instance_create(x+0,y+512, "obj_stage_article_solid" , 2);

instance_create(x+960,y+0, "obj_stage_article_solid" , 2);
instance_create(x+960,y+64, "obj_stage_article_solid" , 2);
//instance_create(x+960,y+128, "obj_stage_article_solid" , 2);
//instance_create(x+960,y+192, "obj_stage_article_solid" , 2);
//instance_create(x+960,y+256, "obj_stage_article_solid" , 2);
instance_create(x+960,y+320, "obj_stage_article_solid" , 2);
instance_create(x+960,y+384, "obj_stage_article_solid" , 2);
instance_create(x+960,y+448, "obj_stage_article_solid" , 2);
instance_create(x+960,y+512, "obj_stage_article_solid" , 2);

	instance_create(x+0,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+64,y+560, "obj_stage_article_solid" , 2);
	instance_create(x+128,y+560, "obj_stage_article_solid" , 2);
	instance_create(x+192,y+560, "obj_stage_article_solid" , 2);
	instance_create(x+256,y+560, "obj_stage_article_solid" , 2);
	instance_create(x+320,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+384,y+560, "obj_stage_article_solid" , 2);
	instance_create(x+448,y+560, "obj_stage_article_solid" , 2);
	instance_create(x+512,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+576,y+560, "obj_stage_article_solid" , 2);
	instance_create(x+640,y+560, "obj_stage_article_solid" , 2);
	instance_create(x+704,y+560, "obj_stage_article_solid" , 2);
	instance_create(x+768,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+832,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+896,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+960,y+512, "obj_stage_article_solid" , 2);

//
	instance_create(x+128,y+64, "obj_stage_article_solid" , 2);
	instance_create(x+128,y+128, "obj_stage_article_solid" , 2);
	instance_create(x+128,y+192, "obj_stage_article_solid" , 2);
//
	instance_create(x+256,y+192, "obj_stage_article_solid" , 2);
//
	instance_create(x+320,y+192, "obj_stage_article_solid" , 2);
	instance_create(x+320,y+256, "obj_stage_article_solid" , 2);
	instance_create(x+320,y+320, "obj_stage_article_solid" , 2);
	instance_create(x+320,y+384, "obj_stage_article_solid" , 2);
	instance_create(x+320,y+448, "obj_stage_article_solid" , 2);
//
	instance_create(x+384,y+192, "obj_stage_article_solid" , 2);
//
	instance_create(x+512,y+64, "obj_stage_article_solid" , 2)
	instance_create(x+512,y+128, "obj_stage_article_solid" , 2)
	instance_create(x+512,y+192, "obj_stage_article_solid" , 2);
//
	instance_create(x+512,y+256, "obj_stage_article_solid" , 2);
	instance_create(x+576,y+256, "obj_stage_article_solid" , 2);
	instance_create(x+640,y+256, "obj_stage_article_solid" , 2);

//
	instance_create(x+512,y+448, "obj_stage_article_solid" , 2);
	instance_create(x+512,y+400, "obj_stage_article_solid" , 2);
	instance_create(x+576,y+400, "obj_stage_article_solid" , 2);
	instance_create(x+640,y+400, "obj_stage_article_solid" , 2);

//
	instance_create(x+768,y+256, "obj_stage_article_solid" , 2);
	instance_create(x+768,y+320, "obj_stage_article_solid" , 2);
	instance_create(x+768,y+384, "obj_stage_article_solid" , 2);
	instance_create(x+768,y+448, "obj_stage_article_solid" , 2);
//
	instance_create(x+832,y+256, "obj_stage_article_solid" , 2);
	instance_create(x+896,y+320, "obj_stage_article_solid" , 2);

	}
}


if(xq == -5){//-5-6
	if(yq == -6){
music_play_file( "Shokubeni" );
	instance_create(x+0,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+64,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+128,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+192,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+256,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+320,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+384,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+448,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+512,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+576,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+640,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+704,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+768,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+832,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+896,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+960,y+0, "obj_stage_article_solid" , 2);

instance_create(x+0,y+0, "obj_stage_article_solid" , 2);
instance_create(x+0,y+64, "obj_stage_article_solid" , 2);
instance_create(x+0,y+128, "obj_stage_article_solid" , 2);
instance_create(x+0,y+192, "obj_stage_article_solid" , 2);
instance_create(x+0,y+256, "obj_stage_article_solid" , 2);
instance_create(x+0,y+320, "obj_stage_article_solid" , 2);
instance_create(x+0,y+384, "obj_stage_article_solid" , 2);
instance_create(x+0,y+448, "obj_stage_article_solid" , 2);
instance_create(x+0,y+512, "obj_stage_article_solid" , 2);

instance_create(x+960,y+0, "obj_stage_article_solid" , 2);



instance_create(x+960,y+256, "obj_stage_article_solid" , 2);
instance_create(x+960,y+320, "obj_stage_article_solid" , 2);
instance_create(x+960,y+384, "obj_stage_article_solid" , 2);
instance_create(x+960,y+448, "obj_stage_article_solid" , 2);
instance_create(x+960,y+512, "obj_stage_article_solid" , 2);

	instance_create(x+0,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+64,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+128,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+192,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+256,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+320,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+384,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+448,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+512,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+576,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+640,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+704,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+768,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+832,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+896,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+960,y+512, "obj_stage_article_solid" , 2);


//
	instance_create(x+128,y+64, "obj_stage_article_solid" , 2);
	instance_create(x+128,y+128, "obj_stage_article_solid" , 2);
	instance_create(x+128,y+192, "obj_stage_article_solid" , 2);
	instance_create(x+192,y+256, "obj_stage_article_solid" , 2);
	instance_create(x+256,y+256, "obj_stage_article_solid" , 2);
	instance_create(x+320,y+256, "obj_stage_article_solid" , 2);
	instance_create(x+384,y+256, "obj_stage_article_solid" , 2);
	instance_create(x+448,y+256, "obj_stage_article_solid" , 2);
	instance_create(x+512,y+320, "obj_stage_article_solid" , 2);
	instance_create(x+576,y+320, "obj_stage_article_solid" , 2);
	instance_create(x+640,y+320, "obj_stage_article_solid" , 2);
	instance_create(x+704,y+320, "obj_stage_article_solid" , 2);
	instance_create(x+768,y+320, "obj_stage_article_solid" , 2);
	instance_create(x+832,y+320, "obj_stage_article_solid" , 2);
	instance_create(x+896,y+320, "obj_stage_article_solid" , 2);
	instance_create(x+960,y+320, "obj_stage_article_solid" , 2);
//
		var d = instance_create(x+256,y+192, "obj_stage_article" , 4);
		if(key == true){
			with(d){
			attackx = true
			}
		}
	}
}


if(xq == -10){//-10-4
	if(yq == -4){
music_play_file( "Shokubeni" );

instance_create(x+0,y+0, "obj_stage_article_solid" , 2);
instance_create(x+0,y+64, "obj_stage_article_solid" , 2);
instance_create(x+0,y+128, "obj_stage_article_solid" , 2);
instance_create(x+0,y+192, "obj_stage_article_solid" , 2);
instance_create(x+0,y+256, "obj_stage_article_solid" , 2);
//instance_create(x+0,y+320, "obj_stage_article_solid" , 2);
//instance_create(x+0,y+384, "obj_stage_article_solid" , 2);
//instance_create(x+0,y+448, "obj_stage_article_solid" , 2);
instance_create(x+0,y+512, "obj_stage_article_solid" , 2);


	instance_create(x+0,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+64,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+128,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+192,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+256,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+320,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+384,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+448,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+512,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+576,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+640,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+704,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+768,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+832,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+896,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+960,y+512, "obj_stage_article_solid" , 2);
	}
}

if(xq == -11){//-11-4
	if(yq == -4){
music_play_file( "Shokubeni" );


	instance_create(x+0,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+64,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+128,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+192,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+256,y+512, "obj_stage_article_solid" , 2);







	instance_create(x+768,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+832,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+896,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+960,y+512, "obj_stage_article_solid" , 2);


	instance_create(x+320,y+448, "obj_stage_article_solid" , 2);
	instance_create(x+384,y+384, "obj_stage_article_solid" , 2);
	instance_create(x+448,y+320, "obj_stage_article_solid" , 2);
	instance_create(x+512,y+256, "obj_stage_article_solid" , 2);
	instance_create(x+576,y+192, "obj_stage_article_solid" , 2);
	instance_create(x+640,y+128, "obj_stage_article_solid" , 2);
	instance_create(x+704,y+192, "obj_stage_article_solid" , 2);
	instance_create(x+704,y+256, "obj_stage_article_solid" , 2);
	instance_create(x+704,y+320, "obj_stage_article_solid" , 2);
	instance_create(x+704,y+384, "obj_stage_article_solid" , 2);
	instance_create(x+704,y+448, "obj_stage_article_solid" , 2);
	}
}


if(xq == -12){//-12-4
	if(yq == -4){
music_play_file( "Shokubeni" );
instance_create(x+960,y+0, "obj_stage_article_solid" , 2);
instance_create(x+960,y+64, "obj_stage_article_solid" , 2);
instance_create(x+960,y+128, "obj_stage_article_solid" , 2);
//instance_create(x+960,y+192, "obj_stage_article_solid" , 2);
//instance_create(x+960,y+256, "obj_stage_article_solid" , 2);
//instance_create(x+960,y+320, "obj_stage_article_solid" , 2);
instance_create(x+960,y+384, "obj_stage_article_solid" , 2);
instance_create(x+960,y+448, "obj_stage_article_solid" , 2);
instance_create(x+960,y+512, "obj_stage_article_solid" , 2);

	instance_create(x+0,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+64,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+128,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+192,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+256,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+320,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+384,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+448,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+512,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+576,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+640,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+704,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+768,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+832,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+896,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+960,y+512, "obj_stage_article_solid" , 2);
	}
}

if(xq == -12){//-12-3
	if(yq == -3){
music_play_file( "Shokubeni" );
instance_create(x+960,y+0, "obj_stage_article_solid" , 2);
instance_create(x+960,y+64, "obj_stage_article_solid" , 2);
instance_create(x+960,y+128, "obj_stage_article_solid" , 2);
instance_create(x+960,y+192, "obj_stage_article_solid" , 2);
instance_create(x+960,y+256, "obj_stage_article_solid" , 2);
instance_create(x+960,y+320, "obj_stage_article_solid" , 2);
instance_create(x+960,y+384, "obj_stage_article_solid" , 2);
instance_create(x+960,y+448, "obj_stage_article_solid" , 2);
instance_create(x+960,y+512, "obj_stage_article_solid" , 2);


	instance_create(x+576,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+640,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+704,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+768,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+832,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+896,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+960,y+0, "obj_stage_article_solid" , 2);
	}
}
if(xq == -12){//-12-2
	if(yq == -2){
music_play_file( "Shokubeni" );
	instance_create(x+0,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+64,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+128,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+192,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+256,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+320,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+384,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+448,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+512,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+576,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+640,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+704,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+768,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+832,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+896,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+960,y+0, "obj_stage_article_solid" , 2);

instance_create(x+960,y+0, "obj_stage_article_solid" , 2);
instance_create(x+960,y+64, "obj_stage_article_solid" , 2);
instance_create(x+960,y+128, "obj_stage_article_solid" , 2);
//instance_create(x+960,y+192, "obj_stage_article_solid" , 2);
//instance_create(x+960,y+256, "obj_stage_article_solid" , 2);
//instance_create(x+960,y+320, "obj_stage_article_solid" , 2);
instance_create(x+960,y+384, "obj_stage_article_solid" , 2);
instance_create(x+960,y+448, "obj_stage_article_solid" , 2);
instance_create(x+960,y+512, "obj_stage_article_solid" , 2);

	instance_create(x+576,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+640,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+704,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+768,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+832,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+896,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+960,y+512, "obj_stage_article_solid" , 2);
	}
}

if(xq == -13){//-13-2
	if(yq == -2){
music_play_file( "Shokubeni" );
	instance_create(x+0,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+64,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+128,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+192,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+256,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+320,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+384,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+448,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+512,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+576,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+640,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+704,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+768,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+832,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+896,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+960,y+0, "obj_stage_article_solid" , 2);

instance_create(x+0,y+0, "obj_stage_article_solid" , 2);
instance_create(x+0,y+64, "obj_stage_article_solid" , 2);
instance_create(x+0,y+128, "obj_stage_article_solid" , 2);
//instance_create(x+0,y+192, "obj_stage_article_solid" , 2);
//instance_create(x+0,y+256, "obj_stage_article_solid" , 2);
//instance_create(x+0,y+320, "obj_stage_article_solid" , 2);
instance_create(x+0,y+384, "obj_stage_article_solid" , 2);
instance_create(x+0,y+448, "obj_stage_article_solid" , 2);
instance_create(x+0,y+512, "obj_stage_article_solid" , 2);

instance_create(x+960,y+0, "obj_stage_article_solid" , 2);
instance_create(x+960,y+64, "obj_stage_article_solid" , 2);
instance_create(x+960,y+128, "obj_stage_article_solid" , 2);
instance_create(x+960,y+192, "obj_stage_article_solid" , 2);
instance_create(x+960,y+256, "obj_stage_article_solid" , 2);
instance_create(x+960,y+320, "obj_stage_article_solid" , 2);
instance_create(x+960,y+384, "obj_stage_article_solid" , 2);
instance_create(x+960,y+448, "obj_stage_article_solid" , 2);
instance_create(x+960,y+512, "obj_stage_article_solid" , 2);

	instance_create(x+0,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+64,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+128,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+192,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+256,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+320,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+384,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+448,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+512,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+576,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+640,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+704,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+768,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+832,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+896,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+960,y+512, "obj_stage_article_solid" , 2);
//

	instance_create(x+128,y+256, "obj_stage_article_solid" , 2);
	instance_create(x+192,y+256, "obj_stage_article_solid" , 2);
	instance_create(x+256,y+256, "obj_stage_article_solid" , 2);
//
	instance_create(x+704,y+256, "obj_stage_article_solid" , 2);
	instance_create(x+768,y+256, "obj_stage_article_solid" , 2);
	instance_create(x+832,y+256, "obj_stage_article_solid" , 2);
//
	instance_create(x+384,y+384, "obj_stage_article_solid" , 2);
	instance_create(x+448,y+384, "obj_stage_article_solid" , 2);
	instance_create(x+512,y+384, "obj_stage_article_solid" , 2);
	instance_create(x+576,y+384, "obj_stage_article_solid" , 2);
//
	}
}

if(xq == -11){//-11-2
	if(yq == -2){
music_play_file( "Shokubeni" );
	instance_create(x+0,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+64,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+128,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+192,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+256,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+320,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+384,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+448,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+512,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+576,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+640,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+704,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+768,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+832,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+896,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+960,y+0, "obj_stage_article_solid" , 2);


	instance_create(x+128,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+192,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+256,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+320,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+384,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+448,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+512,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+576,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+640,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+704,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+768,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+832,y+512, "obj_stage_article_solid" , 2);
//
	instance_create(x+512,y+448, "obj_stage_article_solid" , 2);
	instance_create(x+512,y+384, "obj_stage_article_solid" , 2);
	instance_create(x+512,y+320, "obj_stage_article_solid" , 2);
//
	instance_create(x+576,y+320, "obj_stage_article_solid" , 2);

var df = instance_create(x+640,y+320, "obj_stage_article_solid" , 2);
var df2 = instance_create(x+704,y+320, "obj_stage_article_solid" , 2);
var df3 = instance_create(x+768,y+320, "obj_stage_article_solid" , 2);
//
	instance_create(x+832,y+320, "obj_stage_article_solid" , 2);
	instance_create(x+832,y+384, "obj_stage_article_solid" , 2);
	instance_create(x+832,y+448, "obj_stage_article_solid" , 2);
//
	}
}

if(xq == -11){//-11-3
	if(yq == -3){
music_play_file( "Shokubeni" );
	instance_create(x+128,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+192,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+256,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+320,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+384,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+448,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+512,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+576,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+640,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+704,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+768,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+832,y+0, "obj_stage_article_solid" , 2);
	}
}
if(xq == -10){//-10-2
	if(yq == -2){
music_play_file( "Shokubeni" );
	instance_create(x+0,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+64,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+128,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+192,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+256,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+320,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+384,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+448,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+512,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+576,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+640,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+704,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+768,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+832,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+896,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+960,y+0, "obj_stage_article_solid" , 2);

instance_create(x+0,y+0, "obj_stage_article_solid" , 2);
instance_create(x+0,y+64, "obj_stage_article_solid" , 2);
instance_create(x+0,y+128, "obj_stage_article_solid" , 2);
//instance_create(x+0,y+192, "obj_stage_article_solid" , 2);
//instance_create(x+0,y+256, "obj_stage_article_solid" , 2);
//instance_create(x+0,y+320, "obj_stage_article_solid" , 2);
instance_create(x+0,y+384, "obj_stage_article_solid" , 2);
instance_create(x+0,y+448, "obj_stage_article_solid" , 2);
instance_create(x+0,y+512, "obj_stage_article_solid" , 2);

	instance_create(x+0,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+64,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+128,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+192,y+512, "obj_stage_article_solid" , 2);



	instance_create(x+448,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+512,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+576,y+512, "obj_stage_article_solid" , 2);
	}
}





if(xq == -10){//-10-3
	if(yq == -3){
music_play_file( "Shokubeni" );
	instance_create(x+0,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+64,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+128,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+192,y+0, "obj_stage_article_solid" , 2);
//	instance_create(x+256,y+0, "obj_stage_article_solid" , 2);
//	instance_create(x+320,y+0, "obj_stage_article_solid" , 2);
//	instance_create(x+384,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+448,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+512,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+576,y+0, "obj_stage_article_solid" , 2);

instance_create(x+0,y+0, "obj_stage_article_solid" , 2);
instance_create(x+0,y+64, "obj_stage_article_solid" , 2);
instance_create(x+0,y+128, "obj_stage_article_solid" , 2);
instance_create(x+0,y+192, "obj_stage_article_solid" , 2);
instance_create(x+0,y+256, "obj_stage_article_solid" , 2);
instance_create(x+0,y+320, "obj_stage_article_solid" , 2);
instance_create(x+0,y+384, "obj_stage_article_solid" , 2);
instance_create(x+0,y+448, "obj_stage_article_solid" , 2);
instance_create(x+0,y+512, "obj_stage_article_solid" , 2);
	}
}




if(xq == -13){//-13-4
	if(yq == -4){
music_play_file( "Shokubeni" );
	instance_create(x+0,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+64,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+128,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+192,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+256,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+320,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+384,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+448,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+512,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+576,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+640,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+704,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+768,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+832,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+896,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+960,y+0, "obj_stage_article_solid" , 2);

instance_create(x+0,y+0, "obj_stage_article_solid" , 2);
instance_create(x+0,y+64, "obj_stage_article_solid" , 2);
instance_create(x+0,y+128, "obj_stage_article_solid" , 2);
//instance_create(x+0,y+192, "obj_stage_article_solid" , 2);
//instance_create(x+0,y+256, "obj_stage_article_solid" , 2);
//instance_create(x+0,y+320, "obj_stage_article_solid" , 2);
instance_create(x+0,y+384, "obj_stage_article_solid" , 2);
instance_create(x+0,y+448, "obj_stage_article_solid" , 2);
instance_create(x+0,y+512, "obj_stage_article_solid" , 2);

instance_create(x+960,y+0, "obj_stage_article_solid" , 2);
instance_create(x+960,y+64, "obj_stage_article_solid" , 2);
instance_create(x+960,y+128, "obj_stage_article_solid" , 2);
//instance_create(x+960,y+192, "obj_stage_article_solid" , 2);
//instance_create(x+960,y+256, "obj_stage_article_solid" , 2);
//instance_create(x+960,y+320, "obj_stage_article_solid" , 2);
instance_create(x+960,y+384, "obj_stage_article_solid" , 2);
instance_create(x+960,y+448, "obj_stage_article_solid" , 2);
instance_create(x+960,y+512, "obj_stage_article_solid" , 2);

	instance_create(x+0,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+64,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+128,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+192,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+256,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+320,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+384,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+448,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+512,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+576,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+640,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+704,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+768,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+832,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+896,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+960,y+512, "obj_stage_article_solid" , 2);
//
	instance_create(x+256,y+448, "obj_stage_article_solid" , 2);
	instance_create(x+320,y+448, "obj_stage_article_solid" , 2);
	instance_create(x+320,y+384, "obj_stage_article_solid" , 2);
	instance_create(x+320,y+320, "obj_stage_article_solid" , 2);
	instance_create(x+384,y+448, "obj_stage_article_solid" , 2);
//
	instance_create(x+512,y+448, "obj_stage_article_solid" , 2);
	instance_create(x+512,y+384, "obj_stage_article_solid" , 2);
	instance_create(x+512,y+320, "obj_stage_article_solid" , 2);
	instance_create(x+512,y+256, "obj_stage_article_solid" , 2);
	instance_create(x+512,y+118, "obj_stage_article_solid" , 2);
	instance_create(x+512,y+64, "obj_stage_article_solid" , 2);
//
	instance_create(x+704,y+384, "obj_stage_article_solid" , 2);
	instance_create(x+768,y+384, "obj_stage_article_solid" , 2);
//

//
	}//id
}



if(xq == -14){//-14-4
	if(yq == -4){
music_play_file( "Shokubeni" );
	instance_create(x+0,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+64,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+128,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+192,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+256,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+320,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+384,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+448,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+512,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+576,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+640,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+704,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+768,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+832,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+896,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+960,y+0, "obj_stage_article_solid" , 2);

instance_create(x+0,y+0, "obj_stage_article_solid" , 2);
instance_create(x+0,y+64, "obj_stage_article_solid" , 2);
instance_create(x+0,y+128, "obj_stage_article_solid" , 2);
//instance_create(x+0,y+192, "obj_stage_article_solid" , 2);
//instance_create(x+0,y+256, "obj_stage_article_solid" , 2);
//instance_create(x+0,y+320, "obj_stage_article_solid" , 2);
instance_create(x+0,y+384, "obj_stage_article_solid" , 2);
instance_create(x+0,y+448, "obj_stage_article_solid" , 2);
instance_create(x+0,y+512, "obj_stage_article_solid" , 2);

instance_create(x+960,y+0, "obj_stage_article_solid" , 2);
instance_create(x+960,y+64, "obj_stage_article_solid" , 2);
instance_create(x+960,y+128, "obj_stage_article_solid" , 2);
//instance_create(x+960,y+192, "obj_stage_article_solid" , 2);
//instance_create(x+960,y+256, "obj_stage_article_solid" , 2);
//instance_create(x+960,y+320, "obj_stage_article_solid" , 2);
instance_create(x+960,y+384, "obj_stage_article_solid" , 2);
instance_create(x+960,y+448, "obj_stage_article_solid" , 2);
instance_create(x+960,y+512, "obj_stage_article_solid" , 2);

	instance_create(x+0,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+64,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+128,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+192,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+256,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+320,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+384,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+448,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+512,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+576,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+640,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+704,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+768,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+832,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+896,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+960,y+512, "obj_stage_article_solid" , 2);
//
	instance_create(x+384,y+448, "obj_stage_article_solid" , 2);
	instance_create(x+448,y+448, "obj_stage_article_solid" , 2);
	instance_create(x+512,y+448, "obj_stage_article_solid" , 2);
	instance_create(x+576,y+448, "obj_stage_article_solid" , 2);
//
	instance_create(x+384,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+448,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+512,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+576,y+0, "obj_stage_article_solid" , 2);
//
		if(key == true || key2 == true || key3 == true ){
		}else{
		instance_create(x+480,y+0, "obj_stage_article_solid" , 2);
		instance_create(x+480,y+64, "obj_stage_article_solid" , 2);
		instance_create(x+480,y+128, "obj_stage_article_solid" , 2);
		instance_create(x+480,y+192, "obj_stage_article_solid" , 2);
		instance_create(x+480,y+256, "obj_stage_article_solid" , 2);
		instance_create(x+480,y+320, "obj_stage_article_solid" , 2);
		instance_create(x+480,y+384, "obj_stage_article_solid" , 2);
		instance_create(x+480,y+448, "obj_stage_article_solid" , 2);
		instance_create(x+480,y+512, "obj_stage_article_solid" , 2);
		}

		if(key4 == false){
		instance_create(x+512,y+0, "obj_stage_article_solid" , 2);
		instance_create(x+512,y+64, "obj_stage_article_solid" , 2);
		instance_create(x+512,y+128, "obj_stage_article_solid" , 2);
		instance_create(x+512,y+192, "obj_stage_article_solid" , 2);
		instance_create(x+512,y+256, "obj_stage_article_solid" , 2);
		instance_create(x+512,y+320, "obj_stage_article_solid" , 2);
		instance_create(x+512,y+384, "obj_stage_article_solid" , 2);
		instance_create(x+512,y+448, "obj_stage_article_solid" , 2);
		instance_create(x+512,y+512, "obj_stage_article_solid" , 2);
		}

	}
}


if(xq == -15){//-15-4
	if(yq == -4){
music_play_file( "Shokubeni" );
	instance_create(x+0,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+64,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+128,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+192,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+256,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+320,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+384,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+448,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+512,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+576,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+640,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+704,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+768,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+832,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+896,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+960,y+0, "obj_stage_article_solid" , 2);

instance_create(x+0,y+0, "obj_stage_article_solid" , 2);
instance_create(x+0,y+64, "obj_stage_article_solid" , 2);
instance_create(x+0,y+128, "obj_stage_article_solid" , 2);
//instance_create(x+0,y+192, "obj_stage_article_solid" , 2);
//instance_create(x+0,y+256, "obj_stage_article_solid" , 2);
//instance_create(x+0,y+320, "obj_stage_article_solid" , 2);
instance_create(x+0,y+384, "obj_stage_article_solid" , 2);
instance_create(x+0,y+448, "obj_stage_article_solid" , 2);
instance_create(x+0,y+512, "obj_stage_article_solid" , 2);

instance_create(x+960,y+0, "obj_stage_article_solid" , 2);
instance_create(x+960,y+64, "obj_stage_article_solid" , 2);
instance_create(x+960,y+128, "obj_stage_article_solid" , 2);
//instance_create(x+960,y+192, "obj_stage_article_solid" , 2);
//instance_create(x+960,y+256, "obj_stage_article_solid" , 2);
//instance_create(x+960,y+320, "obj_stage_article_solid" , 2);
instance_create(x+960,y+384, "obj_stage_article_solid" , 2);
instance_create(x+960,y+448, "obj_stage_article_solid" , 2);
instance_create(x+960,y+512, "obj_stage_article_solid" , 2);

	instance_create(x+0,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+64,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+128,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+192,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+256,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+320,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+384,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+448,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+512,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+576,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+640,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+704,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+768,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+832,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+896,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+960,y+512, "obj_stage_article_solid" , 2);

//
	instance_create(x+192,y+448, "obj_stage_article_solid" , 2);
	instance_create(x+256,y+448, "obj_stage_article_solid" , 2);
	instance_create(x+256,y+384, "obj_stage_article_solid" , 2);
	instance_create(x+320,y+384, "obj_stage_article_solid" , 2);
	instance_create(x+320,y+320, "obj_stage_article_solid" , 2);
	instance_create(x+384,y+320, "obj_stage_article_solid" , 2);

	instance_create(x+512,y+64, "obj_stage_article_solid" , 2);
	instance_create(x+512,y+128, "obj_stage_article_solid" , 2);
	instance_create(x+512,y+192, "obj_stage_article_solid" , 2);
	instance_create(x+512,y+256, "obj_stage_article_solid" , 2);
	instance_create(x+576,y+256, "obj_stage_article_solid" , 2);
	instance_create(x+640,y+256, "obj_stage_article_solid" , 2);

	instance_create(x+770,y+256, "obj_stage_article_solid" , 2);
	instance_create(x+832,y+256, "obj_stage_article_solid" , 2);
	instance_create(x+832,y+320, "obj_stage_article_solid" , 2);
	instance_create(x+832,y+384, "obj_stage_article_solid" , 2);
	instance_create(x+832,y+448, "obj_stage_article_solid" , 2);
//
	}
}


if(xq == -16){//-16-4
	if(yq == -4){
music_play_file( "Shokubeni" );
	instance_create(x+0,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+64,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+128,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+192,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+256,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+320,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+384,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+448,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+512,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+576,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+640,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+704,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+768,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+832,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+896,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+960,y+0, "obj_stage_article_solid" , 2);

instance_create(x+0,y+0, "obj_stage_article_solid" , 2);
instance_create(x+0,y+64, "obj_stage_article_solid" , 2);
instance_create(x+0,y+128, "obj_stage_article_solid" , 2);
//instance_create(x+0,y+192, "obj_stage_article_solid" , 2);
//instance_create(x+0,y+256, "obj_stage_article_solid" , 2);
//instance_create(x+0,y+320, "obj_stage_article_solid" , 2);
instance_create(x+0,y+384, "obj_stage_article_solid" , 2);
instance_create(x+0,y+448, "obj_stage_article_solid" , 2);
instance_create(x+0,y+512, "obj_stage_article_solid" , 2);

instance_create(x+960,y+0, "obj_stage_article_solid" , 2);
instance_create(x+960,y+64, "obj_stage_article_solid" , 2);
instance_create(x+960,y+128, "obj_stage_article_solid" , 2);
//instance_create(x+960,y+192, "obj_stage_article_solid" , 2);
//instance_create(x+960,y+256, "obj_stage_article_solid" , 2);
//instance_create(x+960,y+320, "obj_stage_article_solid" , 2);
instance_create(x+960,y+384, "obj_stage_article_solid" , 2);
instance_create(x+960,y+448, "obj_stage_article_solid" , 2);
instance_create(x+960,y+512, "obj_stage_article_solid" , 2);

	instance_create(x+0,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+64,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+128,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+192,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+256,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+320,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+384,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+448,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+512,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+576,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+640,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+704,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+768,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+832,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+896,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+960,y+512, "obj_stage_article_solid" , 2);
//
	instance_create(x+64,y+448, "obj_stage_article_solid" , 2);
	instance_create(x+128,y+448, "obj_stage_article_solid" , 2);
	instance_create(x+192,y+448, "obj_stage_article_solid" , 2);



	instance_create(x+832,y+448, "obj_stage_article_solid" , 2);
	instance_create(x+896,y+448, "obj_stage_article_solid" , 2);
//
	instance_create(x+384,y+384, "obj_stage_article_solid" , 2);
	instance_create(x+384,y+448, "obj_stage_article_solid" , 2);
//
		instance_create(x+448,y+320, "obj_stage_article_solid" , 2);
		instance_create(x+512,y+320, "obj_stage_article_solid" , 2);
		instance_create(x+576,y+320, "obj_stage_article_solid" , 2);
//
	instance_create(x+640,y+448, "obj_stage_article_solid" , 2);
	instance_create(x+640,y+384, "obj_stage_article_solid" , 2);
//
	}
}


if(xq == -17){//-17-4
	if(yq == -4){
music_play_file( "Shokubeni" );
	instance_create(x+0,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+64,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+128,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+192,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+256,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+320,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+384,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+448,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+512,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+576,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+640,y+0, "obj_stage_article_solid" , 2);
//	instance_create(x+704,y+0, "obj_stage_article_solid" , 2);
//	instance_create(x+768,y+0, "obj_stage_article_solid" , 2);
//	instance_create(x+832,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+896,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+960,y+0, "obj_stage_article_solid" , 2);

instance_create(x+0,y+0, "obj_stage_article_solid" , 2);
instance_create(x+0,y+64, "obj_stage_article_solid" , 2);
instance_create(x+0,y+128, "obj_stage_article_solid" , 2);
//instance_create(x+0,y+192, "obj_stage_article_solid" , 2);
//instance_create(x+0,y+256, "obj_stage_article_solid" , 2);
//instance_create(x+0,y+320, "obj_stage_article_solid" , 2);
instance_create(x+0,y+384, "obj_stage_article_solid" , 2);
instance_create(x+0,y+448, "obj_stage_article_solid" , 2);
instance_create(x+0,y+512, "obj_stage_article_solid" , 2);

instance_create(x+960,y+0, "obj_stage_article_solid" , 2);
instance_create(x+960,y+64, "obj_stage_article_solid" , 2);
instance_create(x+960,y+128, "obj_stage_article_solid" , 2);
instance_create(x+960,y+192, "obj_stage_article_solid" , 2);
instance_create(x+960,y+256, "obj_stage_article_solid" , 2);
instance_create(x+960,y+320, "obj_stage_article_solid" , 2);
instance_create(x+960,y+384, "obj_stage_article_solid" , 2);
instance_create(x+960,y+448, "obj_stage_article_solid" , 2);
instance_create(x+960,y+512, "obj_stage_article_solid" , 2);

	instance_create(x+0,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+64,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+128,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+192,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+256,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+320,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+384,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+448,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+512,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+576,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+640,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+704,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+768,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+832,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+896,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+960,y+512, "obj_stage_article_solid" , 2);
//
	instance_create(x+192,y+384, "obj_stage_article_solid" , 2);
	instance_create(x+256,y+320, "obj_stage_article_solid" , 2);
//
	instance_create(x+384,y+64, "obj_stage_article_solid" , 2);
	instance_create(x+448,y+128, "obj_stage_article_solid" , 2);
	instance_create(x+512,y+192, "obj_stage_article_solid" , 2);
//
	instance_create(x+768,y+192, "obj_stage_article_solid" , 2);
	instance_create(x+832,y+192, "obj_stage_article_solid" , 2);
	instance_create(x+896,y+129, "obj_stage_article_solid" , 2);
//
	}
}
if(xq == -17){//-17-3
	if(yq == -3){
music_play_file( "Shokubeni" );
	instance_create(x+0,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+64,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+128,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+192,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+256,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+320,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+384,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+448,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+512,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+576,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+640,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+704,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+768,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+832,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+896,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+960,y+0, "obj_stage_article_solid" , 2);

instance_create(x+0,y+0, "obj_stage_article_solid" , 2);
instance_create(x+0,y+64, "obj_stage_article_solid" , 2);
instance_create(x+0,y+128, "obj_stage_article_solid" , 2);
instance_create(x+0,y+192, "obj_stage_article_solid" , 2);
instance_create(x+0,y+256, "obj_stage_article_solid" , 2);
instance_create(x+0,y+320, "obj_stage_article_solid" , 2);
instance_create(x+0,y+384, "obj_stage_article_solid" , 2);
instance_create(x+0,y+448, "obj_stage_article_solid" , 2);
instance_create(x+0,y+512, "obj_stage_article_solid" , 2);

instance_create(x+960,y+0, "obj_stage_article_solid" , 2);
instance_create(x+960,y+64, "obj_stage_article_solid" , 2);
instance_create(x+960,y+128, "obj_stage_article_solid" , 2);


instance_create(x+960,y+384, "obj_stage_article_solid" , 2);
instance_create(x+960,y+448, "obj_stage_article_solid" , 2);
instance_create(x+960,y+512, "obj_stage_article_solid" , 2);

	instance_create(x+0,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+64,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+128,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+192,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+256,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+320,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+384,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+448,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+512,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+576,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+640,y+512, "obj_stage_article_solid" , 2);
//	instance_create(x+704,y+512, "obj_stage_article_solid" , 2);
//	instance_create(x+768,y+512, "obj_stage_article_solid" , 2);
//	instance_create(x+832,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+896,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+960,y+512, "obj_stage_article_solid" , 2);
	}
}

if(xq == -18){//-18-3
	if(yq == -3){
music_play_file( "Shokubeni" );
	instance_create(x+0,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+64,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+128,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+192,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+256,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+320,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+384,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+448,y+0, "obj_stage_article_solid" , 2);
//	instance_create(x+512,y+0, "obj_stage_article_solid" , 2);
//	instance_create(x+576,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+640,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+704,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+768,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+832,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+896,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+960,y+0, "obj_stage_article_solid" , 2);

instance_create(x+0,y+0, "obj_stage_article_solid" , 2);
instance_create(x+0,y+64, "obj_stage_article_solid" , 2);
instance_create(x+0,y+128, "obj_stage_article_solid" , 2);
//instance_create(x+0,y+192, "obj_stage_article_solid" , 2);
//instance_create(x+0,y+256, "obj_stage_article_solid" , 2);
//instance_create(x+0,y+320, "obj_stage_article_solid" , 2);
instance_create(x+0,y+384, "obj_stage_article_solid" , 2);
instance_create(x+0,y+448, "obj_stage_article_solid" , 2);
instance_create(x+0,y+512, "obj_stage_article_solid" , 2);

instance_create(x+960,y+0, "obj_stage_article_solid" , 2);
instance_create(x+960,y+64, "obj_stage_article_solid" , 2);
instance_create(x+960,y+128, "obj_stage_article_solid" , 2);
instance_create(x+960,y+192, "obj_stage_article_solid" , 2);
instance_create(x+960,y+256, "obj_stage_article_solid" , 2);
instance_create(x+960,y+320, "obj_stage_article_solid" , 2);
instance_create(x+960,y+384, "obj_stage_article_solid" , 2);
instance_create(x+960,y+448, "obj_stage_article_solid" , 2);
instance_create(x+960,y+512, "obj_stage_article_solid" , 2);

	instance_create(x+0,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+64,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+128,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+192,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+256,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+320,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+384,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+448,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+512,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+576,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+640,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+704,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+768,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+832,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+896,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+960,y+512, "obj_stage_article_solid" , 2);


	instance_create(x+448,y+64, "obj_stage_article_solid" , 2);
	instance_create(x+448,y+128, "obj_stage_article_solid" , 2);
	instance_create(x+448,y+192, "obj_stage_article_solid" , 2);
	instance_create(x+448,y+256, "obj_stage_article_solid" , 2);


	instance_create(x+512,y+256, "obj_stage_article_solid" , 2);
	instance_create(x+576,y+256, "obj_stage_article_solid" , 2);
	instance_create(x+640,y+256, "obj_stage_article_solid" , 2);
	instance_create(x+704,y+256, "obj_stage_article_solid" , 2);
	instance_create(x+704,y+192, "obj_stage_article_solid" , 2);
	}
} 

 
if(xq == -18){//-18-2
	if(yq == -2){
music_play_file( "Shokubeni" );
	instance_create(x+0,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+64,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+128,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+192,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+256,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+320,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+384,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+448,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+512,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+576,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+640,y+0, "obj_stage_article_solid" , 2);



	instance_create(x+896,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+960,y+0, "obj_stage_article_solid" , 2);

instance_create(x+0,y+0, "obj_stage_article_solid" , 2);
instance_create(x+0,y+64, "obj_stage_article_solid" , 2);
instance_create(x+0,y+128, "obj_stage_article_solid" , 2);
instance_create(x+0,y+192, "obj_stage_article_solid" , 2);
instance_create(x+0,y+256, "obj_stage_article_solid" , 2);
instance_create(x+0,y+320, "obj_stage_article_solid" , 2);
instance_create(x+0,y+384, "obj_stage_article_solid" , 2);
instance_create(x+0,y+448, "obj_stage_article_solid" , 2);
instance_create(x+0,y+512, "obj_stage_article_solid" , 2);

instance_create(x+960,y+0, "obj_stage_article_solid" , 2);
instance_create(x+960,y+64, "obj_stage_article_solid" , 2);
instance_create(x+960,y+128, "obj_stage_article_solid" , 2);
instance_create(x+960,y+192, "obj_stage_article_solid" , 2);
instance_create(x+960,y+256, "obj_stage_article_solid" , 2);
instance_create(x+960,y+320, "obj_stage_article_solid" , 2);
instance_create(x+960,y+384, "obj_stage_article_solid" , 2);
instance_create(x+960,y+448, "obj_stage_article_solid" , 2);
instance_create(x+960,y+512, "obj_stage_article_solid" , 2);

	instance_create(x+0,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+64,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+128,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+192,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+256,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+320,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+384,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+448,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+512,y+512, "obj_stage_article_platform" , 3);
	instance_create(x+576,y+512, "obj_stage_article_platform" , 3);
	instance_create(x+640,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+704,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+768,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+832,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+896,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+960,y+512, "obj_stage_article_solid" , 2);

//
	instance_create(x+448,y+448, "obj_stage_article_solid" , 2);
	instance_create(x+640,y+448, "obj_stage_article_solid" , 2);
	instance_create(x+448,y+384, "obj_stage_article_solid" , 2);
	instance_create(x+640,y+384, "obj_stage_article_solid" , 2);
	instance_create(x+512,y+384, "obj_stage_article_platform" , 3);
	instance_create(x+576,y+384, "obj_stage_article_platform" , 3);

	instance_create(x+640,y+64, "obj_stage_article_solid" , 2);
	instance_create(x+640,y+128, "obj_stage_article_solid" , 2);
	instance_create(x+640,y+192, "obj_stage_article_solid" , 2);
//
	instance_create(x+128,y+320, "obj_stage_article_solid" , 2);
	instance_create(x+192,y+320, "obj_stage_article_solid" , 2);
	instance_create(x+256,y+320, "obj_stage_article_solid" , 2);
	instance_create(x+320,y+320, "obj_stage_article_solid" , 2);
//
	instance_create(x+640,y+64, "obj_stage_article_platform" , 3);
	instance_create(x+704,y+128, "obj_stage_article_platform" , 3);
	instance_create(x+640,y+192, "obj_stage_article_platform" , 3);
	instance_create(x+704,y+320, "obj_stage_article_platform" , 3);
	instance_create(x+768,y+320, "obj_stage_article_platform" , 3);
//
	}
} 


if(xq == -18){//-18-1
	if(yq == -1){
music_play_file( "Shokubeni" );
	instance_create(x+0,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+64,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+128,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+192,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+256,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+320,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+384,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+448,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+512,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+576,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+640,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+704,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+768,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+832,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+896,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+960,y+0, "obj_stage_article_solid" , 2);

//instance_create(x+0,y+0, "obj_stage_article_solid" , 2);
instance_create(x+0,y+64, "obj_stage_article_solid" , 2);
instance_create(x+0,y+128, "obj_stage_article_solid" , 2);
instance_create(x+0,y+192, "obj_stage_article_solid" , 2);
instance_create(x+0,y+256, "obj_stage_article_solid" , 2);
//instance_create(x+0,y+320, "obj_stage_article_solid" , 2);
//instance_create(x+0,y+384, "obj_stage_article_solid" , 2);
//instance_create(x+0,y+448, "obj_stage_article_solid" , 2);
//instance_create(x+0,y+512, "obj_stage_article_solid" , 2);

//instance_create(x+960,y+0, "obj_stage_article_solid" , 2);
instance_create(x+960,y+64, "obj_stage_article_solid" , 2);
instance_create(x+960,y+128, "obj_stage_article_solid" , 2);
instance_create(x+960,y+192, "obj_stage_article_solid" , 2);
instance_create(x+960,y+256, "obj_stage_article_solid" , 2);
instance_create(x+960,y+320, "obj_stage_article_solid" , 2);
instance_create(x+960,y+384, "obj_stage_article_solid" , 2);
instance_create(x+960,y+448, "obj_stage_article_solid" , 2);
//instance_create(x+960,y+512, "obj_stage_article_solid" , 2);

	instance_create(x+0,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+64,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+128,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+192,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+256,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+320,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+384,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+448,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+512,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+576,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+640,y+512, "obj_stage_article_solid" , 2);
//	instance_create(x+704,y+512, "obj_stage_article_solid" , 2);
//	instance_create(x+768,y+512, "obj_stage_article_solid" , 2);
//	instance_create(x+832,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+896,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+960,y+512, "obj_stage_article_solid" , 2);
//
	instance_create(x+704,y+128, "obj_stage_article_platform" , 3);
	instance_create(x+640,y+256, "obj_stage_article_platform" , 3);


	instance_create(x+768,y+192, "obj_stage_article_platform" , 3);
	instance_create(x+896,y+384, "obj_stage_article_platform" , 3);
//

	}
} 



if(xq == -17){//-17-1
	if(yq == -1){
music_play_file( "Shokubeni" );
	instance_create(x+0,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+64,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+128,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+192,y+0, "obj_stage_article_solid" , 2);
//	instance_create(x+256,y+0, "obj_stage_article_solid" , 2);
//	instance_create(x+320,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+384,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+448,y+0, "obj_stage_article_solid" , 2);

	instance_create(x+512,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+576,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+640,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+704,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+768,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+832,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+896,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+960,y+0, "obj_stage_article_solid" , 2);

instance_create(x+0,y+0, "obj_stage_article_solid" , 2);
instance_create(x+0,y+64, "obj_stage_article_solid" , 2);
instance_create(x+0,y+128, "obj_stage_article_solid" , 2);
instance_create(x+0,y+192, "obj_stage_article_solid" , 2);
instance_create(x+0,y+256, "obj_stage_article_solid" , 2);
instance_create(x+0,y+320, "obj_stage_article_solid" , 2);
instance_create(x+0,y+384, "obj_stage_article_solid" , 2);
instance_create(x+0,y+448, "obj_stage_article_solid" , 2);
instance_create(x+0,y+512, "obj_stage_article_solid" , 2);

instance_create(x+960,y+0, "obj_stage_article_solid" , 2);
instance_create(x+960,y+64, "obj_stage_article_solid" , 2);
instance_create(x+960,y+128, "obj_stage_article_solid" , 2);
instance_create(x+960,y+192, "obj_stage_article_solid" , 2);
instance_create(x+960,y+256, "obj_stage_article_solid" , 2);
//instance_create(x+960,y+320, "obj_stage_article_solid" , 2);
//instance_create(x+960,y+384, "obj_stage_article_solid" , 2);
//instance_create(x+960,y+448, "obj_stage_article_solid" , 2);
instance_create(x+960,y+512, "obj_stage_article_solid" , 2);

	instance_create(x+0,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+64,y+512, "obj_stage_article_solid" , 2);



	instance_create(x+320,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+384,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+448,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+512,y+512, "obj_stage_article_solid" , 2);





	instance_create(x+896,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+960,y+512, "obj_stage_article_solid" , 2);
//

//
instance_create(x+384,y+0, "obj_stage_article_solid" , 2);
instance_create(x+384,y+64, "obj_stage_article_solid" , 2);
instance_create(x+384,y+128, "obj_stage_article_solid" , 2);
instance_create(x+384,y+192, "obj_stage_article_solid" , 2);
instance_create(x+384,y+256, "obj_stage_article_solid" , 2);
instance_create(x+384,y+320, "obj_stage_article_solid" , 2);
instance_create(x+384,y+384, "obj_stage_article_solid" , 2);
instance_create(x+384,y+448, "obj_stage_article_solid" , 2);
instance_create(x+384,y+512, "obj_stage_article_solid" , 2);

	}
} 


if(xq == -17){//-17-2
	if(yq == -2){
music_play_file( "Shokubeni" );
	instance_create(x+0,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+64,y+0, "obj_stage_article_solid" , 2);



	instance_create(x+320,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+384,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+448,y+0, "obj_stage_article_solid" , 2);

	instance_create(x+512,y+0, "obj_stage_article_solid" , 2);




	instance_create(x+896,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+960,y+0, "obj_stage_article_solid" , 2);

instance_create(x+0,y+0, "obj_stage_article_solid" , 2);
instance_create(x+0,y+64, "obj_stage_article_solid" , 2);
instance_create(x+0,y+128, "obj_stage_article_solid" , 2);
instance_create(x+0,y+192, "obj_stage_article_solid" , 2);
instance_create(x+0,y+256, "obj_stage_article_solid" , 2);
instance_create(x+0,y+320, "obj_stage_article_solid" , 2);
instance_create(x+0,y+384, "obj_stage_article_solid" , 2);
instance_create(x+0,y+448, "obj_stage_article_solid" , 2);
instance_create(x+0,y+512, "obj_stage_article_solid" , 2);

instance_create(x+960,y+0, "obj_stage_article_solid" , 2);
instance_create(x+960,y+64, "obj_stage_article_solid" , 2);
instance_create(x+960,y+128, "obj_stage_article_solid" , 2);
instance_create(x+960,y+192, "obj_stage_article_solid" , 2);
instance_create(x+960,y+256, "obj_stage_article_solid" , 2);
instance_create(x+960,y+320, "obj_stage_article_solid" , 2);
instance_create(x+960,y+384, "obj_stage_article_solid" , 2);
instance_create(x+960,y+448, "obj_stage_article_solid" , 2);
instance_create(x+960,y+512, "obj_stage_article_solid" , 2);

	instance_create(x+0,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+64,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+128,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+192,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+256,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+320,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+384,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+448,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+512,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+576,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+640,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+704,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+768,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+832,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+896,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+960,y+512, "obj_stage_article_solid" , 2);

	instance_create(x+512,y+64, "obj_stage_article_solid" , 2);
	instance_create(x+512,y+128, "obj_stage_article_solid" , 2);

//
	instance_create(x+192,y+128, "obj_stage_article_platform" , 3);
//
	instance_create(x+128,y+192, "obj_stage_article_platform" , 3);
//
	instance_create(x+64,y+256, "obj_stage_article_platform" , 3);
//
	instance_create(x+192,y+384, "obj_stage_article_platform" , 3);
	instance_create(x+128,y+384, "obj_stage_article_platform" , 3);
//
	instance_create(x+448,y+448, "obj_stage_article_platform" , 3);
//
	instance_create(x+320,y+320, "obj_stage_article_platform" , 3);
//
	instance_create(x+576,y+192, "obj_stage_article_platform" , 3);
	instance_create(x+640,y+192, "obj_stage_article_platform" , 3);
	instance_create(x+704,y+192, "obj_stage_article_platform" , 3);
	instance_create(x+768,y+192, "obj_stage_article_platform" , 3);
	instance_create(x+832,y+192, "obj_stage_article_platform" , 3);
	instance_create(x+896,y+192, "obj_stage_article_platform" , 3);
//
	instance_create(x+640,y+320, "obj_stage_article_platform" , 3);
//
	instance_create(x+768,y+256, "obj_stage_article_platform" , 3);
//

	instance_create(x+768,y+384, "obj_stage_article_platform" , 3);
	instance_create(x+832,y+384, "obj_stage_article_platform" , 3);
	}
} 



if(xq == -17){//-17-0
	if(yq == 0){
music_play_file( "Shokubeni" );
	instance_create(x+0,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+64,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+128,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+192,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+256,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+320,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+384,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+448,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+512,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+576,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+640,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+704,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+768,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+832,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+896,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+960,y+0, "obj_stage_article_solid" , 2);

instance_create(x+0,y+0, "obj_stage_article_solid" , 2);
instance_create(x+0,y+64, "obj_stage_article_solid" , 2);
instance_create(x+0,y+128, "obj_stage_article_solid" , 2);
instance_create(x+0,y+192, "obj_stage_article_solid" , 2);
instance_create(x+0,y+256, "obj_stage_article_solid" , 2);
instance_create(x+0,y+320, "obj_stage_article_solid" , 2);
instance_create(x+0,y+384, "obj_stage_article_solid" , 2);
instance_create(x+0,y+448, "obj_stage_article_solid" , 2);
instance_create(x+0,y+512, "obj_stage_article_solid" , 2);


	instance_create(x+0,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+64,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+128,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+192,y+512, "obj_stage_article_solid" , 2);


	instance_create(x+384,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+448,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+512,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+576,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+640,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+704,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+768,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+832,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+896,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+960,y+512, "obj_stage_article_solid" , 2);


	}
} 

if(xq == -18){//-18-0
	if(yq == 0){
music_play_file( "Shokubeni" );
	instance_create(x+0,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+64,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+128,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+192,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+256,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+320,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+384,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+448,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+512,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+576,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+640,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+704,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+768,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+832,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+896,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+960,y+0, "obj_stage_article_solid" , 2);


instance_create(x+960,y+0, "obj_stage_article_solid" , 2);
instance_create(x+960,y+64, "obj_stage_article_solid" , 2);
instance_create(x+960,y+128, "obj_stage_article_solid" , 2);
instance_create(x+960,y+192, "obj_stage_article_solid" , 2);



instance_create(x+960,y+448, "obj_stage_article_solid" , 2);
instance_create(x+960,y+512, "obj_stage_article_solid" , 2);

	instance_create(x+0,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+64,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+128,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+192,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+256,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+320,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+384,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+448,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+512,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+576,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+640,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+704,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+768,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+832,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+896,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+960,y+512, "obj_stage_article_solid" , 2);


	}
}
if(xq == -19){//-19-0
	if(yq == -0){
music_play_file( "Shokubeni" );
	instance_create(x+0,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+64,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+128,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+192,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+256,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+320,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+384,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+448,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+512,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+576,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+640,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+704,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+768,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+832,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+896,y+0, "obj_stage_article_solid" , 2);
	instance_create(x+960,y+0, "obj_stage_article_solid" , 2);


instance_create(x+960,y+0, "obj_stage_article_solid" , 2);
instance_create(x+960,y+64, "obj_stage_article_solid" , 2);
instance_create(x+960,y+128, "obj_stage_article_solid" , 2);
instance_create(x+960,y+192, "obj_stage_article_solid" , 2);
instance_create(x+960,y+256, "obj_stage_article_solid" , 2);
instance_create(x+960,y+320, "obj_stage_article_solid" , 2);
instance_create(x+960,y+384, "obj_stage_article_solid" , 2);
instance_create(x+960,y+448, "obj_stage_article_solid" , 2);
instance_create(x+960,y+512, "obj_stage_article_solid" , 2);

instance_create(x+0,y+0, "obj_stage_article_solid" , 2);
instance_create(x+0,y+64, "obj_stage_article_solid" , 2);
instance_create(x+0,y+128, "obj_stage_article_solid" , 2);
instance_create(x+0,y+192, "obj_stage_article_solid" , 2);



instance_create(x+0,y+448, "obj_stage_article_solid" , 2);
instance_create(x+0,y+512, "obj_stage_article_solid" , 2);


	instance_create(x+0,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+64,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+128,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+192,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+256,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+320,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+384,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+448,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+512,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+576,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+640,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+704,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+768,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+832,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+896,y+512, "obj_stage_article_solid" , 2);
	instance_create(x+960,y+512, "obj_stage_article_solid" , 2);


	}
} 

initialization = true
}

/*
print_debug("x "+string(xq))
print_debug("y "+string(yq))
*/
//print_debug("gf "+string(gf))
//


//
