//draw_hud.gml redirects to the real draw_hud, which is user_event3 on tester
//the reason this is done is to add compatibility with stages that use custom huds, as the game doesn't allow us to call this script in stages

if ("char_height" not in self) exit; //we put this here so the game won't throw an error at us
user_event(draw_hud_event);