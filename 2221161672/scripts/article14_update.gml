if (Defeat == true){//aou////////////////////////////////////////////////////////////////////////////////////////////////
damage = false;
attack = false;
time1 =0
time2 =0
time3 =0
attacke =0
Delete = false;
startup = true
hitplayer = 0 
start +=0;

if(Defeattime == 50){

Defeat += 1
Defeattime = 0
}else{
Defeattime +=1

}


if(Defeat == 0){
sprite_index = sprite_get("boss_d");
}

if(Defeat == 1){

}
if(Defeat == 2){

}
if(Defeat == 3){
sound_play( asset_get("sfx_321"));
Defeat += 1
}
if(Defeat == 4){

}
if(Defeat == 5){
sound_play( asset_get("sfx_321"));
Defeat += 1
}
if(Defeat == 6){

}
if(Defeat == 7){
sprite_index = sprite_get("boss_ds");
Defeat += 1
}
if(Defeat == 8){
sound_play( asset_get("sfx_321"));
Defeat += 1
}
if(Defeat == 9){

}

if(Defeat == 10){
sound_play( asset_get("sfx_abyss_bomb_spawn"));
Defeat += 1
}

if(Defeat == 11){

}

if(Defeat == 12){

with ( obj_stage_article_platform ) {
Delete = true
}

with ( obj_stage_article_solid ) {
Delete = true
}
with ( obj_stage_article ) {
destroy_hitboxes();
if ( get_article_script( id ) == 96 ) {
xq =999;
initialization = false
	}
Delete = true
}

}


}else{//aou////////////////////////////////////////////////////////////////////////////////////////////////



if (startup == false){//iyu////////////////////////////////////////////////////////////////////////////////////////////////


with ( obj_stage_article ) {
	if ( get_article_script( id ) == 96 ) {
		if (Checkpoint == false){
			if ( get_article_script( id ) == 14 ) {
			Checkpoint2 = true;
			}
		}
	}
}

if (Checkpoint2 == true){

sprite_index = sprite_get("boss_i");
damage = false;
attack = false;
time1 =0
time2 =0
time3 =0
attacke =0
Delete = false;
startup = true
hitplayer = 0 
start +=0;
music_play_file( "boss" );

}else{

if(up == 50){
sprite_index = sprite_get("boss_zan");
start +=1;
image_alpha += 1.1;
up =0;

}else{
with oPlayer {//oPlayer
set_state(PS_WRAPPED);
y = 600
x = 320
}
up +=1;
}
if(start == 0){
image_alpha -= 0.9;
}
if(start == 1){

}
if(start == 2){
image_alpha += 1.1;
}
if(start == 3){
image_alpha += 1;

}
if(start == 4){
image_alpha = 3;
}
if(start == 5){
		var anim_speed = 0.2;
	image_index += anim_speed;

}
if(start == 6){
		sound_play( asset_get( "sfx_swipe_heavy1" ));
start +=1;

}
if(start == 8){
		var anim_speed = 0.2;
	image_index += anim_speed;
start +=1;
}
if(start == 9){


}
if(start == 10){
sprite_index = sprite_get("boss_i");
damage = false;
attack = false;
time1 =0
time2 =0
time3 =0
attacke =0
Delete = false;
startup = true
hitplayer = 0 
start +=0;
music_play_file( "boss" );

with ( obj_stage_article ) {
		if ( get_article_script( id ) == 96 ) {
		Checkpoint = true;
		}
	}

}

}



}else{//iyu////////////////////////////////////////////////////////////////////////////////////////////////

if (damage == true){


	if(time1 == 10){


	sprite_index = sprite_get("boss_i");
	damage = false;
	attack = false;
	time1 =0
	time3 +=20
	attacke =0
			Physicalstrength -= 1;
	hitplayer = 0 
		}else{

	hitplayer = 0;
	if(attacke == 0){
	sprite_index = sprite_get("boss_i");
	}
	time1 +=1




			if(time3 >= 100){
		
		
			if (attack == false){
			attacke =0
			}
			attack = true;
	
	
			}



	}






}else{
	if hitplayer == 0 with (pHitBox) {
		if place_meeting(x,y,other) {
			
			
			
				other.hitplayer = player;

		}
	}

	if hitplayer > 0 && hitplayer < 5{
			if (damage == false){
			sound_play( asset_get( "sfx_leafy_hit1" ));
			damage = true;
			time1 =0;
			attacke =0
			hitplayer = 0 
				if(Physicalstrength <= 0){

				hitplayer = 0 

				instance_create(x-256,y-256, "obj_stage_article" , 16);
				Delete = true;
				}
			}
		print_debug("target hit by ")
	

	}
	




if(time3 >= 100){


		if (attack == false){
		attacke =0
		}
attack = true;


}else{
time3 +=1
}


}


	if (attack == true){
	
	if(time2 >= 5){
	sprite_index = sprite_get("boss_zan");
	var anim_speed = 0.13;
//==================================================
if(attacke2 == 0){
x = 784
y = 360
		if(attacke == 1){		
		var anim_speed = 0.2;
		image_index += anim_speed;
		sound_play( asset_get( "sfx_may_arc_hit" ));
		}
		if(attacke == 2){

		}
		if(attacke == 3){
		create_hitbox(AT_DATTACK,  3, x, y);
		
		sound_play( asset_get( "sfx_swipe_heavy1" ));
		
		}
		if(attacke == 4){		
		create_hitbox(AT_DATTACK,  3, x, y-32);
		
		sound_play( asset_get( "sfx_swipe_heavy1" ));
		
		}
		if(attacke == 5){		
		create_hitbox(AT_DATTACK,  3, x, y+32);
		sound_play( asset_get( "sfx_swipe_heavy1" ));
		
		}
		if(attacke == 6){		
		create_hitbox(AT_DATTACK,  3, x, y-64);
		sound_play( asset_get( "sfx_swipe_heavy1" ));
		
		}


		if(attacke == 7){		
		create_hitbox(AT_DATTACK,  3, x, y+64);
		sound_play( asset_get( "sfx_swipe_heavy1" ));
		
		}
		if(attacke == 8){		
		create_hitbox(AT_DATTACK,  3, x, y-128);
		sound_play( asset_get( "sfx_swipe_heavy1" ));
		
		}
		if(attacke == 9){		
		create_hitbox(AT_DATTACK,  3, x, y+128);
		sound_play( asset_get( "sfx_swipe_heavy1" ));
		
		}
			if(attacke >= 10){
			var anim_speed = 3.00;
			image_index = anim_speed;
			time3 =0
			time2 =0
			time1 =0
			damage = true;
			attack = false;
			hitplayer = 0 
			attacke2 = random_func( 0, 5, true );
			sprite_index = sprite_get("boss_i");
			}
}
//==================================================
if(attacke2 == 1){
x = 464
y = 320
		if(attacke == 1){		
		var anim_speed = 0.2;
		image_index += anim_speed;
		sound_play( asset_get( "sfx_absa_orb_hit" ));
		}
		if(attacke == 2){

		}
		if(attacke == 3){
		
		
		}
		if(attacke == 4){		
		
		
		}
		if(attacke == 5){		
		instance_create(x,y, "obj_stage_article" , 17);
		}
		if(attacke == 6){		
		instance_create(x,y, "obj_stage_article" , 17);
		sound_play( asset_get( "sfx_swipe_heavy1" ));
		
		}


		if(attacke == 7){		
		instance_create(x,y, "obj_stage_article" , 17);
		sound_play( asset_get( "sfx_swipe_heavy1" ));
		
		}
		if(attacke == 8){		
		
		sound_play( asset_get( "sfx_swipe_heavy1" ));
		instance_create(x,y, "obj_stage_article" , 17);
		}
		if(attacke == 9){		
			instance_create(x,y, "obj_stage_article" , 17);
		sound_play( asset_get( "sfx_swipe_heavy1" ));
		
		}
		if(attacke == 10){		
		instance_create(x,y, "obj_stage_article" , 17);
		sound_play( asset_get( "sfx_swipe_heavy1" ));
		
		}
		if(attacke == 11){		
		instance_create(x,y, "obj_stage_article" , 17);
		sound_play( asset_get( "sfx_swipe_heavy1" ));
		
		}
		if(attacke == 12){		
		instance_create(x,y, "obj_stage_article" , 17);
		sound_play( asset_get( "sfx_swipe_heavy1" ));
		
		}
		if(attacke == 13){		
		instance_create(x,y, "obj_stage_article" , 17);
		sound_play( asset_get( "sfx_swipe_heavy1" ));
		
		}
		if(attacke == 14){		
		instance_create(x,y, "obj_stage_article" , 17);
		sound_play( asset_get( "sfx_swipe_heavy1" ));
		
		}
		if(attacke == 15){		
		instance_create(x,y, "obj_stage_article" , 17);
		sound_play( asset_get( "sfx_swipe_heavy1" ));
		
		}

		if(attacke == 16){		
		instance_create(x,y, "obj_stage_article" , 17);
		sound_play( asset_get( "sfx_swipe_heavy1" ));
		
		}
		if(attacke == 17){		
		instance_create(x,y, "obj_stage_article" , 17);
		sound_play( asset_get( "sfx_swipe_heavy1" ));
		
		}
		if(attacke == 18){		
		instance_create(x,y, "obj_stage_article" , 17);
		sound_play( asset_get( "sfx_swipe_heavy1" ));
		
		}
		if(attacke == 19){		
		instance_create(x,y, "obj_stage_article" , 17);
		sound_play( asset_get( "sfx_swipe_heavy1" ));
		
		}

			if(attacke >= 20){
			var anim_speed = 3.00;
			image_index = anim_speed;
			time3 =0
			time2 =0
			time1 =0
			damage = true;
			attack = false;
			hitplayer = 0 
			attacke2 = random_func( 0, 5, true );
			sprite_index = sprite_get("boss_i");
			}
}
//==================================================
if(attacke2 == 2){
x = 784
y = 500
		if(attacke == 1){		
		var anim_speed = 0.2;
		image_index += anim_speed;
		sound_play( asset_get( "sfx_may_arc_hit" ));
		}
		if(attacke == 2){

		}
		if(attacke == 3){

		create_hitbox(AT_DATTACK,  3, x, y);
		
		sound_play( asset_get( "sfx_swipe_heavy1" ));
		
		}
		if(attacke == 4){	
	
		create_hitbox(AT_DATTACK,  3, x, y-32);
		
		sound_play( asset_get( "sfx_swipe_heavy1" ));
		
		}
		if(attacke == 5){		
		create_hitbox(AT_DATTACK,  3, x, y+32);
		sound_play( asset_get( "sfx_swipe_heavy1" ));
		
		}
		if(attacke == 6){	
	
		create_hitbox(AT_DATTACK,  3, x, y-64);
		sound_play( asset_get( "sfx_swipe_heavy1" ));
		
		}


		if(attacke == 7){	
		create_hitbox(AT_DATTACK,  3, x+200, y+64);
		create_hitbox(AT_DATTACK,  3, x, y+64);
		sound_play( asset_get( "sfx_swipe_heavy1" ));
		
		}
		if(attacke == 8){	
	
		create_hitbox(AT_DATTACK,  3, x, y-128);
		sound_play( asset_get( "sfx_swipe_heavy1" ));
		
		}
		if(attacke == 9){		
		create_hitbox(AT_DATTACK,  3, x, y+128);
		sound_play( asset_get( "sfx_swipe_heavy1" ));
		
		}
			if(attacke >= 10){

			var anim_speed = 3.00;
			image_index = anim_speed;
			time3 =0
			time2 =0
			time1 =0
			damage = true;
			attack = false;
			hitplayer = 0 
			attacke2 = random_func( 0, 5, true );
			sprite_index = sprite_get("boss_i");
			}
}
//==================================================
if(attacke2 == 3){
x = 784
y = 384

		if(attacke == 1){		
		var anim_speed = 0.2;
		image_index += anim_speed;
		}
		if(attacke == 2){

		}
		if(attacke == 3){
//		create_hitbox(AT_DATTACK,  5, x-64, y-450);
//		create_hitbox(AT_DATTACK,  5, x+32, y-450);
		create_hitbox(AT_DATTACK,  3, x+200, y);
		sound_play( asset_get( "sfx_swipe_heavy1" ));
		
		}
		if(attacke == 4){	
//		create_hitbox(AT_DATTACK,  5, x-64, y-450);
//		create_hitbox(AT_DATTACK,  5, x+32, y-450);	
		create_hitbox(AT_DATTACK,  3, x+200, y);
		sound_play( asset_get( "sfx_swipe_heavy1" ));
		
		}
		if(attacke == 5){	
//		create_hitbox(AT_DATTACK,  5, x-64, y-450);
//		create_hitbox(AT_DATTACK,  5, x+32, y-450);	
		create_hitbox(AT_DATTACK,  3, x+200, y);
		sound_play( asset_get( "sfx_swipe_heavy1" ));
		
		}
		if(attacke == 6){	
//		create_hitbox(AT_DATTACK,  5, x-64, y-450);
//		create_hitbox(AT_DATTACK,  5, x+32, y-450);	
		create_hitbox(AT_DATTACK,  3, x+200, y-128);
		sound_play( asset_get( "sfx_swipe_heavy1" ));
		
		}


		if(attacke == 7){	
//		create_hitbox(AT_DATTACK,  5, x-64, y-450);
//		create_hitbox(AT_DATTACK,  5, x+32, y-450);	
		create_hitbox(AT_DATTACK,  3, x+200, y-128);
		sound_play( asset_get( "sfx_swipe_heavy1" ));
		
		}
		if(attacke == 8){	
//		create_hitbox(AT_DATTACK,  5, x-64, y-450);
//		create_hitbox(AT_DATTACK,  5, x+32, y-450);	
		create_hitbox(AT_DATTACK,  3, x+200, y-128);
		sound_play( asset_get( "sfx_swipe_heavy1" ));
		
		}
		if(attacke == 9){	
//		create_hitbox(AT_DATTACK,  5, x-64, y-450);
//		create_hitbox(AT_DATTACK,  5, x+32, y-450);	
		create_hitbox(AT_DATTACK,  3, x+200, y-128);
		sound_play( asset_get( "sfx_swipe_heavy1" ));
		
		}
		if(attacke == 10){	
//		create_hitbox(AT_DATTACK,  5, x-64, y-450);
//		create_hitbox(AT_DATTACK,  5, x+32, y-450);	
		create_hitbox(AT_DATTACK,  3, x+200,  y+128);
		sound_play( asset_get( "sfx_swipe_heavy1" ));
		
		}
		if(attacke == 11){	
//		create_hitbox(AT_DATTACK,  5, x-64, y-450);
//		create_hitbox(AT_DATTACK,  5, x+32, y-450);	
		create_hitbox(AT_DATTACK,  3, x+200,  y+128);
		sound_play( asset_get( "sfx_swipe_heavy1" ));
		
		}
		if(attacke == 12){	
//		create_hitbox(AT_DATTACK,  5, x-64, y-450);
//		create_hitbox(AT_DATTACK,  5, x+32, y-450);	
		create_hitbox(AT_DATTACK,  3, x+200,  y+128);
		sound_play( asset_get( "sfx_swipe_heavy1" ));
		
		}

		if(attacke == 13){	
//		create_hitbox(AT_DATTACK,  5, x-64, y-450);
//		create_hitbox(AT_DATTACK,  5, x+32, y-450);	
		create_hitbox(AT_DATTACK,  3, x+200,  y+192);
		sound_play( asset_get( "sfx_swipe_heavy1" ));
		
		}
		if(attacke == 14){	
//		create_hitbox(AT_DATTACK,  5, x-64, y-450);
//		create_hitbox(AT_DATTACK,  5, x+32, y-450);	
		create_hitbox(AT_DATTACK,  3, x+200,  y+192);
		sound_play( asset_get( "sfx_swipe_heavy1" ));
		
		}
		if(attacke == 15){	
//		create_hitbox(AT_DATTACK,  5, x-64, y-450);
//		create_hitbox(AT_DATTACK,  5, x+32, y-450);	
		create_hitbox(AT_DATTACK,  3, x+200,  y+192);
		sound_play( asset_get( "sfx_swipe_heavy1" ));
		
		}
		if(attacke == 16){	
//		create_hitbox(AT_DATTACK,  5, x-64, y-450);
//		create_hitbox(AT_DATTACK,  5, x+32, y-450);	
		create_hitbox(AT_DATTACK,  3, x+200,  y-192);
		sound_play( asset_get( "sfx_swipe_heavy1" ));
		
		}
		if(attacke == 17){	
//		create_hitbox(AT_DATTACK,  5, x-64, y-450);
//		create_hitbox(AT_DATTACK,  5, x+32, y-450);	
		create_hitbox(AT_DATTACK,  3, x+200,  y-192);
		sound_play( asset_get( "sfx_swipe_heavy1" ));
		
		}
		if(attacke == 18){	
//		create_hitbox(AT_DATTACK,  5, x-64, y-450);
//		create_hitbox(AT_DATTACK,  5, x+32, y-450);	
		create_hitbox(AT_DATTACK,  3, x+200,  y-192);
		sound_play( asset_get( "sfx_swipe_heavy1" ));
		
		}
		if(attacke == 19){	
//		create_hitbox(AT_DATTACK,  5, x-64, y-450);
//		create_hitbox(AT_DATTACK,  5, x+32, y-450);	
		create_hitbox(AT_DATTACK,  3, x+200,  y-256);
		create_hitbox(AT_DATTACK,  3, x+200,  y+256); 
		sound_play( asset_get( "sfx_swipe_heavy1" ));
		
		}
		if(attacke == 20){	
//		create_hitbox(AT_DATTACK,  5, x-64, y-450);
//		create_hitbox(AT_DATTACK,  5, x+32, y-450);	
		create_hitbox(AT_DATTACK,  3, x+200,  y-256);
		create_hitbox(AT_DATTACK,  3, x+200,  y+256); 
		sound_play( asset_get( "sfx_swipe_heavy1" ));
		
		}
		if(attacke == 21){	
//		create_hitbox(AT_DATTACK,  5, x-64, y-450);
//		create_hitbox(AT_DATTACK,  5, x+32, y-450);	
		create_hitbox(AT_DATTACK,  3, x+200,  y-256);
		create_hitbox(AT_DATTACK,  3, x+200,  y+256); 
		sound_play( asset_get( "sfx_swipe_heavy1" ));
		
		}
			if(attacke >= 22){

			var anim_speed = 3.00;
			image_index = anim_speed;
			time3 =0
			time2 =0
			time1 =0
			damage = true;
			attack = false;
			hitplayer = 0 
			attacke2 = random_func( 0, 5, true );
			sprite_index = sprite_get("boss_i");
			}
}
//==================================================
if(attacke2 == 4){
x = 784
y = 384
		if(attacke == 1){		
		var anim_speed = 0.2;
		image_index += anim_speed;
		}
		if(attacke == 2){

		}
		if(attacke == 3){
	
		
		create_hitbox(AT_DATTACK,  3, x+200,  y+128);
		sound_play( asset_get( "sfx_swipe_heavy1" ));
		
		}
		if(attacke == 4){		
	
		create_hitbox(AT_DATTACK,  3, x+200,  y+128);
		sound_play( asset_get( "sfx_swipe_heavy1" ));
		
		}
		if(attacke == 5){		
	
		create_hitbox(AT_DATTACK,  3, x+200,  y+128);
		sound_play( asset_get( "sfx_swipe_heavy1" ));
		
		}
		if(attacke == 6){		
	
		create_hitbox(AT_DATTACK,  3, x+200,  y+192);
		sound_play( asset_get( "sfx_swipe_heavy1" ));
		
		}


		if(attacke == 7){		
	
		create_hitbox(AT_DATTACK,  3, x+200,y+192);
		sound_play( asset_get( "sfx_swipe_heavy1" ));
		
		}
		if(attacke == 8){		
	
		create_hitbox(AT_DATTACK,  3, x+200,y+192);
		sound_play( asset_get( "sfx_swipe_heavy1" ));
		
		}
		if(attacke == 9){		
	
		create_hitbox(AT_DATTACK,  3, x+200,y-64);
		sound_play( asset_get( "sfx_swipe_heavy1" ));
		
		}
		if(attacke == 10){		
		
		create_hitbox(AT_DATTACK,  3, x+200,y-64);
		sound_play( asset_get( "sfx_swipe_heavy1" ));
		
		}
		if(attacke == 11){		
	
		create_hitbox(AT_DATTACK,  3, x+200,y-64);
		sound_play( asset_get( "sfx_swipe_heavy1" ));
		
		}
		if(attacke == 12){		
	
		create_hitbox(AT_DATTACK,  3, x+200,y-128);
		sound_play( asset_get( "sfx_swipe_heavy1" ));
		
		}

		if(attacke == 13){		

		create_hitbox(AT_DATTACK,  3, x+200,y-128);
		sound_play( asset_get( "sfx_swipe_heavy1" ));
		
		}
		if(attacke == 14){		

		create_hitbox(AT_DATTACK,  3, x+200,y-128);
		sound_play( asset_get( "sfx_swipe_heavy1" ));
		
		}
		if(attacke == 15){		

		create_hitbox(AT_DATTACK,  3, x+200,y+128);
		sound_play( asset_get( "sfx_swipe_heavy1" ));
		
		}
		if(attacke == 16){		
	
		create_hitbox(AT_DATTACK,  3, x+200,y+128);
		sound_play( asset_get( "sfx_swipe_heavy1" ));
		
		}
		if(attacke == 17){		

		create_hitbox(AT_DATTACK,  3, x+200,y+128);
		sound_play( asset_get( "sfx_swipe_heavy1" ));
		
		}
		if(attacke == 18){		

		create_hitbox(AT_DATTACK,  3, x+200,y+192);
		sound_play( asset_get( "sfx_swipe_heavy1" ));
		
		}
		if(attacke == 19){		

		create_hitbox(AT_DATTACK,  3, x+200,y+192);
		create_hitbox(AT_DATTACK,  3, x+200,y-192);
		sound_play( asset_get( "sfx_swipe_heavy1" ));
		
		}
		if(attacke == 20){		

		create_hitbox(AT_DATTACK,  3, x+200,y+192);
		create_hitbox(AT_DATTACK,  3, x+200,y-192);
		sound_play( asset_get( "sfx_swipe_heavy1" ));
		
		}
		if(attacke == 21){		

		create_hitbox(AT_DATTACK,  3, x+200,y+192);
		create_hitbox(AT_DATTACK,  3, x+200,y-192);
		sound_play( asset_get( "sfx_swipe_heavy1" ));
		
		}
			if(attacke >= 22){

			var anim_speed = 3.00;
			image_index = anim_speed;
			time3 =0
			time2 =0
			time1 =0
			damage = true;
			attack = false;
			hitplayer = 0 
			attacke2 = random_func( 0, 5, true );
			sprite_index = sprite_get("boss_i");
			}
}
//==================================================
	attacke +=1
	time2 =0
	}



	time2 +=1
	}


if (Delete == true){
damage = false;
attack = false;
anim_speed = 0
instance_destroy()
}else{
	if (attack == true){
		if (damage == true){
		var anim_speed = 0.00;
		}else{
		}
	}else{
	var anim_speed = 0.12;
	image_index += anim_speed;
	}
}



}//iyu////////////////////////////////////////////////////////////////////////////////////////////////





}//aou////////////////////////////////////////////////////////////////////////////////////////////////



if(time4 == 100){	
	if(Physicalstrength <= 50){	
	instance_create(x,y, "obj_stage_article" , 17);
	time4 =0
	}
time4 +=1
}