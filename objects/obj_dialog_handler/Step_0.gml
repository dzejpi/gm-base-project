/// @description Typewriter logic
var length = string_length(text[text_current]);

// The array index of the last text
var text_last = array_length(text) - 1;

if keyboard_check_released(vk_space)
{
	if (char_current < length)
	{
		char_current = length;
	} else
	{
		text_current += 1;
		if (text_current > text_last)
		{
			instance_destroy();
		} else
		{
			text[text_current] = scr_string_wrap(text[text_current], text_width);
			char_current = 0;
			auto_countdown = delay_overload;
		}
	}
}

if (char_current >= length)
{
	if auto_countdown > 0
	{
		auto_countdown -= 1;
	} else
	{
		auto_countdown = delay_overload;
		text_current += 1;
		if (text_current > text_last)
		{
			instance_destroy();
		} else
		{
			text[text_current] = scr_string_wrap(text[text_current], text_width);
			char_current = 0;
		}
	}
}