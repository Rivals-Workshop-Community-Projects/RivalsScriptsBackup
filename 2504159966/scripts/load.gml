muno_char_name = "Concrete Cubeness"
var years = 2023 - current_year
trummel_codecs = [
	{pages: [
		{speaker:0, expression:0, text:"WHAT", gimmick:0},
		{speaker:1, expression:5, text:"This stage is 3-dimensional!?", gimmick:0},
		{speaker:0, expression:0, text:"HOW", gimmick:0},
		{speaker:4, expression:8, text:"Come on, this is sick!", gimmick:0},
		{speaker:1, expression:2, text:"... It is, yeah.", gimmick:0},
		{speaker:0, expression:0, text:"3d rivals", gimmick:0},
		{speaker:4, expression:1, text:"Absolutely. Speaking of, when's the release date for that again?", gimmick:0},
	]}
]
if (years == 0) {
	trummel_codecs[0].pages[7] = {speaker:4, expression:6, text:"... 2023... That's this year!!!", gimmick:0}
	trummel_codecs[0].pages[8] = {speaker:1, expression:1, text:"LET'S GOOOOOOOOOOOO", gimmick:0}
	trummel_codecs[0].pages[9] = {speaker:0, expression:0, text:"WOAG", gimmick:0}
	trummel_codecs[0].pages[10] = {speaker:4, expression:8, text:"I'M SO EXCITEEEEEEEEEED", gimmick:0}
} else if (years < 0) {
	trummel_codecs[0].pages[7] = {speaker:4, expression:3, text:"Ah, 2023.", gimmick:0}
	trummel_codecs[0].pages[8] = {speaker:1, expression:0, text:"Ok", gimmick:0}
	trummel_codecs[0].pages[9] = {speaker:4, expression:5, text:"This is placeholder text", gimmick:0}
	trummel_codecs[0].pages[10] = {speaker:0, expression:2, text:"what

are you serious", gimmick:0}
	trummel_codecs[0].pages[11] = {speaker:1, expression:6, text:"This is why you make sure your clock is set correctly.", gimmick:0}
} else {
	var yearstring = string(years)
	if (years == 1) {
		yearstring += " year away... "
	} else {
		yearstring += " years away..."
	}
	trummel_codecs[0].pages[7] = {speaker:4, expression:6, text:"... 2023... WHAT!?", gimmick:0}
	trummel_codecs[0].pages[8] = {speaker:1, expression:9, text:"That's "+yearstring, gimmick:0}
	trummel_codecs[0].pages[9] = {speaker:0, expression:0, text:"i cant wait that long aaaaaaaaa", gimmick:0}
	trummel_codecs[0].pages[10] = {speaker:1, expression:6, text:"Trummel, Aether Studios needs this much time to make the game as good as possible on release.", gimmick:0}
	trummel_codecs[0].pages[11] = {speaker:0, expression:4, text:"ok :(", gimmick:0}
}