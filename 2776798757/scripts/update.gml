if(spr_dir == 1) {
   if (attack == AT_TAUNT && window == 2 && window_timer == 1) {
      spawn_hit_fx( x+18, y-62, 123 );
	}
}

if(spr_dir == -1) {
   if (attack == AT_TAUNT && window == 2 && window_timer == 1) {
      spawn_hit_fx( x-18, y-62, 123 );
	}
}

if(spr_dir == -1) {
   if (attack == AT_NSPECIAL && window == 2 && (bustercharge == 50)) {
      spawn_hit_fx( x-22, y-42, 108 );
	}
}

if(spr_dir == -1) {
   if (attack == AT_NSPECIAL && (bustercharge == 250)) {
      spawn_hit_fx( x-22, y-42, 108 );
	}
}

if(spr_dir == 1) {
   if (attack == AT_NSPECIAL && window == 2 && (bustercharge == 50)) {
      spawn_hit_fx( x+22, y-42, 108 );
	}
}

if(spr_dir == 1) {
   if (attack == AT_NSPECIAL && (bustercharge == 250)) {
      spawn_hit_fx( x+22, y-42, 108 );
	}
}

if(spr_dir == 1) {
   if (attack == AT_USTRONG && window == 2 && window_timer == 1) {
      spawn_hit_fx( x+18, y-62, 111 );
        }
}

if(spr_dir == 1) {
   if (attack == AT_USTRONG && window == 3 && window_timer == 8) {
      spawn_hit_fx( x-20, y-80, 111 );
        }
}

if(spr_dir == 1) {
   if (attack == AT_USTRONG && window == 3 && window_timer == 15) {
      spawn_hit_fx( x+20, y-100, 111 );
        }
}

if(spr_dir == 1) {
   if (attack == AT_USTRONG && window == 4 && window_timer == 6) {
      spawn_hit_fx( x+0, y-110, 112 );
        }
}

if(spr_dir == -1) {
   if (attack == AT_USTRONG && window == 2 && window_timer == 1) {
      spawn_hit_fx( x-18, y-62, 111 );
        }
}

if(spr_dir == -1) {
   if (attack == AT_USTRONG && window == 3 && window_timer == 8) {
      spawn_hit_fx( x+20, y-80, 111 );
        }
}

if(spr_dir == -1) {
   if (attack == AT_USTRONG && window == 3 && window_timer == 15) {
      spawn_hit_fx( x-20, y-100, 111 );
        }
}

if(spr_dir == -1) {
   if (attack == AT_USTRONG && window == 4 && window_timer == 5) {
      spawn_hit_fx( x+0, y-110, 112 );
        }
}

if (attack == AT_USTRONG) {
   if (window == 2 && window_timer == 1) {
      sound_play( asset_get( "sfx_birdclap" ) );
   }
}

if (attack == AT_USTRONG) {
   if (window == 3 && window_timer == 7) {
      sound_play( asset_get( "sfx_birdclap" ) );
   }
}

if (attack == AT_USTRONG) {
   if (window == 3 && window_timer == 14) {
      sound_play( asset_get( "sfx_birdclap" ) );
   }
}

if (attack == AT_USTRONG) {
   if (window == 4 && window_timer = 5) {
      sound_play( asset_get( "sfx_birdclap" ) );
   }
}

if get_player_color(player) == 16{
cmd = true;
}

if get_player_color(player) == 17{
cmd = true;
}

if get_player_color(player) == 18{
cmd = true;
}

if get_player_color(player) == 19{
cmd = true;
}

if get_player_color(player) == 20{
cmd = true;
}

if get_player_color(player) == 21{
cmd = true;
}

if get_player_color(player) == 22{
cmd = true;
}

if get_player_color(player) == 23{
cmd = true;
}

if get_player_color(player) == 24{
cmd = true;
}

if get_player_color(player) == 25{
cmd = true;
}

if get_player_color(player) == 26{
cmd = true;
}

if get_player_color(player) == 27{
cmd = true;
}

if get_player_color(player) == 28{
cmd = true;
}

if get_player_color(player) == 29{
cmd = true;
}

if get_player_color(player) == 30{
cmd = true;
}

if get_player_color(player) == 31{
cmd = true;
}