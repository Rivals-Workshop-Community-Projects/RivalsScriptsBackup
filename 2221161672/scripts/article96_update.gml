set_player_stocks( 1, 10);
set_player_stocks( 2, 15);
set_player_stocks( 3, 100);
set_player_stocks( 4, 105);
//


//

if (death == false){
with oPlayer {//oPlayer
//==================================================
if ( x <= get_marker_x( 1 )) {
sound_play( asset_get("sfx_frog_uspecial_cast"));

with ( obj_stage_article_platform ) {
Delete = true
}

with ( obj_stage_article_solid ) {
Delete = true
}
with ( obj_stage_article ) {
destroy_hitboxes();
if ( get_article_script( id ) == 96 ) {
xq -=1;
initialization = false
	}
Delete = true
}

x += 900

}
//==================================================
if ( x >= get_marker_x( 6 )) {



with ( obj_stage_article_platform ) {
Delete = true
}
with ( obj_stage_article_solid ) {
Delete = true
}

with ( obj_stage_article ) {
destroy_hitboxes();
if ( get_article_script( id ) == 96 ) {
xq +=1;
initialization = false
	}
Delete = true
}

x -= 900
}

//==================================================

if ( y <= get_marker_y( 3 )) {
//sound_play( asset_get("sfx_frog_uspecial_cast"));
y += 600
}
//==================================================
if ( y >= get_marker_y( 4 )) {
//sound_play( asset_get("sfx_frog_uspecial_spin"));
y -= 600
}
//==================================================


}

}else{


//==================================================
if ( x <= get_marker_x( 1 )) {
sound_play( asset_get("sfx_frog_uspecial_cast"));
x += 900

with ( obj_stage_article_platform ) {
Delete = true
}

with ( obj_stage_article_solid ) {
Delete = true
}
with ( obj_stage_article ) {
destroy_hitboxes();
if ( get_article_script( id ) == 96 ) {

if (Checkpoint == true){
xq =18;
}else{
xq =4;
}

initialization = false
	}
Delete = true
}


}
//==================================================
if ( x >= get_marker_x( 6 )) {
sound_play( asset_get("sfx_frog_uspecial_spin"));
x -= 900

with ( obj_stage_article_platform ) {
Delete = true
}
with ( obj_stage_article_solid ) {
Delete = true
}
with ( obj_stage_article ) {
destroy_hitboxes();
if ( get_article_script( id ) == 96 ) {

if (Checkpoint == true){
xq =18;
}else{
xq =4;
}

initialization = false
	}
Delete = true
}


}

if ( y <= get_marker_y( 3 )) {
//sound_play( asset_get("sfx_frog_uspecial_cast"));
y += 600
}
//==================================================
if ( y >= get_marker_y( 4 )) {
//sound_play( asset_get("sfx_frog_uspecial_spin"));
y -= 600
}
//==================================================

}



if (death == false){//8======================================
	with oPlayer {//oPlayer
		if (get_player_damage( player ) >= 100) {
			//x = 528
			//y = 432
			set_state(PS_WRAPPED);
 			if (state == PS_SPAWN){

			
			}else{

					 with ( obj_stage_article_solid ) {
					Delete = true
					xq =0;
					}
						with ( obj_stage_article ) {
						if ( get_article_script( id ) == 96 ) {
						
						xq =0;

						
						//yq =0;
						initialization = false
						
						Delete = true
						}
					Delete = true
					}
		take_damage( player, -1, -999 );
			create_deathbox(x, y, 1100, 1100, -1, true, 1, 5, 2);
				}
			Delete = true
			}

	}
}//8======================================



if(xq == -1){
sprite_index = sprite_get("kiso18");
		take_damage( player, -1, -999 );
}


if(xq == 0){
sprite_index = sprite_get("kiso19");
		take_damage( player, -1, -999 );
}


if(xq == 1){
sprite_index = sprite_get("kiso18");
}

if(xq == 4){
sprite_index = sprite_get("kiso");
}

if(xq == 5){
sprite_index = sprite_get("kiso2");
}

if(xq == 6){
sprite_index = sprite_get("kiso3");
}

if(xq == 7){
sprite_index = sprite_get("kiso4");
}

if(xq == 8){
sprite_index = sprite_get("kiso5");
}

if(xq == 9){
sprite_index = sprite_get("kiso6");
}

if(xq == 10){
sprite_index = sprite_get("kiso7");
}
if(xq == 11){
sprite_index = sprite_get("kiso8");
}
if(xq == 12){
sprite_index = sprite_get("kiso9");
}
if(xq == 13){
sprite_index = sprite_get("kiso10");
}
if(xq == 14){
sprite_index = sprite_get("kiso11");
}
if(xq == 15){
sprite_index = sprite_get("kiso12");
}
if(xq == 16){
sprite_index = sprite_get("kiso13");
}
if(xq == 17){
sprite_index = sprite_get("kiso14");
}
if(xq == 18){
sprite_index = sprite_get("kiso16");
}
if(xq == 999){
sprite_index = sprite_get("kiso21");
}

if(xq == 1000){
sprite_index = sprite_get("kiso22");
}








if (initialization == false){//8

if(xq == 999){
music_play_file( "music_loop" );

instance_create(x,y, "obj_stage_article_solid" , 2);
instance_create(x+64,y+64, "obj_stage_article_solid" , 2);
instance_create(x+64,y+128, "obj_stage_article_solid" , 2);
instance_create(x+64,y+192, "obj_stage_article_solid" , 2);
instance_create(x+64,y+256, "obj_stage_article_solid" , 2);
instance_create(x+64,y+320, "obj_stage_article_solid" , 2);
instance_create(x+64,y+384, "obj_stage_article_solid" , 2);
instance_create(x+64,y+448, "obj_stage_article_solid" , 2);


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

instance_create(x+896,y+64, "obj_stage_article_solid" , 2);
instance_create(x+896,y+128, "obj_stage_article_solid" , 2);
instance_create(x+896,y+192, "obj_stage_article_solid" , 2);
instance_create(x+960,y+192, "obj_stage_article_solid" , 2);

 instance_create(x+960,y+384, "obj_stage_article_solid" , 2);
instance_create(x+896,y+384, "obj_stage_article_solid" , 2);
instance_create(x+896,y+448, "obj_stage_article_solid" , 2);
}
if(xq == 1000){
music_play_file( "music_loop" );

instance_create(x,y, "obj_stage_article_solid" , 2);
instance_create(x+64,y+64, "obj_stage_article_solid" , 2);
instance_create(x+64,y+128, "obj_stage_article_solid" , 2);
instance_create(x+64,y+192, "obj_stage_article_solid" , 2);
instance_create(x+0,y+192, "obj_stage_article_solid" , 2);


instance_create(x+0,y+384, "obj_stage_article_solid" , 2);
instance_create(x+64,y+384, "obj_stage_article_solid" , 2);
instance_create(x+64,y+448, "obj_stage_article_solid" , 2);


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

instance_create(x+768,y+384, "obj_stage_article" , 15)

instance_create(x+896,y+64, "obj_stage_article_solid" , 2);
instance_create(x+896,y+128, "obj_stage_article_solid" , 2);
instance_create(x+896,y+192, "obj_stage_article_solid" , 2);
instance_create(x+896,y+256, "obj_stage_article_solid" , 2);
instance_create(x+896,y+320, "obj_stage_article_solid" , 2);
instance_create(x+896,y+384, "obj_stage_article_solid" , 2);
instance_create(x+896,y+448, "obj_stage_article_solid" , 2);
}

if(xq == -1){
music_play_file( "music_loop" );

	with oPlayer {//oPlayer
	end_match( 2 );
	}

if(xq == 0){
sprite_index = sprite_get("kiso17");
}

}
if(xq == 0){


instance_create(x+0,y+64, "obj_stage_article_solid" , 3);
instance_create(x+0,y+128, "obj_stage_article_solid" , 3);
instance_create(x+0,y+192, "obj_stage_article_solid" , 3);
instance_create(x+0,y+256, "obj_stage_article_solid" , 3);
instance_create(x+0,y+320, "obj_stage_article_solid" , 3);
instance_create(x+0,y+384, "obj_stage_article_solid" , 3);
instance_create(x+0,y+448, "obj_stage_article_solid" , 3);

instance_create(x+960,y+64, "obj_stage_article_solid" , 3);
instance_create(x+960,y+128, "obj_stage_article_solid" , 3);
instance_create(x+960,y+192, "obj_stage_article_solid" , 3);
instance_create(x+960,y+256, "obj_stage_article_solid" , 3);
instance_create(x+960,y+320, "obj_stage_article_solid" , 3);
instance_create(x+960,y+384, "obj_stage_article_solid" , 3);
instance_create(x+960,y+448, "obj_stage_article_solid" , 3);

music_play_file( "music_loop" );
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
}
if(xq == 1){

if (Checkpoint == true){
xq =18;
}else{
xq =4;
}

with oPlayer {//oPlayer
x = 528
y = 432
}
music_play_file( "music_loop" );
//instance_create(x+0,y+512, "obj_stage_article_solid" , 2);
//instance_create(x+64,y+512, "obj_stage_article_solid" , 2);
//instance_create(x+128,y+512, "obj_stage_article_solid" , 2);
//instance_create(x+192,y+512, "obj_stage_article_solid" , 2);
//instance_create(x+256,y+512, "obj_stage_article_solid" , 2);
//instance_create(x+320,y+512, "obj_stage_article_solid" , 2);
//instance_create(x+384,y+512, "obj_stage_article_solid" , 2);
//instance_create(x+448,y+512, "obj_stage_article_solid" , 2);
//instance_create(x+512,y+512, "obj_stage_article_solid" , 2);
//instance_create(x+576,y+512, "obj_stage_article_solid" , 2);
//instance_create(x+640,y+512, "obj_stage_article_solid" , 2);
//instance_create(x+704,y+512, "obj_stage_article_solid" , 2);
//instance_create(x+768,y+512, "obj_stage_article_solid" , 2);
//instance_create(x+832,y+512, "obj_stage_article_solid" , 2);
//instance_create(x+896,y+512, "obj_stage_article_solid" , 2);
//instance_create(x+960,y+512, "obj_stage_article_solid" , 2);
}
if(xq == 2){//Do not erase the base


//instance_create(x,y, "obj_stage_article_solid" , 2);
//instance_create(x+64,y+64, "obj_stage_article_solid" , 2);
//instance_create(x+64,y+128, "obj_stage_article_solid" , 2);
//instance_create(x+64,y+192, "obj_stage_article_solid" , 2);
//instance_create(x+0,y+192, "obj_stage_article_solid" , 2);


//instance_create(x+0,y+384, "obj_stage_article_solid" , 2);
//instance_create(x+64,y+384, "obj_stage_article_solid" , 2);
//instance_create(x+64,y+448, "obj_stage_article_solid" , 2);

//instance_create(x+64,y+0, "obj_stage_article_solid" , 2);
//instance_create(x+128,y+0, "obj_stage_article_solid" , 2);
//instance_create(x+192,y+0, "obj_stage_article_solid" , 2);
//instance_create(x+256,y+0, "obj_stage_article_solid" , 2);
//instance_create(x+320,y+0, "obj_stage_article_solid" , 2);
instance_create(x+384,y+0, "obj_stage_article_solid" , 2);
instance_create(x+448,y+0, "obj_stage_article_solid" , 2);
instance_create(x+512,y+0, "obj_stage_article_solid" , 2);
instance_create(x+576,y+0, "obj_stage_article_solid" , 2);
instance_create(x+640,y+0, "obj_stage_article_solid" , 2);
instance_create(x+704,y+0, "obj_stage_article_solid" , 2);
instance_create(x+768,y+0, "obj_stage_article_solid" , 2);
instance_create(x+832,y+0, "obj_stage_article_solid" , 2);
instance_create(x+896,y+0, "obj_stage_article_solid" , 2);


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

instance_create(x+896,y+64, "obj_stage_article_solid" , 2);
instance_create(x+896,y+128, "obj_stage_article_solid" , 2);
instance_create(x+896,y+192, "obj_stage_article_solid" , 2);
instance_create(x+960,y+192, "obj_stage_article_solid" , 2);

 instance_create(x+960,y+384, "obj_stage_article_solid" , 2);
instance_create(x+896,y+384, "obj_stage_article_solid" , 2);
instance_create(x+896,y+448, "obj_stage_article_solid" , 2);
}
if(xq == 3){//Do not erase the base
instance_create(x,y, "obj_stage_article_solid" , 2);
instance_create(x+64,y+64, "obj_stage_article_solid" , 2);
instance_create(x+64,y+128, "obj_stage_article_solid" , 2);
instance_create(x+64,y+192, "obj_stage_article_solid" , 2);
instance_create(x+64,y+256, "obj_stage_article_solid" , 2);
instance_create(x+64,y+320, "obj_stage_article_solid" , 2);
instance_create(x+64,y+384, "obj_stage_article_solid" , 2);
instance_create(x+64,y+448, "obj_stage_article_solid" , 2);
//
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

instance_create(x+896,y+64, "obj_stage_article_solid" , 2);
instance_create(x+896,y+128, "obj_stage_article_solid" , 2);
instance_create(x+896,y+192, "obj_stage_article_solid" , 2);
instance_create(x+896,y+256, "obj_stage_article_solid" , 2);
instance_create(x+896,y+320, "obj_stage_article_solid" , 2);
instance_create(x+896,y+384, "obj_stage_article_solid" , 2);
instance_create(x+896,y+448, "obj_stage_article_solid" , 2);
}
//========================================================================================================================
if(xq == 4){//初期//1

instance_create(x,y, "obj_stage_article_solid" , 2);
instance_create(x+64,y+64, "obj_stage_article_solid" , 2);
instance_create(x+64,y+128, "obj_stage_article_solid" , 2);
instance_create(x+64,y+192, "obj_stage_article_solid" , 2);
instance_create(x+64,y+256, "obj_stage_article_solid" , 2);
instance_create(x+64,y+320, "obj_stage_article_solid" , 2);
instance_create(x+64,y+384, "obj_stage_article_solid" , 2);
instance_create(x+64,y+448, "obj_stage_article_solid" , 2);

instance_create(x+64,y-64, "obj_stage_article_solid" , 2);
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
instance_create(x+960,y-64, "obj_stage_article_solid" , 2);

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

instance_create(x+896,y+64, "obj_stage_article_solid" , 2);
instance_create(x+896,y+128, "obj_stage_article_solid" , 2);
instance_create(x+896,y+192, "obj_stage_article_solid" , 2);
instance_create(x+960,y+192, "obj_stage_article_solid" , 2);


instance_create(x+128,y+384, "obj_stage_article_solid" , 2);
instance_create(x+128,y+448, "obj_stage_article_solid" , 2);
instance_create(x+192,y+384, "obj_stage_article_solid" , 2);
instance_create(x+192,y+448, "obj_stage_article_solid" , 2);
instance_create(x+256,y+384, "obj_stage_article_solid" , 2);
instance_create(x+256,y+448, "obj_stage_article_solid" , 2);
instance_create(x+320,y+384, "obj_stage_article_solid" , 2);
instance_create(x+320,y+448, "obj_stage_article_solid" , 2);
instance_create(x+384,y+384, "obj_stage_article_solid" , 2);
instance_create(x+384,y+448, "obj_stage_article_solid" , 2);
instance_create(x+448,y+384, "obj_stage_article_solid" , 2);
instance_create(x+448,y+448, "obj_stage_article_solid" , 2);
instance_create(x+512,y+384, "obj_stage_article_solid" , 2);
instance_create(x+512,y+448, "obj_stage_article_solid" , 2);
instance_create(x+576,y+384, "obj_stage_article_solid" , 2);
instance_create(x+576,y+448, "obj_stage_article_solid" , 2);
instance_create(x+640,y+384, "obj_stage_article_solid" , 2);
instance_create(x+640,y+448, "obj_stage_article_solid" , 2);
instance_create(x+704,y+384, "obj_stage_article_solid" , 2);
instance_create(x+704,y+448, "obj_stage_article_solid" , 2);
instance_create(x+768,y+384, "obj_stage_article_solid" , 2);
instance_create(x+768,y+448, "obj_stage_article_solid" , 2);
instance_create(x+832,y+384, "obj_stage_article_solid" , 2);
instance_create(x+832,y+448, "obj_stage_article_solid" , 2);




 instance_create(x+960,y+384, "obj_stage_article_solid" , 2);
instance_create(x+896,y+384, "obj_stage_article_solid" , 2);
instance_create(x+896,y+448, "obj_stage_article_solid" , 2);
}
//========================================================================================================================
if(xq == 5){//2
music_play_file( "20060718ougon" );





instance_create(x,y, "obj_stage_article_solid" , 2);
instance_create(x+64,y+64, "obj_stage_article_solid" , 2);
instance_create(x+64,y+128, "obj_stage_article_solid" , 2);
instance_create(x+64,y+192, "obj_stage_article_solid" , 2);
instance_create(x+0,y+192, "obj_stage_article_solid" , 2);


instance_create(x+0,y+384, "obj_stage_article_solid" , 2);
instance_create(x+64,y+384, "obj_stage_article_solid" , 2);
instance_create(x+64,y+448, "obj_stage_article_solid" , 2);

instance_create(x+64,y-64, "obj_stage_article_solid" , 2);
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
instance_create(x+960,y-64, "obj_stage_article_solid" , 2);


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

instance_create(x+128,y+448, "obj_stage_article" , 4);
instance_create(x+192,y+448, "obj_stage_article" , 4);
instance_create(x+256,y+448, "obj_stage_article" , 4);


instance_create(x+320,y+64, "obj_stage_article_solid" , 2);
instance_create(x+320,y+128, "obj_stage_article_solid" , 2);
//instance_create(x+320,y+192, "obj_stage_article_solid" , 2);
//instance_create(x+320,y+256, "obj_stage_article_solid" , 2);
instance_create(x+320,y+320, "obj_stage_article_solid" , 2);
instance_create(x+320,y+384, "obj_stage_article_solid" , 2);
instance_create(x+320,y+448, "obj_stage_article_solid" , 2);

instance_create(x+512,y+256, "obj_stage_article" , 4);


instance_create(x+384,y+320, "obj_stage_article_solid" , 2);
instance_create(x+448,y+320, "obj_stage_article_solid" , 2);
instance_create(x+512,y+320, "obj_stage_article_solid" , 2);
instance_create(x+576,y+320, "obj_stage_article_solid" , 2);
instance_create(x+640,y+320, "obj_stage_article_solid" , 2);
instance_create(x+640,y+320, "obj_stage_article_solid" , 2);
instance_create(x+640,y+384, "obj_stage_article_solid" , 2);
instance_create(x+640,y+448, "obj_stage_article_solid" , 2);


instance_create(x+640,y+64, "obj_stage_article_solid" , 2);

instance_create(x+640,y+256, "obj_stage_article_solid" , 2);
instance_create(x+640,y+320, "obj_stage_article_solid" , 2);



instance_create(x+896,y+64, "obj_stage_article_solid" , 2);
instance_create(x+896,y+128, "obj_stage_article_solid" , 2);
instance_create(x+896,y+192, "obj_stage_article_solid" , 2);
instance_create(x+960,y+192, "obj_stage_article_solid" , 2);




 instance_create(x+960,y+384, "obj_stage_article_solid" , 2);
instance_create(x+896,y+384, "obj_stage_article_solid" , 2);
instance_create(x+896,y+448, "obj_stage_article_solid" , 2);
}
//========================================================================================================================
if(xq == 6){//3


instance_create(x+256,y+448, "obj_stage_article" , 4);
instance_create(x+704,y+448, "obj_stage_article" , 4);










instance_create(x,y, "obj_stage_article_solid" , 2);
instance_create(x+64,y+64, "obj_stage_article_solid" , 2);
instance_create(x+64,y+128, "obj_stage_article_solid" , 2);
instance_create(x+64,y+192, "obj_stage_article_solid" , 2);
instance_create(x+0,y+192, "obj_stage_article_solid" , 2);


instance_create(x+0,y+384, "obj_stage_article_solid" , 2);
instance_create(x+64,y+384, "obj_stage_article_solid" , 2);
instance_create(x+64,y+448, "obj_stage_article_solid" , 2);

instance_create(x+64,y-64, "obj_stage_article_solid" , 2);
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
instance_create(x+960,y-64, "obj_stage_article_solid" , 2);



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


instance_create(x+512,y+64, "obj_stage_article_solid" , 2);
instance_create(x+512,y+128, "obj_stage_article_solid" , 2);
instance_create(x+512,y+192, "obj_stage_article_solid" , 2);
instance_create(x+512,y+256, "obj_stage_article_solid" , 2);
instance_create(x+512,y+320, "obj_stage_article_solid" , 2);

instance_create(x+384,y+256, "obj_stage_article_solid" , 2);
instance_create(x+384,y+320, "obj_stage_article_solid" , 2);
instance_create(x+384,y+384, "obj_stage_article_solid" , 2);
instance_create(x+384,y+448, "obj_stage_article_solid" , 2);
instance_create(x+384,y+512, "obj_stage_article_solid" , 2);






instance_create(x+896,y+64, "obj_stage_article_solid" , 2);
instance_create(x+896,y+128, "obj_stage_article_solid" , 2);
instance_create(x+896,y+192, "obj_stage_article_solid" , 2);
instance_create(x+960,y+192, "obj_stage_article_solid" , 2);

 instance_create(x+960,y+384, "obj_stage_article_solid" , 2);
instance_create(x+896,y+384, "obj_stage_article_solid" , 2);
instance_create(x+896,y+448, "obj_stage_article_solid" , 2);

}
//========================================================================================================================
if(xq == 7){//4

instance_create(x+192,y+320, "obj_stage_article" , 4);
instance_create(x+192,y+320, "obj_stage_article" , 4);

instance_create(x+576,y+320, "obj_stage_article" , 4);
instance_create(x+640,y+320, "obj_stage_article" , 4);

instance_create(x,y, "obj_stage_article_solid" , 2);
instance_create(x+64,y+64, "obj_stage_article_solid" , 2);
instance_create(x+64,y+128, "obj_stage_article_solid" , 2);
instance_create(x+64,y+192, "obj_stage_article_solid" , 2);
instance_create(x+0,y+192, "obj_stage_article_solid" , 2);


instance_create(x+0,y+384, "obj_stage_article_solid" , 2);
instance_create(x+64,y+384, "obj_stage_article_solid" , 2);
instance_create(x+64,y+448, "obj_stage_article_solid" , 2);


instance_create(x+64,y-64, "obj_stage_article_solid" , 2);
instance_create(x+64,y+0, "obj_stage_article_solid" , 2);
instance_create(x+128,y+0, "obj_stage_article_solid" , 2);
instance_create(x+192,y+0, "obj_stage_article_solid" , 2);
instance_create(x+256,y+0, "obj_stage_article_solid" , 2);
//instance_create(x+320,y+0, "obj_stage_article_solid" , 2);
//instance_create(x+384,y+0, "obj_stage_article_solid" , 2);
//instance_create(x+448,y+0, "obj_stage_article_solid" , 2);
//instance_create(x+512,y+0, "obj_stage_article_solid" , 2);
//instance_create(x+576,y+0, "obj_stage_article_solid" , 2);
instance_create(x+640,y+0, "obj_stage_article_solid" , 2);
instance_create(x+704,y+0, "obj_stage_article_solid" , 2);
instance_create(x+768,y+0, "obj_stage_article_solid" , 2);
instance_create(x+832,y+0, "obj_stage_article_solid" , 2);
instance_create(x+896,y+0, "obj_stage_article_solid" , 2);
instance_create(x+960,y-64, "obj_stage_article_solid" , 2);

instance_create(x+64,y+512, "obj_stage_article_solid" , 2);
instance_create(x+128,y+512, "obj_stage_article_solid" , 2);
instance_create(x+192,y+512, "obj_stage_article_solid" , 2);
instance_create(x+256,y+512, "obj_stage_article_solid" , 2);
instance_create(x+320,y+512, "obj_stage_article_solid" , 2);

instance_create(x+384,y+64, "obj_stage_article_solid" , 2);
instance_create(x+384,y+128, "obj_stage_article_solid" , 2);
instance_create(x+384,y+192, "obj_stage_article_solid" , 2);
instance_create(x+448,y+256, "obj_stage_article_solid" , 2);
instance_create(x+512,y+320, "obj_stage_article_solid" , 2);
instance_create(x+576,y+384, "obj_stage_article_solid" , 2);



instance_create(x+640,y+512, "obj_stage_article_solid" , 2);
instance_create(x+704,y+512, "obj_stage_article_solid" , 2);
instance_create(x+768,y+512, "obj_stage_article_solid" , 2);
instance_create(x+832,y+512, "obj_stage_article_solid" , 2);
instance_create(x+896,y+512, "obj_stage_article_solid" , 2);


instance_create(x+128,y+384, "obj_stage_article_solid" , 2);
instance_create(x+128,y+448, "obj_stage_article_solid" , 2);
instance_create(x+192,y+384, "obj_stage_article_solid" , 2);
instance_create(x+192,y+448, "obj_stage_article_solid" , 2);
instance_create(x+256,y+384, "obj_stage_article_solid" , 2);
instance_create(x+256,y+448, "obj_stage_article_solid" , 2);
instance_create(x+320,y+384, "obj_stage_article_solid" , 2);
instance_create(x+320,y+448, "obj_stage_article_solid" , 2);

instance_create(x+640,y+384, "obj_stage_article_solid" , 2);
instance_create(x+640,y+448, "obj_stage_article_solid" , 2);
instance_create(x+704,y+384, "obj_stage_article_solid" , 2);
instance_create(x+704,y+448, "obj_stage_article_solid" , 2);
instance_create(x+768,y+384, "obj_stage_article_solid" , 2);
instance_create(x+768,y+448, "obj_stage_article_solid" , 2);
instance_create(x+832,y+384, "obj_stage_article_solid" , 2);
instance_create(x+832,y+448, "obj_stage_article_solid" , 2);

instance_create(x+896,y+64, "obj_stage_article_solid" , 2);
instance_create(x+896,y+128, "obj_stage_article_solid" , 2);
instance_create(x+896,y+192, "obj_stage_article_solid" , 2);
instance_create(x+960,y+192, "obj_stage_article_solid" , 2);

 instance_create(x+960,y+384, "obj_stage_article_solid" , 2);
instance_create(x+896,y+384, "obj_stage_article_solid" , 2);
instance_create(x+896,y+448, "obj_stage_article_solid" , 2);
}
//========================================================================================================================
if(xq == 8){//5


instance_create(x+128,y+448, "obj_stage_article" , 4);
instance_create(x+192,y+448, "obj_stage_article" , 4);
instance_create(x+320,y+448, "obj_stage_article" , 4);
instance_create(x+256,y+448, "obj_stage_article" , 4);

instance_create(x+576,y+320, "obj_stage_article" , 4);
instance_create(x+640,y+320, "obj_stage_article" , 4);

instance_create(x,y, "obj_stage_article_solid" , 2);
instance_create(x+64,y+64, "obj_stage_article_solid" , 2);
instance_create(x+64,y+128, "obj_stage_article_solid" , 2);
instance_create(x+64,y+192, "obj_stage_article_solid" , 2);
instance_create(x+0,y+192, "obj_stage_article_solid" , 2);


instance_create(x+0,y+384, "obj_stage_article_solid" , 2);
instance_create(x+64,y+384, "obj_stage_article_solid" , 2);
instance_create(x+64,y+448, "obj_stage_article_solid" , 2);

instance_create(x+64,y-64, "obj_stage_article_solid" , 2);
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
instance_create(x+960,y-64, "obj_stage_article_solid" , 2);


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


//enemy
instance_create(x+768,y+384, "obj_stage_article" , 5);
//enemy



instance_create(x+384,y+448, "obj_stage_article_solid" , 2);
instance_create(x+384,y+384, "obj_stage_article_solid" , 2);
instance_create(x+448,y+384, "obj_stage_article_solid" , 2);
instance_create(x+512,y+384, "obj_stage_article_solid" , 2);
instance_create(x+576,y+384, "obj_stage_article_solid" , 2);
instance_create(x+640,y+384, "obj_stage_article_solid" , 2);
instance_create(x+704,y+384, "obj_stage_article_solid" , 2);
instance_create(x+768,y+384, "obj_stage_article_solid" , 2);
instance_create(x+832,y+384, "obj_stage_article_solid" , 2);
instance_create(x+896,y+384, "obj_stage_article_solid" , 2);

instance_create(x+896,y+64, "obj_stage_article_solid" , 2);
instance_create(x+896,y+128, "obj_stage_article_solid" , 2);
instance_create(x+896,y+192, "obj_stage_article_solid" , 2);
instance_create(x+960,y+192, "obj_stage_article_solid" , 2);

 instance_create(x+960,y+384, "obj_stage_article_solid" , 2);
instance_create(x+896,y+384, "obj_stage_article_solid" , 2);
instance_create(x+896,y+448, "obj_stage_article_solid" , 2);


}
//========================================================================================================================
if(xq == 9){//6

instance_create(x,y, "obj_stage_article_solid" , 2);
instance_create(x+64,y+64, "obj_stage_article_solid" , 2);
instance_create(x+64,y+128, "obj_stage_article_solid" , 2);
instance_create(x+64,y+192, "obj_stage_article_solid" , 2);
instance_create(x+0,y+192, "obj_stage_article_solid" , 2);


instance_create(x+0,y+384, "obj_stage_article_solid" , 2);
instance_create(x+64,y+384, "obj_stage_article_solid" , 2);
instance_create(x+64,y+448, "obj_stage_article_solid" , 2);

instance_create(x+64,y-64, "obj_stage_article_solid" , 2);
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
instance_create(x+960,y-64, "obj_stage_article_solid" , 2);



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


if(key == true){
	if(keyy == true){
	}else{
	instance_create(x+512,y+128, "obj_stage_article" , 13);
	}
}else{
instance_create(x+512,y+128, "obj_stage_article_solid" , 10);
instance_create(x+256,y+256, "obj_stage_article_solid" , 8);
instance_create(x+320,y+256, "obj_stage_article_solid" , 8);
}

instance_create(x+192,y+256, "obj_stage_article_solid" , 2);
instance_create(x+192,y+192, "obj_stage_article_solid" , 2);
instance_create(x+192,y+128, "obj_stage_article_solid" , 2);
instance_create(x+192,y+64, "obj_stage_article_solid" , 2);


instance_create(x+256,y+320, "obj_stage_article_solid" , 2);
instance_create(x+320,y+384, "obj_stage_article_solid" , 2);




instance_create(x+384,y+256, "obj_stage_article_solid" , 2);
instance_create(x+448,y+320, "obj_stage_article_solid" , 2);
instance_create(x+512,y+320, "obj_stage_article_solid" , 2);
instance_create(x+512,y+384, "obj_stage_article_solid" , 2);
instance_create(x+576,y+320, "obj_stage_article_solid" , 2);

instance_create(x+448,y+256, "obj_stage_article_solid" , 2);
instance_create(x+512,y+256, "obj_stage_article_solid" , 2);
instance_create(x+576,y+256, "obj_stage_article_solid" , 2);
instance_create(x+640,y+256, "obj_stage_article_solid" , 2);


instance_create(x+704,y+64, "obj_stage_article_solid" , 2);
instance_create(x+704,y+128, "obj_stage_article_solid" , 2);
instance_create(x+704,y+192, "obj_stage_article_solid" , 2);
instance_create(x+704,y+256, "obj_stage_article_solid" , 2);
instance_create(x+704,y+320, "obj_stage_article_solid" , 2);

instance_create(x+704,y+448, "obj_stage_article_solid" , 2);

instance_create(x+896,y+64, "obj_stage_article_solid" , 2);
instance_create(x+896,y+128, "obj_stage_article_solid" , 2);
instance_create(x+896,y+192, "obj_stage_article_solid" , 2);
instance_create(x+960,y+192, "obj_stage_article_solid" , 2);

 instance_create(x+960,y+384, "obj_stage_article_solid" , 2);
instance_create(x+896,y+384, "obj_stage_article_solid" , 2);
instance_create(x+896,y+448, "obj_stage_article_solid" , 2);
}
//========================================================================================================================


if(xq == 10){//7

instance_create(x,y, "obj_stage_article_solid" , 2);
instance_create(x+64,y+64, "obj_stage_article_solid" , 2);
instance_create(x+64,y+128, "obj_stage_article_solid" , 2);
instance_create(x+64,y+192, "obj_stage_article_solid" , 2);
instance_create(x+0,y+192, "obj_stage_article_solid" , 2);


instance_create(x+0,y+384, "obj_stage_article_solid" , 2);
instance_create(x+64,y+384, "obj_stage_article_solid" , 2);
instance_create(x+64,y+448, "obj_stage_article_solid" , 2);

instance_create(x+64,y-64, "obj_stage_article_solid" , 2);
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
instance_create(x+960,y-64, "obj_stage_article_solid" , 2);
 


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

instance_create(x+64,y+448, "obj_stage_article_solid" , 2);
instance_create(x+128,y+448, "obj_stage_article_solid" , 2);
instance_create(x+192,y+448, "obj_stage_article_solid" , 2);
instance_create(x+256,y+448, "obj_stage_article_solid" , 2);
instance_create(x+320,y+448, "obj_stage_article_solid" , 2);
instance_create(x+384,y+448, "obj_stage_article_solid" , 2);
instance_create(x+448,y+448, "obj_stage_article_solid" , 2);



instance_create(x+576,y+192, "obj_stage_article_solid" , 2);
instance_create(x+640,y+192, "obj_stage_article_solid" , 2);
instance_create(x+576,y+448, "obj_stage_article_solid" , 2);
instance_create(x+640,y+448, "obj_stage_article_solid" , 2);
instance_create(x+704,y+384, "obj_stage_article_solid" , 2);
instance_create(x+768,y+384, "obj_stage_article_solid" , 2);
instance_create(x+832,y+384, "obj_stage_article_solid" , 2);




//enemy
instance_create(x+640,y+448, "obj_stage_article" , 5);
instance_create(x+640,y+192, "obj_stage_article" , 5);
instance_create(x+768,y+384, "obj_stage_article" , 6);
//enemy













instance_create(x+896,y+64, "obj_stage_article_solid" , 2);
instance_create(x+896,y+128, "obj_stage_article_solid" , 2);
instance_create(x+896,y+192, "obj_stage_article_solid" , 2);
instance_create(x+960,y+192, "obj_stage_article_solid" , 2);

 instance_create(x+960,y+384, "obj_stage_article_solid" , 2);
instance_create(x+896,y+384, "obj_stage_article_solid" , 2);
instance_create(x+896,y+448, "obj_stage_article_solid" , 2);



}
//========================================================================================================================
if(xq == 11){//8

instance_create(x,y, "obj_stage_article_solid" , 2);
instance_create(x+64,y+64, "obj_stage_article_solid" , 2);
instance_create(x+64,y+128, "obj_stage_article_solid" , 2);
instance_create(x+64,y+192, "obj_stage_article_solid" , 2);
instance_create(x+0,y+192, "obj_stage_article_solid" , 2);


instance_create(x+0,y+384, "obj_stage_article_solid" , 2);
instance_create(x+64,y+384, "obj_stage_article_solid" , 2);
instance_create(x+64,y+448, "obj_stage_article_solid" , 2);
instance_create(x+64,y-64, "obj_stage_article_solid" , 2);
instance_create(x+64,y+0, "obj_stage_article_solid" , 2);
instance_create(x+128,y+0, "obj_stage_article_solid" , 2);
instance_create(x+192,y+0, "obj_stage_article_solid" , 2);
instance_create(x+256,y+0, "obj_stage_article_solid" , 2);
instance_create(x+320,y+0, "obj_stage_article_solid" , 2);
//instance_create(x+384,y+0, "obj_stage_article_solid" , 2);
//instance_create(x+448,y+0, "obj_stage_article_solid" , 2);
//instance_create(x+512,y+0, "obj_stage_article_solid" , 2);
//instance_create(x+576,y+0, "obj_stage_article_solid" , 2);
instance_create(x+640,y+0, "obj_stage_article_solid" , 2);
instance_create(x+704,y+0, "obj_stage_article_solid" , 2);
instance_create(x+768,y+0, "obj_stage_article_solid" , 2);
instance_create(x+832,y+0, "obj_stage_article_solid" , 2);
instance_create(x+896,y+0, "obj_stage_article_solid" , 2);
instance_create(x+960,y-64, "obj_stage_article_solid" , 2);



instance_create(x+64,y+512, "obj_stage_article_solid" , 2);
instance_create(x+128,y+512, "obj_stage_article_solid" , 2);
instance_create(x+192,y+512, "obj_stage_article_solid" , 2);
instance_create(x+256,y+512, "obj_stage_article_solid" , 2);
instance_create(x+320,y+512, "obj_stage_article_solid" , 2);





instance_create(x+640,y+512, "obj_stage_article_solid" , 2);
instance_create(x+704,y+512, "obj_stage_article_solid" , 2);
instance_create(x+768,y+512, "obj_stage_article_solid" , 2);
instance_create(x+832,y+512, "obj_stage_article_solid" , 2);
instance_create(x+896,y+512, "obj_stage_article_solid" , 2);

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
instance_create(x+768,y+384, "obj_stage_article_solid" , 2);
instance_create(x+832,y+384, "obj_stage_article_solid" , 2);
instance_create(x+896,y+384, "obj_stage_article_solid" , 2);

instance_create(x+384,y+320, "obj_stage_article_solid" , 2);
instance_create(x+448,y+320, "obj_stage_article_solid" , 2);
instance_create(x+512,y+320, "obj_stage_article_solid" , 2);
instance_create(x+576,y+320, "obj_stage_article_solid" , 2);

if(key == false){
instance_create(x+832,y+448, "obj_stage_article" , 11);
}



instance_create(x+896,y+64, "obj_stage_article_solid" , 2);
instance_create(x+896,y+128, "obj_stage_article_solid" , 2);
instance_create(x+896,y+192, "obj_stage_article_solid" , 2);
instance_create(x+960,y+192, "obj_stage_article_solid" , 2);

 instance_create(x+960,y+384, "obj_stage_article_solid" , 2);
instance_create(x+896,y+384, "obj_stage_article_solid" , 2);
instance_create(x+896,y+448, "obj_stage_article_solid" , 2);



}
//========================================================================================================================
if(xq == 12){//9
instance_create(x,y, "obj_stage_article_solid" , 2);
instance_create(x+64,y+64, "obj_stage_article_solid" , 2);
instance_create(x+64,y+128, "obj_stage_article_solid" , 2);
instance_create(x+64,y+192, "obj_stage_article_solid" , 2);
instance_create(x+0,y+192, "obj_stage_article_solid" , 2);


instance_create(x+0,y+384, "obj_stage_article_solid" , 2);
instance_create(x+64,y+384, "obj_stage_article_solid" , 2);
instance_create(x+64,y+448, "obj_stage_article_solid" , 2);

instance_create(x+64,y-64, "obj_stage_article_solid" , 2);
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
instance_create(x+960,y-64, "obj_stage_article_solid" , 2);



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

instance_create(x+64,y+384, "obj_stage_article_solid" , 2);
instance_create(x+128,y+448, "obj_stage_article" , 4);
instance_create(x+192,y+384, "obj_stage_article_solid" , 2);
instance_create(x+256,y+448, "obj_stage_article" , 4);
instance_create(x+320,y+448, "obj_stage_article" , 4);
instance_create(x+384,y+384, "obj_stage_article_solid" , 2);
instance_create(x+448,y+448, "obj_stage_article" , 4);
instance_create(x+512,y+384, "obj_stage_article_solid" , 2);
instance_create(x+576,y+448, "obj_stage_article" , 4);
instance_create(x+640,y+448, "obj_stage_article" , 4);
instance_create(x+704,y+384, "obj_stage_article_solid" , 2);
instance_create(x+768,y+448, "obj_stage_article" , 4);
instance_create(x+832,y+384, "obj_stage_article_solid" , 2);
instance_create(x+896,y+384, "obj_stage_article_solid" , 2);



//enemy
instance_create(x+384,y+384, "obj_stage_article" , 5);
instance_create(x+896,y+384, "obj_stage_article" , 6);
//enemy




instance_create(x+896,y+64, "obj_stage_article_solid" , 2);
instance_create(x+896,y+128, "obj_stage_article_solid" , 2);
instance_create(x+896,y+192, "obj_stage_article_solid" , 2);
instance_create(x+960,y+192, "obj_stage_article_solid" , 2);

 instance_create(x+960,y+384, "obj_stage_article_solid" , 2);
instance_create(x+896,y+384, "obj_stage_article_solid" , 2);
instance_create(x+896,y+448, "obj_stage_article_solid" , 2);



}
//========================================================================================================================
if(xq == 13){//10

instance_create(x,y, "obj_stage_article_solid" , 2);
instance_create(x+64,y+64, "obj_stage_article_solid" , 2);
instance_create(x+64,y+128, "obj_stage_article_solid" , 2);
instance_create(x+64,y+192, "obj_stage_article_solid" , 2);
instance_create(x+0,y+192, "obj_stage_article_solid" , 2);


instance_create(x+0,y+384, "obj_stage_article_solid" , 2);
instance_create(x+64,y+384, "obj_stage_article_solid" , 2);
instance_create(x+64,y+448, "obj_stage_article_solid" , 2);

instance_create(x+64,y-64, "obj_stage_article_solid" , 2);
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
instance_create(x+960,y-64, "obj_stage_article_solid" , 2);


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

instance_create(x+256,y+384, "obj_stage_article_solid" , 2);

instance_create(x+320,y+384, "obj_stage_article_solid" , 2);

instance_create(x+640,y+384, "obj_stage_article_solid" , 2);

instance_create(x+768,y+384, "obj_stage_article_solid" , 2);

//enemy
instance_create(x+780,y+384, "obj_stage_article" , 6);
instance_create(x+780,y+256, "obj_stage_article" , 6);
//enemy

instance_create(x+768,y+384, "obj_stage_article_solid" , 2);

instance_create(x+768,y+256, "obj_stage_article_solid" , 2);

instance_create(x+64,y+448, "obj_stage_article" , 4);
instance_create(x+128,y+448, "obj_stage_article" , 4);
instance_create(x+192,y+448, "obj_stage_article" , 4);
instance_create(x+256,y+448, "obj_stage_article" , 4);
instance_create(x+320,y+448, "obj_stage_article" , 4);
instance_create(x+384,y+448, "obj_stage_article" , 4);
instance_create(x+448,y+448, "obj_stage_article" , 4);
instance_create(x+512,y+448, "obj_stage_article" , 4);
instance_create(x+576,y+448, "obj_stage_article" , 4);
instance_create(x+640,y+448, "obj_stage_article" , 4);
instance_create(x+704,y+448, "obj_stage_article" , 4);
instance_create(x+768,y+448, "obj_stage_article" , 4);
instance_create(x+832,y+448, "obj_stage_article" , 4);



instance_create(x+896,y+64, "obj_stage_article_solid" , 2);
instance_create(x+896,y+128, "obj_stage_article_solid" , 2);
instance_create(x+896,y+192, "obj_stage_article_solid" , 2);
instance_create(x+960,y+192, "obj_stage_article_solid" , 2);

 instance_create(x+960,y+384, "obj_stage_article_solid" , 2);
instance_create(x+896,y+384, "obj_stage_article_solid" , 2);
instance_create(x+896,y+448, "obj_stage_article_solid" , 2);


}
//========================================================================================================================
if(xq == 14){//11

instance_create(x,y, "obj_stage_article_solid" , 2);
instance_create(x+64,y+64, "obj_stage_article_solid" , 2);
instance_create(x+64,y+128, "obj_stage_article_solid" , 2);
instance_create(x+64,y+192, "obj_stage_article_solid" , 2);
instance_create(x+0,y+192, "obj_stage_article_solid" , 2);


instance_create(x+0,y+384, "obj_stage_article_solid" , 2);
instance_create(x+64,y+384, "obj_stage_article_solid" , 2);
instance_create(x+64,y+448, "obj_stage_article_solid" , 2);

instance_create(x+64,y-64, "obj_stage_article_solid" , 2);
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
instance_create(x+960,y-64, "obj_stage_article_solid" , 2);


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

instance_create(x+256,y+64, "obj_stage_article_solid" , 2);
instance_create(x+256,y+128, "obj_stage_article_solid" , 2);
instance_create(x+256,y+192, "obj_stage_article_solid" , 2);
instance_create(x+256,y+192, "obj_stage_article_solid" , 2);
instance_create(x+256,y+448, "obj_stage_article_solid" , 2);

instance_create(x+320,y+192, "obj_stage_article_solid" , 2);
instance_create(x+384,y+192, "obj_stage_article_solid" , 2);
instance_create(x+448,y+192, "obj_stage_article_solid" , 2);
instance_create(x+512,y+192, "obj_stage_article_solid" , 2);
instance_create(x+640,y+192, "obj_stage_article_solid" , 2);
instance_create(x+704,y+192, "obj_stage_article_solid" , 2);

instance_create(x+704,y+128, "obj_stage_article_solid" , 2);
instance_create(x+704,y+64, "obj_stage_article_solid" , 2);
instance_create(x+448,y+448, "obj_stage_article_solid" , 2);
instance_create(x+704,y+448, "obj_stage_article_solid" , 2);



if(keyy == false){
instance_create(x+384,y+128, "obj_stage_article_solid" , 9);
instance_create(x+576,y+192, "obj_stage_article_solid" , 10);
}else{
	if(keyb == true){
	}else{
	instance_create(x+384,y+128, "obj_stage_article" , 12);
	}

}


//enemy
instance_create(x+448,y+448, "obj_stage_article" , 5);
instance_create(x+704,y+448 , "obj_stage_article" , 6);
//enemy


instance_create(x+64,y+448, "obj_stage_article" , 4);
instance_create(x+128,y+448, "obj_stage_article" , 4);
instance_create(x+192,y+448, "obj_stage_article" , 4);
//instance_create(x+256,y+448, "obj_stage_article" , 4);
instance_create(x+320,y+448, "obj_stage_article" , 4);
instance_create(x+384,y+448, "obj_stage_article" , 4);
//instance_create(x+448,y+448, "obj_stage_article" , 4);
instance_create(x+512,y+448, "obj_stage_article" , 4);
instance_create(x+576,y+448, "obj_stage_article" , 4);
instance_create(x+640,y+448, "obj_stage_article" , 4);
//instance_create(x+704,y+448, "obj_stage_article" , 4);
instance_create(x+768,y+448, "obj_stage_article" , 4);
instance_create(x+832,y+448, "obj_stage_article" , 4);



instance_create(x+896,y+64, "obj_stage_article_solid" , 2);
instance_create(x+896,y+128, "obj_stage_article_solid" , 2);
instance_create(x+896,y+192, "obj_stage_article_solid" , 2);
instance_create(x+960,y+192, "obj_stage_article_solid" , 2);

 instance_create(x+960,y+384, "obj_stage_article_solid" , 2);
instance_create(x+896,y+384, "obj_stage_article_solid" , 2);
instance_create(x+896,y+448, "obj_stage_article_solid" , 2);


}

//========================================================================================================================
if(xq == 15){//12


instance_create(x,y, "obj_stage_article_solid" , 2);
instance_create(x+64,y+64, "obj_stage_article_solid" , 2);
instance_create(x+64,y+128, "obj_stage_article_solid" , 2);
instance_create(x+64,y+192, "obj_stage_article_solid" , 2);
instance_create(x+0,y+192, "obj_stage_article_solid" , 2);


instance_create(x+0,y+384, "obj_stage_article_solid" , 2);
instance_create(x+64,y+384, "obj_stage_article_solid" , 2);
instance_create(x+64,y+448, "obj_stage_article_solid" , 2);

//
instance_create(x+64,y-64, "obj_stage_article_solid" , 2);
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
instance_create(x+960,y-64, "obj_stage_article_solid" , 2);


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
instance_create(x+960,y+488, "obj_stage_article_solid" , 2);

}
 //========================================================================================================================
if(xq == 16){//13

music_play_file( "20060718ougon" );

//
instance_create(x+64,y-64, "obj_stage_article_solid" , 2);
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
instance_create(x+960,y-64, "obj_stage_article_solid" , 2);



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
instance_create(x+0,y+512, "obj_stage_article_solid" , 2);

if(keyb == true){

}else{
instance_create(x+960,y+320, "obj_stage_article_solid" , 9);
instance_create(x+960,y+256, "obj_stage_article_solid" , 9);
}


instance_create(x+896,y+64, "obj_stage_article_solid" , 2);
instance_create(x+896,y+128, "obj_stage_article_solid" , 2);
instance_create(x+896,y+192, "obj_stage_article_solid" , 2);
instance_create(x+960,y+192, "obj_stage_article_solid" , 2);

 instance_create(x+960,y+384, "obj_stage_article_solid" , 2);
instance_create(x+896,y+384, "obj_stage_article_solid" , 2);
instance_create(x+896,y+448, "obj_stage_article_solid" , 2);

}
//========================================================================================================================
if(xq == 17){//14
music_play_file( "music_loop" );
instance_create(x,y, "obj_stage_article_solid" , 2);
instance_create(x+64,y+64, "obj_stage_article_solid" , 2);
instance_create(x+64,y+128, "obj_stage_article_solid" , 2);
instance_create(x+64,y+192, "obj_stage_article_solid" , 2);
instance_create(x+0,y+192, "obj_stage_article_solid" , 2);


instance_create(x+0,y+384, "obj_stage_article_solid" , 2);
instance_create(x+64,y+384, "obj_stage_article_solid" , 2);
instance_create(x+64,y+448, "obj_stage_article_solid" , 2);

instance_create(x+64,y-64, "obj_stage_article_solid" , 2);
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
instance_create(x+960,y-64, "obj_stage_article_solid" , 2);



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



instance_create(x+128,y+384, "obj_stage_article_solid" , 2);
instance_create(x+128,y+448, "obj_stage_article_solid" , 2);
instance_create(x+192,y+384, "obj_stage_article_solid" , 2);
instance_create(x+192,y+448, "obj_stage_article_solid" , 2);
instance_create(x+256,y+384, "obj_stage_article_solid" , 2);
instance_create(x+256,y+448, "obj_stage_article_solid" , 2);
instance_create(x+320,y+384, "obj_stage_article_solid" , 2);
instance_create(x+320,y+448, "obj_stage_article_solid" , 2);
instance_create(x+384,y+384, "obj_stage_article_solid" , 2);
instance_create(x+384,y+448, "obj_stage_article_solid" , 2);
instance_create(x+448,y+384, "obj_stage_article_solid" , 2);
instance_create(x+448,y+448, "obj_stage_article_solid" , 2);
instance_create(x+512,y+384, "obj_stage_article_solid" , 2);
instance_create(x+512,y+448, "obj_stage_article_solid" , 2);
instance_create(x+576,y+384, "obj_stage_article_solid" , 2);
instance_create(x+576,y+448, "obj_stage_article_solid" , 2);
instance_create(x+640,y+384, "obj_stage_article_solid" , 2);
instance_create(x+640,y+448, "obj_stage_article_solid" , 2);
instance_create(x+704,y+384, "obj_stage_article_solid" , 2);
instance_create(x+704,y+448, "obj_stage_article_solid" , 2);
instance_create(x+768,y+384, "obj_stage_article_solid" , 2);
instance_create(x+768,y+448, "obj_stage_article_solid" , 2);
instance_create(x+832,y+384, "obj_stage_article_solid" , 2);
instance_create(x+832,y+448, "obj_stage_article_solid" , 2);


instance_create(x+896,y+64, "obj_stage_article_solid" , 2);
instance_create(x+896,y+128, "obj_stage_article_solid" , 2);
instance_create(x+896,y+192, "obj_stage_article_solid" , 2);
instance_create(x+960,y+192, "obj_stage_article_solid" , 2);

 instance_create(x+960,y+384, "obj_stage_article_solid" , 2);
instance_create(x+896,y+384, "obj_stage_article_solid" , 2);
instance_create(x+896,y+448, "obj_stage_article_solid" , 2);
}
//========================================================================================================================
if(xq == 18){//15

//enemy
instance_create(x+704,y+384, "obj_stage_article_solid" , 14);
//enemy







instance_create(x,y, "obj_stage_article_solid" , 2);
instance_create(x+0,y+64, "obj_stage_article_solid" , 2);
instance_create(x+0,y+128, "obj_stage_article_solid" , 2);
instance_create(x+0,y+192, "obj_stage_article_solid" , 2);
instance_create(x+0,y+256, "obj_stage_article_solid" , 2);
instance_create(x+0,y+320, "obj_stage_article_solid" , 2);
instance_create(x+0,y+384, "obj_stage_article_solid" , 2);
instance_create(x+0,y+448, "obj_stage_article_solid" , 2);

instance_create(x+64,y-64, "obj_stage_article_solid" , 2);
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
instance_create(x+960,y-64, "obj_stage_article_solid" , 2);


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

instance_create(x+896,y+64, "obj_stage_article_solid" , 2);
instance_create(x+896,y+64, "obj_stage_article_solid" , 2);
instance_create(x+896,y+128, "obj_stage_article_solid" , 2);
instance_create(x+896,y+192, "obj_stage_article_solid" , 2);
instance_create(x+896,y+256, "obj_stage_article_solid" , 2);
instance_create(x+896,y+320, "obj_stage_article_solid" , 2);
instance_create(x+896,y+384, "obj_stage_article_solid" , 2);
instance_create(x+896,y+448, "obj_stage_article_solid" , 2);


}
initialization = true

}


