/*
	character data 
*/

enum _CharData
{
	SqlID,
	AccountID,
	Name[NORMAL_STR],
	FLOAT:PosX,
	FLOAT:PosY,
	FLOAT:PosZ,
	FLOAT:RotX,
	FLOAT:RotY,
	FLOAT:RotZ,
	Level,
	PlayedHour,
	FactionID,// -1 Null 
	FingerPrint[VERY_LONG_STR]
}
new CharacterData[MAX_PLAYERS][_CharData];

