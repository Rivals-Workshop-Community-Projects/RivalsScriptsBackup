draw_x = x+7*spr_dir;
draw_y = y - 29;
if (!free) && (col_jumpthrough != -4) { draw_y -= 1; }

chair_color = c_white;
if player_id.move_cooldown[AT_NSPECIAL] > 0 && pre_draw_index != 9 {chair_color = c_gray;}
drangle = chair_drangle;
draw_frame = pre_draw_index;
if draw_frame < 5 {draw_frame = 0;
} else {
  drangle = 0;
}
var multiple = 45;
drangle = multiple * round(drangle / multiple)
if draw_frame == 0{
  if drangle % 90 == 0 {
    drangle -= 90*spr_dir + 180;
  } else {
    draw_frame = 1; drangle -= 45*spr_dir + 180;
  }
}
if instance_exists(gethit_grabbed)
&& gethit_grabbed.state == PS_ATTACK_AIR && gethit_grabbed.attack == AT_UAIR
&& instance_exists(gethit_grabbed.grab_victim) && gethit_grabbed.grab_victim == self {
  drangle = -60*player_id.spr_dir;
} else if recently_hit {
  draw_frame = 16;
}

// Draw magnetism outline
draw_sprite_ext(sprite_outline_index,draw_frame,draw_x+1*spr_dir,draw_y,spr_dir,1,drangle,c_white,outline_opacity*2);

// Draw actual chair
draw_sprite_ext(sprite_copy_index,draw_frame,draw_x,draw_y,spr_dir,1,drangle,chair_color,1);
