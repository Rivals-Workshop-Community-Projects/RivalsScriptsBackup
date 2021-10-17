


if (state == PS_ATTACK_AIR && attack == AT_DSTRONG && window == 2 && window_timer == 3)
{
  image_index = 4 + (strong_charge / 3) % 6;
  //image_index = 2: starting frame
  //(strong_charge/2): animation speed
  //% 4: amount of frames
}

if (state == PS_ATTACK_GROUND && attack == AT_FSTRONG && window == 1 && window_timer == 19)
{
  image_index = 4   + (strong_charge / 3) % 4;

  if ((strong_charge mod 6) == 0)
  {
    sound_play(asset_get("sfx_swipe_heavy1"));
  }
  //image_index = 2: starting frame
  //(strong_charge/2): animation speed
  //% 4: amount of frames
}

if (spark = true && free)
{
    sprite_index = sprite_get("spark");
    
    spark_timer++;


    var frames = 6;
    var frame_dur = 3;
    image_index = round((spark_timer mod (frames * frame_dur)) / frame_dur);

}
else if (spark = true)
{

    sprite_index = sprite_get("spark_travelling");
    spark_timer++;


    var frames = 6;
    var frame_dur = 3;
    image_index = round((spark_timer mod (frames * frame_dur)) / frame_dur);

}
else
{
  spark_timer = 0;
}