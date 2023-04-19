//


// draw_debug_text(50,50 + DEBUG_SCROLL,DEBUG_DISPLAY_STRING);
// DEBUG_SCROLL += down_down - up_down;

shader_start();
var col = (move_cooldown[AT_FSPECIAL] > 0) ? $707070 : c_white;
draw_sprite_ext(sprite_get("gun_icon"), 0, temp_x + 186, temp_y - 18, 2, 2, 0, col, 1);
//if shotgun_loaded {
    draw_sprite_ext(sprite_get("gun_icon"), 1, temp_x + 186, temp_y - 18, 2, 2, 0, make_color_rgb(outline_color[0],outline_color[1],outline_color[2]), 1);
//}
shader_end();

#define get_notes(index)
switch index {
    case 0:
        return "If you find me an enemy, ye'll find only enemies 'ere among the sea."
    case 1:
        return "<< WANTED! dead or alive: Pirate Bastard Blackbeak, self-proclaimed Captain. 150 000 G. >>"
    case 2:
        return "With salt in me feathers an' the wind tauntin' my flightless plume."
    case 3:
        return "The finest o' friends are the sort kings call sinners."
    case 4:
        return "The ones ye can't offend? Nay, it be the ones who dangle yer life before ye- they be the ones in control."
    case 5:
        return "If thar be a people the kings tell ye to fear, protect tha' people."
    case 6:
        return "The nobles be thinkin' ye won't know the truth, an'll try ter make ye fear someone who ne'er hurt a soul."
    case 7:
        return "If they get ye to fear the innocent, then they'll pocket yer life fer their own boons."
    case 8:
        return "Why do ye think I be banished to the waves? They can't control ye when ye know their tricks."
    case 9:
        return "They fear me. They fear my gun. They know I'd be pullin' the trigger on them."
    case 10:
        return "Due process? Nah. They made that process. They'd be gettin' off with none but a slapped wrist. No. The kings, noble, and richest; the elite; they deserve bullets to the head."
    case 11:
        return "They know that alone ye be weak. So they stop ye from actin' in union."
    case 12:
        return "They can kill a thousand. They can't be killin' a century thousand. Take 'em out with yer numbers."
    case 13:
        return "The king is yer foe. The poor; the slaves; the exotic; the foreign; the queer- They be yer real allies. Don't be lickin' the boots o' the elite."
    case 14:
        return "They need ye. Ye don't need them."
    case 15:
        return "Go ahead- Pray to yer god of land, your god of fire; It cannot save ye from the ocean's wrath."
    case 16:
        return "This 'ere be my weapon. It will lie among my bones below the waves."
    case 17:
        return "I'll let that there be a mystery fer ye to solve. Ye mammal-folk ne'er can tell, anyways."
    case 18:
        return "Drink to 'eavy rains an' sing to Hilia's wrath!"
    case 19:
        return "You'll ne'er meet my mother- so you'll ne'er meet a real woman. I'm sure you wouldn't 'ave liked 'er."
    case 20:
        return "Honor? Grace? My tail be cut. My feathers torn. An' ye be the one whose eyes fill with fear at my laugh."
    case 21:
        return "The Champions of Aether? Thirty years among the waves, an' the sea's passengers still amuse me. Add it to the pile o' fool's errands an' wives' tales."
    case 22:
        return "Zetterburn? Ah- that be the fire prince. Forget about him. He'd be part of them. He won't help ye."
    case 23:
        return "Forsburn? Another fire prince? They both be scum."
    case 24:
        return "Wrastor? That brat? I'd kill 'im myself if I could get my gun near 'is prudish feathers."
    case 25:
        return "Orcane? Now that be a name I can respect. He's got nothin' but good in his 'eart."
    case 26:
        return "Maypul? I've ne'er known a landlubber o' that name."
    case 27:
        return "Kragg? I've 'eard stories o' a forest wall. Ne'er seen any face."
    case 28:
        return "Absa? Sounds like one o' those mountain dwellers. I've ne'er gone so deep into land, I'd ne'er know."
    case 29:
        return "Etalus? I met 'im lost at the Frozen Sea. Too noble. Besides, 'e has 'is own mission. He wouldn't help ye."
    case 30:
        return "Sylvanos? Ye might as well ask about the mighty kraken herself. It's a legend, but it could very well be true."
    case 31:
        return "Elliana, oh what a name! That there slitherin' reptile has aspirations I know far too well."
    case 32:
        return "Ranno? If my guess be correct, 'e's too focused on acheivin' inner tranquility at whatever swamp 'e'd be at."
    case 33:
        return "Hodan? Based on yer description, 'e must be a sight for sore eyes."
    case 34:
        return "Olympia? If I e'er visit those amethyst mines again, I'm sure she'd try an' kill me."
    case 35:
        return "I like you. Yer be willing to take on the largest empire of in the Aether's seas with nothin' but a vision o' the future."
    case 36:
        return "Welcome abord the Sanguine Fowl, Miss Clairen."
}