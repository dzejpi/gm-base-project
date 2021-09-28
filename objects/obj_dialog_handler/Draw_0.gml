/// @description Draw the background & text
// Nine-slice background
draw_sprite_stretched(spr_dialog_back, 0, container_x, container_y, container_width, container_height);

draw_set_font(font_dialog_text);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_colour(c_white);

var legth = string_length(text[text_current]);

if (char_current < legth)
{
	char_current += char_speed;
	if frac(char_current) = 0 
	{
		// Play typewriter sound once the new character appears
		audio_play_sound(snd_typewriter, 10, false);
	}
}

// Draw the string
var drawn_string = string_copy(text[text_current], 1, char_current);
draw_text(text_x, text_y,  drawn_string);