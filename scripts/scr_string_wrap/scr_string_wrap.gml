function scr_string_wrap(text, width)
{
	var text_wrapped = "";
	var space = -1;
	var char_pos = 1;

	while (string_length(text) >= char_pos)
	{
		if (string_width(string_copy(text, 1, char_pos)) > width)
		{
			if (space != -1)
			{
				text_wrapped += string_copy(text, 1, space) + "\n";
				text = string_copy(text, space + 1, string_length(text) - (space));
				char_pos = 1;
				space = -1;
			}
		}
	    if (string_char_at(text, char_pos) == " ")
		{
			space = char_pos;
		}
		char_pos += 1;
	}
	if (string_length(text) > 0)
	{
		text_wrapped += text;
	}
	
	return text_wrapped;
}