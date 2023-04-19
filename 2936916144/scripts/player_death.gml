if (glados_taunt = 19) {
    glados_taunt = random_func( 1, 18, true)+1;

if (glados_taunt == current_option)
 { glados_taunt = current_option-1; }
 
current_option = glados_taunt

sound_play(sound_get("glados" + string(glados_taunt)));

timer = 1

print(glados_taunt)
print(current_option)
}