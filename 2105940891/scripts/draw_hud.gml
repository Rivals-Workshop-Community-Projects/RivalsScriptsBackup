//draw hud

shader_start();

if ("dcharge" in self && dcharge < 3 && "stunTrigger" in self && stunTrigger <= 1) {
	draw_sprite_ext(sprite_get("DAIR_uncharge"), 0, temp_x + 170, temp_y - 35, 1, 1, 0, c_white, 1);
}

if ("dcharge" in self && dcharge == 3 && "stunTrigger" in self && stunTrigger <= 1) {
	draw_sprite_ext(sprite_get("DAIR_charge"), 0, temp_x + 170, temp_y - 35, 1, 1, 0, c_white, 1);
}

if ("stunTrigger" in self && stunTrigger == 2) {
	draw_sprite_ext(sprite_get("DAIR_stun"), 0, temp_x + 170, temp_y - 35, 1, 1, 0, c_white, 1);
}

if ("stunTrigger" in self && stunTrigger == 2) {
	draw_sprite_ext(sprite_get("UAIR_stun"), 0, temp_x + 150, temp_y - 35, 1, 1, 0, c_white, 1);
}

if ("stunTrigger" in self && stunTrigger == 3) {
	draw_sprite_ext(sprite_get("DAIR_super"), 0, temp_x + 170, temp_y - 35, 1, 1, 0, c_white, 1);
}

if ("stunTrigger" in self && stunTrigger == 3) {
	draw_sprite_ext(sprite_get("DAIR_super"), 0, temp_x + 150, temp_y - 35, 1, 1, 0, c_white, 1);
}

if ("ucharge" in self && ucharge < 3 && "stunTrigger" in self && stunTrigger <= 1) {
	draw_sprite_ext(sprite_get("UAIR_uncharge"), 0, temp_x + 150, temp_y - 35, 1, 1, 0, c_white, 1);
}

if ("ucharge" in self && ucharge == 3 && "stunTrigger" in self && stunTrigger <= 1) {
	draw_sprite_ext(sprite_get("UAIR_charge"), 0, temp_x + 150, temp_y - 35, 1, 1, 0, c_white, 1);
}

if ("mcharge" in self && mcharge == 1) {
	draw_sprite_ext(sprite_get("minionunCharge"), 0, temp_x + 127, temp_y - 35, 1, 1, 0, c_white, 1);
}

if ("mcharge" in self && mcharge == 0) {
	draw_sprite_ext(sprite_get("minionCharge"), 0, temp_x + 127, temp_y - 35, 1, 1, 0, c_white, 1);
}

if ("ncharge" in self && ncharge <= 30){
	draw_sprite(sprite_get("Meter_05"), 0, temp_x, temp_y - 50 );
	draw_sprite_part(sprite_get("Meter_15"), 0, 0, 0, (ncharge/120) * 136, 100, temp_x, temp_y - 50 );
}

if ("ncharge" in self && ncharge >= 30 && ncharge <= 59.99999999){
	draw_sprite(sprite_get("Meter_05"), 0, temp_x, temp_y - 50 );
	draw_sprite_part(sprite_get("Meter_25"), 0, 0, 0, (ncharge/120) * 136, 100, temp_x, temp_y - 50 );
}

if ("ncharge" in self && ncharge >= 60 && ncharge <= 89.99999999){
	draw_sprite(sprite_get("Meter_05"), 0, temp_x, temp_y - 50 );
	draw_sprite_part(sprite_get("Meter_35"), 0, 0, 0, (ncharge/120) * 136, 100, temp_x, temp_y - 50 );
}

if ("ncharge" in self && ncharge >= 90 && ncharge <= 119.99999999){
	draw_sprite(sprite_get("Meter_05"), 0, temp_x, temp_y - 50 );
	draw_sprite_part(sprite_get("Meter_45"), 0, 0, 0, (ncharge/120) * 136, 100, temp_x, temp_y - 50 );
}

if ("ncharge" in self && ncharge >= 120){
	draw_sprite_part(sprite_get("Meter_glitch"), (get_gameplay_time()*.25), 0, 0, 200, 100, temp_x, temp_y - 50 );
}

if ("ncharge" in self && ncharge >= 60 && attack == AT_NSPECIAL && "stunTrigger" in self && stunTrigger < 2 && window == 2 && nTrigger == 0){
	draw_debug_text(temp_x, temp_y - 20, "Press Down");
}

if ("stunTrigger" in self && stunTrigger = 2 && nTrigger == 0 && ncharge != 120){
	draw_debug_text(temp_x, temp_y - 20, "Supercharged");
}

if ("stunTrigger" in self && stunTrigger = 2 && nTrigger == 0 && ncharge == 120){
	draw_debug_text(temp_x, temp_y - 30, "Supercharged");
}

if ("stunTrigger" in self && stunTrigger = 3){
	draw_debug_text(temp_x, temp_y - 30, "Overcharged!");
}

if (get_training_cpu_action() != CPU_FIGHT){
	draw_debug_text( 32, 16, "Press Taunt to gain 1 bar of meter");
}

shader_end();

// FPS display
//draw_debug_text(10, 10, "FPS: " + string(fps_real));

//abyss gui code
ab_hud_x = temp_x;
ab_hud_y = temp_y;
//this is for the outdated warning message
if ("depNotice" not in self) depNotice = 0;
if ("abyssEnabled" in self && abyssEnabled && (menuActive || timerActive)) abyssDraw();
#define abyssDraw 
/// abyssDraw()
/// draws text and images the player recieved from the abyss buddy.
if ("abyss_drawArray" in self && ds_list_valid(abyss_drawArray))  {
    if (ds_list_size(abyss_drawArray) > 0) {
        for (var _i = 0; _i < ds_list_size(abyss_drawArray);_i++) {
            var _text = abyss_drawArray[| _i];
            if draw_get_halign() != _text[6] {
                draw_set_halign(_text[6]);
            }
            switch (_text[0]) {
                case 0:
                    draw_debug_text(floor(_text[1]),floor(_text[2]),string(_text[3]));
                    break;
                case 1:
                    draw_sprite_ext(_text[3],_text[5],_text[1],_text[2],1,1,0,_text[4],1);
                    break;
                case 2:
                    draw_text_plus(floor(_text[1]),floor(_text[2]),string(_text[3]),floor(_text[5]),floor(_text[4]));
                    break;
                case 3:
                    if draw_get_font() != 1 draw_set_font(1);
              draw_text_ext_color(floor(_text[1]),floor(_text[2]),string(_text[3]),16,floor(_text[5]),_text[4],_text[4],_text[4],_text[4], 1);
                    break;
                default:
                break;
            }
        }
    }
    //finished drawing, so clear the table for the next frame.
    ds_list_clear(abyss_drawArray);
}
//return draw_calls;
#define draw_text_plus
/// draw_text_plus(x, y, text, font, color = c_white)
/// draws outlined text in any in-game font.
if draw_get_font() != argument[3] {
    draw_set_font(argument[3]);
}
draw_text_color(argument[0]+2,argument[1],argument[2],c_black,c_black,c_black,c_black,1);
draw_text_color(argument[0]-2,argument[1],argument[2],c_black,c_black,c_black,c_black,1);
draw_text_color(argument[0],argument[1]-2,argument[2],c_black,c_black,c_black,c_black,1);
draw_text_color(argument[0],argument[1]+2,argument[2],c_black,c_black,c_black,c_black,1);
draw_text_color(argument[0]+2,argument[1]-2,argument[2],c_black,c_black,c_black,c_black,1);
draw_text_color(argument[0]-2,argument[1]-2,argument[2],c_black,c_black,c_black,c_black,1);
draw_text_color(argument[0]+2,argument[1]+2,argument[2],c_black,c_black,c_black,c_black,1);
draw_text_color(argument[0]-2,argument[1]+2,argument[2],c_black,c_black,c_black,c_black,1);
draw_text_color(argument[0],argument[1],argument[2],argument_count > 4 ? argument[4] : c_white,argument_count > 4 ? argument[4] : c_white,argument_count > 4 ? argument[4] : c_white,argument_count > 4 ? argument[4] : c_white,1);