//plays a random voice line sound effect from the sub array

var va_select = random_func(2, array_length(va_lines[va_type]), true);

sound_stop(va_current);
va_current = va_lines[va_type][va_select];
sound_play(va_current, false, noone, 1.1, 1);
va_cd = va_cd_max;