x =448
y =256
if(Defeattime == 50){

Defeat += 1
Defeattime = 0
}else{
Defeattime +=1
}


if(Defeat == 0){
music_play_file( "music_loop" );
sprite_index = sprite_get("boss_d");
Defeat += 1 
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
sprite_index = sprite_get("boss_ds2");
Defeat += 1
}

if(Defeat == 13){

}

if(Defeat == 14){
sprite_index = sprite_get("boss_ds3");
Defeat += 1
}

if(Defeat == 15){

}

if(Defeat == 16){
sprite_index = sprite_get("boss_ds4");
Defeat += 1
}

if(Defeat == 17){
image_alpha -= 1.1;
}

if(Defeat == 18){
image_alpha -= 1.1;
}

if(Defeat == 19){
image_alpha -= 1.1;
}
if(Defeat == 20){

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






