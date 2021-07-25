if (textObj.y <= -20)
	textObj = {textStr:GenerateString(), x:room_width/2+random_func(0, 800, 1)-400, y:room_height};
textObj.y -= 3;

#define GenerateString()
{
	switch (random_func(1, 8, 1))
	{
		case 0: return is_laststock()?"We're so close!":"We can do it!";
		case 1: return is_laststock()?"Don't let them win!":"Let's end this!";
		case 2: return "The Light will win!";
		case 3: return is_laststock()?"Hold on a little more, Hikaru!":"Let's go, Hikaru!";
		case 4: return is_laststock()?"Don't lose hope now!":"Show 'em who's boss!";
		case 5: return is_laststock()?"Never give up till the end!":"Don't give in!";
		case 6: return is_laststock()?"Our "+GetRandomName()+" won't lose!":"Destroy them, " + GetRandomName() + "!";
		case 7: return is_laststock()?"No one can beat our "+GetRandomName()+"!":"You're the best " + GetRandomName() + "!";
		default: return "";
	}
	return "";
}

#define GetRandomName()
{
	var name = get_char_info(random_func(2, 3, 1)+1, INFO_STR_NAME);
	if (name == "") name = "hero";
	return name;
}