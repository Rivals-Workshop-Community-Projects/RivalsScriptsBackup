//
if ((get_instance_x(cursor_id) >= x + 136 && get_instance_x(cursor_id) <= x + 136 + 30) && (get_instance_y(cursor_id) >= y + 36 && get_instance_y(cursor_id) <= y + 36 + 26)) {
	suppress_cursor = true;
	if (menu_a_pressed) {
		menu_a_pressed = false;
		mode = !mode;
		mode_draw++;
		sound_play(asset_get("mfx_option"))
	}
}
else if ((get_instance_x(cursor_id) >= x + 170 && get_instance_x(cursor_id) <= x + 170 + 30) && (get_instance_y(cursor_id) >= y + 36 && get_instance_y(cursor_id) <= y + 36 + 26)) {
    suppress_cursor = true;
    if (menu_a_pressed) {
        menu_a_pressed = false;
        bair_mode = !bair_mode;
        bair_mode_draw++;
        sound_play(asset_get("mfx_option"))
    }
}
else {
	suppress_cursor = false;
}

//#region Synced Variable
// Supersonic's Synched Variable Code
generated_var = 0;

//#region Synced Variable Setting
// Synced Variable Stuff -Should run to reset these valus on game load
/* Synced Variable should account for these. We have 32 bits to work with.
1. Color Shift - 2 bits - Off / Extra 1 / Extra 2
2. Dino's button - Should Switch - 1 bit
3. Results portrait - Awesome -  1 bit
*/

generated_var = generate_synced_var(mode,1,bair_mode,1)
set_synced_var(player, real(generated_var));

//#endregion
#define generate_synced_var
///args chunks...
///Given pairs of chunks and their lengths in bits, compiles them into one value.
//arg format: chunk, bit_length, chunk, bit_length, etc.
var output = 0;
var num_chunks = argument_count/2;
if num_chunks != floor(num_chunks) {
    print("error generating synced var - function formatted wrong.");
    return 0;
}
var total_len = 0;
for (var i = num_chunks-1; i >= 0; i--) {
    var pos = (i*2);
    var shift = (pos-1 >= 0) ? argument[pos-1] : 0;
    total_len += argument[pos+1];
    output = output | argument[pos];
    output = output << shift;
}
if total_len > 32 {
    print(`error generating synced var - bit length surpassed 32! (${total_len} bits.)`);
    return 0;
}
return real(output);

