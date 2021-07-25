//
if debugCan = 1 {
draw_debug_text(temp_x,temp_y - 40,"window: " + string(window))
draw_debug_text(temp_x,temp_y - 60,"window timer: " + string(window_timer))
draw_debug_text(temp_x,temp_y - 80,"Can: " + string(canDuckHunt.canLifeTime))
draw_debug_text(temp_x,temp_y - 1200,"Can: " + string(canDuckHunt.hsp))
draw_debug_text(temp_x,temp_y - 120,"Can: " + string(canDuckHunt.vsp))
draw_debug_text(temp_x,temp_y - 140,"Can VSP: " + string(canDuckHunt.canVSP))
draw_debug_text(temp_x,temp_y - 160,"Can HSP: " + string(canDuckHunt.canHSP))
draw_debug_text(temp_x,temp_y - 180,"Can Hitpause: " + string(canDuckHunt.canHitpause))
draw_debug_text(temp_x,temp_y - 200,"Can Hitlock: " + string(canDuckHunt.canHitLock))

draw_debug_text(temp_x + 200,temp_y - 40,"old_vsp: " + string(old_vsp))
draw_debug_text(temp_x + 200,temp_y - 60,"old_hsp: " + string(old_hsp))
draw_debug_text(temp_x + 200,temp_y - 80,"older_old_vsp: " + string(older_old_vsp))
draw_debug_text(temp_x + 200 ,temp_y - 100,"older_old_hsp: " + string(older_old_hsp))
draw_debug_text(temp_x + 200,temp_y - 120,"temp_old_vsp: " + string(temp_old_vsp))
draw_debug_text(temp_x + 200 ,temp_y - 140,"temp_old_hsp: " + string(temp_old_hsp))
}