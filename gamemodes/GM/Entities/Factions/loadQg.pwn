/*
	QG loading Script 
*/

forward OnQgLoad(FactionName[], FactionType);

public OnQgLoad(FactionName[], FactionType)
{
	return 1;
}

stock GetIconFromType(FactionType)
{
	switch(FactionType)
	{
		case 1:
		{
			return ICON_LAW;
		}
		case 2:
		{
			return ICON_MEDIC;
		}
		case 3:
		{
			return ICON_ILLEGAL;
		}
	}
	return 0;
}

