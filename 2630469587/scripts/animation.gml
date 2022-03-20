if (state == PS_ATTACK_GROUND && attack == AT_DSTRONG && window == 1 && window_timer == 7)
{
  image_index = 6 + (strong_charge / 20) % 3;
  //image_index = 2: starting frame
  //(strong_charge/2): animation speed
  //% 4: amount of frames
}