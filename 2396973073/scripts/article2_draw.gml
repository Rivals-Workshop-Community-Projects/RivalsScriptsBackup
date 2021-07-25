 

//Draws the current song playing (for fun!)

 //see above. Higher Y values move the text lower
draw_set_font(asset_get("fName")); //the tiny font used for creator names
draw_set_halign(fa_left) //so it is aligned properly with any text size


var str = ("Track: " + string(obj_stage_main.song_name));

//draws the text!

	if (get_gameplay_time() <= 140) { // makes sure it matches when the stage name and creator title appear, and does not appear before the black bars move

  draw_debug_text(get_marker_x(1) - 448, get_marker_y(1) - 305, str)


	}
	if (get_gameplay_time() <= 500) {
	if (obj_stage_main.practice) {
    
      draw_debug_text(get_marker_x(1) - 105, get_marker_y(1) + 20, "crouch here to edit the stage!")
draw_debug_text(get_marker_x(1) - 115, get_marker_y(1) + 40, "↑ ↓: tracks     ← →: opponents")
draw_debug_text(get_marker_x(1) - 215, get_marker_y(1) + 60, "attack: boyfriend     jump: girlfriend     special: stage skin")
          draw_debug_text(get_marker_x(1) - 38, get_marker_y(1) + 80, "taunt: exit")
    
}
}


//← ↑ → ↓ △ ▽ ◁ ▷ Arrow and direction ...https://unicode-table.com › Homepage › Sets


  
  if (obj_stage_main.song_name != old_song_name) {
  draw_timer = 60
  

}

if (get_gameplay_time() < 140) {
    draw_timer = 0
}

if (draw_timer > 0) {
draw_debug_text(get_marker_x(1)-50, get_marker_y(1) + 20, obj_stage_main.song_name)
draw_timer -= 1
}


old_song_name = obj_stage_main.song_name