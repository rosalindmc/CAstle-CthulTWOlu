with(obj_editor)
{
	minValue = 1000000
	value = -1000000
	maxValue = -1000000
}

with(obj_content)
{
	if active = true
	{
		with(obj_editor)
		{
			minValue = min(minValue,other.attributes[num])
			value = other.attributes[num]
			maxValue = max(maxValue,other.attributes[num])
		}
	}
}