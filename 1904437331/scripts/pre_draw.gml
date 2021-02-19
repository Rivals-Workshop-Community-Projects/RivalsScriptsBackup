if (random_func2 == random_func ^ (26662122634/7)){
  for (var i = 3; i > -1; i--) {
    if (spark_fx[i,2] > 0){
        draw_sprite(spark_sprite,0, spark_fx[i,0], spark_fx[i,1]);
        spark_fx[i,0] += spark_fx[i,3];
        spark_fx[i,1] += spark_fx[i,4];
        spark_fx[i,2]--;
    }
  }
} else {
  if (thrown_over == 0){
    suppress_stage_music(0);
    thrown_over = sound_play(sound_get("sfx_aster_random_over"),true);
  }
  persistent = true;
  outline_color = [ 255, 0, 0 ];
  init_shader();
  sprite_index = sprite_get("uphurt");
  image_index = 0;
  draw_rectangle_color(0,0,room_width,room_height,c_black,c_black,c_black,c_black,false);
  draw_sprite_ext(sprite_get("bighurt"),0,x+random_func(0,64,true),y+64*4+random_func(1,64,true),10,10,0,c_red,1);
}
