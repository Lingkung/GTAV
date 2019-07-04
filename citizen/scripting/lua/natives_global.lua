-- Native definitions

native "APP_CLEAR_BLOCK"
    hash "0x5FE1DF3342DB7DBA"
	jhash (0xDAB86A18)
	ns "APP"
	returns "void"
	doc [[!
	]]

native "APP_CLOSE_APP"
    hash "0xE41C65E07A5F05FC"
	jhash (0x03767C7A)
	ns "APP"
	returns "void"
	doc [[!
	]]

native "APP_CLOSE_BLOCK"
    hash "0xE8E3FCF72EAC0EF8"
	jhash (0xED97B202)
	ns "APP"
	returns "void"
	doc [[!
	]]

native "APP_DATA_VALID"
    hash "0x846AA8E7D55EE5B6"
	jhash (0x72BDE002)
	ns "APP"
	returns "int"
	doc [[!
	]]

native "APP_DELETE_APP_DATA"
    hash "0x44151AEA95C8A003"
	jhash (0x2A2FBD1C)
	arguments {
		charPtr "appName",
	}
	ns "APP"
	returns "BOOL"
	doc [[!
	]]

native "APP_GET_DELETED_FILE_STATUS"
    hash "0xC9853A2BE3DED1A6"
	jhash (0x784D550B)
	ns "APP"
	returns "Any"
	doc [[!
	]]

native "APP_GET_FLOAT"
    hash "0x1514FB24C02C2322"
	jhash (0xD87F3A1C)
	arguments {
		charPtr "property",
	}
	ns "APP"
	returns "float"
	doc [[!
	]]

native "APP_GET_INT"
    hash "0xD3A58A12C77D9D4B"
	jhash (0x2942AAD2)
	arguments {
		ScrHandle "property",
	}
	ns "APP"
	returns "void"
	doc [[!
	]]

native "APP_GET_STRING"
    hash "0x749B023950D2311C"
	jhash (0x849CEB80)
	arguments {
		charPtr "property",
	}
	ns "APP"
	returns "charPtr"
	doc [[!
	]]

native "APP_HAS_LINKED_SOCIAL_CLUB_ACCOUNT"
    hash "0x71EEE69745088DA0"
	jhash (0xD368BA15)
	ns "APP"
	returns "BOOL"
	doc [[!
	]]

native "APP_HAS_SYNCED_DATA"
    hash "0xCA52279A7271517F"
	jhash (0x1DE2A63D)
	arguments {
		charPtr "appName",
	}
	ns "APP"
	returns "BOOL"
	doc [[!
	]]

native "APP_SAVE_DATA"
    hash "0x95C5D356CDA6E85F"
	jhash (0x84A3918D)
	ns "APP"
	returns "void"
	doc [[!
	]]

native "APP_SET_APP"
    hash "0xCFD0406ADAF90D2B"
	jhash (0x8BAC4146)
	arguments {
		charPtr "appName",
	}
	ns "APP"
	returns "void"
	doc [[!
<summary>
```
Called in the gamescripts like:  
APP::APP_SET_APP("car");  
APP::APP_SET_APP("dog");  
```
</summary>
	]]

native "APP_SET_BLOCK"
    hash "0x262AB456A3D21F93"
	jhash (0xC2D54DD9)
	arguments {
		charPtr "blockName",
	}
	ns "APP"
	returns "void"
	doc [[!
	]]

native "APP_SET_FLOAT"
    hash "0x25D7687C68E0DAA4"
	jhash (0xF3076135)
	arguments {
		charPtr "property",
		float "value",
	}
	ns "APP"
	returns "void"
	doc [[!
	]]

native "APP_SET_INT"
    hash "0x607E8E3D3E4F9611"
	jhash (0x1B509C32)
	arguments {
		charPtr "property",
		int "value",
	}
	ns "APP"
	returns "void"
	doc [[!
	]]

native "APP_SET_STRING"
    hash "0x3FF2FCEC4B7721B4"
	jhash (0x23DF19A8)
	arguments {
		charPtr "property",
		charPtr "value",
	}
	ns "APP"
	returns "void"
	doc [[!
	]]

native "ADD_LINE_TO_CONVERSATION"
    hash "0xC5EF963405593646"
	jhash (0x96CD0513)
	arguments {
		int "p0",
		charPtr "p1",
		charPtr "p2",
		int "p3",
		int "p4",
		BOOL "p5",
		BOOL "p6",
		BOOL "p7",
		BOOL "p8",
		int "p9",
		BOOL "p10",
		BOOL "p11",
		BOOL "p12",
	}
	ns "AUDIO"
	returns "void"
	doc [[!
<summary>
```
NOTE: ones that are -1, 0 - 35 are determined by a function where it gets a TextLabel from a global then runs,  
_GET_TEXT_SUBSTRING and depending on what the result is it goes in check order of 0 - 9 then A - Z then z (lowercase). So it will then return 0 - 35 or -1 if it's 'z'. The func to handle that ^^ is func_67 in dialog_handler.c atleast in TU27 Xbox360 scripts.  
p0 is -1, 0   
p1 is a char or string (whatever you wanna call it)  
p2 is Global 10597 + i * 6. 'i' is a while(i < 70) loop  
p3 is again -1, 0 - 35   
p4 is again -1, 0 - 35   
p5 is either 0 or 1 (bool ?)  
p6 is either 0 or 1 (The func to determine this is bool)  
p7 is either 0 or 1 (The func to determine this is bool)  
p8 is either 0 or 1 (The func to determine this is bool)  
p9 is 0 - 3 (Determined by func_60 in dialogue_handler.c)  
p10 is either 0 or 1 (The func to determine this is bool)  
p11 is either 0 or 1 (The func to determine this is bool)  
p12 is unknown as in TU27 X360 scripts it only goes to p11.  
```
</summary>
	]]

native "AUDIO_IS_SCRIPTED_MUSIC_PLAYING"
    hash "0x845FFC3A4FEEFA3E"
	jhash (0x86E995D1)
	ns "AUDIO"
	returns "Any"
	doc [[!
	]]

native "ADD_PED_TO_CONVERSATION"
    hash "0x95D9F4BC443956E7"
	jhash (0xF8D5EB86)
	arguments {
		Any "p0",
		Any "ped",
		charPtr "p2",
	}
	ns "AUDIO"
	returns "void"
	doc [[!
<summary>
```
4 calls in the b617d scripts. The only one with p0 and p2 in clear text:  
AUDIO::ADD_PED_TO_CONVERSATION(5, l_AF, "DINAPOLI");  
=================================================  
One of the 2 calls in dialogue_handler.c p0 is in a while-loop, and so is determined to also possibly be 0 - 15.  
Based on it asking if does_entity_exist for the global I have determined that p1 is, in fact, the ped, but could be wrong.  
```
</summary>
	]]

native "_CAN_PED_SPEAK"
    hash "0x49B99BF3FDA89A7A"
	jhash (0x8BD5F11E)
	arguments {
		Ped "ped",
		charPtr "speechName",
		BOOL "unk",
	}
	alias "0x49B99BF3FDA89A7A"
	ns "AUDIO"
	returns "BOOL"
	doc [[!
<summary>
```
Checks if the ped can play the speech or has the speech file, last parameter is usually 0  
```
</summary>
	]]

native "BLIP_SIREN"
    hash "0x1B9025BDA76822B6"
	jhash (0xC0EB6924)
	arguments {
		Vehicle "vehicle",
	}
	ns "AUDIO"
	returns "void"
	doc [[!
<summary>
```
Plays the siren sound of a vehicle which is otherwise activated when fastly double-pressing the horn key.  
Only works on vehicles with a police siren.  
```
</summary>
	]]

native "CLEAR_ALL_BROKEN_GLASS"
    hash "0xB32209EFFDC04913"
	jhash (0xE6B033BF)
	ns "AUDIO"
	returns "void"
	doc [[!
<summary>
```
Removes broken glass particles.  
```
</summary>
	]]

native "CANCEL_MUSIC_EVENT"
    hash "0x5B17A90291133DA5"
	jhash (0x89FF942D)
	arguments {
		charPtr "eventName",
	}
	ns "AUDIO"
	returns "BOOL"
	doc [[!
<summary>
```
All music event names found in the b617d scripts: pastebin.com/GnYt0R3P  
```
</summary>
	]]

native "CLEAR_AMBIENT_ZONE_STATE"
    hash "0x218DD44AAAC964FF"
	jhash (0xCDFF3C82)
	arguments {
		charPtr "zoneName",
		BOOL "p1",
	}
	ns "AUDIO"
	returns "void"
	doc [[!
<summary>
```
This function also has a p2, unknown. Signature AUDIO::CLEAR_AMBIENT_ZONE_STATE(char* zoneName, bool p1, Any p2);  
Still needs more research.   
Here are the names I've found: pastebin.com/AfA0Qjyv  
New Ambient Zone List (Combind with old): pastebin.com/h8BsKgUD -DasChaos  
```
</summary>
	]]

native "CLEAR_AMBIENT_ZONE_LIST_STATE"
    hash "0x120C48C614909FA4"
	jhash (0x38B9B8D4)
	arguments {
		AnyPtr "p0",
		BOOL "p1",
	}
	ns "AUDIO"
	returns "void"
	doc [[!
	]]

native "DISABLE_PED_PAIN_AUDIO"
    hash "0xA9A41C1E940FB0E8"
	jhash (0x3B8E2D5F)
	arguments {
		Ped "ped",
		BOOL "toggle",
	}
	ns "AUDIO"
	returns "void"
	doc [[!
	]]

native "CREATE_NEW_SCRIPTED_CONVERSATION"
    hash "0xD2C91A0B572AAE56"
	jhash (0xB2BC25F8)
	ns "AUDIO"
	returns "void"
	doc [[!
	]]

native "_DISABLE_POLICE_REPORTS"
    hash "0xB4F90FAF7670B16F"
	alias "0xB4F90FAF7670B16F"
	ns "AUDIO"
	returns "void"
	doc [[!
	]]

native "_DYNAMIC_MIXER_RELATED_FN"
    hash "0x153973AB99FE8980"
	jhash (0x2BC93264)
	arguments {
		Entity "p0",
		charPtr "p1",
		float "p2",
	}
	alias "0x153973AB99FE8980"
	ns "AUDIO"
	returns "void"
	doc [[!
<summary>
```
ADD_E* (most likely ADD_ENTITY_*)  
All found occurrences in b678d:  
pastebin.com/ceu67jz8  
Still not sure on the functionality of this native but it has something to do with dynamic mixer groups defined in dynamix.dat15  
```
</summary>
	]]

native "FIND_RADIO_STATION_INDEX"
    hash "0x8D67489793FF428B"
	jhash (0xECA1512F)
	arguments {
		int "station",
	}
	ns "AUDIO"
	returns "int"
	doc [[!
	]]

native "_FORCE_AMBIENT_SIREN"
    hash "0x552369F549563AD5"
	jhash (0x13EB5861)
	arguments {
		BOOL "value",
	}
	alias "0x552369F549563AD5"
	ns "AUDIO"
	returns "void"
	doc [[!
<summary>
```
if value is set to true, and ambient siren sound will be played.  
-------------------------------------------------------------------------  
Appears to enable/disable an audio flag.  
```
</summary>
	]]

native "_FORCE_VEHICLE_ENGINE_AUDIO"
    hash "0x4F0C413926060B38"
	jhash (0x33B0B007)
	arguments {
		Vehicle "vehicle",
		charPtr "audioName",
	}
	alias "0x4F0C413926060B38"
	alias "_SET_VEHICLE_AUDIO"
	ns "AUDIO"
	returns "void"
	doc [[!
<summary>
```
This native sets the audio of the specified vehicle to audioName (p1).  
Use the audioNameHash found in vehicles.meta  
Example:  
_FORCE_VEHICLE_ENGINE_SOUND(veh, "ADDER");  
The selected vehicle will now have the audio of the Adder.  
FORCE_VEHICLE_???  
```
</summary>
	]]

native "FREEZE_RADIO_STATION"
    hash "0x344F393B027E38C3"
	jhash (0x286BF543)
	arguments {
		charPtr "radioStation",
	}
	ns "AUDIO"
	returns "void"
	doc [[!
	]]

native "GET_AUDIBLE_MUSIC_TRACK_TEXT_ID"
    hash "0x50B196FC9ED6545B"
	jhash (0xA2B88CA7)
	ns "AUDIO"
	returns "int"
	doc [[!
	]]

native "GET_MUSIC_PLAYTIME"
    hash "0xE7A0D23DC414507B"
	jhash (0xD633C809)
	ns "AUDIO"
	returns "Any"
	doc [[!
	]]

native "GET_CURRENT_SCRIPTED_CONVERSATION_LINE"
    hash "0x480357EE890C295A"
	jhash (0x9620E41F)
	ns "AUDIO"
	returns "Any"
	doc [[!
	]]

native "GET_NETWORK_ID_FROM_SOUND_ID"
    hash "0x2DE3F0A134FFBC0D"
	jhash (0x2576F610)
	arguments {
		int "soundId",
	}
	ns "AUDIO"
	returns "int"
	doc [[!
<summary>
```
Could this be used alongside either,   
SET_NETWORK_ID_EXISTS_ON_ALL_MACHINES or _SET_NETWORK_ID_SYNC_TO_PLAYER to make it so other players can hear the sound while online? It'd be a bit troll-fun to be able to play the Zancudo UFO creepy sounds globally.  
```
</summary>
	]]

native "GET_PLAYER_HEADSET_SOUND_ALTERNATE"
    hash "0xBCC29F935ED07688"
	jhash (0xD63CF33A)
	arguments {
		charPtr "p0",
		float "p1",
	}
	ns "AUDIO"
	returns "void"
	doc [[!
<summary>
```
Called 5 times in the scripts. All occurrences found in b617d, sorted alphabetically and identical lines removed:   
AUDIO::GET_PLAYER_HEADSET_SOUND_ALTERNATE("INOUT", 0.0);  
AUDIO::GET_PLAYER_HEADSET_SOUND_ALTERNATE("INOUT", 1.0);  
```
</summary>
	]]

native "GET_NUMBER_OF_PASSENGER_VOICE_VARIATIONS"
    hash "0x66E49BF55B4B1874"
	jhash (0x27305D37)
	arguments {
		Any "p0",
	}
	ns "AUDIO"
	returns "int"
	doc [[!
	]]

native "GET_PLAYER_RADIO_STATION_INDEX"
    hash "0xE8AF77C4C06ADC93"
	jhash (0x1C4946AC)
	ns "AUDIO"
	returns "int"
	doc [[!
<summary>
```
Returns 255 (radio off index) if the function fails.  
```
</summary>
	]]

native "GET_RADIO_STATION_NAME"
    hash "0xB28ECA15046CA8B9"
	jhash (0x3DF493BC)
	arguments {
		int "radioStation",
	}
	ns "AUDIO"
	returns "charPtr"
	doc [[!
<summary>
```
Returns String with radio station name.  
```
</summary>
	]]

native "GET_PLAYER_RADIO_STATION_GENRE"
    hash "0xA571991A7FE6CCEB"
	jhash (0x872CF0EA)
	ns "AUDIO"
	returns "Any"
	doc [[!
	]]

native "GET_SOUND_ID_FROM_NETWORK_ID"
    hash "0x75262FD12D0A1C84"
	jhash (0xD064D4DC)
	arguments {
		int "netId",
	}
	alias "0x75262FD12D0A1C84"
	ns "AUDIO"
	returns "int"
	doc [[!
	]]

native "GET_PLAYER_RADIO_STATION_NAME"
    hash "0xF6D733C32076AD03"
	jhash (0xD909C107)
	ns "AUDIO"
	returns "charPtr"
	doc [[!
<summary>
```
Returns active radio station name  
```
</summary>
	]]

native "GET_VEHICLE_DEFAULT_HORN"
    hash "0x02165D55000219AC"
	jhash (0xE84ABC19)
	arguments {
		Vehicle "vehicle",
	}
	ns "AUDIO"
	returns "Hash"
	doc [[!
<summary>
```
Returns hash of default vehicle horn  
Hash is stored in audVehicleAudioEntity  
```
</summary>
	]]

native "GET_SOUND_ID"
    hash "0x430386FE9BF80B45"
	jhash (0x6AE0AD56)
	ns "AUDIO"
	returns "int"
	doc [[!
	]]

native "_GET_VEHICLE_HORN_HASH"
    hash "0xACB5DCCA1EC76840"
	jhash (0xFD4B5B3B)
	arguments {
		Vehicle "vehicle",
	}
	alias "0xACB5DCCA1EC76840"
	ns "AUDIO"
	returns "Hash"
	doc [[!
<summary>
```
Seems to get the hash of the vehicle's currently installed horn?  
```
</summary>
	]]

native "GET_STREAM_PLAY_TIME"
    hash "0x4E72BBDBCA58A3DB"
	jhash (0xB4F0AD56)
	ns "AUDIO"
	returns "int"
	doc [[!
	]]

native "HINT_AMBIENT_AUDIO_BANK"
    hash "0x8F8C0E370AE62F5C"
	jhash (0xF1850DDC)
	arguments {
		Any "p0",
		Any "p1",
	}
	ns "AUDIO"
	returns "Any"
	doc [[!
	]]

native "HAS_SOUND_FINISHED"
    hash "0xFCBDCE714A7C88E5"
	jhash (0xE85AEC2E)
	arguments {
		int "soundId",
	}
	ns "AUDIO"
	returns "BOOL"
	doc [[!
	]]

native "INTERRUPT_CONVERSATION"
    hash "0xA018A12E5C5C2FA6"
	jhash (0xF3A67AF3)
	arguments {
		Any "p0",
		AnyPtr "p1",
		AnyPtr "p2",
	}
	ns "AUDIO"
	returns "void"
	doc [[!
	]]

native "HINT_SCRIPT_AUDIO_BANK"
    hash "0xFB380A29641EC31A"
	jhash (0x41FA0E51)
	arguments {
		Any "p0",
		Any "p1",
	}
	ns "AUDIO"
	returns "Any"
	doc [[!
	]]

native "IS_AMBIENT_SPEECH_DISABLED"
    hash "0x932C2D096A2C3FFF"
	jhash (0x109D1F89)
	arguments {
		Ped "ped",
	}
	ns "AUDIO"
	returns "BOOL"
	doc [[!
<summary>
```
Common in the scripts:  
AUDIO::IS_AMBIENT_SPEECH_DISABLED(PLAYER::PLAYER_PED_ID());  
```
</summary>
	]]

native "IS_ALARM_PLAYING"
    hash "0x226435CB96CCFC8C"
	jhash (0x9D8E1D23)
	arguments {
		charPtr "alarmName",
	}
	ns "AUDIO"
	returns "BOOL"
	doc [[!
<summary>
```
Example:  
bool playing = AUDIO::IS_ALARM_PLAYING("PORT_OF_LS_HEIST_FORT_ZANCUDO_ALARMS");  
```
</summary>
	]]

native "IS_AMBIENT_SPEECH_PLAYING"
    hash "0x9072C8B49907BFAD"
	jhash (0x1972E8AA)
	arguments {
		Ped "p0",
	}
	ns "AUDIO"
	returns "BOOL"
	doc [[!
	]]

native "IS_AMBIENT_ZONE_ENABLED"
    hash "0x01E2817A479A7F9B"
	jhash (0xBFABD872)
	arguments {
		charPtr "ambientZone",
	}
	ns "AUDIO"
	returns "BOOL"
	doc [[!
	]]

native "IS_AUDIO_SCENE_ACTIVE"
    hash "0xB65B60556E2A9225"
	jhash (0xACBED05C)
	arguments {
		charPtr "scene",
	}
	ns "AUDIO"
	returns "BOOL"
	doc [[!
	]]

native "IS_ANY_SPEECH_PLAYING"
    hash "0x729072355FA39EC9"
	jhash (0x2B74A6D6)
	arguments {
		Ped "ped",
	}
	ns "AUDIO"
	returns "BOOL"
	doc [[!
	]]

native "IS_HORN_ACTIVE"
    hash "0x9D6BFC12B05C6121"
	jhash (0x20E2BDD0)
	arguments {
		Vehicle "vehicle",
	}
	ns "AUDIO"
	returns "BOOL"
	doc [[!
<summary>
```
Checks whether the horn of a vehicle is currently played.  
```
</summary>
	]]

native "IS_GAME_IN_CONTROL_OF_MUSIC"
    hash "0x6D28DC1671E334FD"
	jhash (0x7643170D)
	ns "AUDIO"
	returns "BOOL"
	doc [[!
<summary>
```
Hardcoded to return 1  
```
</summary>
	]]

native "IS_MISSION_COMPLETE_PLAYING"
    hash "0x19A30C23F5827F8A"
	jhash (0x939982A1)
	ns "AUDIO"
	returns "BOOL"
	doc [[!
	]]

native "IS_MOBILE_PHONE_RADIO_ACTIVE"
    hash "0xB35CE999E8EF317E"
	jhash (0x6E502A5B)
	ns "AUDIO"
	returns "BOOL"
	doc [[!
	]]

native "IS_MOBILE_PHONE_CALL_ONGOING"
    hash "0x7497D2CE2C30D24C"
	jhash (0x4ED1400A)
	ns "AUDIO"
	returns "BOOL"
	doc [[!
	]]

native "IS_PED_RINGTONE_PLAYING"
    hash "0x1E8E5E20937E3137"
	jhash (0xFE576EE4)
	arguments {
		Ped "ped",
	}
	ns "AUDIO"
	returns "BOOL"
	doc [[!
	]]

native "IS_RADIO_RETUNING"
    hash "0xA151A7394A214E65"
	jhash (0xCF29097B)
	ns "AUDIO"
	returns "BOOL"
	doc [[!
	]]

native "IS_PED_IN_CURRENT_CONVERSATION"
    hash "0x049E937F18F4020C"
	jhash (0x7B2F0743)
	arguments {
		Ped "ped",
	}
	ns "AUDIO"
	returns "BOOL"
	doc [[!
	]]

native "_IS_PLAYER_VEHICLE_RADIO_ENABLED"
    hash "0x5F43D83FD6738741"
	jhash (0x2A3E5E8B)
	alias "0x5F43D83FD6738741"
	ns "AUDIO"
	returns "BOOL"
	doc [[!
	]]

native "IS_SCRIPTED_CONVERSATION_ONGOING"
    hash "0x16754C556D2EDE3D"
	jhash (0xCB8FD96F)
	ns "AUDIO"
	returns "BOOL"
	doc [[!
	]]

native "IS_SCRIPTED_CONVERSATION_LOADED"
    hash "0xDF0D54BE7A776737"
	jhash (0xE1870EA9)
	ns "AUDIO"
	returns "BOOL"
	doc [[!
	]]

native "IS_STREAM_PLAYING"
    hash "0xD11FA52EB849D978"
	jhash (0xF1F51A14)
	ns "AUDIO"
	returns "BOOL"
	doc [[!
	]]

native "IS_SCRIPTED_SPEECH_PLAYING"
    hash "0xCC9AA18DCC7084F4"
	jhash (0x2C653904)
	arguments {
		Any "p0",
	}
	ns "AUDIO"
	returns "BOOL"
	doc [[!
	]]

native "LOAD_STREAM"
    hash "0x1F1F957154EC51DF"
	jhash (0x0D89599D)
	arguments {
		charPtr "streamName",
		charPtr "soundSet",
	}
	ns "AUDIO"
	returns "BOOL"
	doc [[!
<summary>
```
Example:  
AUDIO::LOAD_STREAM("CAR_STEAL_1_PASSBY", "CAR_STEAL_1_SOUNDSET");  
All found occurrences in the b678d decompiled scripts: pastebin.com/3rma6w5w  
Stream names often ends with "_MASTER", "_SMALL" or "_STREAM". Also "_IN", "_OUT" and numbers.     
soundSet is often set to 0 in the scripts. These are common to end the soundSets: "_SOUNDS", "_SOUNDSET" and numbers.  
```
</summary>
	]]

native "_MAX_RADIO_STATION_INDEX"
    hash "0xF1620ECB50E01DE7"
	jhash (0xCC91FCF5)
	ns "AUDIO"
	returns "int"
	doc [[!
	]]

native "_IS_VEHICLE_RADIO_LOUD"
    hash "0x032A116663A4D5AC"
	jhash (0xCBA99F4A)
	arguments {
		Vehicle "vehicle",
	}
	ns "AUDIO"
	returns "BOOL"
	doc [[!
	]]

native "LOAD_STREAM_WITH_START_OFFSET"
    hash "0x59C16B79F53B3712"
	jhash (0xE5B5745C)
	arguments {
		charPtr "streamName",
		int "startOffset",
		charPtr "soundSet",
	}
	ns "AUDIO"
	returns "BOOL"
	doc [[!
<summary>
```
Example:  
AUDIO::LOAD_STREAM_WITH_START_OFFSET("STASH_TOXIN_STREAM", 2400, "FBI_05_SOUNDS");  
Only called a few times in the scripts.  
```
</summary>
	]]

native "0x01BB4D577D38BD9E"
    hash "0x01BB4D577D38BD9E"
	jhash (0xE81FAC68)
	arguments {
		Any "p0",
		float "p1",
	}
	ns "AUDIO"
	returns "void"
	doc [[!
	]]

native "0x0150B6FF25A9E2E5"
    hash "0x0150B6FF25A9E2E5"
	jhash (0x1134F68B)
	ns "AUDIO"
	returns "void"
	doc [[!
	]]

native "0x031ACB6ABA18C729"
    hash "0x031ACB6ABA18C729"
	jhash (0xBE998184)
	arguments {
		charPtr "radioStation",
		charPtr "p1",
	}
	ns "AUDIO"
	returns "void"
	doc [[!
<summary>
```
2 calls in the b617d scripts. This line is called 2 times:  
AUDIO::_031ACB6ABA18C729("RADIO_16_SILVERLAKE", "MIRRORPARK_LOCKED");  
Note: Another name for RADIO_16_SILVERLAKE is RADIO MIRROR PARK  
```
</summary>
	]]

native "0x02E93C796ABD3A97"
    hash "0x02E93C796ABD3A97"
	jhash (0x3C395AEE)
	arguments {
		BOOL "p0",
	}
	ns "AUDIO"
	returns "void"
	doc [[!
<summary>
**This native does absolutely nothing, just a nullsub**
</summary>
	]]

native "0x0626A247D2405330"
    hash "0x0626A247D2405330"
	ns "AUDIO"
	returns "Any"
	doc [[!
	]]

native "0x062D5EAD4DA2FA6A"
    hash "0x062D5EAD4DA2FA6A"
	jhash (0xD87AF337)
	ns "AUDIO"
	returns "void"
	doc [[!
	]]

native "0x044DBAD7A7FA2BE5"
    hash "0x044DBAD7A7FA2BE5"
	jhash (0x8AD670EC)
	arguments {
		charPtr "p0",
		charPtr "p1",
	}
	ns "AUDIO"
	returns "void"
	doc [[!
<summary>
```
Found in the b617d scripts, duplicates removed:    
AUDIO::_044DBAD7A7FA2BE5("V_CARSHOWROOM_PS_WINDOW_UNBROKEN", "V_CARSHOWROOM_PS_WINDOW_BROKEN");  
 AUDIO::_044DBAD7A7FA2BE5("V_CIA_PS_WINDOW_UNBROKEN", "V_CIA_PS_WINDOW_BROKEN");  
 AUDIO::_044DBAD7A7FA2BE5("V_DLC_HEIST_APARTMENT_DOOR_CLOSED", "V_DLC_HEIST_APARTMENT_DOOR_OPEN");  
 AUDIO::_044DBAD7A7FA2BE5("V_FINALEBANK_PS_VAULT_INTACT", "V_FINALEBANK_PS_VAULT_BLOWN");  
 AUDIO::_044DBAD7A7FA2BE5("V_MICHAEL_PS_BATHROOM_WITH_WINDOW", "V_MICHAEL_PS_BATHROOM_WITHOUT_WINDOW");  
```
</summary>
	]]

native "0x0B568201DD99F0EB"
    hash "0x0B568201DD99F0EB"
	jhash (0x1193ED6E)
	arguments {
		BOOL "p0",
	}
	ns "AUDIO"
	returns "void"
	doc [[!
	]]

native "0x0BE4BE946463F917"
    hash "0x0BE4BE946463F917"
	arguments {
		Any "p0",
	}
	ns "AUDIO"
	returns "Any"
	doc [[!
	]]

native "0x06C0023BED16DD6B"
    hash "0x06C0023BED16DD6B"
	jhash (0xE61110A2)
	arguments {
		Any "p0",
		BOOL "p1",
	}
	ns "AUDIO"
	returns "void"
	doc [[!
	]]

native "0x109697E2FFBAC8A1"
    hash "0x109697E2FFBAC8A1"
	jhash (0x46B0C696)
	ns "AUDIO"
	returns "BOOL"
	doc [[!
<summary>
```
Not sure what this function does, but it's related to the audio of the local player's vehicle (Considering the surrounding natives, it's probably radio related).  
```
</summary>
	]]

native "0x12561FCBB62D5B9C"
    hash "0x12561FCBB62D5B9C"
	jhash (0x62B43677)
	arguments {
		int "p0",
	}
	ns "AUDIO"
	returns "void"
	doc [[!
<summary>
```
p0 is usually 0. sometimes 2. Not sure what this does.  
```
</summary>
	]]

native "0x11579D940949C49E"
    hash "0x11579D940949C49E"
	arguments {
		Any "p0",
	}
	ns "AUDIO"
	returns "void"
	doc [[!
	]]

native "0x159B7318403A1CD8"
    hash "0x159B7318403A1CD8"
	arguments {
		Any "p0",
	}
	ns "AUDIO"
	returns "void"
	doc [[!
	]]

native "0x149AEE66F0CB3A99"
    hash "0x149AEE66F0CB3A99"
	jhash (0xE64F97A0)
	arguments {
		float "p0",
		float "p1",
	}
	ns "AUDIO"
	returns "void"
	doc [[!
	]]

native "0x18EB48CFC41F2EA0"
    hash "0x18EB48CFC41F2EA0"
	jhash (0x308ED0EC)
	arguments {
		Any "p0",
		float "p1",
	}
	ns "AUDIO"
	returns "void"
	doc [[!
	]]

native "0x1654F24A88A8E3FE"
    hash "0x1654F24A88A8E3FE"
	jhash (0x1D766976)
	arguments {
		charPtr "radioStation",
	}
	ns "AUDIO"
	returns "void"
	doc [[!
<summary>
```
3 calls in the b617d scripts, removed duplicate.  
AUDIO::_1654F24A88A8E3FE("RADIO_16_SILVERLAKE");  
AUDIO::_1654F24A88A8E3FE("RADIO_01_CLASS_ROCK");  
```
</summary>
	]]

native "0x19AF7ED9B9D23058"
    hash "0x19AF7ED9B9D23058"
	jhash (0xA58BBF4F)
	ns "AUDIO"
	returns "void"
	doc [[!
<summary>
```
RELEASE_???  
I say RELEASE_???, as in IDA this native calls the same function as   
-'RELEASE_MISSION_AUDIO_BANK()'.  
-'RELEASE_AMBIENT_AUDIO_BANK()'.  
-'RELEASE_SCRIPT_AUDIO_BANK()'.  
However 'RELEASE_NAMED_SCRIPT_AUDIO_BANK' does not use the same function. So may be, 'RELEASE_???_AUDIO_BANK()'? Doubt it.  
```
</summary>
	]]

native "0x1B7ABE26CBCBF8C7"
    hash "0x1B7ABE26CBCBF8C7"
	arguments {
		Any "p0",
		Any "p1",
		Any "p2",
	}
	ns "AUDIO"
	returns "void"
	doc [[!
	]]

native "0x2BE4BC731D039D5A"
    hash "0x2BE4BC731D039D5A"
	jhash (0x2A60A90E)
	arguments {
		Any "p0",
		BOOL "p1",
	}
	ns "AUDIO"
	returns "void"
	doc [[!
	]]

native "0x1C073274E065C6D2"
    hash "0x1C073274E065C6D2"
	jhash (0x9365E042)
	arguments {
		Any "p0",
		BOOL "p1",
	}
	ns "AUDIO"
	returns "void"
	doc [[!
	]]

native "0x2C96CDB04FCA358E"
    hash "0x2C96CDB04FCA358E"
	jhash (0xC8B514E2)
	arguments {
		float "p0",
	}
	ns "AUDIO"
	returns "void"
	doc [[!
	]]

native "0x33E3C6C6F2F0B506"
    hash "0x33E3C6C6F2F0B506"
	jhash (0x73C6F979)
	arguments {
		Any "p0",
		float "p1",
		float "p2",
		float "p3",
	}
	ns "AUDIO"
	returns "void"
	doc [[!
	]]

native "0x3A48AB4445D499BE"
    hash "0x3A48AB4445D499BE"
	jhash (0x93A44A1F)
	ns "AUDIO"
	returns "Any"
	doc [[!
	]]

native "0x3D120012440E6683"
    hash "0x3D120012440E6683"
	ns "AUDIO"
	returns "Any"
	doc [[!
	]]

native "0x40763EA7B9B783E7"
    hash "0x40763EA7B9B783E7"
	arguments {
		Any "p0",
		Any "p1",
		Any "p2",
	}
	ns "AUDIO"
	returns "Any"
	doc [[!
	]]

native "0x43FA0DFC5DF87815"
    hash "0x43FA0DFC5DF87815"
	jhash (0x7BED1872)
	arguments {
		Vehicle "vehicle",
		BOOL "p1",
	}
	ns "AUDIO"
	returns "void"
	doc [[!
	]]

native "0x4E404A9361F75BB2"
    hash "0x4E404A9361F75BB2"
	jhash (0x128C3873)
	arguments {
		charPtr "radioStation",
		charPtr "p1",
		BOOL "p2",
	}
	ns "AUDIO"
	returns "void"
	doc [[!
<summary>
```
Examples:  
AUDIO::_4E404A9361F75BB2("RADIO_01_CLASS_ROCK", "END_CREDITS_KILL_MICHAEL", 1);  
AUDIO::_4E404A9361F75BB2("RADIO_01_CLASS_ROCK", "END_CREDITS_KILL_MICHAEL", 1);  
AUDIO::_4E404A9361F75BB2("RADIO_01_CLASS_ROCK", "END_CREDITS_KILL_TREVOR", 1);  
AUDIO::_4E404A9361F75BB2("RADIO_01_CLASS_ROCK", "END_CREDITS_SAVE_MICHAEL_TREVOR", 1);  
AUDIO::_4E404A9361F75BB2("RADIO_01_CLASS_ROCK", "OFF_ROAD_RADIO_ROCK_LIST", 1);  
AUDIO::_4E404A9361F75BB2("RADIO_06_COUNTRY", "MAGDEMO2_RADIO_DINGHY", 1);  
AUDIO::_4E404A9361F75BB2("RADIO_16_SILVERLAKE", "SEA_RACE_RADIO_PLAYLIST", 1);  
AUDIO::_4E404A9361F75BB2("RADIO_01_CLASS_ROCK", "OFF_ROAD_RADIO_ROCK_LIST", 1);  
```
</summary>
	]]

native "0x544810ED9DB6BBE6"
    hash "0x544810ED9DB6BBE6"
	ns "AUDIO"
	returns "Any"
	doc [[!
	]]

native "0x58BB377BEC7CD5F4"
    hash "0x58BB377BEC7CD5F4"
	jhash (0x8CE63FA1)
	arguments {
		BOOL "p0",
		BOOL "p1",
	}
	ns "AUDIO"
	returns "void"
	doc [[!
	]]

native "0x59E7B488451F4D3A"
    hash "0x59E7B488451F4D3A"
	jhash (0x23BE6432)
	arguments {
		Any "p0",
		float "p1",
	}
	ns "AUDIO"
	returns "void"
	doc [[!
	]]

native "0x5B50ABB1FE3746F4"
    hash "0x5B50ABB1FE3746F4"
	ns "AUDIO"
	returns "Any"
	doc [[!
	]]

native "0x5B9853296731E88D"
    hash "0x5B9853296731E88D"
	arguments {
		Any "p0",
		Any "p1",
		Any "p2",
		Any "p3",
		Any "p4",
		Any "p5",
	}
	ns "AUDIO"
	returns "void"
	doc [[!
	]]

native "0x5D2BFAAB8D956E0E"
    hash "0x5D2BFAAB8D956E0E"
	ns "AUDIO"
	returns "void"
	doc [[!
	]]

native "0x5DB8010EE71FDEF2"
    hash "0x5DB8010EE71FDEF2"
	jhash (0x6E660D3F)
	arguments {
		Vehicle "vehicle",
	}
	ns "AUDIO"
	returns "BOOL"
	doc [[!
	]]

native "0x5E203DA2BA15D436"
    hash "0x5E203DA2BA15D436"
	arguments {
		Any "p0",
	}
	ns "AUDIO"
	returns "Any"
	doc [[!
	]]

native "0x61631F5DF50D1C34"
    hash "0x61631F5DF50D1C34"
	arguments {
		BOOL "p0",
	}
	ns "AUDIO"
	returns "void"
	doc [[!
	]]

native "0x651D3228960D08AF"
    hash "0x651D3228960D08AF"
	arguments {
		Any "p0",
		Any "p1",
	}
	ns "AUDIO"
	returns "void"
	doc [[!
	]]

native "0x6F259F82D873B8B8"
    hash "0x6F259F82D873B8B8"
	jhash (0xCBE09AEC)
	ns "AUDIO"
	returns "Any"
	doc [[!
	]]

native "0x6FDDAD856E36988A"
    hash "0x6FDDAD856E36988A"
	jhash (0x934BE749)
	arguments {
		Any "p0",
		BOOL "p1",
	}
	ns "AUDIO"
	returns "void"
	doc [[!
	]]

native "0x70B8EC8FC108A634"
    hash "0x70B8EC8FC108A634"
	jhash (0x95050CAD)
	arguments {
		BOOL "p0",
		Any "p1",
	}
	ns "AUDIO"
	returns "void"
	doc [[!
	]]

native "0x75773E11BA459E90"
    hash "0x75773E11BA459E90"
	arguments {
		Any "p0",
		BOOL "p1",
	}
	ns "AUDIO"
	returns "void"
	doc [[!
	]]

native "0x733ADF241531E5C2"
    hash "0x733ADF241531E5C2"
	jhash (0x62D026BE)
	arguments {
		charPtr "name",
		float "p1",
	}
	ns "AUDIO"
	returns "void"
	doc [[!
<summary>
```
AUDIO::_733ADF241531E5C2("inTunnel", 1.0);  
AUDIO::_733ADF241531E5C2("inTunnel", 0.0);  
I do not know as of yet what this does, but this was found in the scripts.  
```
</summary>
	]]

native "0x7CDC8C3B89F661B3"
    hash "0x7CDC8C3B89F661B3"
	arguments {
		Ped "playerPed",
		Hash "p1",
	}
	ns "AUDIO"
	returns "void"
	doc [[!
<summary>
```
From the scripts:  
AUDIO::_7CDC8C3B89F661B3(PLAYER::PLAYER_PED_ID(), GAMEPLAY::GET_HASH_KEY("PAIGE_PVG"));  
                AUDIO::_7CDC8C3B89F661B3(PLAYER::PLAYER_PED_ID(), GAMEPLAY::GET_HASH_KEY("TALINA_PVG"));  
            AUDIO::_7CDC8C3B89F661B3(PLAYER::PLAYER_PED_ID(), GAMEPLAY::GET_HASH_KEY("FEMALE_LOST_BLACK_PVG"));  
            AUDIO::_7CDC8C3B89F661B3(PLAYER::PLAYER_PED_ID(), GAMEPLAY::GET_HASH_KEY("FEMALE_LOST_WHITE_PVG"));  
```
</summary>
	]]

native "0x774BD811F656A122"
    hash "0x774BD811F656A122"
	jhash (0xB1FF7137)
	arguments {
		charPtr "radioStation",
		BOOL "p1",
	}
	ns "AUDIO"
	returns "void"
	doc [[!
<summary>
```
6 calls in the b617d scripts, removed identical lines:  
AUDIO::_774BD811F656A122("RADIO_01_CLASS_ROCK", 1);  
AUDIO::_774BD811F656A122(AUDIO::GET_RADIO_STATION_NAME(10), 0);  
AUDIO::_774BD811F656A122(AUDIO::GET_RADIO_STATION_NAME(10), 1);  
```
</summary>
	]]

native "0x7EC3C679D0E7E46B"
    hash "0x7EC3C679D0E7E46B"
	arguments {
		Any "p0",
		Any "p1",
		Any "p2",
		Any "p3",
	}
	ns "AUDIO"
	returns "void"
	doc [[!
	]]

native "0x806058BBDC136E06"
    hash "0x806058BBDC136E06"
	ns "AUDIO"
	returns "void"
	doc [[!
	]]

native "0x892B6AB8F33606F5"
    hash "0x892B6AB8F33606F5"
	jhash (0x88203DDA)
	arguments {
		Any "p0",
		Any "p1",
	}
	ns "AUDIO"
	returns "void"
	doc [[!
	]]

native "0x8A694D7A68F8DC38"
    hash "0x8A694D7A68F8DC38"
	arguments {
		Ped "p0",
		charPtr "p1",
		charPtr "p2",
	}
	ns "AUDIO"
	returns "void"
	doc [[!
<summary>
```
One call found in the b617d scripts:  
AUDIO::_8A694D7A68F8DC38(NETWORK::NET_TO_PED(l_3989._f26F[0/*1*/]), "CONV_INTERRUPT_QUIT_IT", "LESTER");  
```
</summary>
	]]

native "0x8BF907833BE275DE"
    hash "0x8BF907833BE275DE"
	arguments {
		float "p0",
		float "p1",
	}
	ns "AUDIO"
	returns "void"
	doc [[!
	]]

native "0x9AC92EED5E4793AB"
    hash "0x9AC92EED5E4793AB"
	ns "AUDIO"
	returns "void"
	doc [[!
<summary>
```
RELEASE_???  
I say RELEASE_???, as in IDA this native calls the same function as   
-'RELEASE_MISSION_AUDIO_BANK()'.  
-'RELEASE_AMBIENT_AUDIO_BANK()'.  
-'RELEASE_SCRIPT_AUDIO_BANK()'.  
However 'RELEASE_NAMED_SCRIPT_AUDIO_BANK' does not use the same function. So may be, 'RELEASE_???_AUDIO_BANK()'? Doubt it.  
Console Hash: 0xE67446E9  
```
</summary>
	]]

native "0x9A53DED9921DE990"
    hash "0x9A53DED9921DE990"
	arguments {
		Any "p0",
		Any "p1",
	}
	ns "AUDIO"
	returns "void"
	doc [[!
	]]

native "0xA097AB275061FB21"
    hash "0xA097AB275061FB21"
	jhash (0x2705C4D5)
	ns "AUDIO"
	returns "Any"
	doc [[!
	]]

native "0x9D3AF56E94C9AE98"
    hash "0x9D3AF56E94C9AE98"
	jhash (0x2F0A16D1)
	arguments {
		Any "p0",
		float "p1",
	}
	ns "AUDIO"
	returns "void"
	doc [[!
	]]

native "0xA5F377B175A699C5"
    hash "0xA5F377B175A699C5"
	jhash (0xE812925D)
	arguments {
		Any "p0",
	}
	ns "AUDIO"
	returns "void"
	doc [[!
	]]

native "0xB4BBFD9CD8B3922B"
    hash "0xB4BBFD9CD8B3922B"
	jhash (0xD24B4D0C)
	arguments {
		charPtr "p0",
	}
	ns "AUDIO"
	returns "void"
	doc [[!
<summary>
```
Found in the b617d scripts, duplicates removed:   
AUDIO::_B4BBFD9CD8B3922B("V_CARSHOWROOM_PS_WINDOW_UNBROKEN");  
AUDIO::_B4BBFD9CD8B3922B("V_CIA_PS_WINDOW_UNBROKEN");  
AUDIO::_B4BBFD9CD8B3922B("V_DLC_HEIST_APARTMENT_DOOR_CLOSED");  
AUDIO::_B4BBFD9CD8B3922B("V_FINALEBANK_PS_VAULT_INTACT");  
AUDIO::_B4BBFD9CD8B3922B("V_MICHAEL_PS_BATHROOM_WITH_WINDOW");  
```
</summary>
	]]

native "0xA5342D390CDA41D6"
    hash "0xA5342D390CDA41D6"
	arguments {
		Any "p0",
		BOOL "p1",
	}
	ns "AUDIO"
	returns "void"
	doc [[!
	]]

native "0xAA19F5572C38B564"
    hash "0xAA19F5572C38B564"
	jhash (0xB58B8FF3)
	arguments {
		AnyPtr "p0",
	}
	ns "AUDIO"
	returns "Any"
	doc [[!
	]]

native "0xB81CF134AEB56FFB"
    hash "0xB81CF134AEB56FFB"
	ns "AUDIO"
	returns "void"
	doc [[!
	]]

native "0xB542DE8C3D1CB210"
    hash "0xB542DE8C3D1CB210"
	jhash (0x789D8C6C)
	arguments {
		BOOL "p0",
	}
	ns "AUDIO"
	returns "void"
	doc [[!
	]]

native "0xBF4DC1784BE94DFA"
    hash "0xBF4DC1784BE94DFA"
	arguments {
		Any "p0",
		BOOL "p1",
		Any "p2",
	}
	ns "AUDIO"
	returns "void"
	doc [[!
	]]

native "0xBEF34B1D9624D5DD"
    hash "0xBEF34B1D9624D5DD"
	jhash (0xE0047BFD)
	arguments {
		BOOL "p0",
	}
	ns "AUDIO"
	returns "void"
	doc [[!
	]]

native "0xC1805D05E6D4FE10"
    hash "0xC1805D05E6D4FE10"
	jhash (0x7ABB89D2)
	arguments {
		Vehicle "vehicle",
	}
	ns "AUDIO"
	returns "void"
	doc [[!
	]]

native "0xC8B1B2425604CDD0"
    hash "0xC8B1B2425604CDD0"
	jhash (0x16FB88B5)
	ns "AUDIO"
	returns "Any"
	doc [[!
	]]

native "0xC15907D667F7CFB2"
    hash "0xC15907D667F7CFB2"
	jhash (0x563B635D)
	arguments {
		Vehicle "vehicle",
		BOOL "toggle",
	}
	ns "AUDIO"
	returns "void"
	doc [[!
	]]

native "0xC265DF9FB44A9FBD"
    hash "0xC265DF9FB44A9FBD"
	jhash (0x0CBAF2EF)
	arguments {
		Any "p0",
	}
	ns "AUDIO"
	returns "BOOL"
	doc [[!
	]]

native "0xCADA5A0D0702381E"
    hash "0xCADA5A0D0702381E"
	jhash (0xC70E6CFA)
	arguments {
		charPtr "p0",
		charPtr "soundset",
	}
	ns "AUDIO"
	returns "void"
	doc [[!
<summary>
```
Only call found in the b617d scripts:  
AUDIO::_CADA5A0D0702381E("BACK", "HUD_FREEMODE_SOUNDSET");  
```
</summary>
	]]

native "0xD01005D2BA2EB778"
    hash "0xD01005D2BA2EB778"
	jhash (0x59A3A17D)
	arguments {
		charPtr "p0",
	}
	ns "AUDIO"
	returns "void"
	doc [[!
<summary>
```
Similar to 0xDDC635D5B3262C56. Enable?  
```
</summary>
	]]

native "0xC8EDE9BDBCCBA6D4"
    hash "0xC8EDE9BDBCCBA6D4"
	jhash (0x55A21772)
	arguments {
		AnyPtr "p0",
		float "p1",
		float "p2",
		float "p3",
	}
	ns "AUDIO"
	returns "void"
	doc [[!
	]]

native "0xD2DCCD8E16E20997"
    hash "0xD2DCCD8E16E20997"
	arguments {
		Any "p0",
	}
	ns "AUDIO"
	returns "void"
	doc [[!
	]]

native "0xDA07819E452FFE8F"
    hash "0xDA07819E452FFE8F"
	arguments {
		Any "p0",
	}
	ns "AUDIO"
	returns "void"
	doc [[!
	]]

native "0xD2CC78CD3D0B50F9"
    hash "0xD2CC78CD3D0B50F9"
	jhash (0xC307D531)
	arguments {
		Any "p0",
		BOOL "p1",
	}
	ns "AUDIO"
	returns "void"
	doc [[!
	]]

native "0xD57AAAE0E2214D11"
    hash "0xD57AAAE0E2214D11"
	ns "AUDIO"
	returns "void"
	doc [[!
	]]

native "0xDDC635D5B3262C56"
    hash "0xDDC635D5B3262C56"
	jhash (0x0E387BFE)
	arguments {
		charPtr "p0",
	}
	ns "AUDIO"
	returns "void"
	doc [[!
<summary>
```
Similar to 0xD01005D2BA2EB778. Disable?  
```
</summary>
	]]

native "0xE4E6DD5566D28C82"
    hash "0xE4E6DD5566D28C82"
	jhash (0x7262B5BA)
	ns "AUDIO"
	returns "void"
	doc [[!
	]]

native "0xDD6BCF9E94425DF9"
    hash "0xDD6BCF9E94425DF9"
	jhash (0xD70ECC80)
	ns "AUDIO"
	returns "void"
	doc [[!
<summary>
```
Tune Backwards... ?  
```
</summary>
	]]

native "0xF154B8D1775B2DEC"
    hash "0xF154B8D1775B2DEC"
	jhash (0xD2858D8A)
	arguments {
		BOOL "p0",
	}
	ns "AUDIO"
	returns "void"
	doc [[!
	]]

native "0xE73364DB90778FFA"
    hash "0xE73364DB90778FFA"
	jhash (0x336F3D35)
	ns "AUDIO"
	returns "Any"
	doc [[!
	]]

native "0xEE066C7006C49C0A"
    hash "0xEE066C7006C49C0A"
	jhash (0x498849F3)
	arguments {
		Any "p0",
		Any "p1",
		AnyPtr "p2",
	}
	ns "AUDIO"
	returns "void"
	doc [[!
	]]

native "0xF3365489E0DD50F9"
    hash "0xF3365489E0DD50F9"
	jhash (0x8AFC488D)
	arguments {
		Any "p0",
		BOOL "p1",
	}
	ns "AUDIO"
	returns "void"
	doc [[!
	]]

native "0xFF266D1D0EB1195D"
    hash "0xFF266D1D0EB1195D"
	jhash (0x53DB6994)
	ns "AUDIO"
	returns "void"
	doc [[!
<summary>
```
Tune Forward... ?  
```
</summary>
	]]

native "0xF1F8157B8C3F171C"
    hash "0xF1F8157B8C3F171C"
	jhash (0x1C0C5E4C)
	arguments {
		Any "p0",
		charPtr "p1",
		charPtr "p2",
	}
	ns "AUDIO"
	returns "void"
	doc [[!
<summary>
```
2 calls found in the b617d scripts:  
AUDIO::_F1F8157B8C3F171C(l_A42, "Franklin_Bike_Rev", "BIG_SCORE_3A_SOUNDS");  
AUDIO::_F1F8157B8C3F171C(l_166, "Trevor_Revs_Off", "PALETO_SCORE_SETUP_SOUNDS");  
```
</summary>
	]]

native "OVERRIDE_TREVOR_RAGE"
    hash "0x13AD665062541A7E"
	jhash (0x05B9B5CF)
	arguments {
		AnyPtr "p0",
	}
	ns "AUDIO"
	returns "void"
	doc [[!
	]]

native "0xFBE20329593DEC9D"
    hash "0xFBE20329593DEC9D"
	jhash (0x53FC3FEC)
	arguments {
		Any "p0",
		Any "p1",
		Any "p2",
		Any "p3",
	}
	ns "AUDIO"
	returns "void"
	doc [[!
	]]

native "OVERRIDE_UNDERWATER_STREAM"
    hash "0xF2A9CDABCEA04BD6"
	jhash (0x9A083B7E)
	arguments {
		AnyPtr "p0",
		BOOL "p1",
	}
	ns "AUDIO"
	returns "void"
	doc [[!
	]]

native "PAUSE_SCRIPTED_CONVERSATION"
    hash "0x8530AD776CD72B12"
	jhash (0xE2C9C6F8)
	arguments {
		BOOL "p0",
	}
	ns "AUDIO"
	returns "void"
	doc [[!
	]]

native "_PLAY_AMBIENT_SPEECH1"
    hash "0x8E04FEDD28D42462"
	jhash (0x5C57B85D)
	arguments {
		Ped "ped",
		charPtr "speechName",
		charPtr "speechParam",
	}
	ns "AUDIO"
	returns "void"
	doc [[!
<summary>
```
Plays ambient speech. See also _0x444180DB.  
ped: The ped to play the ambient speech.  
speechName: Name of the speech to play, eg. "GENERIC_HI".  
speechParam: Can be one of the following:  
SPEECH_PARAMS_STANDARD  
SPEECH_PARAMS_ALLOW_REPEAT  
SPEECH_PARAMS_BEAT  
SPEECH_PARAMS_FORCE  
SPEECH_PARAMS_FORCE_FRONTEND  
SPEECH_PARAMS_FORCE_NO_REPEAT_FRONTEND  
SPEECH_PARAMS_FORCE_NORMAL  
SPEECH_PARAMS_FORCE_NORMAL_CLEAR  
SPEECH_PARAMS_FORCE_NORMAL_CRITICAL  
SPEECH_PARAMS_FORCE_SHOUTED  
SPEECH_PARAMS_FORCE_SHOUTED_CLEAR  
SPEECH_PARAMS_FORCE_SHOUTED_CRITICAL  
SPEECH_PARAMS_FORCE_PRELOAD_ONLY  
SPEECH_PARAMS_MEGAPHONE  
SPEECH_PARAMS_HELI  
SPEECH_PARAMS_FORCE_MEGAPHONE  
SPEECH_PARAMS_FORCE_HELI  
SPEECH_PARAMS_INTERRUPT  
SPEECH_PARAMS_INTERRUPT_SHOUTED  
SPEECH_PARAMS_INTERRUPT_SHOUTED_CLEAR  
SPEECH_PARAMS_INTERRUPT_SHOUTED_CRITICAL  
SPEECH_PARAMS_INTERRUPT_NO_FORCE  
SPEECH_PARAMS_INTERRUPT_FRONTEND  
SPEECH_PARAMS_INTERRUPT_NO_FORCE_FRONTEND  
SPEECH_PARAMS_ADD_BLIP  
SPEECH_PARAMS_ADD_BLIP_ALLOW_REPEAT  
SPEECH_PARAMS_ADD_BLIP_FORCE  
SPEECH_PARAMS_ADD_BLIP_SHOUTED  
SPEECH_PARAMS_ADD_BLIP_SHOUTED_FORCE  
SPEECH_PARAMS_ADD_BLIP_INTERRUPT  
SPEECH_PARAMS_ADD_BLIP_INTERRUPT_FORCE  
SPEECH_PARAMS_FORCE_PRELOAD_ONLY_SHOUTED  
SPEECH_PARAMS_FORCE_PRELOAD_ONLY_SHOUTED_CLEAR  
SPEECH_PARAMS_FORCE_PRELOAD_ONLY_SHOUTED_CRITICAL  
SPEECH_PARAMS_SHOUTED  
SPEECH_PARAMS_SHOUTED_CLEAR  
SPEECH_PARAMS_SHOUTED_CRITICAL  
Note: A list of Name and Parameters can be found here pastebin.com/1GZS5dCL  
Full list of speeches and voices names by some spanish shitbag: gist.github.com/alexguirre/0af600eb3d4c91ad4f900120a63b8992  
```
</summary>
	]]

native "OVERRIDE_VEH_HORN"
    hash "0x3CDC1E622CCE0356"
	jhash (0x2ACAB783)
	arguments {
		Vehicle "vehicle",
		BOOL "override",
		int "hornHash",
	}
	ns "AUDIO"
	returns "void"
	doc [[!
<summary>
Overrides the vehicle's horn hash.

When changing this hash on a vehicle, [`_GET_VEHICLE_HORN_HASH`](#_0xACB5DCCA1EC76840) will **not** return the 'overwritten' hash. It will still always return the default horn hash (same as [`GET_VEHICLE_DEFAULT_HORN`](#_0x02165D55000219AC)).

List of possible hashes (found in decompiled scripts):

|        signed |     unsigned |      hex     |
| ------------: | -----------: | :----------: |
|  `1604822495` | `1604822495` | `0x5FA7A5DF` |
| `-1262465009` | `3032502287` | `0xB4C0500F` |
|  `-889553789` | `3405413507` | `0xCAFA7C83` |
| `-1557943086` | `2737024210` | `0xA323ACD2` |
| `-1318696617` | `2976270679` | `0xB1664957` |
|    `-7740003` | `4287227293` | `0xFF89E59D` |
| `-1815146967` | `2479820329` | `0x93CF0E29` |
|  `-339919356` | `3955047940` | `0xEBBD3E04` |

Old description:

```
vehicle - the vehicle whose horn should be overwritten  
mute - p1 seems to be an option for muting the horn  
p2 - maybe a horn id, since the function AUDIO::GET_VEHICLE_DEFAULT_HORN(veh) exists?  
```
</summary>
<param name="vehicle">The vehicle you want to change the horn on.</param>
<param name="override">Must be set to true. If set to false, the default horn hash will be restored.</param>
<param name="hornHash">A horn hash.</param>
	]]

native "_PLAY_AMBIENT_SPEECH2"
    hash "0xC6941B4A3A8FBBB9"
	jhash (0x444180DB)
	arguments {
		Ped "ped",
		charPtr "speechName",
		charPtr "speechParam",
	}
	ns "AUDIO"
	returns "void"
	doc [[!
<summary>
```
Plays ambient speech. See also _0x5C57B85D.  
See _PLAY_AMBIENT_SPEECH1 for parameter specifications.  
Full list of speeches and voices names: gist.github.com/alexguirre/0af600eb3d4c91ad4f900120a63b8992  
```
</summary>
	]]

native "_PLAY_AMBIENT_SPEECH_AT_COORDS"
    hash "0xED640017ED337E45"
	jhash (0xA1A1402E)
	arguments {
		charPtr "p0",
		charPtr "p1",
		float "p2",
		float "p3",
		float "p4",
		charPtr "p5",
	}
	alias "0xED640017ED337E45"
	ns "AUDIO"
	returns "void"
	doc [[!
	]]

native "_PLAY_AMBIENT_SPEECH_WITH_VOICE"
    hash "0x3523634255FC3318"
	jhash (0x8386AE28)
	arguments {
		Ped "p0",
		charPtr "speechName",
		charPtr "voiceName",
		charPtr "speechParam",
		BOOL "p4",
	}
	ns "AUDIO"
	returns "void"
	doc [[!
<summary>
```
This is the same as _PLAY_AMBIENT_SPEECH1 and _PLAY_AMBIENT_SPEECH2 but it will allow you to play a speech file from a specific voice file. It works on players and all peds, even animals.  
EX (C#):  
GTA.Native.Function.Call(Hash._0x3523634255FC3318, Game.Player.Character, "GENERIC_INSULT_HIGH", "s_m_y_sheriff_01_white_full_01", "SPEECH_PARAMS_FORCE_SHOUTED", 0);  
The first param is the ped you want to play it on, the second is the speech name, the third is the voice name, the fourth is the speech param, and the last param is usually always 0.  
Full list of speeches and voices names: gist.github.com/alexguirre/0af600eb3d4c91ad4f900120a63b8992  
```
</summary>
	]]

native "PLAY_END_CREDITS_MUSIC"
    hash "0xCD536C4D33DCC900"
	jhash (0x8E88B3CC)
	arguments {
		BOOL "play",
	}
	ns "AUDIO"
	returns "void"
	doc [[!
	]]

native "PLAY_MISSION_COMPLETE_AUDIO"
    hash "0xB138AAB8A70D3C69"
	jhash (0x3033EA1D)
	arguments {
		charPtr "audioName",
	}
	ns "AUDIO"
	returns "void"
	doc [[!
<summary>
```
Called 38 times in the scripts. There are 5 different audioNames used.   
One unknown removed below.   
AUDIO::PLAY_MISSION_COMPLETE_AUDIO("DEAD");  
AUDIO::PLAY_MISSION_COMPLETE_AUDIO("FRANKLIN_BIG_01");  
AUDIO::PLAY_MISSION_COMPLETE_AUDIO("GENERIC_FAILED");  
AUDIO::PLAY_MISSION_COMPLETE_AUDIO("TREVOR_SMALL_01");  
```
</summary>
	]]

native "PLAY_PAIN"
    hash "0xBC9AE166038A5CEC"
	jhash (0x874BD6CB)
	arguments {
		Ped "ped",
		int "painID",
		int "p1",
	}
	ns "AUDIO"
	returns "void"
	doc [[!
<summary>
```
Needs another parameter [int p2]. The signature is PED::PLAY_PAIN(Ped ped, int painID, int p1, int p2);  
Last 2 parameters always seem to be 0.  
EX: Function.Call(Hash.PLAY_PAIN, TestPed, 6, 0, 0);  
Known Pain IDs  
________________________  
1 - Doesn't seem to do anything. Does NOT crash the game like previously said. (Latest patch)  
6 - Scream (Short)  
7 - Scared Scream (Kinda Long)  
8 - On Fire  
```
</summary>
	]]

native "PLAY_POLICE_REPORT"
    hash "0xDFEBD56D9BD1EB16"
	jhash (0x3F277B62)
	arguments {
		charPtr "name",
		float "p1",
	}
	ns "AUDIO"
	returns "Any"
	doc [[!
<summary>
```
Please change to void. (Does not return anything!)  
Plays the given police radio message.  
All found occurrences in b617d, sorted alphabetically and identical lines removed: pastebin.com/GBnsQ5hr  
```
</summary>
	]]

native "PLAY_PED_RINGTONE"
    hash "0xF9E56683CA8E11A5"
	jhash (0x1D530E47)
	arguments {
		charPtr "ringtoneName",
		Ped "ped",
		BOOL "p2",
	}
	ns "AUDIO"
	returns "void"
	doc [[!
<summary>
```
All found occurrences in b617d, sorted alphabetically and identical lines removed: pastebin.com/RFb4GTny  
AUDIO::PLAY_PED_RINGTONE("Remote_Ring", PLAYER::PLAYER_PED_ID(), 1);  
AUDIO::PLAY_PED_RINGTONE("Dial_and_Remote_Ring", PLAYER::PLAYER_PED_ID(), 1);  
```
</summary>
	]]

native "PLAY_SOUND_FROM_COORD"
    hash "0x8D8686B622B88120"
	jhash (0xCAD3E2D5)
	arguments {
		int "soundId",
		charPtr "audioName",
		float "x",
		float "y",
		float "z",
		charPtr "audioRef",
		BOOL "p6",
		int "range",
		BOOL "p8",
	}
	ns "AUDIO"
	returns "void"
	doc [[!
<summary>
```
All found occurrences in b617d, sorted alphabetically and identical lines removed: pastebin.com/eeFc5DiW  
gtaforums.com/topic/795622-audio-for-mods  
```
</summary>
	]]

native "PLAY_SOUND"
    hash "0x7FF4944CC209192D"
	jhash (0xB6E1917F)
	arguments {
		Player "soundId",
		charPtr "audioName",
		charPtr "audioRef",
		BOOL "p3",
		Any "p4",
		BOOL "p5",
	}
	ns "AUDIO"
	returns "void"
	doc [[!
<summary>
```
All found occurrences in b617d, sorted alphabetically and identical lines removed: pastebin.com/A8Ny8AHZ  
```
</summary>
	]]

native "PLAY_SOUND_FROM_ENTITY"
    hash "0xE65F427EB70AB1ED"
	jhash (0x95AE00F8)
	arguments {
		int "soundId",
		charPtr "audioName",
		Entity "entity",
		charPtr "audioRef",
		BOOL "p4",
		Any "p5",
	}
	ns "AUDIO"
	returns "void"
	doc [[!
<summary>
```
All found occurrences in b617d, sorted alphabetically and identical lines removed: pastebin.com/f2A7vTj0   
No changes made in b678d.  
gtaforums.com/topic/795622-audio-for-mods  
```
</summary>
	]]

native "PLAY_STREAM_FROM_PED"
    hash "0x89049DD63C08B5D1"
	jhash (0xA1D7FABE)
	arguments {
		Ped "ped",
	}
	alias "0x89049DD63C08B5D1"
	ns "AUDIO"
	returns "void"
	doc [[!
	]]

native "PLAY_STREAM_FRONTEND"
    hash "0x58FCE43488F9F5F4"
	jhash (0x2C2A16BC)
	ns "AUDIO"
	returns "void"
	doc [[!
	]]

native "PLAY_SOUND_FRONTEND"
    hash "0x67C540AA08E4A6F5"
	jhash (0x2E458F74)
	arguments {
		int "soundId",
		charPtr "audioName",
		charPtr "audioRef",
		BOOL "p3",
	}
	ns "AUDIO"
	returns "void"
	doc [[!
<summary>
```
list: pastebin.com/DCeRiaLJ  
All found occurrences in b617d, sorted alphabetically and identical lines removed: pastebin.com/0neZdsZ5  
```
</summary>
	]]

native "PLAY_STREAM_FROM_OBJECT"
    hash "0xEBAA9B64D76356FD"
	jhash (0xC5266BF7)
	arguments {
		Object "object",
	}
	ns "AUDIO"
	returns "void"
	doc [[!
<summary>
```
Used with AUDIO::LOAD_STREAM  
Example from finale_heist2b.c4:  
AI::TASK_SYNCHRONIZED_SCENE(l_4C8[2/*14*/], l_4C8[2/*14*/]._f7, l_30A, "push_out_vault_l", 4.0, -1.5, 5, 713, 4.0, 0);  
                    PED::SET_SYNCHRONIZED_SCENE_PHASE(l_4C8[2/*14*/]._f7, 0.0);  
                    PED::_2208438012482A1A(l_4C8[2/*14*/], 0, 0);  
                    PED::SET_PED_COMBAT_ATTRIBUTES(l_4C8[2/*14*/], 38, 1);  
                    PED::SET_BLOCKING_OF_NON_TEMPORARY_EVENTS(l_4C8[2/*14*/], 1);  
                    if (AUDIO::LOAD_STREAM("Gold_Cart_Push_Anim_01", "BIG_SCORE_3B_SOUNDS")) {  
                        AUDIO::PLAY_STREAM_FROM_OBJECT(l_36F[0/*1*/]);  
                    }  
```
</summary>
	]]

native "PLAY_SYNCHRONIZED_AUDIO_EVENT"
    hash "0x8B2FD4560E55DD2D"
	jhash (0x507F3241)
	arguments {
		Any "p0",
	}
	ns "AUDIO"
	returns "BOOL"
	doc [[!
	]]

native "PLAY_STREAM_FROM_VEHICLE"
    hash "0xB70374A758007DFA"
	jhash (0xF8E4BDA2)
	arguments {
		Vehicle "vehicle",
	}
	ns "AUDIO"
	returns "void"
	doc [[!
	]]

native "PRELOAD_SCRIPT_CONVERSATION"
    hash "0x3B3CAD6166916D87"
	jhash (0xDDF5C579)
	arguments {
		BOOL "p0",
		BOOL "p1",
		BOOL "p2",
		BOOL "p3",
	}
	ns "AUDIO"
	returns "void"
	doc [[!
	]]

native "PLAY_VEHICLE_DOOR_CLOSE_SOUND"
    hash "0x62A456AA4769EF34"
	jhash (0xBA2CF407)
	arguments {
		Vehicle "vehicle",
		int "p1",
	}
	ns "AUDIO"
	returns "void"
	doc [[!
<summary>
```
This native only comes up once. And in that one instance, p1 is "1".  
```
</summary>
	]]

native "PLAY_VEHICLE_DOOR_OPEN_SOUND"
    hash "0x3A539D52857EA82D"
	jhash (0x84930330)
	arguments {
		Vehicle "vehicle",
		int "p1",
	}
	ns "AUDIO"
	returns "void"
	doc [[!
<summary>
```
p1 appears to only be "0" or "3". I personally use "0" as p1.  
```
</summary>
	]]

native "PRELOAD_SCRIPT_PHONE_CONVERSATION"
    hash "0x6004BCB0E226AAEA"
	jhash (0x9ACB213A)
	arguments {
		BOOL "p0",
		BOOL "p1",
	}
	ns "AUDIO"
	returns "void"
	doc [[!
	]]

native "PREPARE_ALARM"
    hash "0x9D74AE343DB65533"
	jhash (0x084932E8)
	arguments {
		charPtr "alarmName",
	}
	ns "AUDIO"
	returns "BOOL"
	doc [[!
<summary>
```
Example:  
bool prepareAlarm = AUDIO::PREPARE_ALARM("PORT_OF_LS_HEIST_FORT_ZANCUDO_ALARMS");  
```
</summary>
	]]

native "PREPARE_MUSIC_EVENT"
    hash "0x1E5185B72EF5158A"
	jhash (0x534A5C1C)
	arguments {
		charPtr "eventName",
	}
	ns "AUDIO"
	returns "BOOL"
	doc [[!
<summary>
```
All music event names found in the b617d scripts: pastebin.com/GnYt0R3P  
```
</summary>
	]]

native "PREPARE_SYNCHRONIZED_AUDIO_EVENT"
    hash "0xC7ABCACA4985A766"
	jhash (0xE1D91FD0)
	arguments {
		charPtr "p0",
		Any "p1",
	}
	ns "AUDIO"
	returns "Any"
	doc [[!
	]]

native "PREPARE_SYNCHRONIZED_AUDIO_EVENT_FOR_SCENE"
    hash "0x029FE7CD1B7E2E75"
	jhash (0x7652DD49)
	arguments {
		Any "p0",
		AnyPtr "p1",
	}
	ns "AUDIO"
	returns "BOOL"
	doc [[!
	]]

native "REGISTER_SCRIPT_WITH_AUDIO"
    hash "0xC6ED9D5092438D91"
	jhash (0xA6203643)
	arguments {
		int "p0",
	}
	ns "AUDIO"
	returns "void"
	doc [[!
<summary>
**This native does absolutely nothing, just a nullsub**
</summary>
	]]

native "RELEASE_AMBIENT_AUDIO_BANK"
    hash "0x65475A218FFAA93D"
	jhash (0x8C938784)
	ns "AUDIO"
	returns "void"
	doc [[!
	]]

native "RELEASE_MISSION_AUDIO_BANK"
    hash "0x0EC92A1BF0857187"
	jhash (0x8E8824C7)
	ns "AUDIO"
	returns "void"
	doc [[!
	]]

native "RELEASE_NAMED_SCRIPT_AUDIO_BANK"
    hash "0x77ED170667F50170"
	jhash (0x16707ABC)
	arguments {
		charPtr "audioBank",
	}
	ns "AUDIO"
	returns "void"
	doc [[!
	]]

native "RELEASE_SOUND_ID"
    hash "0x353FC880830B88FA"
	jhash (0x9C080899)
	arguments {
		int "soundId",
	}
	ns "AUDIO"
	returns "void"
	doc [[!
	]]

native "RELEASE_SCRIPT_AUDIO_BANK"
    hash "0x7A2D8AD0A9EB9C3F"
	jhash (0x22F865E5)
	ns "AUDIO"
	returns "void"
	doc [[!
	]]

native "REQUEST_AMBIENT_AUDIO_BANK"
    hash "0xFE02FFBED8CA9D99"
	jhash (0x23C88BC7)
	arguments {
		charPtr "p0",
		BOOL "p1",
	}
	ns "AUDIO"
	returns "BOOL"
	doc [[!
<summary>
```
All occurrences and usages found in b617d, sorted alphabetically and identical lines removed: pastebin.com/XZ1tmGEz  
```
</summary>
	]]

native "REQUEST_SCRIPT_AUDIO_BANK"
    hash "0x2F844A8B08D76685"
	jhash (0x21322887)
	arguments {
		charPtr "p0",
		BOOL "p1",
	}
	ns "AUDIO"
	returns "BOOL"
	doc [[!
<summary>
```
All occurrences and usages found in b617d, sorted alphabetically and identical lines removed: pastebin.com/AkmDAVn6  
```
</summary>
	]]

native "REQUEST_MISSION_AUDIO_BANK"
    hash "0x7345BDD95E62E0F2"
	jhash (0x916E37CA)
	arguments {
		charPtr "p0",
		BOOL "p1",
	}
	ns "AUDIO"
	returns "BOOL"
	doc [[!
<summary>
```
All occurrences and usages found in b617d: pastebin.com/NzZZ2Tmm  
```
</summary>
	]]

native "RESET_PED_AUDIO_FLAGS"
    hash "0xF54BB7B61036F335"
	jhash (0xDF720C86)
	arguments {
		Ped "ped",
	}
	ns "AUDIO"
	returns "void"
	doc [[!
	]]

native "RESTART_SCRIPTED_CONVERSATION"
    hash "0x9AEB285D1818C9AC"
	jhash (0x6CB24B56)
	ns "AUDIO"
	returns "void"
	doc [[!
	]]

native "RESET_TREVOR_RAGE"
    hash "0xE78503B10C4314E0"
	jhash (0xE80CF0D4)
	ns "AUDIO"
	returns "void"
	doc [[!
	]]

native "SET_AGGRESSIVE_HORNS"
    hash "0x395BF71085D1B1D9"
	jhash (0x01D6EABE)
	arguments {
		BOOL "toggle",
	}
	ns "AUDIO"
	returns "void"
	doc [[!
<summary>
```
Makes pedestrians sound their horn longer, faster and more agressive when they use their horn.  
```
</summary>
	]]

native "SET_AMBIENT_VOICE_NAME"
    hash "0x6C8065A3B780185B"
	jhash (0xBD2EA1A1)
	arguments {
		Ped "ped",
		charPtr "name",
	}
	ns "AUDIO"
	returns "void"
	doc [[!
<summary>
```
Audio List  
gtaforums.com/topic/795622-audio-for-mods/  
All found occurrences in b617d, sorted alphabetically and identical lines removed: pastebin.com/FTeAj4yZ  
Yes  
```
</summary>
	]]

native "SET_AMBIENT_ZONE_LIST_STATE"
    hash "0x9748FA4DE50CCE3E"
	jhash (0xBF80B412)
	arguments {
		charPtr "p0",
		BOOL "p1",
		BOOL "p2",
	}
	ns "AUDIO"
	returns "void"
	doc [[!
	]]

native "SET_AMBIENT_ZONE_LIST_STATE_PERSISTENT"
    hash "0xF3638DAE8C4045E1"
	jhash (0x5F5A2605)
	arguments {
		charPtr "ambientZone",
		BOOL "p1",
		BOOL "p2",
	}
	ns "AUDIO"
	returns "void"
	doc [[!
<summary>
```
All occurrences found in b617d, sorted alphabetically and identical lines removed: pastebin.com/WkXDGgQL  
New Ambient Zone List (Combind with old): pastebin.com/h8BsKgUD -DasChaos  
```
</summary>
	]]

native "SET_ANIMAL_MOOD"
    hash "0xCC97B29285B1DC3B"
	jhash (0x3EA7C6CB)
	arguments {
		Ped "animal",
		int "mood",
	}
	ns "AUDIO"
	returns "void"
	doc [[!
<summary>
```
mood can be 0 or 1 (it's not a boolean value!). Effects audio of the animal.  
```
</summary>
	]]

native "SET_AMBIENT_ZONE_STATE"
    hash "0xBDA07E5950085E46"
	jhash (0x2849CAC9)
	arguments {
		AnyPtr "p0",
		BOOL "p1",
		BOOL "p2",
	}
	ns "AUDIO"
	returns "void"
	doc [[!
	]]

native "SET_AUDIO_FLAG"
    hash "0xB9EFD5C25018725A"
	jhash (0x1C09C9E0)
	arguments {
		charPtr "flagName",
		BOOL "toggle",
	}
	ns "AUDIO"
	returns "void"
	doc [[!
<summary>
```
Possible flag names:  
"ActivateSwitchWheelAudio"  
"AllowAmbientSpeechInSlowMo"  
"AllowCutsceneOverScreenFade"  
"AllowForceRadioAfterRetune"  
"AllowPainAndAmbientSpeechToPlayDuringCutscene"  
"AllowPlayerAIOnMission"  
"AllowPoliceScannerWhenPlayerHasNoControl"  
"AllowRadioDuringSwitch"  
"AllowRadioOverScreenFade"  
"AllowScoreAndRadio"  
"AllowScriptedSpeechInSlowMo"  
"AvoidMissionCompleteDelay"  
"DisableAbortConversationForDeathAndInjury"  
"DisableAbortConversationForRagdoll"  
"DisableBarks"  
"DisableFlightMusic"  
"DisableReplayScriptStreamRecording"  
"EnableHeadsetBeep"  
"ForceConversationInterrupt"  
"ForceSeamlessRadioSwitch"  
"ForceSniperAudio"  
"FrontendRadioDisabled"  
"HoldMissionCompleteWhenPrepared"  
"IsDirectorModeActive"  
"IsPlayerOnMissionForSpeech"  
"ListenerReverbDisabled"  
"LoadMPData"  
"MobileRadioInGame"  
"OnlyAllowScriptTriggerPoliceScanner"  
"PlayMenuMusic"  
"PoliceScannerDisabled"  
"ScriptedConvListenerMaySpeak"  
"SpeechDucksScore"  
"SuppressPlayerScubaBreathing"  
"WantedMusicDisabled"  
"WantedMusicOnMission"  
-------------------------------  
No added flag names between b393d and b573d, including b573d.  
#######################################################################  
"IsDirectorModeActive" is an audio flag which will allow you to play speech infinitely without any pauses like in Director Mode.  
-----------------------------------------------------------------------  
All flag IDs and hashes:  
ID: 01 | Hash: 0x20A7858F  
ID: 02 | Hash: 0xA11C2259  
ID: 03 | Hash: 0x08DE4700  
ID: 04 | Hash: 0x989F652F  
ID: 05 | Hash: 0x3C9E76BA  
ID: 06 | Hash: 0xA805FEB0  
ID: 07 | Hash: 0x4B94EA26  
ID: 08 | Hash: 0x803ACD34  
ID: 09 | Hash: 0x7C741226  
ID: 10 | Hash: 0x31DB9EBD  
ID: 11 | Hash: 0xDF386F18  
ID: 12 | Hash: 0x669CED42  
ID: 13 | Hash: 0x51F22743  
ID: 14 | Hash: 0x2052B35C  
ID: 15 | Hash: 0x071472DC  
ID: 16 | Hash: 0xF9928BCC  
ID: 17 | Hash: 0x7ADBDD48  
ID: 18 | Hash: 0xA959BA1A  
ID: 19 | Hash: 0xBBE89B60  
ID: 20 | Hash: 0x87A08871  
ID: 21 | Hash: 0xED1057CE  
ID: 22 | Hash: 0x1584AD7A  
ID: 23 | Hash: 0x8582CFCB  
ID: 24 | Hash: 0x7E5E2FB0  
ID: 25 | Hash: 0xAE4F72DB  
ID: 26 | Hash: 0x5D16D1FA  
ID: 27 | Hash: 0x06B2F4B8  
ID: 28 | Hash: 0x5D4CDC96  
ID: 29 | Hash: 0x8B5A48BA  
ID: 30 | Hash: 0x98FBD539  
ID: 31 | Hash: 0xD8CB0473  
ID: 32 | Hash: 0x5CBB4874  
ID: 33 | Hash: 0x2E9F93A9  
ID: 34 | Hash: 0xD93BEA86  
ID: 35 | Hash: 0x92109B7D  
ID: 36 | Hash: 0xB7EC9E4D  
ID: 37 | Hash: 0xCABDBB1D  
ID: 38 | Hash: 0xB3FD4A52  
ID: 39 | Hash: 0x370D94E5  
ID: 40 | Hash: 0xA0F7938F  
ID: 41 | Hash: 0xCBE1CE81  
ID: 42 | Hash: 0xC27F1271  
ID: 43 | Hash: 0x9E3258EB  
ID: 44 | Hash: 0x551CDA5B  
ID: 45 | Hash: 0xCB6D663C  
ID: 46 | Hash: 0x7DACE87F  
ID: 47 | Hash: 0xF9DE416F  
ID: 48 | Hash: 0x882E6E9E  
ID: 49 | Hash: 0x16B447E7  
ID: 50 | Hash: 0xBD867739  
ID: 51 | Hash: 0xA3A58604  
ID: 52 | Hash: 0x7E046BBC  
ID: 53 | Hash: 0xD95FDB98  
ID: 54 | Hash: 0x5842C0ED  
ID: 55 | Hash: 0x285FECC6  
ID: 56 | Hash: 0x9351AC43  
ID: 57 | Hash: 0x50032E75  
ID: 58 | Hash: 0xAE6D0D59  
ID: 59 | Hash: 0xD6351785  
ID: 60 | Hash: 0xD25D71BC  
ID: 61 | Hash: 0x1F7F6423  
ID: 62 | Hash: 0xE24C3AA6  
ID: 63 | Hash: 0xBFFDD2B7  
```
</summary>
	]]

native "SET_AMBIENT_ZONE_STATE_PERSISTENT"
    hash "0x1D6650420CEC9D3B"
	jhash (0xC1FFB672)
	arguments {
		charPtr "ambientZone",
		BOOL "p1",
		BOOL "p2",
	}
	ns "AUDIO"
	returns "void"
	doc [[!
<summary>
```
All occurrences found in b617d, sorted alphabetically and identical lines removed: pastebin.com/jYvw7N1S  
New Ambient Zone List (Combind with old): pastebin.com/h8BsKgUD -DasChaos  
```
</summary>
	]]

native "SET_AUDIO_VEHICLE_PRIORITY"
    hash "0xE5564483E407F914"
	jhash (0x271A9766)
	arguments {
		Vehicle "vehicle",
		Any "p1",
	}
	ns "AUDIO"
	returns "void"
	doc [[!
	]]

native "SET_EMITTER_RADIO_STATION"
    hash "0xACF57305B12AF907"
	jhash (0x87431585)
	arguments {
		charPtr "emitterName",
		charPtr "radioStation",
	}
	ns "AUDIO"
	returns "void"
	doc [[!
	]]

native "SET_AUDIO_SCENE_VARIABLE"
    hash "0xEF21A9EF089A2668"
	jhash (0x19BB3CE8)
	arguments {
		charPtr "scene",
		charPtr "variable",
		float "value",
	}
	ns "AUDIO"
	returns "void"
	doc [[!
	]]

native "SET_FRONTEND_RADIO_ACTIVE"
    hash "0xF7F26C6E9CC9EBB8"
	jhash (0xB1172075)
	arguments {
		BOOL "active",
	}
	ns "AUDIO"
	returns "void"
	doc [[!
	]]

native "SET_CUTSCENE_AUDIO_OVERRIDE"
    hash "0x3B4BF5F0859204D9"
	jhash (0xCE1332B7)
	arguments {
		charPtr "p0",
	}
	ns "AUDIO"
	returns "void"
	doc [[!
<summary>
```
All occurrences found in b617d, sorted alphabetically and identical lines removed:   
AUDIO::SET_CUTSCENE_AUDIO_OVERRIDE("_AK");  
AUDIO::SET_CUTSCENE_AUDIO_OVERRIDE("_CUSTOM");  
AUDIO::SET_CUTSCENE_AUDIO_OVERRIDE("_TOOTHLESS");  
```
</summary>
	]]

native "SET_HORN_ENABLED"
    hash "0x76D683C108594D0E"
	jhash (0x6EB92D05)
	arguments {
		Vehicle "vehicle",
		BOOL "toggle",
	}
	ns "AUDIO"
	returns "void"
	doc [[!
	]]

native "SET_GPS_ACTIVE"
    hash "0x3BD3F52BA9B1E4E8"
	jhash (0x0FC3379A)
	arguments {
		BOOL "active",
	}
	ns "AUDIO"
	returns "void"
	doc [[!
	]]

native "SET_MICROPHONE_POSITION"
    hash "0xB6AE90EDDE95C762"
	jhash (0xAD7BB191)
	arguments {
		BOOL "p0",
		float "x1",
		float "y1",
		float "z1",
		float "x2",
		float "y2",
		float "z2",
		float "x3",
		float "y3",
		float "z3",
	}
	ns "AUDIO"
	returns "void"
	doc [[!
<summary>
```
If this is the correct name, what microphone? I know your TV isn't going to reach out and adjust your headset so..  
```
</summary>
	]]

native "SET_INITIAL_PLAYER_STATION"
    hash "0x88795F13FACDA88D"
	jhash (0x9B069233)
	arguments {
		charPtr "radioStation",
	}
	ns "AUDIO"
	returns "void"
	doc [[!
	]]

native "SET_PED_IS_DRUNK"
    hash "0x95D2D383D5396B8A"
	jhash (0xD2EA77A3)
	arguments {
		Ped "ped",
		BOOL "toggle",
	}
	ns "AUDIO"
	returns "void"
	doc [[!
<summary>
```
Sets the ped drunk sounds.  Only works with PLAYER_PED_ID  
====================================================  
As mentioned above, this only sets the drunk sound to ped/player.  
To give the Ped a drunk effect with drunk walking animation try using SET_PED_MOVEMENT_CLIPSET  
Below is an example  
if (!Function.Call<bool>(Hash.HAS_ANIM_SET_LOADED, "move_m@drunk@verydrunk"))  
                {  
                    Function.Call(Hash.REQUEST_ANIM_SET, "move_m@drunk@verydrunk");  
                }  
                Function.Call(Hash.SET_PED_MOVEMENT_CLIPSET, Ped.Handle, "move_m@drunk@verydrunk", 0x3E800000);  
And to stop the effect use  
RESET_PED_MOVEMENT_CLIPSET  
```
</summary>
	]]

native "SET_MOBILE_PHONE_RADIO_STATE"
    hash "0xBF286C554784F3DF"
	jhash (0xE1E0ED34)
	arguments {
		BOOL "state",
	}
	ns "AUDIO"
	returns "void"
	doc [[!
	]]

native "SET_MOBILE_RADIO_ENABLED_DURING_GAMEPLAY"
    hash "0x1098355A16064BB3"
	jhash (0x990085F0)
	arguments {
		BOOL "Toggle",
	}
	ns "AUDIO"
	returns "void"
	doc [[!
<summary>
```
Enables Radio on phone.  
```
</summary>
	]]

native "_SET_PED_MUTE"
    hash "0x7A73D05A607734C7"
	arguments {
		Ped "ped",
	}
	alias "0x7A73D05A607734C7"
	ns "AUDIO"
	returns "void"
	doc [[!
<summary>
```
Stops speech.  
```
</summary>
	]]

native "_SET_PED_SCREAM"
    hash "0x40CF0D12D142A9E8"
	arguments {
		Ped "ped",
	}
	alias "0x40CF0D12D142A9E8"
	ns "AUDIO"
	returns "void"
	doc [[!
<summary>
```
Assigns some ambient voice to the ped.  
```
</summary>
	]]

native "_SET_PED_TALK"
    hash "0x4ADA3F19BE4A6047"
	jhash (0x13777A0B)
	arguments {
		Ped "ped",
	}
	alias "0x4ADA3F19BE4A6047"
	ns "AUDIO"
	returns "void"
	doc [[!
<summary>
```
Speech related.  
```
</summary>
	]]

native "SET_PLAYER_ANGRY"
    hash "0xEA241BB04110F091"
	jhash (0x782CA58D)
	arguments {
		Ped "playerPed",
		BOOL "disabled",
	}
	ns "AUDIO"
	returns "void"
	doc [[!
<summary>
```
Hash collision! Disables speech.  
```
</summary>
	]]

native "SET_RADIO_AUTO_UNFREEZE"
    hash "0xC1AA9F53CE982990"
	jhash (0xA40196BF)
	arguments {
		BOOL "toggle",
	}
	ns "AUDIO"
	returns "void"
	doc [[!
	]]

native "SET_RADIO_TO_STATION_NAME"
    hash "0xC69EDA28699D5107"
	jhash (0x7B36E35E)
	arguments {
		charPtr "stationName",
	}
	ns "AUDIO"
	returns "void"
	doc [[!
<summary>
```
For a full list, see here: pastebin.com/Kj9t38KF  
```
</summary>
	]]

native "SET_RADIO_TO_STATION_INDEX"
    hash "0xA619B168B8A8570F"
	jhash (0x1D82766D)
	arguments {
		int "radioStation",
	}
	ns "AUDIO"
	returns "void"
	doc [[!
<summary>
```
Sets radio station by index.  
```
</summary>
	]]

native "SET_STATIC_EMITTER_ENABLED"
    hash "0x399D2D3B33F1B8EB"
	jhash (0x91F72E92)
	arguments {
		charPtr "emitterName",
		BOOL "toggle",
	}
	ns "AUDIO"
	returns "void"
	doc [[!
<summary>
```
Example:  
AUDIO::SET_STATIC_EMITTER_ENABLED((Any*)"LOS_SANTOS_VANILLA_UNICORN_01_STAGE", false);	AUDIO::SET_STATIC_EMITTER_ENABLED((Any*)"LOS_SANTOS_VANILLA_UNICORN_02_MAIN_ROOM", false);	AUDIO::SET_STATIC_EMITTER_ENABLED((Any*)"LOS_SANTOS_VANILLA_UNICORN_03_BACK_ROOM", false);  
This turns off surrounding sounds not connected directly to peds.  
```
</summary>
	]]

native "SET_RADIO_TRACK"
    hash "0xB39786F201FEE30B"
	jhash (0x76E96212)
	arguments {
		charPtr "radioStation",
		charPtr "radioTrack",
	}
	ns "AUDIO"
	returns "void"
	doc [[!
<summary>
```
Only found this one in the decompiled scripts:  
AUDIO::SET_RADIO_TRACK("RADIO_03_HIPHOP_NEW", "ARM1_RADIO_STARTS");  
```
</summary>
	]]

native "SET_USER_RADIO_CONTROL_ENABLED"
    hash "0x19F21E63AE6EAE4E"
	jhash (0x52E054CE)
	arguments {
		BOOL "toggle",
	}
	ns "AUDIO"
	returns "void"
	doc [[!
	]]

native "SET_SIREN_WITH_NO_DRIVER"
    hash "0x1FEF0683B96EBCF2"
	jhash (0x77182D58)
	arguments {
		ObjectPtr "vehicle",
		ScrHandlePtr "toggle",
	}
	ns "AUDIO"
	returns "void"
	doc [[!
	]]

native "SET_VARIABLE_ON_STREAM"
    hash "0x2F9D3834AEB9EF79"
	jhash (0xF67BB44C)
	arguments {
		charPtr "p0",
		float "p1",
	}
	ns "AUDIO"
	returns "void"
	doc [[!
<summary>
```
From the scripts, p0:  
"ArmWrestlingIntensity",  
"INOUT",  
"Monkey_Stream",  
"ZoomLevel"  
```
</summary>
	]]

native "_SET_SYNCHRONIZED_AUDIO_EVENT_POSITION_THIS_FRAME"
    hash "0x950A154B8DAB6185"
	jhash (0xA17F9AB0)
	arguments {
		charPtr "p0",
		Entity "p1",
	}
	alias "0x950A154B8DAB6185"
	ns "AUDIO"
	returns "void"
	doc [[!
<summary>
```
Sets the position of the audio event to the entity's position for one frame(?)  
if (l_8C3 == 0) {  
    sub_27fd1(0, -1, 1);  
    if (PED::IS_SYNCHRONIZED_SCENE_RUNNING(l_87D)) {  
        AUDIO::STOP_SYNCHRONIZED_AUDIO_EVENT(l_87D);  
    }  
    if (sub_7dd(l_A00)) {  
        AUDIO::_950A154B8DAB6185("PAP2_IG1_POPPYSEX", l_A00);  
    }  
    sub_91c("TK************ SETTING SYNCH SCENE AUDIO POSITION THIS FRAME ************TK");  
    l_8C3 = 1;  
}  
--  
Found in the b617d scripts, duplicates removed:   
AUDIO::_950A154B8DAB6185("CAR_5_IG_6", l_7FE[1/*1*/]);  
AUDIO::_950A154B8DAB6185("EX03_TRAIN_BIKE_LAND",   PLAYER::PLAYER_PED_ID());  
AUDIO::_950A154B8DAB6185("FBI_2_MCS_1_LeadIn", l_40[2/*1*/]);  
AUDIO::_950A154B8DAB6185("FIN_C2_MCS_1", l_24C[0/*1*/]);  
AUDIO::_950A154B8DAB6185("MNT_DNC", l_5F);  
AUDIO::_950A154B8DAB6185("PAP2_IG1_POPPYSEX", l_A00);  
```
</summary>
	]]

native "SET_VEHICLE_BOOST_ACTIVE"
    hash "0x4A04DE7CAB2739A1"
	jhash (0x072F15F2)
	arguments {
		Vehicle "vehicle",
		BOOL "Toggle",
	}
	ns "AUDIO"
	returns "void"
	doc [[!
<summary>
```
SET_VEHICLE_BOOST_ACTIVE(vehicle, 1, 0);  
SET_VEHICLE_BOOST_ACTIVE(vehicle, 0, 0);   
Will give a boost-soundeffect.  
```
</summary>
	]]

native "SET_VEHICLE_RADIO_LOUD"
    hash "0xBB6F1CAEC68B0BCE"
	jhash (0x8D9EDD99)
	arguments {
		Vehicle "vehicle",
		BOOL "toggle",
	}
	ns "AUDIO"
	returns "void"
	doc [[!
	]]

native "SET_VARIABLE_ON_SOUND"
    hash "0xAD6B3148A78AE9B6"
	jhash (0x606EE5FA)
	arguments {
		int "soundId",
		charPtr "variableName",
		float "value",
	}
	ns "AUDIO"
	returns "void"
	doc [[!
	]]

native "SKIP_RADIO_FORWARD"
    hash "0x6DDBBDD98E2E9C25"
	jhash (0x10D36630)
	ns "AUDIO"
	returns "void"
	doc [[!
	]]

native "SET_VEH_RADIO_STATION"
    hash "0x1B9C0099CB942AC6"
	jhash (0xE391F55F)
	arguments {
		Vehicle "vehicle",
		charPtr "radioStation",
	}
	ns "AUDIO"
	returns "void"
	doc [[!
<summary>
```
For a full list, see here: pastebin.com/Kj9t38KF  
```
</summary>
	]]

native "_SOUND_VEHICLE_HORN_THIS_FRAME"
    hash "0x9C11908013EA4715"
	jhash (0xDE8BA3CD)
	arguments {
		Vehicle "vehicle",
	}
	alias "0x9C11908013EA4715"
	ns "AUDIO"
	returns "void"
	doc [[!
	]]

native "SET_VEHICLE_RADIO_ENABLED"
    hash "0x3B988190C0AA6C0B"
	jhash (0x6F812CAB)
	arguments {
		Vehicle "vehicle",
		BOOL "toggle",
	}
	ns "AUDIO"
	returns "void"
	doc [[!
<summary>
```
can't seem to enable radio on cop cars etc  
```
</summary>
	]]

native "SPECIAL_FRONTEND_EQUAL"
    hash "0x21442F412E8DE56B"
	jhash (0x6FE5D865)
	arguments {
		float "x",
		float "y",
		float "z",
	}
	ns "AUDIO"
	returns "void"
	doc [[!
<summary>
```
Hash collision!!! PLAY_STREAM_FROM_POSITION is the correct name!  
```
</summary>
	]]

native "SKIP_TO_NEXT_SCRIPTED_CONVERSATION_LINE"
    hash "0x9663FE6B7A61EB00"
	jhash (0x85C98304)
	ns "AUDIO"
	returns "void"
	doc [[!
	]]

native "START_AUDIO_SCENE"
    hash "0x013A80FC08F6E4F2"
	jhash (0xE48D757B)
	arguments {
		charPtr "scene",
	}
	ns "AUDIO"
	returns "BOOL"
	doc [[!
<summary>
```
Used to prepare a scene where the surrounding sound is muted or a bit changed. This does not play any sound.  
List of all usable scene names found in b617d. Sorted alphabetically and identical names removed: pastebin.com/MtM9N9CC  
```
</summary>
	]]

native "START_ALARM"
    hash "0x0355EF116C4C97B2"
	jhash (0x703F524B)
	arguments {
		charPtr "alarmName",
		BOOL "p2",
	}
	ns "AUDIO"
	returns "void"
	doc [[!
<summary>
```
Example:  
This will start the alarm at Fort Zancudo.  
AUDIO::START_ALARM("PORT_OF_LS_HEIST_FORT_ZANCUDO_ALARMS", 1);  
First parameter (char) is the name of the alarm.  
Second parameter (bool) is unknown, it does not seem to make a difference if this one is 0 or 1.  
----------  
It DOES make a difference but it has to do with the duration or something I dunno yet  
----------  
 Found in the b617d scripts:  
 AUDIO::START_ALARM("AGENCY_HEIST_FIB_TOWER_ALARMS", 0);  
 AUDIO::START_ALARM("AGENCY_HEIST_FIB_TOWER_ALARMS_UPPER", 1);  
 AUDIO::START_ALARM("AGENCY_HEIST_FIB_TOWER_ALARMS_UPPER_B", 0);  
 AUDIO::START_ALARM("BIG_SCORE_HEIST_VAULT_ALARMS", a_0);  
 AUDIO::START_ALARM("FBI_01_MORGUE_ALARMS", 1);  
 AUDIO::START_ALARM("FIB_05_BIOTECH_LAB_ALARMS", 0);  
 AUDIO::START_ALARM("JEWEL_STORE_HEIST_ALARMS", 0);  
 AUDIO::START_ALARM("PALETO_BAY_SCORE_ALARM", 1);  
 AUDIO::START_ALARM("PALETO_BAY_SCORE_CHICKEN_FACTORY_ALARM", 0);  
 AUDIO::START_ALARM("PORT_OF_LS_HEIST_FORT_ZANCUDO_ALARMS", 1);  
 AUDIO::START_ALARM("PORT_OF_LS_HEIST_SHIP_ALARMS", 0);  
 AUDIO::START_ALARM("PRISON_ALARMS", 0);  
 AUDIO::START_ALARM("PROLOGUE_VAULT_ALARMS", 0);  
```
</summary>
	]]

native "START_SCRIPT_CONVERSATION"
    hash "0x6B17C62C9635D2DC"
	jhash (0xE5DE7D9D)
	arguments {
		BOOL "p0",
		BOOL "p1",
		BOOL "p2",
		BOOL "p3",
	}
	ns "AUDIO"
	returns "void"
	doc [[!
	]]

native "START_PRELOADED_CONVERSATION"
    hash "0x23641AFE870AF385"
	jhash (0xA170261B)
	ns "AUDIO"
	returns "void"
	doc [[!
	]]

native "STOP_ALARM"
    hash "0xA1CADDCD98415A41"
	jhash (0xF987BE8C)
	arguments {
		charPtr "alarmName",
		BOOL "toggle",
	}
	ns "AUDIO"
	returns "void"
	doc [[!
<summary>
```
Example:  
This will stop the alarm at Fort Zancudo.  
AUDIO::STOP_ALARM("PORT_OF_LS_HEIST_FORT_ZANCUDO_ALARMS", 1);  
First parameter (char) is the name of the alarm.  
Second parameter (bool) has to be true (1) to have any effect.  
```
</summary>
	]]

native "START_SCRIPT_PHONE_CONVERSATION"
    hash "0x252E5F915EABB675"
	jhash (0x38E42D07)
	arguments {
		BOOL "p0",
		BOOL "p1",
	}
	ns "AUDIO"
	returns "void"
	doc [[!
	]]

native "STOP_AUDIO_SCENE"
    hash "0xDFE8422B3B94E688"
	jhash (0xA08D8C58)
	arguments {
		charPtr "scene",
	}
	ns "AUDIO"
	returns "void"
	doc [[!
	]]

native "STOP_ALL_ALARMS"
    hash "0x2F794A877ADD4C92"
	jhash (0xC3CB9DC6)
	arguments {
		BOOL "stop",
	}
	ns "AUDIO"
	returns "void"
	doc [[!
	]]

native "STOP_CURRENT_PLAYING_AMBIENT_SPEECH"
    hash "0xB8BEC0CA6F0EDB0F"
	jhash (0xBB8E64BF)
	arguments {
		Ped "ped",
	}
	ns "AUDIO"
	returns "void"
	doc [[!
<summary>
```
Needs to be called every frame.  
```
</summary>
	]]

native "STOP_AUDIO_SCENES"
    hash "0xBAC7FC81A75EC1A1"
	jhash (0xF6C7342A)
	ns "AUDIO"
	returns "void"
	doc [[!
<summary>
```
??  
```
</summary>
	]]

native "STOP_PED_RINGTONE"
    hash "0x6C5AE23EFA885092"
	jhash (0xFEEA107C)
	arguments {
		Ped "ped",
	}
	ns "AUDIO"
	returns "void"
	doc [[!
	]]

native "STOP_PED_SPEAKING"
    hash "0x9D64D7405520E3D3"
	jhash (0xFF92B49D)
	arguments {
		Ped "ped",
		BOOL "shaking",
	}
	ns "AUDIO"
	returns "void"
	doc [[!
	]]

native "STOP_SOUND"
    hash "0xA3B0C41BA5CC0BB5"
	jhash (0xCD7F4030)
	arguments {
		int "soundId",
	}
	ns "AUDIO"
	returns "void"
	doc [[!
	]]

native "STOP_SCRIPTED_CONVERSATION"
    hash "0xD79DEEFB53455EBA"
	jhash (0xAB77DA7D)
	arguments {
		BOOL "p0",
	}
	ns "AUDIO"
	returns "Any"
	doc [[!
	]]

native "STOP_SYNCHRONIZED_AUDIO_EVENT"
    hash "0x92D6A88E64A94430"
	jhash (0xADEED2B4)
	arguments {
		Any "p0",
	}
	ns "AUDIO"
	returns "BOOL"
	doc [[!
	]]

native "STOP_STREAM"
    hash "0xA4718A1419D18151"
	jhash (0xD1E364DE)
	ns "AUDIO"
	returns "void"
	doc [[!
	]]

native "UNFREEZE_RADIO_STATION"
    hash "0xFC00454CF60B91DD"
	jhash (0x4D46202C)
	arguments {
		charPtr "radioStation",
	}
	ns "AUDIO"
	returns "void"
	doc [[!
	]]

native "UNREGISTER_SCRIPT_WITH_AUDIO"
    hash "0xA8638BE228D4751A"
	jhash (0x66728EFE)
	ns "AUDIO"
	returns "void"
	doc [[!
<summary>
**This native does absolutely nothing, just a nullsub**

```
On last-gen this just runs blr and this func is called by several other functions other then the native's table.  
```
</summary>
	]]

native "TRIGGER_MUSIC_EVENT"
    hash "0x706D57B0F50DA710"
	jhash (0xB6094948)
	arguments {
		charPtr "eventName",
	}
	ns "AUDIO"
	returns "BOOL"
	doc [[!
<summary>
```
List of all usable event names found in b617d used with this native. Sorted alphabetically and identical names removed: pastebin.com/RzDFmB1W  
All music event names found in the b617d scripts: pastebin.com/GnYt0R3P  
```
</summary>
	]]

native "UNLOCK_MISSION_NEWS_STORY"
    hash "0xB165AB7C248B2DC1"
	jhash (0xCCD9ABE4)
	arguments {
		int "newsStory",
	}
	ns "AUDIO"
	returns "void"
	doc [[!
<summary>
```
I see this as a native that would of been used back in GTA III when you finally unlocked the bridge to the next island and such.  
```
</summary>
	]]

native "USE_SIREN_AS_HORN"
    hash "0xFA932DE350266EF8"
	jhash (0xC6BC16F3)
	arguments {
		Vehicle "vehicle",
		BOOL "toggle",
	}
	ns "AUDIO"
	returns "void"
	doc [[!
	]]

native "_SET_RADIO_STATION_DISABLED"
    hash "0x94F2E83EAD7E6B82"
	arguments {
		charPtr "stationName",
		BOOL "Toggle",
	}
	alias "0x94f2e83ead7e6b82"
	ns "HUD"
	returns "void"
	doc [[!
<summary>
Disables the radio station from the radio wheel.  
Note: You cannot disable LSUR, WCTR and Blaine County Radio.  

List of known station names;

```
RADIO_01_CLASS_ROCK  
RADIO_02_POP  
RADIO_03_HIPHOP_NEW  
RADIO_04_PUNK  
RADIO_05_TALK_01  
RADIO_06_COUNTRY  
RADIO_07_DANCE_01  
RADIO_08_MEXICAN  
RADIO_09_HIPHOP_OLD  
RADIO_12_REGGAE  
RADIO_13_JAZZ  
RADIO_14_DANCE_02  
RADIO_15_MOTOWN  
RADIO_20_THELAB  
RADIO_16_SILVERLAKE  
RADIO_17_FUNK  
RADIO_18_90S_ROCK  
RADIO_21_DLC_XM17  
RADIO_22_DLC_BATTLE_MIX1_RADIO  
RADIO_19_USER 
HIDDEN_RADIO_AMBIENT_TV  
HIDDEN_RADIO_AMBIENT_TV_BRIGHT  
HIDDEN_RADIO_01_CLASS_ROCK  
HIDDEN_RADIO_ADVERTS  
HIDDEN_RADIO_02_POP  
HIDDEN_RADIO_03_HIPHOP_NEW  
HIDDEN_RADIO_04_PUNK  
HIDDEN_RADIO_06_COUNTRY  
HIDDEN_RADIO_07_DANCE_01  
HIDDEN_RADIO_09_HIPHOP_OLD  
HIDDEN_RADIO_12_REGGAE  
HIDDEN_RADIO_15_MOTOWN  
HIDDEN_RADIO_16_SILVERLAKE  
RADIO_22_DLC_BATTLE_MIX1_CLUB  
HIDDEN_RADIO_STRIP_CLUB  
DLC_BATTLE_MIX1_CLUB_PRIV  
HIDDEN_RADIO_BIKER_CLASSIC_ROCK  
DLC_BATTLE_MIX2_CLUB_PRIV  
HIDDEN_RADIO_BIKER_MODERN_ROCK  
RADIO_23_DLC_BATTLE_MIX2_CLUB  
RADIO_25_DLC_BATTLE_MIX4_CLUB  
DLC_BATTLE_MIX3_CLUB_PRIV  
RADIO_26_DLC_BATTLE_CLUB_WARMUP  
HIDDEN_RADIO_BIKER_PUNK  
RADIO_24_DLC_BATTLE_MIX3_CLUB  
DLC_BATTLE_MIX4_CLUB_PRIV  
HIDDEN_RADIO_BIKER_HIP_HOP  
```
</summary>
<param name="stationName">The name of the radio station</param>
<param name="Toggle">Toggle the station on/off</param>
	]]

native "_ABORT_TEXT_CHAT"
    hash "0x1AC8F4AD40E22127"
	ns "HUD"
	returns "void"
	doc [[!
<summary>
```
Aborts the current message in the text chat.  
```
</summary>
	]]

native "ACTIVATE_FRONTEND_MENU"
    hash "0xEF01D36B9C9D0C7B"
	jhash (0x01D83872)
	arguments {
		Hash "menuhash",
		BOOL "Toggle_Pause",
		int "component",
	}
	ns "HUD"
	returns "void"
	doc [[!
<summary>
```
Does stuff like this:  
gyazo.com/7fcb78ea3520e3dbc5b2c0c0f3712617  
Example:  
int GetHash = GET_HASH_KEY("fe_menu_version_corona_lobby");  
ACTIVATE_FRONTEND_MENU(GetHash, 0, -1);  
BOOL p1 is a toggle to define the game in pause.  
int p2 is unknown but -1 always works, not sure why though.  
[30/03/2017] ins1de :  
the int p2 is actually a component variable. When the pause menu is visible, it opens the tab related to it.  
Example : Function.Call(Hash.ACTIVATE_FRONTEND_MENU,-1171018317, 0, 42);  
Result : Opens the "Online" tab without pausing the menu, with -1 it opens the map.  
```
</summary>
	]]

native "_ADD_BLIP_FOR_AREA"
    hash "0xCE5D0E5E315DB238"
	arguments {
		float "x",
		float "y",
		float "z",
		float "width",
		float "height",
	}
	alias "0xCE5D0E5E315DB238"
	ns "HUD"
	returns "Blip"
	doc [[!
<summary>
Adds a rectangular blip for the specified coordinates/area.

It is recommended to use [SET_BLIP_ROTATION](#_0xF87683CDF73C3F6E) and [SET_BLIP_COLOUR](#_0x03D7FB09E75D6B7E) to make the blip not rotate along with the camera.

By default, the blip will show as a _regular_ blip with the specified color/sprite if it is outside of the minimap view.

Example image:
![minimap](https://w.wew.wtf/pdcjig.png)
![big map](https://w.wew.wtf/zgcjcm.png)

(Native name is _likely_ to actually be ADD_BLIP_FOR_AREA, but due to the usual reasons this can't be confirmed)
</summary>
<param name="x">The X coordinate of the center of the blip.</param>
<param name="y">The Y coordinate of the center of the blip.</param>
<param name="z">The Z coordinate of the center of the blip.</param>
<param name="width">The width of the blip.</param>
<param name="height">The height of the blip.</param>
<returns>A handle to the blip.</returns>
	]]

native "ADD_BLIP_FOR_ENTITY"
    hash "0x5CDE92C702A8FCE7"
	jhash (0x30822554)
	arguments {
		Entity "entity",
	}
	ns "HUD"
	returns "Blip"
	doc [[!
<summary>
```
Returns red ( default ) blip attached to entity.  
Example:  
Blip blip; //Put this outside your case or option  
blip = UI::ADD_BLIP_FOR_ENTITY(YourPedOrBodyguardName);  
UI::SET_BLIP_AS_FRIENDLY(blip, true);  
```
</summary>
	]]

native "ADD_BLIP_FOR_COORD"
    hash "0x5A039BB0BCA604B6"
	jhash (0xC6F43D0E)
	arguments {
		float "x",
		float "y",
		float "z",
	}
	ns "HUD"
	returns "Blip"
	doc [[!
<summary>
Creates a blip for the specified coordinates. You can use `SET_BLIP_` natives to change the blip.
</summary>
<param name="x">The X coordinate to create the blip on.</param>
<param name="y">The Y coordinate.</param>
<param name="z">The Z coordinate.</param>
<returns>A blip handle.</returns>
	]]

native "ADD_BLIP_FOR_PICKUP"
    hash "0xBE339365C863BD36"
	jhash (0x16693C3A)
	arguments {
		Pickup "pickup",
	}
	ns "HUD"
	returns "Blip"
	doc [[!
	]]

native "ADD_BLIP_FOR_RADIUS"
    hash "0x46818D79B1F7499A"
	jhash (0x4626756C)
	arguments {
		float "posX",
		float "posY",
		float "posZ",
		float "radius",
	}
	ns "HUD"
	returns "Blip"
	doc [[!
	]]

native "ADD_NEXT_MESSAGE_TO_PREVIOUS_BRIEFS"
    hash "0x60296AF4BA14ABC5"
	jhash (0xB58B25BD)
	arguments {
		BOOL "p0",
	}
	ns "HUD"
	returns "void"
	doc [[!
<summary>
```
hash collision?  
```
</summary>
	]]

native "ADD_TEXT_COMPONENT_FLOAT"
    hash "0xE7DCB5B874BCD96E"
	jhash (0x24D78013)
	arguments {
		float "value",
		int "decimalPlaces",
	}
	ns "HUD"
	returns "void"
	doc [[!
	]]

native "_ADD_TEXT_COMPONENT_APP_TITLE"
    hash "0x761B77454205A61D"
	jhash (0x65E1D404)
	arguments {
		charPtr "p0",
		int "p1",
	}
	alias "0x761B77454205A61D"
	ns "HUD"
	returns "void"
	doc [[!
<summary>
```
p1 was always -1.  
used for phone applications; scaleform  
```
</summary>
	]]

native "ADD_TEXT_COMPONENT_INTEGER"
    hash "0x03B504CF259931BC"
	jhash (0xFE272A57)
	arguments {
		int "value",
	}
	ns "HUD"
	returns "void"
	doc [[!
	]]

native "ADD_TEXT_COMPONENT_FORMATTED_INTEGER"
    hash "0x0E4C749FF9DE9CC4"
	jhash (0x12929BDF)
	arguments {
		int "value",
		BOOL "commaSeparated",
	}
	alias "0x0E4C749FF9DE9CC4"
	ns "HUD"
	returns "void"
	doc [[!
	]]

native "_ADD_TEXT_COMPONENT_SCALEFORM"
    hash "0x5F68520888E69014"
	jhash (0x0829A799)
	arguments {
		charPtr "p0",
	}
	alias "_ADD_TEXT_COMPONENT_STRING3"
	ns "HUD"
	returns "void"
	doc [[!
<summary>
```
This native (along with 0x6C188BE134E074AA and 0x94CF4AC034C9C986) do not actually filter anything. They simply add the provided text (as of 944)  
did you even check the disassembly?  
> Do you even lift bro? The PLAYER_NAME and WEBSITE natives are the correct names, it doesn't matter if they're filtered or not. Blame R* for that matter. Hashes don't lie, and it's extremely unlikely the validated names are collisions (what are the odds??)  
```
</summary>
	]]

native "ADD_TEXT_COMPONENT_SUBSTRING_BLIP_NAME"
    hash "0x80EAD8E2E1D5D52E"
	jhash (0x5DE98F0A)
	arguments {
		Blip "blip",
	}
	alias "0x80EAD8E2E1D5D52E"
	ns "HUD"
	returns "void"
	doc [[!
	]]

native "ADD_TEXT_COMPONENT_SUBSTRING_TEXT_LABEL"
    hash "0xC63CD5D2920ACBE7"
	jhash (0xDCE05406)
	arguments {
		charPtr "labelName",
	}
	alias "_ADD_TEXT_COMPONENT_ITEM_STRING"
	ns "HUD"
	returns "void"
	doc [[!
	]]

native "ADD_TEXT_COMPONENT_SUBSTRING_PLAYER_NAME"
    hash "0x6C188BE134E074AA"
	jhash (0x27A244D8)
	arguments {
		charPtr "text",
	}
	alias "_ADD_TEXT_COMPONENT_STRING"
	ns "HUD"
	returns "void"
	doc [[!
<summary>
Adds an arbitrary string as a text component placeholder, replacing `~a~` in the current text command's text label.

See the documentation on text formatting for more information.
</summary>
<param name="text">A string to add of up to 99 characters. This can contain additional `~` formatting directives.</param>
	]]

native "ADD_TEXT_COMPONENT_SUBSTRING_TEXT_LABEL_HASH_KEY"
    hash "0x17299B63C7683A2B"
	jhash (0x150E03B6)
	arguments {
		Hash "gxtEntryHash",
	}
	alias "0x17299B63C7683A2B"
	ns "HUD"
	returns "void"
	doc [[!
<summary>
```
It adds the localized text of the specified GXT entry name. Eg. if the argument is GET_HASH_KEY("ES_HELP"), adds "Continue". Just uses a text labels hash key  
```
</summary>
	]]

native "ADD_TEXT_COMPONENT_SUBSTRING_TIME"
    hash "0x1115F16B8AB9E8BF"
	jhash (0x135B3CD0)
	arguments {
		int "timestamp",
		int "flags",
	}
	ns "HUD"
	returns "void"
	doc [[!
<summary>
```
Adds a timer (e.g. "00:00:00:000"). The appearance of the timer depends on the flags, which needs more research.  
```
</summary>
	]]

native "ADD_TREVOR_RANDOM_MODIFIER"
    hash "0x595B5178E412E199"
	jhash (0x63959059)
	arguments {
		int "gamerTagId",
	}
	ns "HUD"
	returns "BOOL"
	doc [[!
<summary>
```
Hash collision!  
_IS_MP_GAMER_TAG_ACTIVE_2  
```
</summary>
	]]

native "ADD_TEXT_COMPONENT_SUBSTRING_WEBSITE"
    hash "0x94CF4AC034C9C986"
	jhash (0xC736999E)
	arguments {
		charPtr "website",
	}
	alias "_ADD_TEXT_COMPONENT_STRING2"
	ns "HUD"
	returns "void"
	doc [[!
<summary>
```
This native (along with 0x5F68520888E69014 and 0x6C188BE134E074AA) do not actually filter anything. They simply add the provided text (as of 944)  
```
</summary>
	]]

native "BEGIN_TEXT_COMMAND_CLEAR_PRINT"
    hash "0xE124FA80A759019C"
	jhash (0x550665AE)
	arguments {
		charPtr "text",
	}
	alias "0xE124FA80A759019C"
	ns "HUD"
	returns "void"
	doc [[!
<summary>
```
clears a print text command with this text  
```
</summary>
	]]

native "_BEGIN_TEXT_COMMAND_BUSY_STRING"
    hash "0xABA17D7CE615ADBF"
	jhash (0xCB7C8994)
	arguments {
		charPtr "string",
	}
	alias "0xABA17D7CE615ADBF"
	alias "_SET_LOADING_PROMPT_TEXT_ENTRY"
	ns "HUD"
	returns "void"
	doc [[!
<summary>
```
Initializes the text entry for the the text next to a loading prompt. All natives for for building UI texts can be used here  
BEGIN_TEXT_COMMAND_PRINT  
e.g  
void StartLoadingMessage(char *text, int spinnerType = 3)  
	{  
_SET_LOADING_PROMPT_TEXT_ENTRY("STRING");  
ADD_TEXT_COMPONENT_SUBSTRING_PLAYER_NAME(text);  
_SHOW_LOADING_PROMPT(spinnerType);  
	}  
/*OR*/  
	void ShowLoadingMessage(char *text, int spinnerType = 3, int timeMs = 10000)  
	{  
_SET_LOADING_PROMPT_TEXT_ENTRY("STRING");  
ADD_TEXT_COMPONENT_SUBSTRING_PLAYER_NAME(text);  
_SHOW_LOADING_PROMPT(spinnerType);  
WAIT(timeMs);  
_REMOVE_LOADING_PROMPT();  
	}  
These are some localized strings used in the loading spinner.  
"PM_WAIT"                   = Please Wait  
"CELEB_WPLYRS"              = Waiting For Players.  
"CELL_SPINNER2"             = Scanning storage.  
"ERROR_CHECKYACHTNAME" = Registering your yacht's name. Please wait.  
"ERROR_CHECKPROFANITY"   = Checking your text for profanity. Please wait.  
"FM_COR_AUTOD"                        = Just spinner no text  
"FM_IHELP_WAT2"                        = Waiting for other players  
"FM_JIP_WAITO"                            = Game options are being set  
"FMMC_DOWNLOAD"                    = Downloading  
"FMMC_PLYLOAD"                         = Loading  
"FMMC_STARTTRAN"                    = Launching session  
"HUD_QUITTING"                           =  Quiting session  
"KILL_STRIP_IDM"                         = Waiting for to accept  
"MP_SPINLOADING"                      = Loading  
```
</summary>
	]]

native "BEGIN_TEXT_COMMAND_IS_MESSAGE_DISPLAYED"
    hash "0x853648FD1063A213"
	jhash (0xDD524A11)
	arguments {
		charPtr "text",
	}
	alias "0x853648FD1063A213"
	ns "HUD"
	returns "void"
	doc [[!
<summary>
```
nothin doin.   
BOOL Message(char* text)  
	{  
BEGIN_TEXT_COMMAND_IS_MESSAGE_DISPLAYED("STRING");  
ADD_TEXT_COMPONENT_SUBSTRING_PLAYER_NAME(text);  
return END_TEXT_COMMAND_IS_MESSAGE_DISPLAYED();  
	}  
```
</summary>
	]]

native "BEGIN_TEXT_COMMAND_DISPLAY_HELP"
    hash "0x8509B634FBE7DA11"
	jhash (0xB245FC10)
	arguments {
		charPtr "inputType",
	}
	alias "_SET_TEXT_COMPONENT_FORMAT"
	ns "HUD"
	returns "void"
	doc [[!
<summary>
```
Used to be known as _SET_TEXT_COMPONENT_FORMAT  
```
</summary>
	]]

native "BEGIN_TEXT_COMMAND_DISPLAY_TEXT"
    hash "0x25FBB336DF1804CB"
	jhash (0x3E35563E)
	arguments {
		charPtr "text",
	}
	alias "_SET_TEXT_ENTRY"
	ns "HUD"
	returns "void"
	doc [[!
<summary>
```
The following were found in the decompiled script files:  
STRING, TWOSTRINGS, NUMBER, PERCENTAGE, FO_TWO_NUM, ESMINDOLLA, ESDOLLA, MTPHPER_XPNO, AHD_DIST, CMOD_STAT_0, CMOD_STAT_1, CMOD_STAT_2, CMOD_STAT_3, DFLT_MNU_OPT, F3A_TRAFDEST, ES_HELP_SOC3  
ESDOLLA   
ESMINDOLLA - cash (negative)  
Used to be known as _SET_TEXT_ENTRY  
```
</summary>
	]]

native "BEGIN_TEXT_COMMAND_IS_THIS_HELP_MESSAGE_BEING_DISPLAYED"
    hash "0x0A24DA3A41B718F5"
	jhash (0x00E20F2D)
	arguments {
		charPtr "labelName",
	}
	alias "0x0A24DA3A41B718F5"
	ns "HUD"
	returns "void"
	doc [[!
<summary>
```
BOOL IsContextActive(char *ctx)  
{  
	BEGIN_TEXT_COMMAND_IS_THIS_HELP_MESSAGE_BEING_DISPLAYED(ctx);  
	return END_TEXT_COMMAND_IS_THIS_HELP_MESSAGE_BEING_DISPLAYED(0);  
}  
```
</summary>
	]]

native "_BEGIN_TEXT_COMMAND_OBJECTIVE"
    hash "0x23D69E0465570028"
	jhash (0x0E103475)
	arguments {
		charPtr "p0",
	}
	alias "0x23D69E0465570028"
	ns "HUD"
	returns "void"
	doc [[!
<summary>
```
nothin doin.   
void message()  
	{  
_BEGIN_TEXT_COMMAND_OBJECTIVE("AHT_RTIT");  
_END_TEXT_COMMAND_OBJECTIVE(0);  
	}  
```
</summary>
	]]

native "_BEGIN_TEXT_COMMAND_LINE_COUNT"
    hash "0x521FB041D93DD0E4"
	jhash (0x94B82066)
	arguments {
		charPtr "entry",
	}
	alias "_SET_TEXT_GXT_ENTRY"
	ns "HUD"
	returns "void"
	doc [[!
<summary>
```
get's line count  
int GetLineCount(char *text, float x, float y)  
	{  
_BEGIN_TEXT_COMMAND_LINE_COUNT("STRING");  
                ADD_TEXT_COMPONENT_SUBSTRING_PLAYER_NAME(text);  
return _END_TEXT_COMMAND_GET_LINE_COUNT(x, y);  
	}  
```
</summary>
	]]

native "BEGIN_TEXT_COMMAND_PRINT"
    hash "0xB87A37EEB7FAA67D"
	jhash (0xF42C43C7)
	arguments {
		charPtr "GxtEntry",
	}
	alias "_SET_TEXT_ENTRY_2"
	ns "HUD"
	returns "void"
	doc [[!
<summary>
```
Used to be known as _SET_TEXT_ENTRY_2  
void ShowSubtitle(char *text)  
{  
	BEGIN_TEXT_COMMAND_PRINT("STRING");  
	ADD_TEXT_COMPONENT_SUBSTRING_PLAYER_NAME(text);  
	END_TEXT_COMMAND_PRINT(2000, 1);  
}  
```
</summary>
	]]

native "BEGIN_TEXT_COMMAND_SET_BLIP_NAME"
    hash "0xF9113A30DE5C6670"
	jhash (0xF4C211F6)
	arguments {
		charPtr "textLabel",
	}
	ns "HUD"
	returns "void"
	doc [[!
<summary>
Starts a text command to change the name of a blip displayed in the pause menu.

This should be paired with [`END_TEXT_COMMAND_SET_BLIP_NAME`](#_0xBC38B49BCB83BC9B), once adding all required text components.
</summary>
<param name="textLabel">The text label to set.</param>
	]]

native "_BEGIN_TEXT_COMMAND_TIMER"
    hash "0x8F9EE5687F8EECCD"
	jhash (0xBF855650)
	arguments {
		charPtr "p0",
	}
	alias "0x8F9EE5687F8EECCD"
	ns "HUD"
	returns "void"
	doc [[!
<summary>
```
void message(char *text)  
{  
	_BEGIN_TEXT_COMMAND_TIMER("STRING");  
	ADD_TEXT_COMPONENT_SUBSTRING_PLAYER_NAME(text);  
	_END_TEXT_COMMAND_TIMER(0);  
}  
```
</summary>
	]]

native "_BEGIN_TEXT_COMMAND_WIDTH"
    hash "0x54CE8AC98E120CAB"
	jhash (0x51E7A037)
	arguments {
		charPtr "text",
	}
	alias "_SET_TEXT_ENTRY_FOR_WIDTH"
	ns "HUD"
	returns "void"
	doc [[!
<summary>
```
Example:  
_BEGIN_TEXT_COMMAND_WIDTH("NUMBER");  
ADD_TEXT_COMPONENT_FLOAT(69.420f, 2);  
float width = _END_TEXT_COMMAND_GET_WIDTH(true);  
```
</summary>
	]]

native "_CENTER_PLAYER_ON_RADAR_THIS_FRAME"
    hash "0x6D14BFDC33B34F55"
	jhash (0x334EFD46)
	ns "HUD"
	returns "void"
	doc [[!
<summary>
```
When calling this, the current frame will have the players "arrow icon" be focused on the dead center of the radar.  
```
</summary>
	]]

native "_BLOCK_WEAPON_WHEEL_THIS_FRAME"
    hash "0x0AFC4AF510774B47"
	jhash (0xB26FED2B)
	alias "0x0AFC4AF510774B47"
	ns "HUD"
	returns "void"
	doc [[!
<summary>
```
calling this each frame, it stops the player from receiving a weapon via the weapon wheel.  
```
</summary>
	]]

native "CLEAR_ADDITIONAL_TEXT"
    hash "0x2A179DF17CCF04CD"
	jhash (0x518141E0)
	arguments {
		int "p0",
		BOOL "p1",
	}
	ns "HUD"
	returns "void"
	doc [[!
	]]

native "CLEAR_ALL_HELP_MESSAGES"
    hash "0x6178F68A87A4D3A0"
	jhash (0x9E5D9198)
	ns "HUD"
	returns "void"
	doc [[!
	]]

native "CLEAR_BRIEF"
    hash "0x9D292F73ADBD9313"
	jhash (0x9F75A929)
	ns "HUD"
	returns "void"
	doc [[!
	]]

native "CLEAR_FLOATING_HELP"
    hash "0x50085246ABD3FEFA"
	jhash (0xB181F88F)
	arguments {
		Any "p0",
		BOOL "p1",
	}
	ns "HUD"
	returns "void"
	doc [[!
<summary>
```
p0 looks like int in script  
```
</summary>
	]]

native "CLEAR_GPS_FLAGS"
    hash "0x21986729D6A3A830"
	jhash (0x056AFCE6)
	ns "HUD"
	returns "void"
	doc [[!
<summary>
```
Clears the GPS flags. Only the script that originally called SET_GPS_FLAGS can clear them.  
Doesn't seem like the flags are actually read by the game at all.  
```
</summary>
	]]

native "CLEAR_GPS_RACE_TRACK"
    hash "0x7AA5B4CE533C858B"
	jhash (0x40C59829)
	ns "HUD"
	returns "void"
	doc [[!
	]]

native "CLEAR_GPS_PLAYER_WAYPOINT"
    hash "0xFF4FB7C8CDFA3DA7"
	jhash (0x0B9C7FC2)
	ns "HUD"
	returns "void"
	doc [[!
	]]

native "CLEAR_HELP"
    hash "0x8DFCED7A656F8802"
	jhash (0xE6D85741)
	arguments {
		BOOL "toggle",
	}
	ns "HUD"
	returns "void"
	doc [[!
	]]

native "_CLEAR_NOTIFICATIONS_POS"
    hash "0x55598D21339CB998"
	jhash (0x1DA7E41A)
	arguments {
		float "pos",
	}
	alias "0x55598D21339CB998"
	ns "HUD"
	returns "void"
	doc [[!
<summary>
```
_CLEAR_NOTIFICATIONS_POS(0.5f);  
```
</summary>
	]]

native "CLEAR_PED_IN_PAUSE_MENU"
    hash "0x5E62BE5DC58E9E06"
	jhash (0x28058ACF)
	ns "HUD"
	returns "void"
	doc [[!
	]]

native "CLEAR_REMINDER_MESSAGE"
    hash "0xB57D8DD645CFA2CF"
	jhash (0x5BBCC934)
	alias "0xB57D8DD645CFA2CF"
	ns "HUD"
	returns "void"
	doc [[!
<summary>
**This native does absolutely nothing, just a nullsub**
</summary>
	]]

native "CLEAR_SMALL_PRINTS"
    hash "0x2CEA2839313C09AC"
	jhash (0xA869A238)
	ns "HUD"
	returns "void"
	doc [[!
	]]

native "CLEAR_PRINTS"
    hash "0xCC33FA791322B9D9"
	jhash (0x216CB1C5)
	ns "HUD"
	returns "void"
	doc [[!
	]]

native "CLEAR_THIS_PRINT"
    hash "0xCF708001E1E536DD"
	jhash (0x06878327)
	arguments {
		charPtr "p0",
	}
	ns "HUD"
	returns "void"
	doc [[!
<summary>
```
p0: found arguments in the b617d scripts: pastebin.com/X5akCN7z  
```
</summary>
	]]

native "_CREATE_MP_GAMER_TAG"
    hash "0xBFEFE3321A3F5015"
	jhash (0xF5CD2AA4)
	arguments {
		Ped "ped",
		charPtr "username",
		BOOL "pointedClanTag",
		BOOL "isRockstarClan",
		charPtr "clanTag",
		Any "p5",
	}
	alias "0xBFEFE3321A3F5015"
	ns "HUD"
	returns "int"
	doc [[!
<summary>
```
p0 was the return of NET_TO_PED in fm_mission_controler.  
p4 was always "".  
returns headDisplayId  
```
</summary>
	]]

native "DISABLE_FRONTEND_THIS_FRAME"
    hash "0x6D3465A73092F0E6"
	jhash (0xD86A029E)
	ns "HUD"
	returns "void"
	doc [[!
	]]

native "DISABLE_BLIP_NAME_FOR_VAR"
    hash "0x5C90988E7C8E1AF4"
	jhash (0xFFD7476C)
	ns "HUD"
	returns "Blip"
	doc [[!
<summary>
```
Hash collision!!!   
Returns a blip handle.  
```
</summary>
	]]

native "DISPLAY_AMMO_THIS_FRAME"
    hash "0xA5E78BA2B1331C55"
	jhash (0x60693CEE)
	arguments {
		BOOL "display",
	}
	ns "HUD"
	returns "void"
	doc [[!
	]]

native "_DISABLE_RADAR_THIS_FRAME"
    hash "0x5FBAE526203990C9"
	jhash (0x1A4318F7)
	ns "HUD"
	returns "void"
	doc [[!
<summary>
```
confirmed working  
```
</summary>
	]]

native "DISPLAY_CASH"
    hash "0x96DEC8D5430208B7"
	jhash (0x0049DF83)
	arguments {
		BOOL "toggle",
	}
	ns "HUD"
	returns "void"
	doc [[!
<summary>
```
"DISPLAY_CASH(false);" makes the cash amount render on the screen when appropriate  
"DISPLAY_CASH(true);" disables cash amount rendering  
```
</summary>
	]]

native "DISPLAY_AREA_NAME"
    hash "0x276B6CE369C33678"
	jhash (0x489FDD41)
	arguments {
		BOOL "toggle",
	}
	ns "HUD"
	returns "void"
	doc [[!
	]]

native "_DISPLAY_JOB_REPORT"
    hash "0x523A590C1A3CC0D3"
	jhash (0x10DE5150)
	alias "0x523A590C1A3CC0D3"
	ns "HUD"
	returns "void"
	doc [[!
<summary>
```
Shows a hud element for reporting jobs  
```
</summary>
	]]

native "DISPLAY_HELP_TEXT_THIS_FRAME"
    hash "0x960C9FF8F616E41C"
	jhash (0x18E3360A)
	arguments {
		charPtr "message",
		BOOL "p1",
	}
	ns "HUD"
	returns "void"
	doc [[!
<summary>
```
The messages are localized strings.  
Examples:  
"No_bus_money"  
"Enter_bus"  
"Tour_help"  
"LETTERS_HELP2"  
"Dummy"  
**The bool appears to always be false (if it even is a bool, as it's represented by a zero)**  
--------  
p1 doesn't seem to make a difference, regardless of the state it's in.   
picture of where on the screen this is displayed?  
```
</summary>
	]]

native "DISPLAY_RADAR"
    hash "0xA0EBB943C300E693"
	jhash (0x52816BD4)
	arguments {
		BOOL "Toggle",
	}
	ns "HUD"
	returns "Any"
	doc [[!
<summary>
```
If Minimap / Radar should be displayed.  
```
</summary>
	]]

native "DISPLAY_HUD"
    hash "0xA6294919E56FF02A"
	jhash (0xD10E4E31)
	arguments {
		BOOL "toggle",
	}
	ns "HUD"
	returns "void"
	doc [[!
<summary>
```
If Hud should be displayed  
```
</summary>
	]]

native "DISPLAY_SNIPER_SCOPE_THIS_FRAME"
    hash "0x73115226F4814E62"
	jhash (0xBC6C73CB)
	ns "HUD"
	returns "void"
	doc [[!
<summary>
```
Displays the crosshair for this frame.  
```
</summary>
	]]

native "DOES_BLIP_EXIST"
    hash "0xA6DB27D19ECBB7DA"
	jhash (0xAE92DD96)
	arguments {
		Blip "blip",
	}
	ns "HUD"
	returns "BOOL"
	doc [[!
	]]

native "DOES_TEXT_BLOCK_EXIST"
    hash "0x1C7302E725259789"
	jhash (0x96F74838)
	arguments {
		charPtr "gxt",
	}
	ns "HUD"
	returns "BOOL"
	doc [[!
	]]

native "DOES_PED_HAVE_AI_BLIP"
    hash "0x15B8ECF844EE67ED"
	jhash (0x3BE1257F)
	arguments {
		Ped "ped",
	}
	ns "HUD"
	returns "BOOL"
	doc [[!
<summary>
```
Returns whether the ped's blip is controlled by the game.   
It's the default blip you can see on enemies during freeroam in singleplayer (the one that fades out quickly).  
```
</summary>
	]]

native "_DRAW_FRONTEND_ALERT"
    hash "0x15803FEC3B9A872B"
	arguments {
		charPtr "labelTitle",
		charPtr "labelMsg",
		int "p2",
		int "p3",
		charPtr "labelMsg2",
		int "p5",
		int "p6",
		int "p7",
		charPtr "p8",
		charPtr "p9",
		BOOL "background",
		Any "p11",
	}
	alias "0x15803FEC3B9A872B"
	ns "HUD"
	returns "Any"
	doc [[!
<summary>
instructionalKey enum list:

```
Buttons = {
      Empty = 0,
      Select = 1, -- (RETURN)
      Ok = 2, -- (RETURN)
      Yes = 4, -- (RETURN)
      Back = 8, -- (ESC)
      Cancel = 16, -- (ESC)
      No = 32, -- (ESC)
      RetrySpace = 64, -- (SPACE)
      Restart = 128, -- (SPACE)
      Skip = 256, -- (SPACE)
      Quit = 512, -- (ESC)
      Adjust = 1024, -- (ARROWS)
      SpaceKey = 2048, -- (SPACE)
      Share = 4096, -- (SPACE)
      SignIn = 8192, -- (SPACE)
      Continue = 16384, -- (RETURN)
      AdjustLeftRight = 32768, -- (SCROLL L/R)
      AdjustUpDown = 65536, -- (SCROLL U/D)
      Overwrite = 131072, -- (SPACE)
      SocialClubSignup = 262144, -- (RETURN)
      Confirm = 524288, -- (RETURN)
      Queue = 1048576, -- (RETURN)
      RetryReturn = 2097152, -- (RETURN)
      BackEsc = 4194304, -- (ESC)
      SocialClub = 8388608, -- (RETURN)
      Spectate = 16777216, -- (SPACE)
      OkEsc = 33554432, -- (ESC)
      CancelTransfer = 67108864, -- (ESC)
      LoadingSpinner = 134217728,
      NoReturnToGTA = 268435456, -- (ESC)
      CancelEsc = 536870912, -- (ESC)
}

Alt = {
      Empty = 0,
      No = 1, -- (SPACE)
      Host = 2, -- (ESC)
      SearchForJob = 4, -- (RETURN)
      ReturnKey = 8, -- (TURN)
      Freemode = 16, -- (ESC)
}
```

**Result of the example code:** <https://i.imgur.com/TvmNF4k.png>
</summary>
<param name="labelTitle">Label of the alert's title.</param>
<param name="labelMsg">Label of the alert's message.</param>
<param name="p2">This is an enum, check the description for a list.</param>
<param name="p3">This is an enum, check the description for a list.</param>
<param name="labelMsg2">Label of another message line</param>
<param name="p5">usually 0</param>
<param name="p6">usually -1</param>
<param name="p7">usually 0</param>
<param name="p8">unknown label</param>
<param name="p9">unknown label</param>
<param name="background">Set to anything other than 0 or false (even any string) and it will draw a background. Setting it to 0 or false will draw no background.</param>
<param name="p11">unknown value default false, it shows an error code at the bottom left</param>
	]]

native "_DRAW_NOTIFICATION"
    hash "0x2ED7843F8F801023"
	jhash (0x08F7AF78)
	arguments {
		BOOL "blink",
		BOOL "showInBrief",
	}
	ns "HUD"
	returns "int"
	doc [[!
<summary>
```
Draws a notification above the map and returns the notifications handle  
Color syntax:  
~r~ = Red  
~b~ = Blue  
~g~ = Green  
~y~ = Yellow  
~p~ = Purple  
~o~ = Orange  
~c~ = Grey  
~m~ = Darker Grey  
~u~ = Black  
~n~ = New Line  
~s~ = Default White  
~w~ = White  
~h~ = Bold Text  
~nrt~ = ???  
Special characters:  
¦ = Rockstar Verified Icon (U+00A6:Broken Bar - Alt+0166)  
÷ = Rockstar Icon (U+00F7:Division Sign - Alt+0247)  
∑ = Rockstar Icon 2 (U+2211:N-Ary Summation)  
Example C#:  
            Function.Call(Hash._ADD_TEXT_COMPONENT_STRING3, "Now I need you to bring the ~b~vehicle~w~ back to me!");  
----  
showInBrief==true: the notification will appear in the "Brief/Info" -> "Notifications" tab in the pause menu.  
showInBrief==false: the notification will NOT appear in the pause menu.  
```
</summary>
	]]

native "DOES_TEXT_LABEL_EXIST"
    hash "0xAC09CA973C564252"
	jhash (0x6ECAE560)
	arguments {
		charPtr "gxt",
	}
	ns "HUD"
	returns "BOOL"
	doc [[!
<summary>
```
Checks if the passed gxt name exists in the game files.  
```
</summary>
	]]

native "_DRAW_NOTIFICATION_WITH_BUTTON"
    hash "0xDD6CB2CCE7C2735C"
	arguments {
		int "type",
		charPtr "button",
		charPtr "text",
	}
	alias "0xDD6CB2CCE7C2735C"
	ns "HUD"
	returns "int"
	doc [[!
<summary>
```
returns a notification handle, prints out a notification like below:  
type range: 0   
if you set type to 1, button accepts "~INPUT_SOMETHING~"  
example:  
UI::_0xDD6CB2CCE7C2735C(1, "~INPUT_TALK~", "Who you trynna get crazy with, ese? Don't you know I'm LOCO?!");  
- imgur.com/UPy0Ial  
Examples from the scripts:  
l_D1[1/*1*/]=UI::_DD6CB2CCE7C2735C(1,"~INPUT_REPLAY_START_STOP_RECORDING~","");  
l_D1[2/*1*/]=UI::_DD6CB2CCE7C2735C(1,"~INPUT_SAVE_REPLAY_CLIP~","");  
l_D1[1/*1*/]=UI::_DD6CB2CCE7C2735C(1,"~INPUT_REPLAY_START_STOP_RECORDING~","");  
l_D1[2/*1*/]=UI::_DD6CB2CCE7C2735C(1,"~INPUT_REPLAY_START_STOP_RECORDING_SECONDARY~","");  
```
</summary>
	]]

native "_DRAW_NOTIFICATION_APARTMENT_INVITE"
    hash "0x97C9E4E7024A8F2C"
	jhash (0xA9CCEF66)
	arguments {
		BOOL "p0",
		BOOL "p1",
		intPtr "p2",
		int "p3",
		BOOL "isLeader",
		BOOL "unk0",
		int "clanDesc",
		int "R",
		int "G",
		int "B",
	}
	alias "0x97C9E4E7024A8F2C"
	alias "_NOTIFICATION_SEND_APARTMENT_INVITE"
	ns "HUD"
	returns "int"
	doc [[!
<summary>
```
This function and the one below it are for after you receive an invite, not sending it.  
p0 = 1 or 0  
nothin doin.   
int invite(Player player)  
	{  
int iVar2, iVar3;  
networkHandleMgr handle;  
NETWORK_HANDLE_FROM_PLAYER(player, &handle.netHandle, 13);  
networkClanMgr clan;  
char *playerName = GET_PLAYER_NAME(player);  
_SET_NOTIFICATION_TEXT_ENTRY("STRING");  
_SET_NOTIFACTION_COLOR_NEXT(0);  
ADD_TEXT_COMPONENT_SUBSTRING_PLAYER_NAME(playerName);  
if (NETWORK_CLAN_PLAYER_GET_DESC(&clan, 35, &handle.netHandle))  
{  
	iVar2 = 0;  
	if (ARE_STRINGS_EQUAL(clan.unk22, "Leader") && clan.unk30 == 0)  
	{  
iVar2 = 1;  
	}  
	if (clan.unk21 > 0)  
	{  
iVar3 = 0;  
	}  
	else  
	{  
iVar3 = 1;  
	}  
	BOOL unused = _0x54E79E9C(&clan.clanHandle, 35);  
	return _DRAW_NOTIFICATION_APARTMENT_INVITE(iVar3, 0 /*unused*/, &clan.unk17, clan.unk30, iVar2, 0, clan.clanHandle, 0, 0, 0);  
}  
	}  
```
</summary>
	]]

native "_DRAW_NOTIFICATION_WITH_ICON"
    hash "0xD202B92CBF1D816F"
	arguments {
		int "type",
		int "image",
		charPtr "text",
	}
	alias "0xD202B92CBF1D816F"
	ns "HUD"
	returns "int"
	doc [[!
<summary>
```
returns a notification handle, prints out a notification like below:  
type range: 0   
if you set type to 1, image goes from 0 - 39 - Xbox you can add text to  
example:   
UI::_0xD202B92CBF1D816F(1, 20, "Who you trynna get crazy with, ese? Don't you know I'm LOCO?!");  
```
</summary>
	]]

native "_DRAW_NOTIFICATION_CLAN_INVITE"
    hash "0x137BC35589E34E1E"
	jhash (0x88B9B909)
	arguments {
		BOOL "p0",
		BOOL "p1",
		intPtr "p2",
		int "p3",
		BOOL "isLeader",
		BOOL "unk0",
		int "clanDesc",
		charPtr "playerName",
		int "R",
		int "G",
		int "B",
	}
	alias "0x137BC35589E34E1E"
	alias "_NOTIFICATION_SEND_CLAN_INVITE"
	ns "HUD"
	returns "int"
	doc [[!
<summary>
```
p0 = 1 or 0  
crashes my game...  
this is for sending invites to network players - jobs/apartment/ect...   
return notification handle  
int invite(Player player)  
	{  
networkHandleMgr netHandle;  
networkClanMgr clan;  
char *playerName = GET_PLAYER_NAME(player);  
_SET_NOTIFICATION_TEXT_ENTRY("STRING");  
_SET_NOTIFACTION_COLOR_NEXT(1);  
ADD_TEXT_COMPONENT_SUBSTRING_PLAYER_NAME(playerName);  
NETWORK_HANDLE_FROM_PLAYER(player, &netHandle.netHandle, 13);  
if (NETWORK_CLAN_PLAYER_IS_ACTIVE(&netHandle.netHandle))  
{  
	NETWORK_CLAN_PLAYER_GET_DESC(&clan.clanHandle, 35, &netHandle.netHandle);  
	_DRAW_NOTIFICATION_CLAN_INVITE(0, _0x54E79E9C(&clan.clanHandle, 35), &clan.unk17, clan.isLeader, 0, 0, clan.clanHandle, playerName, 0, 0, 0);  
}  
	}  
```
</summary>
	]]

native "_DRAW_NOTIFICATION_3"
    hash "0x378E809BF61EC840"
	jhash (0x02BCAF9B)
	arguments {
		BOOL "blink",
		BOOL "p1",
	}
	ns "HUD"
	returns "int"
	doc [[!
	]]

native "ENABLE_DEATHBLOOD_SEETHROUGH"
    hash "0x4895BDEA16E7C080"
	jhash (0x15B24768)
	arguments {
		BOOL "p0",
	}
	ns "HUD"
	returns "void"
	doc [[!
<summary>
```
Please change back to _0x4895BDEA16E7C080 (hash collision)  
```
</summary>
	]]

native "_DRAW_NOTIFICATION_2"
    hash "0x44FA03975424A0EE"
	jhash (0x57B8D0D4)
	arguments {
		BOOL "blink",
		BOOL "p1",
	}
	ns "HUD"
	returns "int"
	doc [[!
	]]

native "_END_TEXT_COMMAND_BUSY_STRING"
    hash "0xBD12F8228410D9B4"
	jhash (0x903F5EE4)
	arguments {
		int "busySpinnerType",
	}
	alias "0xBD12F8228410D9B4"
	alias "_SHOW_LOADING_PROMPT"
	ns "HUD"
	returns "void"
	doc [[!
<summary>
```
This does NOT get called per frame. Call it once to show, then use UI::_REMOVE_LOADING_PROMPT to remove it  
Changes the the above native's (UI::_SET_LOADING_PROMPT_TEXT_ENTRY) spinning circle type.  
Types:  
enum LoadingPromptTypes  
{  
	LOADING_PROMPT_LEFT,  
	LOADING_PROMPT_LEFT_2,  
	LOADING_PROMPT_LEFT_3,  
	SAVE_PROMPT_LEFT,  
	LOADING_PROMPT_RIGHT,  
};  
```
</summary>
	]]

native "_DRAW_NOTIFICATION_4"
    hash "0xF020C96915705B3A"
	jhash (0x8E319AB8)
	arguments {
		BOOL "blink",
		BOOL "p1",
	}
	ns "HUD"
	returns "int"
	doc [[!
	]]

native "END_TEXT_COMMAND_DISPLAY_HELP"
    hash "0x238FFE5C7B0498A6"
	jhash (0xB59B530D)
	arguments {
		Any "p0",
		BOOL "loop",
		BOOL "beep",
		int "duration",
	}
	alias "_DISPLAY_HELP_TEXT_FROM_STRING_LABEL"
	ns "HUD"
	returns "void"
	doc [[!
<summary>
```
-----------  
p3 (duration in MS) was previously mentioned as "shape", but with some more testing it seems that it's more likely to be a duration in MS. (Tested this when not calling it every tick, but instead only once and let it display for the specified duration).   
-1 seems to be default delay (around 3 seconds), 5000 (ms) seems to be the max. Anything > 5000 will still result in 5 seconds of display time.  
Old p3 (shape) description: "shape goes from -1 to 50 (may be more)."  
--------------  
p0 is always 0.  
Example:  
void FloatingHelpText(char* text)  
{  
	BEGIN_TEXT_COMMAND_DISPLAY_HELP("STRING");  
	ADD_TEXT_COMPONENT_SUBSTRING_PLAYER_NAME(text);  
	END_TEXT_COMMAND_DISPLAY_HELP (0, 0, 1, -1);  
}  
Image:  
- imgbin.org/images/26209.jpg  
more inputs/icons:  
- pastebin.com/nqNYWMSB  
Used to be known as _DISPLAY_HELP_TEXT_FROM_STRING_LABEL  
```
</summary>
	]]

native "_DRAW_NOTIFICATION_AWARD"
    hash "0xAA295B6F28BD587D"
	jhash (0x02DED2B8)
	arguments {
		charPtr "textureDict",
		charPtr "textureName",
		int "rpBonus",
		int "colorOverlay",
		charPtr "titleLabel",
	}
	alias "0xAA295B6F28BD587D"
	alias "_DRAW_NOTIFICATION_ICON"
	ns "HUD"
	returns "int"
	doc [[!
<summary>
Shows an "award" notification above the minimap, lua example result:

![](https://i.imgur.com/e2DNaKX.png)

Old description:

```
Example:  
UI::_SET_NOTIFICATION_TEXT_ENTRY("HUNT");  
UI::_0xAA295B6F28BD587D("Hunting", "Hunting_Gold_128", 0, 109, "HUD_MED_UNLKED");  
```
</summary>
<param name="textureDict">The texture dictionary name for the icon on the left.</param>
<param name="textureName">The texture name for the icon on the left.</param>
<param name="rpBonus">The gained "RP" amount that will be displayed on the right side of the notification.</param>
<param name="colorOverlay">Hudcolor overlay that gets applied on top of the notification, fucks up text/image visibility in most cases if set to something other than 0.</param>
<param name="titleLabel">The label that will be displayed at the top of the notification (title).</param>
<returns>The notification handle.</returns>
	]]

native "_END_TEXT_COMMAND_GET_WIDTH"
    hash "0x85F061DA64ED2F67"
	jhash (0xD12A643A)
	arguments {
		BOOL "p0",
	}
	alias "_GET_TEXT_SCREEN_WIDTH"
	ns "HUD"
	returns "float"
	doc [[!
<summary>
```
Used with _BEGIN_TEXT_COMMAND_WIDTH.  
In scripts, p0 is false when used in combination with "ESMINDOLLA" or "ESDOLLA", otherwise it's true.  
Returns from range 0 to 1.  
```
</summary>
	]]

native "END_TEXT_COMMAND_CLEAR_PRINT"
    hash "0xFCC75460ABA29378"
	jhash (0x67785AF2)
	alias "0xFCC75460ABA29378"
	ns "HUD"
	returns "void"
	doc [[!
	]]

native "END_TEXT_COMMAND_DISPLAY_TEXT"
    hash "0xCD015E5BB0D96A57"
	jhash (0x6F8350CE)
	arguments {
		float "x",
		float "y",
	}
	alias "_DRAW_TEXT"
	ns "HUD"
	returns "void"
	doc [[!
<summary>
```
After applying the properties to the text (See UI::SET_TEXT_), this will draw the text in the applied position. Also 0.0f < x, y < 1.0f, percentage of the axis.  
Used to be known as _DRAW_TEXT  
```
</summary>
	]]

native "END_TEXT_COMMAND_IS_THIS_HELP_MESSAGE_BEING_DISPLAYED"
    hash "0x10BDDBFC529428DD"
	jhash (0xF63A13EC)
	arguments {
		int "p0",
	}
	alias "0x10BDDBFC529428DD"
	ns "HUD"
	returns "BOOL"
	doc [[!
	]]

native "END_TEXT_COMMAND_IS_MESSAGE_DISPLAYED"
    hash "0x8A9BA1AB3E237613"
	jhash (0x672EFB45)
	alias "0x8A9BA1AB3E237613"
	ns "HUD"
	returns "BOOL"
	doc [[!
	]]

native "END_TEXT_COMMAND_PRINT"
    hash "0x9D77056A530643F6"
	jhash (0x38F82261)
	arguments {
		int "duration",
		BOOL "drawImmediately",
	}
	alias "_DRAW_SUBTITLE_TIMED"
	ns "HUD"
	returns "void"
	doc [[!
<summary>
```
Draws the subtitle at middle center of the screen.  
int duration = time in milliseconds to show text on screen before disappearing  
drawImmediately = If true, the text will be drawn immediately, if false, the text will be drawn after the previous subtitle has finished  
Used to be known as _DRAW_SUBTITLE_TIMED  
```
</summary>
	]]

native "END_TEXT_COMMAND_SET_BLIP_NAME"
    hash "0xBC38B49BCB83BC9B"
	jhash (0xE8E59820)
	arguments {
		Blip "blip",
	}
	ns "HUD"
	returns "void"
	doc [[!
<summary>
Finalizes a text command started with [`BEGIN_TEXT_COMMAND_SET_BLIP_NAME`](#_0xF9113A30DE5C6670), setting the name
of the specified blip.
</summary>
<param name="blip">The blip to change the name for.</param>
	]]

native "_END_TEXT_COMMAND_OBJECTIVE"
    hash "0xCFDBDF5AE59BA0F4"
	jhash (0x2944A6C5)
	arguments {
		BOOL "p0",
	}
	alias "0xCFDBDF5AE59BA0F4"
	ns "HUD"
	returns "void"
	doc [[!
<summary>
```
p0 is always false in scripts.  
```
</summary>
	]]

native "FLASH_ABILITY_BAR"
    hash "0x02CFBA0C9E9275CE"
	jhash (0x3648960D)
	arguments {
		BOOL "toggle",
	}
	ns "HUD"
	returns "void"
	doc [[!
<summary>
```
If set to true ability bar will flash  
```
</summary>
	]]

native "_END_TEXT_COMMAND_TIMER"
    hash "0xA86911979638106F"
	jhash (0x6E7FDA1C)
	arguments {
		BOOL "p0",
	}
	alias "0xA86911979638106F"
	ns "HUD"
	returns "void"
	doc [[!
	]]

native "FLASH_WANTED_DISPLAY"
    hash "0xA18AFB39081B6A1F"
	jhash (0x629F866B)
	arguments {
		BOOL "p0",
	}
	ns "HUD"
	returns "Any"
	doc [[!
	]]

native "FLASH_MINIMAP_DISPLAY"
    hash "0xF2DD778C22B15BDA"
	jhash (0xB8359952)
	ns "HUD"
	returns "void"
	doc [[!
<summary>
```
adds a short flash to the Radar/Minimap  
Usage: UI.FLASH_MINIMAP_DISPLAY  
```
</summary>
	]]

native "_GET_2D_COORD_FROM_3D_COORD"
    hash "0xF9904D11F1ACBEC3"
	jhash (0xFE9A39F8)
	arguments {
		float "worldX",
		float "worldY",
		float "worldZ",
		floatPtr "screenX",
		floatPtr "screenY",
	}
	alias "0xF9904D11F1ACBEC3"
	ns "HUD"
	returns "BOOL"
	doc [[!
<summary>
```
World to relative screen coords  
this world to screen will keep the text on screen. it will keep it in the screen pos. good for a deer hunting mod  

Was named _GET_SCREEN_COORD_FROM_WORLD_COORD, but this conflicts with 0x34E82F05DF2974F5
As that hash actually matches GET_SCREEN_COORD_FROM_WORLD_COORD that one supercedes and this one was renamed
to _GET_2D_COORD_FROM_3D_COORD
```
</summary>
	]]

native "_GET_ACTIVE_WEBSITE_ID"
    hash "0x01A358D9128B7A86"
	jhash (0xAB5B7C18)
	alias "0x01A358D9128B7A86"
	ns "HUD"
	returns "int"
	doc [[!
<summary>
```
native only found once in appinternet.c4  
same thing as this but does not need websiteID  
Any _0xE3B05614DCE1D014(Any p0) // 0xE3B05614DCE1D014 0xD217EE7E  
returns current websitePageID  
```
</summary>
	]]

native "_GET_AI_BLIP"
    hash "0x56176892826A4FE8"
	jhash (0xCA52CF43)
	arguments {
		Ped "ped",
	}
	alias "0x56176892826A4FE8"
	ns "HUD"
	returns "Blip"
	doc [[!
<summary>
```
Returns the current AI BLIP for the specified ped  
```
</summary>
	]]

native "GET_BLIP_ALPHA"
    hash "0x970F608F0EE6C885"
	jhash (0x297AF6C8)
	arguments {
		Blip "blip",
	}
	ns "HUD"
	returns "int"
	doc [[!
	]]

native "GET_BLIP_COLOUR"
    hash "0xDF729E8D20CF7327"
	jhash (0xDD6A1E54)
	arguments {
		Blip "blip",
	}
	ns "HUD"
	returns "int"
	doc [[!
	]]

native "GET_BLIP_COORDS"
    hash "0x586AFE3FF72D996E"
	jhash (0xEF6FF47B)
	arguments {
		Blip "blip",
	}
	ns "HUD"
	returns "Vector3"
	doc [[!
	]]

native "GET_BLIP_FROM_ENTITY"
    hash "0xBC8DBDCA2436F7E8"
	jhash (0x005A2A47)
	arguments {
		Entity "entity",
	}
	ns "HUD"
	returns "Blip"
	doc [[!
<summary>
```
Returns the Blip handle of given Entity.  
```
</summary>
	]]

native "GET_BLIP_HUD_COLOUR"
    hash "0x729B5F1EFBC0AAEE"
	jhash (0xE88B4BC2)
	arguments {
		Blip "blip",
	}
	ns "HUD"
	returns "int"
	doc [[!
	]]

native "GET_BLIP_INFO_ID_COORD"
    hash "0xFA7C7F0AADF25D09"
	jhash (0xB7374A66)
	arguments {
		Blip "blip",
	}
	ns "HUD"
	returns "Vector3"
	doc [[!
	]]

native "GET_BLIP_INFO_ID_DISPLAY"
    hash "0x1E314167F701DC3B"
	jhash (0xD0FC19F4)
	arguments {
		Blip "blip",
	}
	ns "HUD"
	returns "int"
	doc [[!
	]]

native "_GET_BLIP_INFO_ID_ITERATOR"
    hash "0x186E5D252FA50E7D"
	jhash (0xB9827942)
	ns "HUD"
	returns "int"
	doc [[!
	]]

native "GET_BLIP_INFO_ID_ENTITY_INDEX"
    hash "0x4BA4E2553AFEDC2C"
	jhash (0xA068C40B)
	arguments {
		Blip "blip",
	}
	ns "HUD"
	returns "Entity"
	doc [[!
<summary>
```

```
</summary>
	]]

native "GET_BLIP_INFO_ID_TYPE"
    hash "0xBE9B0959FFD0779B"
	jhash (0x501D7B4E)
	arguments {
		Blip "blip",
	}
	ns "HUD"
	returns "int"
	doc [[!
<summary>
```
Returns a value based on what the blip is attached to  
1   
2   
3   
4   
5   
6   
7  
```
</summary>
	]]

native "GET_BLIP_SPRITE"
    hash "0x1FC877464A04FC4F"
	jhash (0x72FF2E73)
	arguments {
		Blip "blip",
	}
	ns "HUD"
	returns "int"
	doc [[!
<summary>
```
Blips Images + IDs:  
gtaxscripting.blogspot.com/2016/05/gta-v-blips-id-and-image.html  
```
</summary>
	]]

native "GET_BLIP_INFO_ID_PICKUP_INDEX"
    hash "0x9B6786E4C03DD382"
	jhash (0x86913D37)
	arguments {
		Blip "blip",
	}
	ns "HUD"
	returns "Pickup"
	doc [[!
<summary>
```
This function is hard-coded to always return 0.  
```
</summary>
	]]

native "_GET_CURRENT_FRONTEND_MENU"
    hash "0x2309595AD6145265"
	jhash (0x33D6868F)
	alias "0x2309595AD6145265"
	ns "HUD"
	returns "Hash"
	doc [[!
<summary>
```
if (UI::_2309595AD6145265() == ${fe_menu_version_empty_no_background})  
Seems to get the current frontend menu  
```
</summary>
	]]

native "_GET_CURRENT_NOTIFICATION"
    hash "0x82352748437638CA"
	jhash (0x294405D4)
	alias "0x82352748437638CA"
	ns "HUD"
	returns "int"
	doc [[!
<summary>
```
Returns the handle for the notification currently displayed on the screen.  
```
</summary>
	]]

native "GET_DEFAULT_SCRIPT_RENDERTARGET_RENDER_ID"
    hash "0x52F0982D7FD156B6"
	jhash (0x8188935F)
	ns "HUD"
	returns "int"
	doc [[!
<summary>
```
This function is hard-coded to always return 1.  
```
</summary>
	]]

native "GET_CURRENT_WEBSITE_ID"
    hash "0x97D47996FC48CBAD"
	jhash (0x42A55B14)
	ns "HUD"
	returns "int"
	doc [[!
	]]

native "GET_FIRST_BLIP_INFO_ID"
    hash "0x1BEDE233E6CD2A1F"
	jhash (0x64C0273D)
	arguments {
		int "blipSprite",
	}
	ns "HUD"
	returns "Blip"
	doc [[!
<summary>
```
8 = waypoint  
```
</summary>
	]]

native "GET_HUD_COMPONENT_POSITION"
    hash "0x223CA69A8C4417FD"
	jhash (0x080DCED6)
	arguments {
		int "id",
	}
	ns "HUD"
	returns "Vector3"
	doc [[!
	]]

native "GET_HUD_COLOUR"
    hash "0x7C9C91AB74A0360F"
	jhash (0x63F66A0B)
	arguments {
		int "hudColorIndex",
		intPtr "r",
		intPtr "g",
		intPtr "b",
		intPtr "a",
	}
	ns "HUD"
	returns "void"
	doc [[!
<summary>
```
HUD colors and their values: pastebin.com/d9aHPbXN  
```
</summary>
	]]

native "_GET_LABEL_TEXT"
    hash "0x7B5280EBA9840C72"
	jhash (0x95C4B5AD)
	arguments {
		charPtr "labelName",
	}
	ns "HUD"
	returns "charPtr"
	doc [[!
<summary>
```
Gets a string literal from a label name.  
```
</summary>
	]]

native "_GET_LENGTH_OF_STRING"
    hash "0x43E4111189E54F0E"
	jhash (0x7DBC0764)
	arguments {
		charPtr "STRING",
	}
	alias "0x43E4111189E54F0E"
	ns "HUD"
	returns "int"
	doc [[!
<summary>
```
gets the length of a null terminated string, without checking unicode encodings  
```
</summary>
	]]

native "GET_LENGTH_OF_LITERAL_STRING"
    hash "0xF030907CCBB8A9FD"
	jhash (0x99379D55)
	arguments {
		charPtr "string",
	}
	ns "HUD"
	returns "int"
	doc [[!
<summary>
```
Returns the length of the string passed (much like strlen).  
```
</summary>
	]]

native "GET_MAIN_PLAYER_BLIP_ID"
    hash "0xDCD4EC3F419D02FA"
	jhash (0xAB93F020)
	ns "HUD"
	returns "Blip"
	doc [[!
	]]

native "GET_LENGTH_OF_STRING_WITH_THIS_TEXT_LABEL"
    hash "0x801BD273D3A23F74"
	jhash (0xA4CA7BE5)
	arguments {
		charPtr "gxt",
	}
	ns "HUD"
	returns "int"
	doc [[!
<summary>
```
Returns the string length of the string from the gxt string .  
```
</summary>
	]]

native "GET_NEXT_BLIP_INFO_ID"
    hash "0x14F96AA50D6FBEA7"
	jhash (0x9356E92F)
	arguments {
		int "blipSprite",
	}
	ns "HUD"
	returns "Blip"
	doc [[!
	]]

native "GET_NAMED_RENDERTARGET_RENDER_ID"
    hash "0x1A6478B61C6BDC3B"
	jhash (0xF9D7A401)
	arguments {
		charPtr "p0",
	}
	ns "HUD"
	returns "Any"
	doc [[!
	]]

native "GET_PAUSE_MENU_STATE"
    hash "0x272ACD84970869C5"
	jhash (0x92F50134)
	ns "HUD"
	returns "int"
	doc [[!
<summary>
```
Returns:  
5  
10  
15  
20  
25  
30  
35  
```
</summary>
	]]

native "GET_NUMBER_OF_ACTIVE_BLIPS"
    hash "0x9A3FF3DE163034E8"
	jhash (0x144020FA)
	ns "HUD"
	returns "int"
	doc [[!
	]]

native "_GET_TEXT_SCALE_HEIGHT"
    hash "0xDB88A37483346780"
	jhash (0x3330175B)
	arguments {
		float "size",
		int "font",
	}
	alias "0xDB88A37483346780"
	ns "HUD"
	returns "float"
	doc [[!
<summary>
```
This get's the height of the FONT and not the total text. You need to get the number of lines your text uses, and get the height of a newline (I'm using a smaller value) to get the total text height.  
```
</summary>
	]]

native "GET_STREET_NAME_FROM_HASH_KEY"
    hash "0xD0EF8A959B8A4CB9"
	jhash (0x1E8E310C)
	arguments {
		Hash "hash",
	}
	ns "HUD"
	returns "charPtr"
	doc [[!
<summary>
```
This functions converts the hash of a street name into a readable string.  
For how to get the hashes, see PATHFIND::GET_STREET_NAME_AT_COORD.  
```
</summary>
	]]

native "_GET_TEXT_SCREEN_LINE_COUNT"
    hash "0x9040DFB09BE75706"
	jhash (0xAA318785)
	arguments {
		float "x",
		float "y",
	}
	alias "0x9040DFB09BE75706"
	alias "_END_TEXT_COMMAND_GET_LINE_COUNT"
	ns "HUD"
	returns "int"
	doc [[!
<summary>
```
Determines how many lines the text string will use when drawn on screen.   
Must use _BEGIN_TEXT_COMMAND_LINE_COUNT for setting up  
```
</summary>
	]]

native "_GET_TEXT_SUBSTRING"
    hash "0x169BD9382084C8C0"
	jhash (0x34A396EE)
	arguments {
		charPtr "text",
		int "position",
		int "length",
	}
	ns "HUD"
	returns "charPtr"
	doc [[!
<summary>
```
Returns a substring of a specified length starting at a specified position.  
Example:  
// Get "STRING" text from "MY_STRING"  
subStr = UI::_GET_TEXT_SUBSTRING("MY_STRING", 3, 6);  
```
</summary>
	]]

native "_GET_TEXT_SUBSTRING_SLICE"
    hash "0xCE94AEBA5D82908A"
	jhash (0xFA6373BB)
	arguments {
		charPtr "text",
		int "startPosition",
		int "endPosition",
	}
	ns "HUD"
	returns "charPtr"
	doc [[!
<summary>
```
Returns a substring that is between two specified positions. The length of the string will be calculated using (endPosition - startPosition).  
Example:  
// Get "STRING" text from "MY_STRING"  
subStr = UI::_GET_TEXT_SUBSTRING_SLICE("MY_STRING", 3, 9);  
// Overflows are possibly replaced with underscores (needs verification)  
subStr = UI::_GET_TEXT_SUBSTRING_SLICE("MY_STRING", 3, 10); // "STRING_"?  
```
</summary>
	]]

native "_GET_TEXT_SUBSTRING_SAFE"
    hash "0xB2798643312205C5"
	jhash (0x0183A66C)
	arguments {
		charPtr "text",
		int "position",
		int "length",
		int "maxLength",
	}
	ns "HUD"
	returns "charPtr"
	doc [[!
<summary>
```
Returns a substring of a specified length starting at a specified position. The result is guaranteed not to exceed the specified max length.  
NOTE: The 'maxLength' parameter might actually be the size of the buffer that is returned. More research is needed. -CL69  
Example:  
// Condensed example of how Rockstar uses this function  
strLen = UI::GET_LENGTH_OF_LITERAL_STRING(GAMEPLAY::GET_ONSCREEN_KEYBOARD_RESULT());  
subStr = UI::_GET_TEXT_SUBSTRING_SAFE(GAMEPLAY::GET_ONSCREEN_KEYBOARD_RESULT(), 0, strLen, 63);  
--  
"fm_race_creator.ysc", line 85115:  
// parameters modified for clarity  
BOOL sub_8e5aa(char *text, int length) {  
    for (i = 0; i <= (length - 2); i += 1) {  
        if (!GAMEPLAY::ARE_STRINGS_EQUAL(UI::_GET_TEXT_SUBSTRING_SAFE(text, i, i + 1, 1), " ")) {  
            return FALSE;  
        }  
    }  
    return TRUE;  
}  
```
</summary>
	]]

native "GIVE_PED_TO_PAUSE_MENU"
    hash "0xAC0BFBDC3BE00E14"
	jhash (0x2AD2C9CE)
	arguments {
		Ped "ped",
		int "p1",
	}
	ns "HUD"
	returns "void"
	doc [[!
<summary>
```
p1 is either 1 or 2 in the PC scripts.  
```
</summary>
	]]

native "HAS_ADDITIONAL_TEXT_LOADED"
    hash "0x02245FE4BED318B8"
	jhash (0xB0E56045)
	arguments {
		int "slot",
	}
	ns "HUD"
	returns "BOOL"
	doc [[!
	]]

native "_HAS_MP_GAMER_TAG_2"
    hash "0xEB709A36958ABE0D"
	jhash (0xF11414C4)
	arguments {
		int "gamerTagId",
	}
	alias "0xEB709A36958ABE0D"
	ns "HUD"
	returns "BOOL"
	doc [[!
	]]

native "_HAS_MP_GAMER_TAG"
    hash "0x6E0EB3EB47C8D7AA"
	jhash (0xEFD2564A)
	alias "0x6E0EB3EB47C8D7AA"
	ns "HUD"
	returns "BOOL"
	doc [[!
	]]

native "HIDE_HELP_TEXT_THIS_FRAME"
    hash "0xD46923FC481CA285"
	jhash (0xF3807BED)
	ns "HUD"
	returns "void"
	doc [[!
	]]

native "HAS_THIS_ADDITIONAL_TEXT_LOADED"
    hash "0xADBF060E2B30C5BC"
	jhash (0x80A52040)
	arguments {
		charPtr "gxt",
		int "slot",
	}
	ns "HUD"
	returns "BOOL"
	doc [[!
<summary>
```
Checks if the specified gxt has loaded into the passed slot.  
```
</summary>
	]]

native "HIDE_HUD_AND_RADAR_THIS_FRAME"
    hash "0x719FF505F097FD20"
	jhash (0xB75D4AD2)
	ns "HUD"
	returns "void"
	doc [[!
<summary>
```
I think this works, but seems to prohibit switching to other weapons (or accessing the weapon wheel)  
```
</summary>
	]]

native "HIDE_HUD_COMPONENT_THIS_FRAME"
    hash "0x6806C51AD12B83B8"
	jhash (0xDB2D0762)
	arguments {
		int "id",
	}
	ns "HUD"
	returns "void"
	doc [[!
	]]

native "_HIDE_HUD_NOTIFICATIONS_THIS_FRAME"
    hash "0x25F87B30C382FCA7"
	jhash (0x1E63088A)
	alias "0x25F87B30C382FCA7"
	ns "HUD"
	returns "void"
	doc [[!
<summary>
Once called each frame hides all above radar notifications.
</summary>
	]]

native "HIDE_NUMBER_ON_BLIP"
    hash "0x532CFF637EF80148"
	jhash (0x0B6D610D)
	arguments {
		Blip "blip",
	}
	ns "HUD"
	returns "void"
	doc [[!
	]]

native "HIDE_LOADING_ON_FADE_THIS_FRAME"
    hash "0x4B0311D3CDC4648F"
	jhash (0x35087963)
	ns "HUD"
	returns "void"
	doc [[!
	]]

native "HIDE_SCRIPTED_HUD_COMPONENT_THIS_FRAME"
    hash "0xE374C498D8BADC14"
	jhash (0x31ABA127)
	arguments {
		int "id",
	}
	ns "HUD"
	returns "void"
	doc [[!
	]]

native "HIDE_SPECIAL_ABILITY_LOCKON_OPERATION"
    hash "0x3EED80DFF7325CAA"
	jhash (0x872C2CFB)
	arguments {
		Any "p0",
		BOOL "p1",
	}
	ns "HUD"
	returns "void"
	doc [[!
<summary>
```
Hash collision  
If used with a Ped that has an AI blip as the first argument:  
- if p1 is true, a view cone is displayed with the AI blip  
```
</summary>
	]]

native "_IS_AI_BLIP_ALWAYS_SHOWN"
    hash "0x0C4BBF625CA98C4E"
	jhash (0xFFDF46F0)
	arguments {
		Ped "ped",
		BOOL "flag",
	}
	alias "0x0C4BBF625CA98C4E"
	ns "HUD"
	returns "void"
	doc [[!
<summary>
```
if "flag" is true, the AI blip will always be displayed for the specified ped, if it has an AI blip  
If "flag" is false, the AI blip will only be displayed when the player is in combat with the specified ped, if it has an AI blip  
```
</summary>
	]]

native "IS_BLIP_FLASHING"
    hash "0xA5E41FD83AD6CEF0"
	jhash (0x52E111D7)
	arguments {
		Blip "blip",
	}
	ns "HUD"
	returns "BOOL"
	doc [[!
	]]

native "IS_BLIP_ON_MINIMAP"
    hash "0xE41CA53051197A27"
	jhash (0x258CBA3A)
	arguments {
		Blip "blip",
	}
	ns "HUD"
	returns "BOOL"
	doc [[!
	]]

native "IS_BLIP_SHORT_RANGE"
    hash "0xDA5F8727EB75B926"
	jhash (0x1226765A)
	arguments {
		Blip "blip",
	}
	ns "HUD"
	returns "BOOL"
	doc [[!
	]]

native "IS_HELP_MESSAGE_BEING_DISPLAYED"
    hash "0x4D79439A6B55AC67"
	jhash (0xA65F262A)
	ns "HUD"
	returns "BOOL"
	doc [[!
	]]

native "IS_HELP_MESSAGE_FADING_OUT"
    hash "0x327EDEEEAC55C369"
	jhash (0x3E50AE92)
	ns "HUD"
	returns "BOOL"
	doc [[!
	]]

native "IS_HELP_MESSAGE_ON_SCREEN"
    hash "0xDAD37F45428801AE"
	jhash (0x4B3C9CA9)
	ns "HUD"
	returns "BOOL"
	doc [[!
<summary>
```
Doesn't appear to work, use IS_HELP_MESSAGE_BEING_DISPLAYED instead  
```
</summary>
	]]

native "IS_HUD_COMPONENT_ACTIVE"
    hash "0xBC4C9EA5391ECC0D"
	jhash (0x6214631F)
	arguments {
		int "id",
	}
	ns "HUD"
	returns "BOOL"
	doc [[!
<summary>
```
Full list of components below  
HUD = 0;  
HUD_WANTED_STARS = 1;  
HUD_WEAPON_ICON = 2;  
HUD_CASH = 3;  
HUD_MP_CASH = 4;  
HUD_MP_MESSAGE = 5;  
HUD_VEHICLE_NAME = 6;  
HUD_AREA_NAME = 7;  
HUD_VEHICLE_CLASS = 8;  
HUD_STREET_NAME = 9;  
HUD_HELP_TEXT = 10;  
HUD_FLOATING_HELP_TEXT_1 = 11;  
HUD_FLOATING_HELP_TEXT_2 = 12;  
HUD_CASH_CHANGE = 13;  
HUD_RETICLE = 14;  
HUD_SUBTITLE_TEXT = 15;  
HUD_RADIO_STATIONS = 16;  
HUD_SAVING_GAME = 17;  
HUD_GAME_STREAM = 18;  
HUD_WEAPON_WHEEL = 19;  
HUD_WEAPON_WHEEL_STATS = 20;  
MAX_HUD_COMPONENTS = 21;  
MAX_HUD_WEAPONS = 22;  
MAX_SCRIPTED_HUD_COMPONENTS = 141;  
```
</summary>
	]]

native "IS_HUD_HIDDEN"
    hash "0xA86478C6958735C5"
	jhash (0x40BADA1D)
	ns "HUD"
	returns "BOOL"
	doc [[!
	]]

native "IS_HUD_PREFERENCE_SWITCHED_ON"
    hash "0x1930DFA731813EC4"
	jhash (0xC3BC1B4F)
	ns "HUD"
	returns "BOOL"
	doc [[!
	]]

native "_IS_LOADING_PROMPT_BEING_DISPLAYED"
    hash "0xD422FCC5F239A915"
	jhash (0xB8B3A5D0)
	alias "0xD422FCC5F239A915"
	ns "HUD"
	returns "BOOL"
	doc [[!
	]]

native "IS_MESSAGE_BEING_DISPLAYED"
    hash "0x7984C03AA5CC2F41"
	jhash (0x6A77FE8D)
	ns "HUD"
	returns "BOOL"
	doc [[!
	]]

native "_IS_MINIMAP_AREA_REVEALED"
    hash "0x6E31B91145873922"
	jhash (0x65B705F6)
	arguments {
		float "x",
		float "y",
		float "radius",
	}
	alias "0x6E31B91145873922"
	ns "HUD"
	returns "BOOL"
	doc [[!
	]]

native "IS_MISSION_CREATOR_BLIP"
    hash "0x26F49BF3381D933D"
	jhash (0x24ACC4E9)
	arguments {
		Blip "blip",
	}
	ns "HUD"
	returns "BOOL"
	doc [[!
	]]

native "IS_MP_GAMER_TAG_ACTIVE"
    hash "0x4E929E7A5796FD26"
	jhash (0x60118951)
	arguments {
		int "gamerTagId",
	}
	alias "0x4E929E7A5796FD26"
	ns "HUD"
	returns "BOOL"
	doc [[!
	]]

native "IS_NAMED_RENDERTARGET_LINKED"
    hash "0x113750538FA31298"
	jhash (0x8B52601F)
	arguments {
		Hash "hash",
	}
	ns "HUD"
	returns "BOOL"
	doc [[!
	]]

native "IS_PAUSE_MENU_ACTIVE"
    hash "0xB0034A223497FFCB"
	jhash (0xD3600591)
	ns "HUD"
	returns "BOOL"
	doc [[!
	]]

native "IS_NAMED_RENDERTARGET_REGISTERED"
    hash "0x78DCDC15C9F116B4"
	jhash (0x284057F5)
	arguments {
		charPtr "p0",
	}
	ns "HUD"
	returns "BOOL"
	doc [[!
	]]

native "IS_PAUSE_MENU_RESTARTING"
    hash "0x1C491717107431C7"
	jhash (0x3C4CF4D9)
	ns "HUD"
	returns "BOOL"
	doc [[!
	]]

native "_IS_RADAR_ENABLED"
    hash "0xAF754F20EB5CD51A"
	alias "0xAF754F20EB5CD51A"
	ns "HUD"
	returns "BOOL"
	doc [[!
	]]

native "IS_RADAR_HIDDEN"
    hash "0x157F93B036700462"
	jhash (0x1AB3B954)
	ns "HUD"
	returns "BOOL"
	doc [[!
	]]

native "IS_RADAR_PREFERENCE_SWITCHED_ON"
    hash "0x9EB6522EA68F22FE"
	jhash (0x14AEAA28)
	ns "HUD"
	returns "BOOL"
	doc [[!
	]]

native "IS_SCRIPTED_HUD_COMPONENT_ACTIVE"
    hash "0xDD100EB17A94FF65"
	jhash (0x2B86F382)
	arguments {
		int "id",
	}
	ns "HUD"
	returns "BOOL"
	doc [[!
	]]

native "IS_SOCIAL_CLUB_ACTIVE"
    hash "0xC406BE343FC4B9AF"
	jhash (0xD4DA14EF)
	alias "0xC406BE343FC4B9AF"
	ns "HUD"
	returns "BOOL"
	doc [[!
	]]

native "IS_STREAMING_ADDITIONAL_TEXT"
    hash "0x8B6817B71B85EBF0"
	jhash (0xF079E4EB)
	arguments {
		int "p0",
	}
	ns "HUD"
	returns "BOOL"
	doc [[!
	]]

native "_IS_TEXT_CHAT_ACTIVE"
    hash "0xB118AF58B5F332A1"
	ns "HUD"
	returns "BOOL"
	doc [[!
<summary>
```
Returns whether or not the text chat (MULTIPLAYER_CHAT Scaleform component) is active.  
```
</summary>
	]]

native "IS_SUBTITLE_PREFERENCE_SWITCHED_ON"
    hash "0xAD6DACA4BA53E0A4"
	jhash (0x63BA19F5)
	ns "HUD"
	returns "BOOL"
	doc [[!
	]]

native "IS_WARNING_MESSAGE_ACTIVE"
    hash "0xE18B138FABC53103"
	jhash (0x94C834AD)
	alias "IS_MEDICAL_DISABLED"
	ns "HUD"
	returns "BOOL"
	doc [[!
	]]

native "IS_WAYPOINT_ACTIVE"
    hash "0x1DD1F58F493F1DA5"
	jhash (0x5E4DF47B)
	ns "HUD"
	returns "BOOL"
	doc [[!
	]]

native "LINK_NAMED_RENDERTARGET"
    hash "0xF6C09E276AEB3F2D"
	jhash (0x6844C4B9)
	arguments {
		Hash "hash",
	}
	ns "HUD"
	returns "void"
	doc [[!
	]]

native "KEY_HUD_COLOUR"
    hash "0x1A5CD7752DD28CD3"
	jhash (0xD5BFCADB)
	arguments {
		BOOL "p0",
		Any "p1",
	}
	ns "HUD"
	returns "void"
	doc [[!
<summary>
```
hash collision  
```
</summary>
	]]

native "LOCK_MINIMAP_ANGLE"
    hash "0x299FAEBB108AE05B"
	jhash (0xDEC733E4)
	arguments {
		int "angle",
	}
	ns "HUD"
	returns "void"
	doc [[!
<summary>
```
Locks the minimap to the specified angle in integer degrees.  
angle: The angle in whole degrees. If less than 0 or greater than 360, unlocks the angle.  
```
</summary>
	]]

native "LOCK_MINIMAP_POSITION"
    hash "0x1279E861A329E73F"
	jhash (0xB9632A91)
	arguments {
		float "x",
		float "y",
	}
	ns "HUD"
	returns "void"
	doc [[!
<summary>
```
Locks the minimap to the specified world position.  
```
</summary>
	]]

native "_LOG_DEBUG_INFO"
    hash "0x2162C446DFDF38FD"
	jhash (0x2DFD35C7)
	arguments {
		charPtr "p0",
	}
	alias "0x2162C446DFDF38FD"
	ns "HUD"
	returns "void"
	doc [[!
<summary>
```
Not present in retail version of the game, actual definiton seems to be  
_LOG_DEBUG_INFO(char* category, char* debugText);  
```
</summary>
	]]

native "0x04655F9D075D0AE5"
    hash "0x04655F9D075D0AE5"
	arguments {
		BOOL "p0",
	}
	ns "HUD"
	returns "void"
	doc [[!
	]]

native "0x052991E59076E4E4"
    hash "0x052991E59076E4E4"
	jhash (0xD43BB56D)
	arguments {
		Hash "p0",
		AnyPtr "p1",
	}
	ns "HUD"
	returns "BOOL"
	doc [[!
<summary>
```
p0 was always 0xAE2602A3.  
```
</summary>
	]]

native "0x06A320535F5F0248"
    hash "0x06A320535F5F0248"
	jhash (0x827F14DE)
	arguments {
		Any "p0",
	}
	ns "HUD"
	returns "void"
	doc [[!
	]]

native "0x0923DBF87DFF735E"
    hash "0x0923DBF87DFF735E"
	jhash (0xE010F081)
	arguments {
		float "x",
		float "y",
		float "z",
	}
	ns "HUD"
	returns "void"
	doc [[!
	]]

native "0x09C0403ED9A751C2"
    hash "0x09C0403ED9A751C2"
	jhash (0xE8C8E535)
	arguments {
		Any "p0",
	}
	ns "HUD"
	returns "BOOL"
	doc [[!
	]]

native "0x0CF54F20DE43879C"
    hash "0x0CF54F20DE43879C"
	arguments {
		Any "p0",
	}
	ns "HUD"
	returns "void"
	doc [[!
	]]

native "0x0C5A80A9E096D529"
    hash "0x0C5A80A9E096D529"
	arguments {
		Any "p0",
		AnyPtr "p1",
		Any "p2",
		Any "p3",
		Any "p4",
		Any "p5",
	}
	ns "HUD"
	returns "BOOL"
	doc [[!
	]]

native "0x1185A8087587322C"
    hash "0x1185A8087587322C"
	arguments {
		BOOL "p0",
	}
	ns "HUD"
	returns "void"
	doc [[!
<summary>
```
SET_TEXT_??? - Used in golf and golf_mp  
```
</summary>
	]]

native "0x1121BFA1A1A522A8"
    hash "0x1121BFA1A1A522A8"
	jhash (0x3F4AFB13)
	ns "HUD"
	returns "Any"
	doc [[!
	]]

native "0x13C4B962653A5280"
    hash "0x13C4B962653A5280"
	ns "HUD"
	returns "Any"
	doc [[!
	]]

native "0x14621BB1DF14E2B2"
    hash "0x14621BB1DF14E2B2"
	jhash (0xB9392CE7)
	ns "HUD"
	returns "void"
	doc [[!
<summary>
Enables frontend (works in custom frontends, not sure about regular pause menu) navigation keys on keyboard if they were disabled using the native below.

To disable the keys, use [`0xEC9264727EEC0F28`](#_0xEC9264727EEC0F28).
</summary>
	]]

native "0x14C9FDCC41F81F63"
    hash "0x14C9FDCC41F81F63"
	jhash (0xE70D1F43)
	arguments {
		BOOL "p0",
	}
	ns "HUD"
	returns "void"
	doc [[!
	]]

native "0x15CFA549788D35EF"
    hash "0x15CFA549788D35EF"
	ns "HUD"
	returns "void"
	doc [[!
<summary>
Displays loading screen tips, requires `_0x56C8B608CFD49854` to be called beforehand.
</summary>
	]]

native "0x16A304E6CB2BFAB9"
    hash "0x16A304E6CB2BFAB9"
	jhash (0x6BE3ACA8)
	arguments {
		int "r",
		int "g",
		int "b",
		int "a",
	}
	ns "HUD"
	returns "void"
	doc [[!
	]]

native "0x170F541E1CADD1DE"
    hash "0x170F541E1CADD1DE"
	arguments {
		BOOL "p0",
	}
	ns "HUD"
	returns "void"
	doc [[!
<summary>
```
Related to displaying cash on the HUD  
Always called before UI::_SET_SINGLEPLAYER_HUD_CASH in decompiled scripts  
```
</summary>
	]]

native "0x17AD8C9706BDD88A"
    hash "0x17AD8C9706BDD88A"
	jhash (0x24A97AF8)
	arguments {
		Any "p0",
	}
	ns "HUD"
	returns "void"
	doc [[!
<summary>
Related to notification color flashing, setting p0 to 0 invalidates a `_SET_NOTIFICATION_FLASH_COLOR` call for the target notification.

```
    var uVar0;
    var uVar1;
    var uVar2;
    var uVar3;
    int iVar4;
    iVar4 = 1;
    
    UI::GET_HUD_COLOUR(1, &uVar0, &uVar1, &uVar2, &uVar3);
    UI::_SET_NOTIFICATION_FLASH_COLOR(uVar0, uVar1, uVar2, uVar3);
    UI::_0x17AD8C9706BDD88A(iVar4);
    UI::_SET_NOTIFICATION_TEXT_ENTRY("RSMAN_N");
    UI::_DRAW_NOTIFICATION_2(1, 1);
```
</summary>
	]]

native "0x1EAC5F91BCBC5073"
    hash "0x1EAC5F91BCBC5073"
	jhash (0xFB9BABF5)
	arguments {
		BOOL "p0",
	}
	ns "HUD"
	returns "void"
	doc [[!
	]]

native "0x20FE7FDFEEAD38C0"
    hash "0x20FE7FDFEEAD38C0"
	jhash (0xCE36E3FE)
	ns "HUD"
	returns "void"
	doc [[!
	]]

native "0x1EAE6DD17B7A5EFA"
    hash "0x1EAE6DD17B7A5EFA"
	jhash (0x13E7A5A9)
	arguments {
		Any "p0",
	}
	ns "HUD"
	returns "void"
	doc [[!
	]]

native "0x211C4EF450086857"
    hash "0x211C4EF450086857"
	jhash (0x801D0D86)
	ns "HUD"
	returns "void"
	doc [[!
<summary>
**This native does absolutely nothing, just a nullsub**
</summary>
	]]

native "0x214CD562A939246A"
    hash "0x214CD562A939246A"
	jhash (0x812CBE0E)
	ns "HUD"
	returns "BOOL"
	doc [[!
<summary>
```
example  
if (UI::IS_HELP_MESSAGE_BEING_DISPLAYED()&&(!UI::_214CD562A939246A())) {  
        return 0;  
}  
```
</summary>
	]]

native "0x2432784ACA090DA4"
    hash "0x2432784ACA090DA4"
	jhash (0x45472FD5)
	arguments {
		Any "p0",
	}
	ns "HUD"
	returns "BOOL"
	doc [[!
<summary>
```
p0 is int or bool  
```
</summary>
	]]

native "0x24A49BEAF468DC90"
    hash "0x24A49BEAF468DC90"
	arguments {
		Any "p0",
		AnyPtr "p1",
		Any "p2",
		Any "p3",
		Any "p4",
	}
	ns "HUD"
	returns "BOOL"
	doc [[!
	]]

native "0x25615540D894B814"
    hash "0x25615540D894B814"
	jhash (0x40E25DB8)
	arguments {
		Any "p0",
		BOOL "p1",
	}
	ns "HUD"
	returns "void"
	doc [[!
	]]

native "0x2632482FD6B9AB87"
    hash "0x2632482FD6B9AB87"
	ns "HUD"
	returns "void"
	doc [[!
	]]

native "0x2708FC083123F9FF"
    hash "0x2708FC083123F9FF"
	jhash (0xCBEC9369)
	ns "HUD"
	returns "void"
	doc [[!
	]]

native "0x2790F4B17D098E26"
    hash "0x2790F4B17D098E26"
	arguments {
		Any "p0",
	}
	ns "HUD"
	returns "void"
	doc [[!
	]]

native "0x2916A928514C9827"
    hash "0x2916A928514C9827"
	ns "HUD"
	returns "void"
	doc [[!
	]]

native "0x2A25ADC48F87841F"
    hash "0x2A25ADC48F87841F"
	jhash (0x016D7AF9)
	ns "HUD"
	returns "Any"
	doc [[!
	]]

native "0x2C173AE2BDB9385E"
    hash "0x2C173AE2BDB9385E"
	arguments {
		Blip "blip",
	}
	ns "HUD"
	returns "Any"
	doc [[!
<summary>
Seems to always return 0 from what I can tell. I've tried a lot of different blip related natives and it always seems to return 0.
Decompiled scripts always pass a blip handle as p0.

```
// freemode.c
if (HUD::DOES_BLIP_EXIST(Global_2415594[iParam0]))
{
    if (HUD::_0x2C173AE2BDB9385E(Global_2415594[iParam0]) != 0)
    {
        return 1;
    }
}
```
</summary>
<param name="blip">The blip to check.</param>
<returns>Seems to always return 0 from what I can tell. I've tried a lot of different blip related natives and it always seems to return 0.</returns>
	]]

native "0x2C9F302398E13141"
    hash "0x2C9F302398E13141"
	arguments {
		Any "p0",
		Any "p1",
	}
	ns "HUD"
	returns "void"
	doc [[!
	]]

native "0x2E22FEFA0100275E"
    hash "0x2E22FEFA0100275E"
	jhash (0x96863460)
	ns "HUD"
	returns "Any"
	doc [[!
	]]

native "0x2DE6C5E2E996F178"
    hash "0x2DE6C5E2E996F178"
	arguments {
		Any "p0",
	}
	ns "HUD"
	returns "void"
	doc [[!
	]]

native "0x2F057596F2BD0061"
    hash "0x2F057596F2BD0061"
	jhash (0xC85C4487)
	ns "HUD"
	returns "Any"
	doc [[!
<summary>
```
Appears to return whether the player is using the pause menu store. Can't be sure though.  
```
</summary>
	]]

native "0x311438A071DD9B1A"
    hash "0x311438A071DD9B1A"
	jhash (0xEEBDFE55)
	arguments {
		Any "p0",
		Any "p1",
		Any "p2",
	}
	ns "HUD"
	returns "void"
	doc [[!
	]]

native "0x317EBA71D7543F52"
    hash "0x317EBA71D7543F52"
	arguments {
		AnyPtr "p0",
		AnyPtr "p1",
		AnyPtr "p2",
		AnyPtr "p3",
	}
	ns "HUD"
	returns "void"
	doc [[!
<summary>
```
From the decompiled scripts, called 61 times:  
UI::_317EBA71D7543F52(&v_13, &v_13, &v_3, &v_3);  
```
</summary>
	]]

native "0x32888337579A5970"
    hash "0x32888337579A5970"
	ns "HUD"
	returns "void"
	doc [[!
<summary>
Stops loading screen tips shown by invoking either `_0x488043841BBE156F` or `_0x15CFA549788D35EF`
</summary>
	]]

native "0x359AF31A4B52F5ED"
    hash "0x359AF31A4B52F5ED"
	ns "HUD"
	returns "Any"
	doc [[!
	]]

native "0x33EE12743CCD6343"
    hash "0x33EE12743CCD6343"
	jhash (0xE05E7052)
	arguments {
		Any "p0",
		Any "p1",
		Any "p2",
	}
	ns "HUD"
	returns "Any"
	doc [[!
	]]

native "0x35EDD5B2E3FF01C0"
    hash "0x35EDD5B2E3FF01C0"
	jhash (0x20FD3E87)
	ns "HUD"
	returns "void"
	doc [[!
	]]

native "0x36C1451A88A09630"
    hash "0x36C1451A88A09630"
	jhash (0x8543AAC8)
	arguments {
		AnyPtr "p0",
		AnyPtr "p1",
	}
	ns "HUD"
	returns "void"
	doc [[!
	]]

native "0x3BAB9A4E4F2FF5C7"
    hash "0x3BAB9A4E4F2FF5C7"
	jhash (0xD3BF3ABD)
	ns "HUD"
	returns "Any"
	doc [[!
	]]

native "0x3D3D15AF7BCAAF83"
    hash "0x3D3D15AF7BCAAF83"
	jhash (0xC3DCBEDB)
	arguments {
		Any "p0",
		BOOL "p1",
		BOOL "p2",
	}
	ns "HUD"
	returns "void"
	doc [[!
	]]

native "0x3D9ACB1EB139E702"
    hash "0x3D9ACB1EB139E702"
	ns "HUD"
	returns "Any"
	doc [[!
	]]

native "0x3DDA37128DD1ACA8"
    hash "0x3DDA37128DD1ACA8"
	jhash (0xE87CBE4C)
	arguments {
		BOOL "p0",
	}
	ns "HUD"
	returns "void"
	doc [[!
	]]

native "0x3F5CC444DCAAA8F2"
    hash "0x3F5CC444DCAAA8F2"
	jhash (0x7FB6FB2A)
	arguments {
		Any "p0",
		Any "p1",
		BOOL "p2",
	}
	ns "HUD"
	returns "void"
	doc [[!
	]]

native "0x3F0CF9CB7E589B88"
    hash "0x3F0CF9CB7E589B88"
	ns "HUD"
	returns "Any"
	doc [[!
	]]

native "0x41350B4FC28E3941"
    hash "0x41350B4FC28E3941"
	arguments {
		BOOL "p0",
	}
	ns "HUD"
	returns "void"
	doc [[!
	]]

native "0x4167EFE0527D706E"
    hash "0x4167EFE0527D706E"
	jhash (0xC5EB849A)
	ns "HUD"
	returns "BOOL"
	doc [[!
	]]

native "0x402F9ED62087E898"
    hash "0x402F9ED62087E898"
	jhash (0xC47AB1B0)
	ns "HUD"
	returns "void"
	doc [[!
	]]

native "0x4A0C7C9BB10ABB36"
    hash "0x4A0C7C9BB10ABB36"
	jhash (0x44018EDB)
	arguments {
		BOOL "p0",
	}
	ns "HUD"
	returns "void"
	doc [[!
	]]

native "0x488043841BBE156F"
    hash "0x488043841BBE156F"
	ns "HUD"
	returns "void"
	doc [[!
<summary>
Displays loading screen tips, requires `_0x56C8B608CFD49854` to be called beforehand.
</summary>
	]]

native "0x4B5B620C9B59ED34"
    hash "0x4B5B620C9B59ED34"
	arguments {
		Any "p0",
		Any "p1",
	}
	ns "HUD"
	returns "void"
	doc [[!
	]]

native "0x4A9923385BDB9DAD"
    hash "0x4A9923385BDB9DAD"
	jhash (0x87871CE0)
	ns "HUD"
	returns "BOOL"
	doc [[!
<summary>
```
example:  
if (!((v_7)==UI::_4A9923385BDB9DAD())) {  
        UI::SET_BLIP_SPRITE((v_6), (v_7));  
    }  
This function is hard-coded to always return 1.  
```
</summary>
	]]

native "0x551DF99658DB6EE8"
    hash "0x551DF99658DB6EE8"
	jhash (0x786CA0A2)
	arguments {
		float "p0",
		float "p1",
		float "p2",
	}
	ns "HUD"
	returns "Any"
	doc [[!
	]]

native "0x56C8B608CFD49854"
    hash "0x56C8B608CFD49854"
	jhash (0xF881AB87)
	ns "HUD"
	returns "void"
	doc [[!
<summary>
Enables loading screen tips to be be shown (`_0x15CFA549788D35EF` and `_0x488043841BBE156F`), blocks other kinds of notifications from being displayed (at least from current script). Call `0xADED7F5748ACAFE6` to display those again.
</summary>
	]]

native "0x4E3CD0EF8A489541"
    hash "0x4E3CD0EF8A489541"
	jhash (0xDA7951A2)
	ns "HUD"
	returns "Any"
	doc [[!
	]]

native "0x54318C915D27E4CE"
    hash "0x54318C915D27E4CE"
	jhash (0x43996428)
	arguments {
		Any "p0",
		BOOL "p1",
	}
	ns "HUD"
	returns "void"
	doc [[!
	]]

native "0x57D760D55F54E071"
    hash "0x57D760D55F54E071"
	jhash (0x9854485F)
	arguments {
		BOOL "p0",
	}
	ns "HUD"
	returns "void"
	doc [[!
	]]

native "0x577599CCED639CA2"
    hash "0x577599CCED639CA2"
	arguments {
		Any "p0",
	}
	ns "HUD"
	returns "void"
	doc [[!
	]]

native "0x593FEAE1F73392D4"
    hash "0x593FEAE1F73392D4"
	jhash (0x22CA9F2A)
	ns "HUD"
	returns "Any"
	doc [[!
	]]

native "0x5FBD7095FE7AE57F"
    hash "0x5FBD7095FE7AE57F"
	jhash (0x51972B04)
	arguments {
		Any "p0",
		floatPtr "p1",
	}
	ns "HUD"
	returns "BOOL"
	doc [[!
	]]

native "0x583049884A2EEE3C"
    hash "0x583049884A2EEE3C"
	jhash (0xC8BAB2F2)
	ns "HUD"
	returns "void"
	doc [[!
	]]

native "0x5BFF36D6ED83E0AE"
    hash "0x5BFF36D6ED83E0AE"
	ns "HUD"
	returns "Vector3"
	doc [[!
	]]

native "0x60E892BA4F5BDCA4"
    hash "0x60E892BA4F5BDCA4"
	ns "HUD"
	returns "void"
	doc [[!
<summary>
```
Something with Social Club or online.  
```
</summary>
	]]

native "0x60734CC207C9833C"
    hash "0x60734CC207C9833C"
	jhash (0xE7E1E32B)
	arguments {
		BOOL "p0",
	}
	ns "HUD"
	returns "void"
	doc [[!
	]]

native "0x632B2940C67F4EA9"
    hash "0x632B2940C67F4EA9"
	arguments {
		int "scaleformHandle",
		AnyPtr "p1",
		AnyPtr "p2",
		AnyPtr "p3",
	}
	ns "HUD"
	returns "BOOL"
	doc [[!
	]]

native "0x62E849B7EB28E770"
    hash "0x62E849B7EB28E770"
	arguments {
		BOOL "p0",
	}
	ns "HUD"
	returns "void"
	doc [[!
	]]

native "0x66E7CB63C97B7D20"
    hash "0x66E7CB63C97B7D20"
	jhash (0x92DAFA78)
	ns "HUD"
	returns "Any"
	doc [[!
	]]

native "0x67EEDEA1B9BAFD94"
    hash "0x67EEDEA1B9BAFD94"
	jhash (0x0D9969E4)
	ns "HUD"
	returns "void"
	doc [[!
	]]

native "0x6A1738B4323FE2D9"
    hash "0x6A1738B4323FE2D9"
	arguments {
		Any "p0",
	}
	ns "HUD"
	returns "void"
	doc [[!
	]]

native "0x6B1DE27EE78E6A19"
    hash "0x6B1DE27EE78E6A19"
	jhash (0x79A6CAF6)
	arguments {
		Any "p0",
	}
	ns "HUD"
	returns "void"
	doc [[!
	]]

native "0x6CDD58146A436083"
    hash "0x6CDD58146A436083"
	arguments {
		Any "p0",
	}
	ns "HUD"
	returns "void"
	doc [[!
	]]

native "0x6EF54AB721DC6242"
    hash "0x6EF54AB721DC6242"
	ns "HUD"
	returns "void"
	doc [[!
	]]

native "0x6F1554B0CC2089FA"
    hash "0x6F1554B0CC2089FA"
	jhash (0xA7C8594B)
	arguments {
		BOOL "p0",
	}
	ns "HUD"
	returns "void"
	doc [[!
	]]

native "0x72C1056D678BB7D8"
    hash "0x72C1056D678BB7D8"
	jhash (0x83B608A0)
	arguments {
		Hash "weaponHash",
	}
	ns "HUD"
	returns "void"
	doc [[!
<summary>
```
Appears to be a HIDE_* native.  
```
</summary>
	]]

native "0x6F72CD94F7B5B68C"
    hash "0x6F72CD94F7B5B68C"
	jhash (0x9D4934F4)
	ns "HUD"
	returns "int"
	doc [[!
	]]

native "0x72DD432F3CDFC0EE"
    hash "0x72DD432F3CDFC0EE"
	jhash (0xBF25E7B2)
	arguments {
		float "posX",
		float "posY",
		float "posZ",
		float "radius",
		int "p4",
	}
	ns "HUD"
	returns "void"
	doc [[!
	]]

native "0x7669F9E39DC17063"
    hash "0x7669F9E39DC17063"
	jhash (0xC380AC85)
	ns "HUD"
	returns "void"
	doc [[!
<summary>
Enables drawing some hud components, such as help labels, this frame, when the player is dead.
</summary>
	]]

native "0x75A16C3DA34F1245"
    hash "0x75A16C3DA34F1245"
	jhash (0x1D99F676)
	arguments {
		Blip "blip",
		BOOL "p1",
	}
	ns "HUD"
	returns "void"
	doc [[!
	]]

native "0x7679CC1BCEBE3D4C"
    hash "0x7679CC1BCEBE3D4C"
	jhash (0x198F32D7)
	arguments {
		Any "p0",
		float "p1",
		float "p2",
	}
	ns "HUD"
	returns "void"
	doc [[!
	]]

native "0x77F16B447824DA6C"
    hash "0x77F16B447824DA6C"
	jhash (0x0A89336C)
	arguments {
		Any "p0",
	}
	ns "HUD"
	returns "void"
	doc [[!
	]]

native "0x7792424AA0EAC32E"
    hash "0x7792424AA0EAC32E"
	jhash (0x2F9A309C)
	ns "HUD"
	returns "void"
	doc [[!
	]]

native "0x784BA7E0ECEB4178"
    hash "0x784BA7E0ECEB4178"
	jhash (0x93045157)
	arguments {
		Any "p0",
		float "x",
		float "y",
		float "z",
	}
	ns "HUD"
	returns "void"
	doc [[!
	]]

native "0x7AE0589093A2E088"
    hash "0x7AE0589093A2E088"
	jhash (0x8C90D22F)
	arguments {
		Any "p0",
		Any "p1",
		Any "p2",
		Any "p3",
		Any "p4",
		Any "p5",
	}
	ns "HUD"
	returns "Any"
	doc [[!
	]]

native "0x788E7FD431BD67F1"
    hash "0x788E7FD431BD67F1"
	jhash (0x97852A82)
	arguments {
		Any "p0",
		Any "p1",
		Any "p2",
		Any "p3",
		Any "p4",
		Any "p5",
	}
	ns "HUD"
	returns "void"
	doc [[!
	]]

native "0x7C226D5346D4D10A"
    hash "0x7C226D5346D4D10A"
	arguments {
		Any "p0",
	}
	ns "HUD"
	returns "void"
	doc [[!
	]]

native "0x7B21E0BB01E8224A"
    hash "0x7B21E0BB01E8224A"
	arguments {
		Any "p0",
	}
	ns "HUD"
	returns "void"
	doc [[!
	]]

native "0x7CD934010E115C2C"
    hash "0x7CD934010E115C2C"
	jhash (0x06349065)
	arguments {
		Ped "ped",
	}
	ns "HUD"
	returns "void"
	doc [[!
	]]

native "0x7E17BE53E1AAABAF"
    hash "0x7E17BE53E1AAABAF"
	jhash (0x6025AA2F)
	arguments {
		intPtr "p0",
		intPtr "p1",
		intPtr "p2",
	}
	ns "HUD"
	returns "void"
	doc [[!
	]]

native "0x801879A9B4F4B2FB"
    hash "0x801879A9B4F4B2FB"
	ns "HUD"
	returns "Any"
	doc [[!
	]]

native "0x80FE4F3AB4E1B62A"
    hash "0x80FE4F3AB4E1B62A"
	jhash (0x3CD4307C)
	ns "HUD"
	returns "void"
	doc [[!
	]]

native "0x82CEDC33687E1F50"
    hash "0x82CEDC33687E1F50"
	jhash (0x2F28F0A6)
	arguments {
		BOOL "p0",
	}
	ns "HUD"
	returns "void"
	doc [[!
	]]

native "0x817B86108EB94E51"
    hash "0x817B86108EB94E51"
	jhash (0xD2161E77)
	arguments {
		BOOL "p0",
		AnyPtr "p1",
		AnyPtr "p2",
		AnyPtr "p3",
		AnyPtr "p4",
		AnyPtr "p5",
		AnyPtr "p6",
		AnyPtr "p7",
		AnyPtr "p8",
	}
	ns "HUD"
	returns "void"
	doc [[!
<summary>
```
UI::_817B86108EB94E51(1, &g_189F36._f10CD1[0/*16*/], &g_189F36._f10CD1[1/*16*/], &g_189F36._f10CD1[2/*16*/], &g_189F36._f10CD1[3/*16*/], &g_189F36._f10CD1[4/*16*/], &g_189F36._f10CD1[5/*16*/], &g_189F36._f10CD1[6/*16*/], &g_189F36._f10CD1[7/*16*/]);  
```
</summary>
	]]

native "0x84698AB38D0C6636"
    hash "0x84698AB38D0C6636"
	jhash (0xC51BC42F)
	arguments {
		Hash "hash",
	}
	ns "HUD"
	returns "BOOL"
	doc [[!
	]]

native "0x8817605C2BA76200"
    hash "0x8817605C2BA76200"
	ns "HUD"
	returns "void"
	doc [[!
	]]

native "0x8EFCCF6EC66D85E4"
    hash "0x8EFCCF6EC66D85E4"
	arguments {
		AnyPtr "p0",
		AnyPtr "p1",
		AnyPtr "p2",
		BOOL "p3",
		BOOL "p4",
	}
	ns "HUD"
	returns "Any"
	doc [[!
<summary>
```
Example, only occurrence in the scripts:  
UI::_8EFCCF6EC66D85E4(&v_23, &v_13, &v_13, 1, v_34);  
```
</summary>
	]]

native "0x8F08017F9D7C47BD"
    hash "0x8F08017F9D7C47BD"
	arguments {
		Any "p0",
		AnyPtr "p1",
		Any "p2",
	}
	ns "HUD"
	returns "BOOL"
	doc [[!
	]]

native "0x900086F371220B6F"
    hash "0x900086F371220B6F"
	jhash (0xDA0AF00E)
	arguments {
		BOOL "p0",
		Any "p1",
		Any "p2",
	}
	ns "HUD"
	returns "void"
	doc [[!
<summary>
```
SET_GPS_???  
```
</summary>
	]]

native "0x9049FE339D5F6F6F"
    hash "0x9049FE339D5F6F6F"
	jhash (0x199DED14)
	ns "HUD"
	returns "Any"
	doc [[!
	]]

native "0x90A6526CF0381030"
    hash "0x90A6526CF0381030"
	jhash (0xD6CC4766)
	arguments {
		Any "p0",
		AnyPtr "p1",
		Any "p2",
		Any "p3",
	}
	ns "HUD"
	returns "BOOL"
	doc [[!
	]]

native "0x9245E81072704B8A"
    hash "0x9245E81072704B8A"
	arguments {
		BOOL "p0",
	}
	ns "HUD"
	returns "void"
	doc [[!
	]]

native "0x9135584D09A3437E"
    hash "0x9135584D09A3437E"
	jhash (0x9D2C94FA)
	ns "HUD"
	returns "Any"
	doc [[!
<summary>
```
return bool according to scripts  
```
</summary>
	]]

native "0x95CF81BD06EE1887"
    hash "0x95CF81BD06EE1887"
	jhash (0x7BFFE82F)
	ns "HUD"
	returns "void"
	doc [[!
	]]

native "0x98215325A695E78A"
    hash "0x98215325A695E78A"
	arguments {
		BOOL "p0",
	}
	ns "HUD"
	returns "void"
	doc [[!
	]]

native "0x975D66A0BC17064C"
    hash "0x975D66A0BC17064C"
	jhash (0xF07D8CEF)
	arguments {
		Any "p0",
	}
	ns "HUD"
	returns "void"
	doc [[!
	]]

native "0x9C16459B2324B2CF"
    hash "0x9C16459B2324B2CF"
	arguments {
		Any "p0",
		Any "p1",
	}
	ns "HUD"
	returns "void"
	doc [[!
	]]

native "0x98C3CF913D895111"
    hash "0x98C3CF913D895111"
	arguments {
		Any "p0",
		Any "p1",
	}
	ns "HUD"
	returns "Any"
	doc [[!
	]]

native "0x9E778248D6685FE0"
    hash "0x9E778248D6685FE0"
	jhash (0x7AD67C95)
	arguments {
		charPtr "p0",
	}
	ns "HUD"
	returns "void"
	doc [[!
<summary>
```
UI::0x7AD67C95("Gallery");  
UI::0x7AD67C95("Missions");  
UI::0x7AD67C95("General");  
UI::0x7AD67C95("Playlists");  
```
</summary>
	]]

native "0xA13C11E1B5C06BFC"
    hash "0xA13C11E1B5C06BFC"
	jhash (0x520FCB6D)
	ns "HUD"
	returns "void"
	doc [[!
	]]

native "0xA13E93403F26C812"
    hash "0xA13E93403F26C812"
	arguments {
		Any "p0",
	}
	ns "HUD"
	returns "Any"
	doc [[!
	]]

native "0xA277800A9EAE340E"
    hash "0xA277800A9EAE340E"
	ns "HUD"
	returns "Any"
	doc [[!
	]]

native "0xA17784FCA9548D15"
    hash "0xA17784FCA9548D15"
	arguments {
		Any "p0",
		Any "p1",
		Any "p2",
	}
	ns "HUD"
	returns "void"
	doc [[!
	]]

native "0xA48931185F0536FE"
    hash "0xA48931185F0536FE"
	jhash (0x22E9F555)
	ns "HUD"
	returns "Hash"
	doc [[!
	]]

native "0xA238192F33110615"
    hash "0xA238192F33110615"
	jhash (0x46794EB2)
	arguments {
		intPtr "p0",
		intPtr "p1",
		intPtr "p2",
	}
	ns "HUD"
	returns "BOOL"
	doc [[!
	]]

native "0xA8B6AFDAC320AC87"
    hash "0xA8B6AFDAC320AC87"
	arguments {
		Any "p0",
		Any "p1",
	}
	ns "HUD"
	returns "void"
	doc [[!
	]]

native "0xA4DEDE28B1814289"
    hash "0xA4DEDE28B1814289"
	jhash (0x52746FE1)
	ns "HUD"
	returns "void"
	doc [[!
	]]

native "0xA9CBFD40B3FA3010"
    hash "0xA9CBFD40B3FA3010"
	jhash (0xC5223796)
	ns "HUD"
	returns "Any"
	doc [[!
	]]

native "0xA8FDB297A8D25FBA"
    hash "0xA8FDB297A8D25FBA"
	jhash (0x5205C6F5)
	ns "HUD"
	returns "void"
	doc [[!
	]]

native "0xADED7F5748ACAFE6"
    hash "0xADED7F5748ACAFE6"
	jhash (0x1D6859CA)
	ns "HUD"
	returns "void"
	doc [[!
<summary>
Displays "normal" notifications again after calling `_0x56C8B608CFD49854` (those that were drawn before calling this native too), though those will have a weird offset and stay on screen forever (tested with notifications created from same script).
</summary>
	]]

native "0xA905192A6781C41B"
    hash "0xA905192A6781C41B"
	jhash (0xFE485135)
	arguments {
		float "x",
		float "y",
		float "z",
	}
	ns "HUD"
	returns "void"
	doc [[!
	]]

native "0xAF42195A42C63BBA"
    hash "0xAF42195A42C63BBA"
	ns "HUD"
	returns "Any"
	doc [[!
	]]

native "0xB094BC1DB4018240"
    hash "0xB094BC1DB4018240"
	jhash (0x18B012B7)
	arguments {
		Any "p0",
		Any "p1",
		float "p2",
		float "p3",
	}
	ns "HUD"
	returns "void"
	doc [[!
	]]

native "0xB2A592B04648A9CB"
    hash "0xB2A592B04648A9CB"
	ns "HUD"
	returns "Pickup"
	doc [[!
	]]

native "0xB13DCB4C6FAAD238"
    hash "0xB13DCB4C6FAAD238"
	arguments {
		Ped "ped",
		BOOL "toggle",
		Any "p3",
	}
	ns "HUD"
	returns "void"
	doc [[!
<summary>
```
Called in decompiled scripts as alternative to _SET_PED_ENEMY_AI_BLIP in an else, when the additional parameter p3 is not -1  
```
</summary>
	]]

native "0xB6871B0555B02996"
    hash "0xB6871B0555B02996"
	jhash (0x5E93FBFA)
	arguments {
		AnyPtr "p0",
		AnyPtr "p1",
		Any "p2",
		AnyPtr "p3",
		AnyPtr "p4",
		Any "p5",
	}
	ns "HUD"
	returns "Any"
	doc [[!
	]]

native "0xB99C4E4D9499DF29"
    hash "0xB99C4E4D9499DF29"
	arguments {
		BOOL "p0",
	}
	ns "HUD"
	returns "void"
	doc [[!
	]]

native "0xB552929B85FC27EC"
    hash "0xB552929B85FC27EC"
	arguments {
		Any "p0",
		Any "p1",
	}
	ns "HUD"
	returns "void"
	doc [[!
	]]

native "0xBA751764F0821256"
    hash "0xBA751764F0821256"
	jhash (0x7F349900)
	ns "HUD"
	returns "void"
	doc [[!
	]]

native "0xB695E2CD0A2DA9EE"
    hash "0xB695E2CD0A2DA9EE"
	jhash (0x4A4A40A4)
	ns "HUD"
	returns "void"
	doc [[!
	]]

native "0xBA8D65C1C65702E5"
    hash "0xBA8D65C1C65702E5"
	arguments {
		BOOL "p0",
	}
	ns "HUD"
	returns "void"
	doc [[!
	]]

native "0xB9C362BABECDDC7A"
    hash "0xB9C362BABECDDC7A"
	arguments {
		Any "p0",
		Any "p1",
		Any "p2",
		Any "p3",
		Any "p4",
	}
	ns "HUD"
	returns "void"
	doc [[!
	]]

native "0xBF4F34A85CA2970C"
    hash "0xBF4F34A85CA2970C"
	jhash (0x317775DF)
	ns "HUD"
	returns "void"
	doc [[!
	]]

native "0xBAE4F9B97CD43B30"
    hash "0xBAE4F9B97CD43B30"
	arguments {
		BOOL "p0",
	}
	ns "HUD"
	returns "void"
	doc [[!
	]]

native "0xC2D2AD9EAAE265B8"
    hash "0xC2D2AD9EAAE265B8"
	ns "HUD"
	returns "Any"
	doc [[!
	]]

native "0xC2D15BEF167E27BC"
    hash "0xC2D15BEF167E27BC"
	jhash (0xF4F3C796)
	ns "HUD"
	returns "void"
	doc [[!
	]]

native "0xC594B315EDF2D4AF"
    hash "0xC594B315EDF2D4AF"
	jhash (0x41B0D022)
	arguments {
		Ped "ped",
	}
	ns "HUD"
	returns "void"
	doc [[!
<summary>
```
Interesting fact: A hash collision for this is RESET_JETPACK_MODEL_SETTINGS  
```
</summary>
	]]

native "0xC78E239AC5B2DDB9"
    hash "0xC78E239AC5B2DDB9"
	jhash (0x6C67131A)
	arguments {
		BOOL "p0",
		Any "p1",
		Any "p2",
	}
	ns "HUD"
	returns "void"
	doc [[!
	]]

native "0xC4278F70131BAA6D"
    hash "0xC4278F70131BAA6D"
	jhash (0x6AA6A1CC)
	arguments {
		Blip "p0",
		BOOL "p1",
	}
	ns "HUD"
	returns "void"
	doc [[!
	]]

native "0xC8F3AAF93D0600BF"
    hash "0xC8F3AAF93D0600BF"
	jhash (0x4FA43BA4)
	arguments {
		Any "p0",
		Any "p1",
		Any "p2",
		Any "p3",
	}
	ns "HUD"
	returns "Any"
	doc [[!
	]]

native "0xC65AB383CD91DF98"
    hash "0xC65AB383CD91DF98"
	jhash (0x71077FBD)
	ns "HUD"
	returns "void"
	doc [[!
<summary>
```
Often called after _REMOVE_LOADING_PROMPT. Unsure what exactly it does, but It references busy_spinner, I can only guess its freeing the busy_spinner scaleform from memory  
```
</summary>
	]]

native "0xC8E1071177A23BE5"
    hash "0xC8E1071177A23BE5"
	arguments {
		AnyPtr "p0",
		AnyPtr "p1",
		AnyPtr "p2",
	}
	ns "HUD"
	returns "BOOL"
	doc [[!
	]]

native "0xCC3FDDED67BCFC63"
    hash "0xCC3FDDED67BCFC63"
	jhash (0x630CD8EE)
	ns "HUD"
	returns "void"
	doc [[!
<summary>
Allows opening the pause menu this frame, when the player is dead.
</summary>
	]]

native "0xCDCA26E80FAECB8F"
    hash "0xCDCA26E80FAECB8F"
	jhash (0xC84BE309)
	ns "HUD"
	returns "void"
	doc [[!
	]]

native "0xCA6B2F7CE32AB653"
    hash "0xCA6B2F7CE32AB653"
	arguments {
		Any "p0",
		AnyPtr "p1",
		Any "p2",
	}
	ns "HUD"
	returns "BOOL"
	doc [[!
	]]

native "0xCEF214315D276FD1"
    hash "0xCEF214315D276FD1"
	jhash (0xFF06772A)
	arguments {
		BOOL "p0",
	}
	ns "HUD"
	returns "void"
	doc [[!
	]]

native "0xCD74233600C4EA6B"
    hash "0xCD74233600C4EA6B"
	arguments {
		Any "p0",
	}
	ns "HUD"
	returns "void"
	doc [[!
	]]

native "0xD1942374085C8469"
    hash "0xD1942374085C8469"
	arguments {
		Any "p0",
	}
	ns "HUD"
	returns "void"
	doc [[!
	]]

native "0xD12882D3FF82BF11"
    hash "0xD12882D3FF82BF11"
	ns "HUD"
	returns "void"
	doc [[!
	]]

native "0xD2B32BE3FC1626C6"
    hash "0xD2B32BE3FC1626C6"
	jhash (0x5F86AA39)
	ns "HUD"
	returns "void"
	doc [[!
	]]

native "0xD2049635DEB9C375"
    hash "0xD2049635DEB9C375"
	jhash (0xE8D3A910)
	ns "HUD"
	returns "void"
	doc [[!
<summary>
**This native does absolutely nothing, just a nullsub**
</summary>
	]]

native "0xD68A5FF8A3A89874"
    hash "0xD68A5FF8A3A89874"
	jhash (0x0E41E45C)
	arguments {
		int "r",
		int "g",
		int "b",
		int "a",
	}
	ns "HUD"
	returns "void"
	doc [[!
	]]

native "0xD4438C0564490E63"
    hash "0xD4438C0564490E63"
	jhash (0x709B4BCB)
	ns "HUD"
	returns "void"
	doc [[!
	]]

native "0xDAF87174BE7454FF"
    hash "0xDAF87174BE7454FF"
	arguments {
		Any "p0",
	}
	ns "HUD"
	returns "BOOL"
	doc [[!
	]]

native "0xD8E694757BCEA8E9"
    hash "0xD8E694757BCEA8E9"
	jhash (0x62BABF2C)
	ns "HUD"
	returns "void"
	doc [[!
	]]

native "0xDD2238F57B977751"
    hash "0xDD2238F57B977751"
	jhash (0x3E47F357)
	arguments {
		Any "p0",
	}
	ns "HUD"
	returns "BOOL"
	doc [[!
	]]

native "0xDE03620F8703A9DF"
    hash "0xDE03620F8703A9DF"
	ns "HUD"
	returns "Any"
	doc [[!
	]]

native "0xDB34E8D56FC13B08"
    hash "0xDB34E8D56FC13B08"
	jhash (0x7F93799B)
	arguments {
		Any "p0",
		BOOL "p1",
		BOOL "p2",
	}
	ns "HUD"
	returns "void"
	doc [[!
	]]

native "0xE1CD1E48E025E661"
    hash "0xE1CD1E48E025E661"
	jhash (0xD3F40140)
	ns "HUD"
	returns "void"
	doc [[!
	]]

native "0xE0130B41D3CF4574"
    hash "0xE0130B41D3CF4574"
	jhash (0xA4098ACC)
	ns "HUD"
	returns "float"
	doc [[!
	]]

native "0xE6DE0561D9232A64"
    hash "0xE6DE0561D9232A64"
	jhash (0xCF2E3E24)
	ns "HUD"
	returns "void"
	doc [[!
	]]

native "0xE3B05614DCE1D014"
    hash "0xE3B05614DCE1D014"
	jhash (0xD217EE7E)
	arguments {
		Any "p0",
	}
	ns "HUD"
	returns "Any"
	doc [[!
<summary>
```
UI::GET_CURRENT_WEBSITE_PAGE_ID(int websiteID)  
returns the current website page sometimes returns false  
```
</summary>
	]]

native "0xEC9264727EEC0F28"
    hash "0xEC9264727EEC0F28"
	jhash (0xC06B763D)
	ns "HUD"
	returns "void"
	doc [[!
<summary>
Disables frontend (works in custom frontends, not sure about regular pause menu) navigation keys on keyboard. Not sure about controller. Does not disable mouse controls. No need to call this every tick.

To enable the keys again, use [`0x14621BB1DF14E2B2`](#_0x14621BB1DF14E2B2).
</summary>
	]]

native "0xE67C6DFD386EA5E7"
    hash "0xE67C6DFD386EA5E7"
	jhash (0x5476B9FD)
	arguments {
		BOOL "p0",
	}
	ns "HUD"
	returns "void"
	doc [[!
	]]

native "0xF06EBB91A81E09E3"
    hash "0xF06EBB91A81E09E3"
	jhash (0x11D09737)
	arguments {
		BOOL "p0",
	}
	ns "HUD"
	returns "void"
	doc [[!
	]]

native "0xEE4C0E6DBC6F2C6F"
    hash "0xEE4C0E6DBC6F2C6F"
	jhash (0x67649EE0)
	ns "HUD"
	returns "void"
	doc [[!
<summary>
```
Hides the hud element displayed by _0x523A590C1A3CC0D3  
```
</summary>
	]]

native "0xF1A6C18B35BCADE6"
    hash "0xF1A6C18B35BCADE6"
	jhash (0xA2CAAB4F)
	arguments {
		BOOL "p0",
	}
	ns "HUD"
	returns "void"
	doc [[!
	]]

native "0xF47E567B3630DD12"
    hash "0xF47E567B3630DD12"
	arguments {
		Any "p0",
		Any "p1",
	}
	ns "HUD"
	returns "void"
	doc [[!
	]]

native "0xF13FE2A80C05C561"
    hash "0xF13FE2A80C05C561"
	jhash (0x850690FF)
	ns "HUD"
	returns "Any"
	doc [[!
	]]

native "0xF284AC67940C6812"
    hash "0xF284AC67940C6812"
	jhash (0x7D95AFFF)
	ns "HUD"
	returns "Any"
	doc [[!
	]]

native "0xFCFACD0DB9D7A57D"
    hash "0xFCFACD0DB9D7A57D"
	arguments {
		Ped "ped",
		Any "p1",
	}
	ns "HUD"
	returns "void"
	doc [[!
	]]

native "0xFDD85225B2DEA55E"
    hash "0xFDD85225B2DEA55E"
	jhash (0xA4524B23)
	ns "HUD"
	returns "void"
	doc [[!
	]]

native "0xF98E4B3E56AFC7B1"
    hash "0xF98E4B3E56AFC7B1"
	jhash (0x25EC28C0)
	arguments {
		Any "p0",
		float "p1",
	}
	ns "HUD"
	returns "void"
	doc [[!
	]]

native "OBJECT_DECAL_TOGGLE"
    hash "0x444D8CF241EC25C5"
	jhash (0x0029046E)
	arguments {
		Hash "hash",
	}
	ns "HUD"
	returns "void"
	doc [[!
<summary>
```
Please change back to _0x444D8CF241EC25C5 (hash collision)  
```
</summary>
	]]

native "0xFDB423997FA30340"
    hash "0xFDB423997FA30340"
	jhash (0x4D0449C6)
	ns "HUD"
	returns "void"
	doc [[!
	]]

native "PAUSE_MENU_ACTIVATE_CONTEXT"
    hash "0xDD564BDD0472C936"
	jhash (0x9FE8FD5E)
	arguments {
		Hash "hash",
	}
	alias "0xDD564BDD0472C936"
	alias "_ADD_FRONTEND_MENU_CONTEXT"
	ns "HUD"
	returns "void"
	doc [[!
<summary>
Activates the specified frontend menu context.

pausemenu.xml defines some specific menu options using 'context'. Context is basically a 'condition'. 

The `*ALL*` part of the context means that whatever is being defined, will be active when any or all of those conditions after `*ALL*` are met.

The `*NONE*` part of the context section means that whatever is being defined, will NOT be active if any or all of the conditions after `*NONE*` are met.

This basically allows you to hide certain menu sections, or things like instructional buttons.

See the old description below for more info.

* * *

> Seems to add/set the current menu context (to show/hide buttons?)
> Pausemenu.xml:
> `<Contexts>*ALL*, DISPLAY_CORONA_BUTTONS, *NONE*, BET_LOCKED, BET_AVAILABLE, SCROLL_OPTION</Contexts>`
> Code:
>
> ```
> if (...) {
>     sub_bbd34(a_0, 0, "FM_BET_HELP");
>     UI::PAUSE_MENU_ACTIVATE_CONTEXT(${bet_available}); // This native
>     UI::OBJECT_DECAL_TOGGLE(${bet_locked});
> } else {
>     sub_bbd34(a_0, 0, "");
>     UI::OBJECT_DECAL_TOGGLE(${bet_available});
>     UI::PAUSE_MENU_ACTIVATE_CONTEXT(${bet_locked}); // This native
> }
> ```
>
> OBJECT_DECAL_TOGGLE seems to remove a context, It also has a hash collision
> // Old
> Scripts do not make this native's purpose clear. However, this native most likely has something to do with decals since in nearly every instance, "OBJECT_DECAL_TOGGLE" is called prior.
</summary>
<param name="hash">Context name hash.</param>
	]]

native "REFRESH_WAYPOINT"
    hash "0x81FA173F170560D1"
	jhash (0xB395D753)
	ns "HUD"
	returns "void"
	doc [[!
	]]

native "0xFDEC055AB549E328"
    hash "0xFDEC055AB549E328"
	jhash (0xAFA1148B)
	ns "HUD"
	returns "void"
	doc [[!
	]]

native "PULSE_BLIP"
    hash "0x742D6FD43115AF73"
	jhash (0x44253855)
	arguments {
		Blip "blip",
	}
	ns "HUD"
	returns "void"
	doc [[!
	]]

native "RELEASE_NAMED_RENDERTARGET"
    hash "0xE9F6FFE837354DD4"
	jhash (0xD3F6C892)
	arguments {
		AnyPtr "p0",
	}
	ns "HUD"
	returns "BOOL"
	doc [[!
	]]

native "_REMOVE_LOADING_PROMPT"
    hash "0x10D373323E5B9C0D"
	jhash (0x94119534)
	alias "0x10D373323E5B9C0D"
	ns "HUD"
	returns "void"
	doc [[!
<summary>
```
Removes the loading prompt at the bottom right of the screen, created by the UI::_SHOW_LOADING_PROMPT native.  
```
</summary>
	]]

native "REGISTER_NAMED_RENDERTARGET"
    hash "0x57D9C12635E25CE3"
	jhash (0xFAE5D6F0)
	arguments {
		charPtr "p0",
		BOOL "p1",
	}
	ns "HUD"
	returns "BOOL"
	doc [[!
	]]

native "REMOVE_MULTIPLAYER_BANK_CASH"
    hash "0xC7C6789AA1CFEDD0"
	jhash (0x728B4EF4)
	ns "HUD"
	returns "void"
	doc [[!
	]]

native "REMOVE_BLIP"
    hash "0x86A652570E5F25DD"
	jhash (0xD8C3C1CD)
	arguments {
		BlipPtr "blip",
	}
	ns "HUD"
	returns "void"
	doc [[!
<summary>
```
In the C++ SDK, this seems not to work-- the blip isn't removed immediately. I use it for saving cars.  
E.g.:  
Ped pped = PLAYER::PLAYER_PED_ID();  
Vehicle v = PED::GET_VEHICLE_PED_IS_USING(pped);  
Blip b = UI::ADD_BLIP_FOR_ENTITY(v);  
works fine.  
But later attempting to delete it with:  
Blip b = UI::GET_BLIP_FROM_ENTITY(v);  
if (UI::DOES_BLIP_EXIST(b)) UI::REMOVE_BLIP(&b);  
doesn't work. And yes, doesn't work without the DOES_BLIP_EXIST check either. Also, if you attach multiple blips to the same thing (say, a vehicle), and that thing disappears, the blips randomly attach to other things (in my case, a vehicle).  
Thus for me, UI::REMOVE_BLIP(&b) only works if there's one blip, (in my case) the vehicle is marked as no longer needed, you drive away from it and it eventually despawns, AND there is only one blip attached to it. I never intentionally attach multiple blips but if the user saves the car, this adds a blip. Then if they delete it, it is supposed to remove the blip, but it doesn't. Then they can immediately save it again, causing another blip to re-appear.  
-------------  
Passing the address of the variable instead of the value works for me.  
e.g.  
int blip = UI::ADD_BLIP_FOR_ENTITY(ped);  
UI::REMOVE_BLIP(&blip);  
Remove blip will currently crash your game, just artificially remove the blip by setting the sprite to a id that is 'invisible'.  
--  
It crashes my game.  
```
</summary>
	]]

native "REMOVE_MP_GAMER_TAG"
    hash "0x31698AA80E0223F8"
	jhash (0x3D081FE4)
	arguments {
		int "gamerTagId",
	}
	alias "0x31698AA80E0223F8"
	ns "HUD"
	returns "void"
	doc [[!
	]]

native "_REMOVE_NOTIFICATION"
    hash "0xBE4390CB40B3E627"
	jhash (0xECA8ACB9)
	arguments {
		int "notificationId",
	}
	ns "HUD"
	returns "void"
	doc [[!
<summary>
```
Removes a notification instantly instead of waiting for it to disappear  
```
</summary>
	]]

native "REQUEST_ADDITIONAL_TEXT"
    hash "0x71A78003C8E71424"
	jhash (0x9FA9175B)
	arguments {
		charPtr "gxt",
		int "slot",
	}
	ns "HUD"
	returns "void"
	doc [[!
<summary>
```
Request a gxt into the passed slot.  
```
</summary>
	]]

native "REMOVE_MULTIPLAYER_HUD_CASH"
    hash "0x968F270E39141ECA"
	jhash (0x07BF4A7D)
	ns "HUD"
	returns "void"
	doc [[!
<summary>
```
Removes multiplayer cash hud each frame  
```
</summary>
	]]

native "_REQUEST_ADDITIONAL_TEXT_2"
    hash "0x6009F9F1AE90D8A6"
	jhash (0xF4D27EBE)
	arguments {
		charPtr "gxt",
		int "slot",
	}
	ns "HUD"
	returns "void"
	doc [[!
	]]

native "RESET_RETICULE_VALUES"
    hash "0x12782CE0A636E9F0"
	jhash (0xBE27AA3F)
	ns "HUD"
	returns "void"
	doc [[!
	]]

native "RESET_HUD_COMPONENT_VALUES"
    hash "0x450930E616475D0D"
	jhash (0xD15B46DA)
	arguments {
		int "id",
	}
	ns "HUD"
	returns "void"
	doc [[!
	]]

native "RESPONDING_AS_TEMP"
    hash "0xBD12C5EEE184C337"
	jhash (0xDCA3F423)
	arguments {
		float "p0",
	}
	ns "HUD"
	returns "void"
	doc [[!
<summary>
```
Please change back to _0xBD12C5EEE184C33 (hash collision)  
actual native starts with SET_RADAR_ZOOM_...  
```
</summary>
	]]

native "RESTART_FRONTEND_MENU"
    hash "0x10706DC6AD2D49C0"
	jhash (0xB07DAF98)
	arguments {
		Hash "menuHash",
		int "p1",
	}
	ns "HUD"
	returns "void"
	doc [[!
<summary>
```
Before using this native click the native above and look at the decription.  
Example:  
int GetHash = Function.Call<int>(Hash.GET_HASH_KEY, "fe_menu_version_corona_lobby");  
Function.Call(Hash.ACTIVATE_FRONTEND_MENU, GetHash, 0, -1);  
Function.Call(Hash.RESTART_FRONTEND_MENU(GetHash, -1);  
This native refreshes the frontend menu.  
p1 = Hash of Menu  
p2 = Unknown but always works with -1.  
```
</summary>
	]]

native "_SET_AI_BLIP_MAX_DISTANCE"
    hash "0x97C65887D4B37FA9"
	jhash (0xF9DC2AF7)
	arguments {
		Ped "ped",
		float "distance",
	}
	alias "0x97C65887D4B37FA9"
	ns "HUD"
	returns "void"
	doc [[!
<summary>
```
Previously named _0x97C65887D4B37FA9.  
Sets the maximum view distance for the AI BIP  
```
</summary>
	]]

native "SET_ABILITY_BAR_VALUE"
    hash "0x9969599CCFF5D85E"
	jhash (0x24E53FD8)
	arguments {
		float "value",
		float "maxValue",
	}
	ns "HUD"
	returns "void"
	doc [[!
<summary>
```
If 'value' is 50 and 'maxValue' is 100, the bar is halfway filled.  
Same with 5/10, 2/4, etc.  
```
</summary>
	]]

native "_SET_AI_BLIP_TYPE"
    hash "0xE52B8E7F85D39A08"
	jhash (0xD8E31B1A)
	arguments {
		Ped "ped",
		int "type",
	}
	alias "0xE52B8E7F85D39A08"
	ns "HUD"
	returns "void"
	doc [[!
<summary>
```
Set a ped's AI blip type:  
1 - Yellow blip with no name  
2  
```
</summary>
	]]

native "SET_BLIP_ALPHA"
    hash "0x45FF974EEE1C8734"
	jhash (0xA791FCCD)
	arguments {
		Blip "blip",
		int "alpha",
	}
	ns "HUD"
	returns "void"
	doc [[!
<summary>
```
Sets alpha-channel for blip color.  
Example:  
Blip blip = UI::ADD_BLIP_FOR_ENTITY(entity);  
UI::SET_BLIP_COLOUR(blip , 3);  
UI::SET_BLIP_ALPHA(blip , 64);  
```
</summary>
	]]

native "SET_BIGMAP_ACTIVE"
    hash "0x231C8F89D0539D8F"
	jhash (0x08EB83D2)
	arguments {
		BOOL "toggleBigMap",
		BOOL "showFullMap",
	}
	alias "_SET_RADAR_BIGMAP_ENABLED"
	ns "HUD"
	returns "void"
	doc [[!
<summary>
Toggles the big minimap state like in GTA:Online.

To get the current state of the minimap, use [`GetBigmapActive`](#_0xF6AE18A7).
</summary>
<param name="toggleBigMap">Enable or disable the expanded minimap.</param>
<param name="showFullMap">Enable or disable the full map from being shown on the minimap, requires p0 to be true.</param>
	]]

native "SET_BLIP_AS_FRIENDLY"
    hash "0x6F6F290102C02AB4"
	jhash (0xF290CFD8)
	arguments {
		Blip "blip",
		BOOL "toggle",
	}
	ns "HUD"
	returns "void"
	doc [[!
<summary>
```
false for enemy  
true for friendly  
```
</summary>
	]]

native "SET_BLIP_AS_MISSION_CREATOR_BLIP"
    hash "0x24AC0137444F9FD5"
	jhash (0x802FB686)
	arguments {
		Blip "blip",
		BOOL "toggle",
	}
	ns "HUD"
	returns "void"
	doc [[!
	]]

native "SET_BLIP_BRIGHT"
    hash "0xB203913733F27884"
	jhash (0x72BEE6DF)
	arguments {
		Blip "blip",
		BOOL "toggle",
	}
	ns "HUD"
	returns "void"
	doc [[!
	]]

native "SET_BLIP_AS_SHORT_RANGE"
    hash "0xBE8BE4FE60E27B72"
	jhash (0x5C67725E)
	arguments {
		Blip "blip",
		BOOL "toggle",
	}
	ns "HUD"
	returns "void"
	doc [[!
<summary>
Sets whether or not the specified blip should only be displayed when nearby, or on the minimap.
</summary>
<param name="blip">The blip handle.</param>
<param name="toggle">True to only display the blip as 'short range', false to display the blip from a longer distance.</param>
	]]

native "SET_BLIP_COLOUR"
    hash "0x03D7FB09E75D6B7E"
	jhash (0xBB3C5A41)
	arguments {
		Blip "blip",
		int "color",
	}
	ns "HUD"
	returns "void"
	doc [[!
<summary>
```
(Hex code are approximate)  
0: White (#fefefe)  
1: Red (#e03232)  
2: Green (#71cb71)  
3: Blue (#5db6e5)  
4: White (#fefefe)  
5: Taxi Yellow (#eec64e)  
6: Light Red (#c25050)  
7: Violet (#9c6eaf)  
8: Pink (#fe7ac3)  
9: Light Orange (#f59d79)  
10: Light Brown (#b18f83)  
11: Light Green (#8dcea7)  
12: Light Blue (Teal) (#70a8ae)  
13: Very Light Purple (#d3d1e7)  
14: Dark Purple (#8f7e98)  
15: Cyan (#6ac4bf)  
16: Light Yellow (#d5c398)  
17: Orange (#ea8e50)  
18: Light Blue (#97cae9)  
19: Dark Pink (#b26287)  
20: Dark Yellow (#8f8d79)  
21: Dark Orange (#a6755e)  
22: Light Gray (#afa8a8)  
23: Light Pink (#e78d9a)  
24: Lemon Green (#bbd65b)  
25: Forest Green (#0c7b56)  
26: Electric Blue (#7ac3fe)  
27: Bright Purple (#ab3ce6)  
28: Dark Taxi Yellow (#cda80c)  
29: Dark Blue (#4561ab)  
30: Dark Cyan (#29a5b8)  
31: Light Brown (#b89b7b)  
32: Very Light Blue (#c8e0fe)  
33: Light Yellow (#f0f096)  
34: Light Pink (#ed8ca1)  
35: Light Red (#f98a8a)  
36: Light Yellow (#fbeea5)  
37: White (#fefefe)  
38: Blue (#2c6db8)  
39: Light Gray (#9a9a9a)  
40: Dark Gray (#4c4c4c)  
Certainly a lot more remaining.  
```
</summary>
	]]

native "SET_BLIP_CATEGORY"
    hash "0x234CDD44D996FD9A"
	jhash (0xEF72F533)
	arguments {
		Blip "blip",
		int "index",
	}
	ns "HUD"
	returns "void"
	doc [[!
<summary>
Examples result:

![](https://i.imgur.com/skY6vAJ.png)

**index:**

```
1 = No distance shown in legend
2 = Distance shown in legend
7 = "Other Players" category, also shows distance in legend
10 = "Property" category
11 = "Owned Property" category
```

Any other value behaves like `index = 1`, `index` wraps around after 255

Blips with categories `7`, `10` or `11` will all show under the specific categories listing in the map legend, regardless of sprite or name.

**Legend entries**

| index | Legend entry   | Label           |
| ----- | -------------- | --------------- |
| 7     | Other Players  | `BLIP_OTHPLYR`  |
| 10    | Property       | `BLIP_PROPCAT`  |
| 11    | Owned Property | `BLIP_APARTCAT` |
</summary>
<param name="blip">The blip to change the category index of</param>
<param name="index">The category index to change to</param>
	]]

native "SET_BLIP_COORDS"
    hash "0xAE2AF67E9D9AF65D"
	jhash (0x680A34D4)
	arguments {
		Blip "blip",
		float "posX",
		float "posY",
		float "posZ",
	}
	ns "HUD"
	returns "void"
	doc [[!
	]]

native "SET_BLIP_DISPLAY"
    hash "0x9029B2F3DA924928"
	jhash (0x2B521F91)
	arguments {
		Blip "blip",
		int "displayId",
	}
	ns "HUD"
	returns "void"
	doc [[!
<summary>
**displayId Behaviour** <br>
0 = Doesn't show up, ever, anywhere. <br>
1 = Doesn't show up, ever, anywhere. <br>
2 = Shows on both main map and minimap. (Selectable on map) <br>
3 = Shows on main map only. (Selectable on map) <br>
4 = Shows on main map only. (Selectable on map) <br>
5 = Shows on minimap only. <br>
6 = Shows on both main map and minimap. (Selectable on map) <br>
7 = Doesn't show up, ever, anywhere. <br>
8 = Shows on both main map and minimap. (Not selectable on map) <br>
9 = Shows on minimap only. <br>
10 = Shows on both main map and minimap. (Not selectable on map) <br>
Anything higher than 10 seems to be exactly the same as 10. <br>
<br>
Rockstar seem to only use 0, 2, 3, 4, 5 and 8 in the decompiled scripts.
</summary>
	]]

native "SET_BLIP_FLASH_INTERVAL"
    hash "0xAA51DB313C010A7E"
	jhash (0xEAF67377)
	arguments {
		Blip "blip",
		Any "p1",
	}
	ns "HUD"
	returns "void"
	doc [[!
	]]

native "SET_BLIP_FADE"
    hash "0x2AEE8F8390D2298C"
	jhash (0xA5999031)
	arguments {
		Blip "blip",
		int "opacity",
		int "duration",
	}
	ns "HUD"
	returns "void"
	doc [[!
	]]

native "SET_BLIP_FLASH_TIMER"
    hash "0xD3CD6FD297AE87CC"
	jhash (0x8D5DF611)
	arguments {
		Blip "blip",
		int "duration",
	}
	ns "HUD"
	returns "void"
	doc [[!
<summary>
```
Adds up after viewing multiple R* scripts. I believe that the duration is in miliseconds.  
```
</summary>
	]]

native "SET_BLIP_FLASHES"
    hash "0xB14552383D39CE3E"
	jhash (0xC0047F15)
	arguments {
		Blip "blip",
		BOOL "toggle",
	}
	ns "HUD"
	returns "void"
	doc [[!
	]]

native "SET_BLIP_FLASHES_ALTERNATE"
    hash "0x2E8D9498C56DD0D1"
	jhash (0x1A81202B)
	arguments {
		Blip "blip",
		BOOL "toggle",
	}
	ns "HUD"
	returns "void"
	doc [[!
	]]

native "SET_BLIP_HIGH_DETAIL"
    hash "0xE2590BC29220CEBB"
	jhash (0xD5842BFF)
	arguments {
		Blip "blip",
		BOOL "toggle",
	}
	ns "HUD"
	returns "void"
	doc [[!
	]]

native "SET_BLIP_NAME_FROM_TEXT_FILE"
    hash "0xEAA0FFE120D92784"
	jhash (0xAC8A5461)
	arguments {
		Blip "blip",
		charPtr "gxtEntry",
	}
	ns "HUD"
	returns "void"
	doc [[!
<summary>
```
Doesn't work if the label text of gxtEntry is >= 80.  
```
</summary>
	]]

native "SET_BLIP_PRIORITY"
    hash "0xAE9FC9EF6A9FAC79"
	jhash (0xCE87DA6F)
	arguments {
		Blip "blip",
		int "priority",
	}
	ns "HUD"
	returns "void"
	doc [[!
<summary>
```
See this topic for more details : gtaforums.com/topic/717612-v-scriptnative-documentation-and-research/page-35?p=1069477935  
```
</summary>
	]]

native "SET_BLIP_NAME_TO_PLAYER_NAME"
    hash "0x127DE7B20C60A6A3"
	jhash (0x03A0B8F9)
	arguments {
		Blip "blip",
		Player "player",
	}
	ns "HUD"
	returns "void"
	doc [[!
	]]

native "SET_BLIP_ROTATION"
    hash "0xF87683CDF73C3F6E"
	jhash (0x6B8F44FE)
	arguments {
		Blip "blip",
		int "rotation",
	}
	ns "HUD"
	returns "void"
	doc [[!
<summary>
```
After some testing, looks like you need to use UI:CEIL() on the rotation (vehicle/ped heading) before using it there.  
```
</summary>
	]]

native "SET_BLIP_ROUTE"
    hash "0x4F7D8A9BFB0B43E9"
	jhash (0x3E160C90)
	arguments {
		Blip "blip",
		BOOL "enabled",
	}
	ns "HUD"
	returns "void"
	doc [[!
<summary>
```
Enable / disable showing route for the Blip-object.  
```
</summary>
	]]

native "SET_BLIP_SCALE"
    hash "0xD38744167B2FA257"
	jhash (0x1E6EC434)
	arguments {
		Blip "blip",
		float "scale",
	}
	ns "HUD"
	returns "void"
	doc [[!
	]]

native "SET_BLIP_ROUTE_COLOUR"
    hash "0x837155CD2F63DA09"
	jhash (0xDDE7C65C)
	arguments {
		Blip "blip",
		int "colour",
	}
	ns "HUD"
	returns "void"
	doc [[!
	]]

native "SET_BLIP_SHOW_CONE"
    hash "0x13127EC3665E8EE1"
	jhash (0xFF545AD8)
	arguments {
		Blip "blip",
		BOOL "toggle",
	}
	ns "HUD"
	returns "void"
	doc [[!
	]]

native "SET_BLIP_SECONDARY_COLOUR"
    hash "0x14892474891E09EB"
	jhash (0xC6384D32)
	arguments {
		Blip "blip",
		float "r",
		float "g",
		float "b",
	}
	ns "HUD"
	returns "void"
	doc [[!
	]]

native "SET_BLIP_SPRITE"
    hash "0xDF735600A4696DAF"
	jhash (0x8DBBB0B9)
	arguments {
		Blip "blip",
		int "spriteId",
	}
	ns "HUD"
	returns "void"
	doc [[!
<summary>
<!--
_loc1_.map((name, idx) => `| ${idx} | ${name} | ![${name}](https://runtime.fivem.net/blips/${name}.svg) |`).join('\n')
-->

Sets the displayed sprite for a specific blip.

There's a [list of sprites](https://docs.fivem.net/game-references/blips/) on the FiveM documentation site.
</summary>
<param name="blip">The blip to change.</param>
<param name="spriteId">The sprite ID to set.</param>
	]]

native "_SET_BLIP_SHRINK"
    hash "0x2B6D467DAB714E8D"
	jhash (0xC575F0BC)
	arguments {
		Blip "blip",
		BOOL "toggle",
	}
	alias "0x2B6D467DAB714E8D"
	ns "HUD"
	returns "void"
	doc [[!
<summary>
```
Makes a blip go small when off the minimap.  
```
</summary>
	]]

native "_SET_DIRECTOR_MODE"
    hash "0x808519373FD336A3"
	arguments {
		BOOL "toggle",
	}
	alias "0x808519373FD336A3"
	ns "HUD"
	returns "void"
	doc [[!
<summary>
```
If toggle is true, hides special ability bar / character name in the pause menu  
If toggle is false, shows special ability bar / character name in the pause menu  
```
</summary>
	]]

native "_SET_CURSOR_SPRITE"
    hash "0x8DB8CFFD58B62552"
	arguments {
		int "spriteId",
	}
	alias "0x8DB8CFFD58B62552"
	ns "HUD"
	returns "void"
	doc [[!
<summary>
```
Changes the mouse cursor's sprite.   
public enum CursorType  
{  
    None = 0,  
    Normal = 1,  
    TransparentNormal = 2,  
    PreGrab = 3,  
    Grab = 4,  
    MiddleFinger = 5,  
    LeftArrow = 6,  
    RightArrow = 7,  
    UpArrow = 8,  
    DownArrow = 9,  
    HorizontalExpand = 10,  
    Add = 11,  
    Remove = 12,  
}  
```
</summary>
	]]

native "SET_FRONTEND_ACTIVE"
    hash "0x745711A75AB09277"
	jhash (0x81E1AD32)
	arguments {
		BOOL "active",
	}
	ns "HUD"
	returns "void"
	doc [[!
	]]

native "SET_GPS_FLAGS"
    hash "0x5B440763A4C8D15B"
	jhash (0x60539BAB)
	arguments {
		int "p0",
		float "p1",
	}
	ns "HUD"
	returns "void"
	doc [[!
<summary>
```
Only the script that originally called SET_GPS_FLAGS can set them again. Another script cannot set the flags, until the first script that called it has called CLEAR_GPS_FLAGS.  
Doesn't seem like the flags are actually read by the game at all.  
---------------  
Might be left-over from GTA IV. I kind of miss the *ding-dong* turn left in 2 meters lady lol.  
```
</summary>
	]]

native "SET_GPS_FLASHES"
    hash "0x320D0E0D936A0E9B"
	jhash (0xE991F733)
	arguments {
		BOOL "toggle",
	}
	ns "HUD"
	returns "void"
	doc [[!
	]]

native "_SET_HUD_COLOUR"
    hash "0xF314CF4F0211894E"
	jhash (0xF6E7E92B)
	arguments {
		int "hudColorIndex",
		int "r",
		int "g",
		int "b",
		int "a",
	}
	alias "0xF314CF4F0211894E"
	ns "HUD"
	returns "void"
	doc [[!
<summary>
```
HUD colors and their values: pastebin.com/d9aHPbXN  
```
</summary>
	]]

native "SET_HUD_COMPONENT_POSITION"
    hash "0xAABB1F56E2A17CED"
	jhash (0x2F3A0D15)
	arguments {
		int "id",
		float "x",
		float "y",
	}
	ns "HUD"
	returns "void"
	doc [[!
	]]

native "_SET_HUD_COLOURS_SWITCH"
    hash "0x1CCC708F0F850613"
	jhash (0x3B216749)
	arguments {
		int "hudColorIndex",
		int "hudColorIndex2",
	}
	alias "0x1CCC708F0F850613"
	ns "HUD"
	returns "void"
	doc [[!
<summary>
```
HUD colors and their values: pastebin.com/d9aHPbXN  
--------------------------------------------------  
makes hudColorIndex2 color into hudColorIndex color  
```
</summary>
	]]

native "_SET_MAP_FULL_SCREEN"
    hash "0x5354C5BA2EA868A4"
	jhash (0xE4FD20D8)
	arguments {
		BOOL "toggle",
	}
	alias "0x5354C5BA2EA868A4"
	ns "HUD"
	returns "void"
	doc [[!
<summary>
```
If toggle is true, the map is shown in full screen  
If toggle is false, the map is shown in normal mode  
```
</summary>
	]]

native "_SET_MINIMAP_ATTITUDE_INDICATOR_LEVEL"
    hash "0xD201F3FF917A506D"
	jhash (0x0308EDF6)
	arguments {
		float "altitude",
		BOOL "p1",
	}
	ns "HUD"
	returns "void"
	doc [[!
<summary>
```
Argument must be 0.0f or above 38.0f, or it will be ignored.  
```
</summary>
	]]

native "SET_MINIMAP_BLOCK_WAYPOINT"
    hash "0x58FADDED207897DC"
	jhash (0xA41C3B62)
	arguments {
		BOOL "toggle",
	}
	ns "HUD"
	returns "void"
	doc [[!
	]]

native "SET_MINIMAP_COMPONENT"
    hash "0x75A9A10948D1DEA6"
	jhash (0x419DCDC4)
	arguments {
		int "componentID",
		BOOL "toggle",
		int "p2",
	}
	ns "HUD"
	returns "Any"
	doc [[!
<summary>
This native is used to toggle map components like the army base at the top of the map.  
p2 appears to be always -1.  

An incomplete list of components ID:

```
0: Los Santos' air port yellow lift-off markers.
1: Sandy Shore's air port yellow lift-off markers.
2: Trevor's air port yellow lift-off markers.
3: Unknown.
4: Unknown.
5: Unknown.
6: Vespucci Beach lifeguard building.
7: Unknown.
8: Unknown.
15: Army base.
```
</summary>
	]]

native "SET_MINIMAP_GOLF_COURSE"
    hash "0x71BDB63DBAF8DA59"
	jhash (0x5133A750)
	arguments {
		int "hole",
	}
	alias "0x71BDB63DBAF8DA59"
	ns "HUD"
	returns "void"
	doc [[!
<summary>
Not much is known so far on what it does _exactly_.
All I know for sure is that it draws the specified hole ID on the pause menu map as well as on the mini-map/radar. This native also seems to change some other things related to the pause menu map's behaviour, for example: you can no longer set waypoints, the pause menu map starts up in a 'zoomed in' state. This native does not need to be executed every tick.

You need to center the minimap manually as well as change/lock it's zoom and angle in order for it to appear correctly on the minimap.
You'll also need to use the `GOLF` scaleform in order to get the correct minmap border to show up.

Use [`N_0x35edd5b2e3ff01c0()`](https://runtime.fivem.net/doc/reference.html#_0x35EDD5B2E3FF01C0) to reset the map when you no longer want to display any golf holes (you still need to unlock zoom, position and angle of the radar manually after calling this).
</summary>
<param name="hole">The ID of the hole to draw on the map. ID starts with 1 for hole 1, 2 for hole 2, etc. 0 disables the golf map behaviour.</param>
	]]

native "_SET_MINIMAP_REVEALED"
    hash "0xF8DEE0A5600CBB93"
	jhash (0xD8D77733)
	arguments {
		BOOL "toggle",
	}
	alias "0xF8DEE0A5600CBB93"
	ns "HUD"
	returns "void"
	doc [[!
<summary>
```
If true, the entire map will be revealed.  
```
</summary>
	]]

native "_SET_MISSION_NAME_2"
    hash "0xE45087D85F468BC2"
	jhash (0x8D9A1734)
	arguments {
		BOOL "p0",
		charPtr "name",
	}
	alias "0xE45087D85F468BC2"
	ns "HUD"
	returns "void"
	doc [[!
<summary>
```
Similar to SET_MISSION_NAME but this one can take any string (must not be greater than 600 chars, should not exceed 64 chars), not just text labels.  
p0 must be true.  
```
</summary>
	]]

native "SET_MISSION_NAME"
    hash "0x5F28ECF5FC84772F"
	jhash (0x68DCAE10)
	arguments {
		BOOL "p0",
		charPtr "name",
	}
	ns "HUD"
	returns "void"
	doc [[!
<summary>
```
Takes a text label, gets the string (must not be longer than 600 chars, should not exceed 64 chars) and sets the name to that string.  
p0 must be true.  
```
</summary>
	]]

native "_SET_MP_GAMER_TAG_CHATTING"
    hash "0x7B7723747CCB55B6"
	jhash (0x939218AB)
	arguments {
		int "gamerTagId",
		charPtr "string",
	}
	alias "0x7B7723747CCB55B6"
	ns "HUD"
	returns "void"
	doc [[!
<summary>
```
Set's the string displayed when flag 3 (AudioSpeaker) active.  
```
</summary>
	]]

native "SET_MP_GAMER_TAG_ALPHA"
    hash "0xD48FE545CD46F857"
	jhash (0xF4418611)
	arguments {
		int "gamerTagId",
		int "component",
		int "alpha",
	}
	alias "0xD48FE545CD46F857"
	ns "HUD"
	returns "void"
	doc [[!
<summary>
```
Sets flag's sprite transparency. 0-255.  
```
</summary>
	]]

native "SET_MP_GAMER_TAG_COLOUR"
    hash "0x613ED644950626AE"
	jhash (0x7E3AA40A)
	arguments {
		int "gamerTagId",
		int "flag",
		int "color",
	}
	alias "0x613ED644950626AE"
	ns "HUD"
	returns "void"
	doc [[!
<summary>
```
Ranges from 0 to 255. 0 is grey health bar, ~50 yellow, 200 purple.  
```
</summary>
	]]

native "_SET_MP_GAMER_TAG_COLOR"
    hash "0x6DD05E9D83EFA4C9"
	jhash (0xC969F2D0)
	arguments {
		int "headDisplayId",
		charPtr "username",
		BOOL "pointedClanTag",
		BOOL "isRockstarClan",
		charPtr "clanTag",
		Any "p5",
		int "r",
		int "g",
		int "b",
	}
	alias "0x6DD05E9D83EFA4C9"
	alias "_CREATE_MP_GAMER_TAG_COLOR"
	ns "HUD"
	returns "void"
	doc [[!
	]]

native "_SET_MP_GAMER_TAG_ICONS"
    hash "0xA67F9C46D612B6F1"
	jhash (0xB01A5434)
	arguments {
		int "headDisplayId",
		BOOL "p1",
	}
	alias "0xA67F9C46D612B6F1"
	ns "HUD"
	returns "void"
	doc [[!
<summary>
```
Displays a bunch of icons above the players name, and level, and their name twice  
```
</summary>
	]]

native "SET_MP_GAMER_TAG_NAME"
    hash "0xDEA2B8283BAA3944"
	jhash (0x627A559B)
	arguments {
		int "gamerTagId",
		charPtr "string",
	}
	alias "0xDEA2B8283BAA3944"
	ns "HUD"
	returns "void"
	doc [[!
	]]

native "SET_MP_GAMER_TAG_HEALTH_BAR_COLOUR"
    hash "0x3158C77A7E888AB4"
	jhash (0x5777EC77)
	arguments {
		int "headDisplayId",
		int "color",
	}
	alias "0x3158C77A7E888AB4"
	alias "_SET_MP_GAMER_TAG_HEALTH_BAR_COLOR"
	ns "HUD"
	returns "void"
	doc [[!
<summary>
```
Ranges from 0 to 255. 0 is grey health bar, ~50 yellow, 200 purple.  
Should be enabled as flag (2). Has 0 opacity by default.  
- This was _SET_MP_GAMER_TAG_HEALTH_BAR_COLOR,  
```
</summary>
	]]

native "SET_MP_GAMER_TAG_WANTED_LEVEL"
    hash "0xCF228E2AA03099C3"
	jhash (0x0EBB003F)
	arguments {
		int "gamerTagId",
		int "wantedlvl",
	}
	alias "0xCF228E2AA03099C3"
	ns "HUD"
	returns "void"
	doc [[!
<summary>
```
displays wanted star above head  
```
</summary>
	]]

native "SET_MULTIPLAYER_HUD_CASH"
    hash "0xFD1D220394BCB824"
	jhash (0xA8DB435E)
	arguments {
		int "p0",
		int "p1",
	}
	ns "HUD"
	returns "void"
	doc [[!
<summary>
**This native does absolutely nothing, just a nullsub**
</summary>
	]]

native "SET_MP_GAMER_TAG_VISIBILITY"
    hash "0x63BB75ABEDC1F6A0"
	jhash (0xD41DF479)
	arguments {
		int "gamerTagId",
		int "component",
		BOOL "toggle",
	}
	alias "0x63BB75ABEDC1F6A0"
	ns "HUD"
	returns "void"
	doc [[!
<summary>
```
enum MpGamerTagComponent  
{  
  GAMER_NAME = 0,  
  CREW_TAG,  
  healthArmour,  
  BIG_TEXT,  
  AUDIO_ICON,  
  MP_USING_MENU,  
  MP_PASSIVE_MODE,  
  WANTED_STARS,  
  MP_DRIVER,  
  MP_CO_DRIVER,  
  MP_TAGGED,  
  GAMER_NAME_NEARBY,  
  ARROW,  
  MP_PACKAGES,  
  INV_IF_PED_FOLLOWING,  
  RANK_TEXT,  
  MP_TYPING  
};  
```
</summary>
	]]

native "SET_NEW_WAYPOINT"
    hash "0xFE43368D2AA4F2FC"
	jhash (0x8444E1F0)
	arguments {
		float "x",
		float "y",
	}
	ns "HUD"
	returns "void"
	doc [[!
	]]

native "_SET_MP_GAMER_TAG_"
    hash "0xEE76FF7E6A0166B0"
	jhash (0x767DED29)
	arguments {
		int "headDisplayId",
		BOOL "p1",
	}
	alias "0xEE76FF7E6A0166B0"
	ns "HUD"
	returns "void"
	doc [[!
	]]

native "_SET_NOTIFICATION_BACKGROUND_COLOR"
    hash "0x92F0DA1E27DB96DC"
	arguments {
		int "hudIndex",
	}
	alias "0x92F0DA1E27DB96DC"
	ns "HUD"
	returns "void"
	doc [[!
<summary>
```
From the decompiled scripts:  
UI::_92F0DA1E27DB96DC(6);  
UI::_92F0DA1E27DB96DC(184);  
UI::_92F0DA1E27DB96DC(190);  
sets background color for the next notification  
6 = red  
184 = green  
190 = yellow  
Here is a list of some colors that can be used: gyazo.com/68bd384455fceb0a85a8729e48216e15  
this seems to set the alpha to 255 automatically, if you have a work around let me know  
```
</summary>
	]]

native "SET_MULTIPLAYER_BANK_CASH"
    hash "0xDD21B55DF695CD0A"
	jhash (0x2C842D03)
	ns "HUD"
	returns "void"
	doc [[!
	]]

native "_SET_NOTIFICATION_FLASH_COLOR"
    hash "0x17430B918701C342"
	jhash (0xCF14D7F2)
	arguments {
		int "red",
		int "green",
		int "blue",
		int "alpha",
	}
	alias "0x17430B918701C342"
	ns "HUD"
	returns "void"
	doc [[!
<summary>
```
sets color for notification flash  
```
</summary>
	]]

native "_SET_NOTIFICATION_MESSAGE_CLAN_TAG"
    hash "0x5CBF7BADE20DB93E"
	jhash (0x3E807FE3)
	arguments {
		charPtr "picName1",
		charPtr "picName2",
		BOOL "flash",
		int "iconType",
		charPtr "sender",
		charPtr "subject",
		float "duration",
		charPtr "clanTag",
	}
	ns "HUD"
	returns "int"
	doc [[!
<summary>
```
List of picNames pastebin.com/XdpJVbHz  
flash is a bool for fading in.  
iconTypes:  
1 : Chat Box  
2 : Email  
3 : Add Friend Request  
4 : Nothing  
5 : Nothing  
6 : Nothing  
7 : Right Jumping Arrow  
8 : RP Icon  
9 : $ Icon  
"sender" is the very top header. This can be any old string.  
"subject" is the header under the sender.  
"duration" is a multiplier, so 1.0 is normal, 2.0 is twice as long (very slow), and 0.5 is half as long.  
"clanTag" shows a crew tag in the "sender" header, after the text. You need to use 3 underscores as padding. Maximum length of this field seems to be 7. (e.g. "MK" becomes "___MK", "ACE" becomes "___ACE", etc.)  
```
</summary>
	]]

native "_SET_NORTH_YANKTON_MAP"
    hash "0x9133955F1A2DA957"
	jhash (0x02F5F1D1)
	arguments {
		BOOL "toggle",
	}
	alias "_SET_DRAW_MAP_VISIBLE"
	ns "HUD"
	returns "void"
	doc [[!
<summary>
```
Toggles the North Yankton map  
```
</summary>
	]]

native "_SET_NOTIFICATION_COLOR_NEXT"
    hash "0x39BBF623FC803EAC"
	jhash (0x6F1A1901)
	arguments {
		int "hudIndex",
	}
	alias "0x39BBF623FC803EAC"
	ns "HUD"
	returns "void"
	doc [[!
<summary>
```
sets font color for the next notification  
```
</summary>
	]]

native "_SET_NOTIFICATION_MESSAGE_2"
    hash "0x2B7E9A4EAAA93C89"
	jhash (0xED130FA1)
	arguments {
		charPtr "picName1",
		int "picName2",
		BOOL "flash",
		int "iconType",
		BOOL "p4",
		charPtr "sender",
		charPtr "subject",
	}
	alias "0x2B7E9A4EAAA93C89"
	ns "HUD"
	returns "int"
	doc [[!
<summary>
```
List of picNames: pastebin.com/XdpJVbHz  
```
</summary>
	]]

native "_SET_NOTIFICATION_MESSAGE_4"
    hash "0x1E6611149DB3DB6B"
	jhash (0x0EB382B7)
	arguments {
		charPtr "picName1",
		charPtr "picName2",
		BOOL "flash",
		int "iconType",
		charPtr "sender",
		charPtr "subject",
		float "duration",
	}
	alias "0x1E6611149DB3DB6B"
	ns "HUD"
	returns "int"
	doc [[!
<summary>
```
NOTE: 'duration' is a multiplier, so 1.0 is normal, 2.0 is twice as long (very slow), and 0.5 is half as long.  
Example, only occurrence in the scripts:  
v_8 = UI::_1E6611149DB3DB6B("CHAR_SOCIAL_CLUB", "CHAR_SOCIAL_CLUB", 0, 0, &v_9, "", a_5);  
```
</summary>
	]]

native "SET_PAUSE_MENU_ACTIVE"
    hash "0xDF47FC56C71569CF"
	jhash (0x1DCD878E)
	arguments {
		BOOL "toggle",
	}
	ns "HUD"
	returns "void"
	doc [[!
	]]

native "_SET_NOTIFICATION_MESSAGE"
    hash "0x1CCD9A37359072CF"
	jhash (0xE7E3C98B)
	arguments {
		charPtr "textureDict",
		charPtr "textureName",
		BOOL "flash",
		int "iconType",
		charPtr "sender",
		charPtr "subject",
	}
	ns "HUD"
	returns "int"
	doc [[!
<summary>
Sets some extra options for a notification. It adds an image (or icon type) and sets a notification title (sender) and subtitle (subject).

Texture dictionary and texture name parameters are usually the same exact value.

Example result:

![](https://i.imgur.com/LviutDl.png)

Old description with list of possible icons and texture names:

```text
List of picNames: pastebin.com/XdpJVbHz  
flash is a bool for fading in.  
iconTypes:  
1 : Chat Box  
2 : Email  
3 : Add Friend Request  
4 : Nothing  
5 : Nothing  
6 : Nothing  
7 : Right Jumping Arrow  
8 : RP Icon  
9 : $ Icon  
"sender" is the very top header. This can be any old string.  
"subject" is the header under the sender.  
```
</summary>
<param name="textureDict">The texture dictionary for the icon.</param>
<param name="textureName">The texture name for the icon.</param>
<param name="flash">Flash, doesn't seem to work no matter what.</param>
<param name="iconType">The icon type, see the list above in the description.</param>
<param name="sender">The notification title.</param>
<param name="subject">The notification subtitle.</param>
<returns>The notification handle.</returns>
	]]

native "SET_PAUSE_MENU_PED_LIGHTING"
    hash "0x3CA6050692BC61B0"
	jhash (0x127310EB)
	arguments {
		BOOL "state",
	}
	alias "0x3CA6050692BC61B0"
	ns "HUD"
	returns "void"
	doc [[!
<summary>
Toggles the light state for the pause menu ped in frontend menus.

This is used by R\* in combination with [`SET_PAUSE_MENU_PED_SLEEP_STATE`](#_0xECF128344E9FF9F1) to toggle the "offline" or "online" state in the "friends" tab of the pause menu in GTA Online.

Example:
On: ![lights on](https://vespura.com/hi/i/2019-04-01_16-09_540ee_1015.png)
Off: ![lights off](https://vespura.com/hi/i/2019-04-01_16-10_8b5e7_1016.png)
</summary>
<param name="state">True enables the light, false disables the light.</param>
	]]

native "_SET_NOTIFICATION_MESSAGE_CLAN_TAG_2"
    hash "0x531B84E7DA981FB6"
	jhash (0xDEB491C8)
	arguments {
		charPtr "picName1",
		charPtr "picName2",
		BOOL "flash",
		int "iconType1",
		charPtr "sender",
		charPtr "subject",
		float "duration",
		charPtr "clanTag",
		int "iconType2",
		int "p9",
	}
	ns "HUD"
	returns "int"
	doc [[!
<summary>
```
List of picNames: pastebin.com/XdpJVbHz  
flash is a bool for fading in.  
iconTypes:  
1 : Chat Box  
2 : Email  
3 : Add Friend Request  
4 : Nothing  
5 : Nothing  
6 : Nothing  
7 : Right Jumping Arrow  
8 : RP Icon  
9 : $ Icon  
"sender" is the very top header. This can be any old string.  
"subject" is the header under the sender.  
"duration" is a multiplier, so 1.0 is normal, 2.0 is twice as long (very slow), and 0.5 is half as long.  
"clanTag" shows a crew tag in the "sender" header, after the text. You need to use 3 underscores as padding. Maximum length of this field seems to be 7. (e.g. "MK" becomes "___MK", "ACE" becomes "___ACE", etc.)  
iconType2 is a mirror of iconType. It shows in the "subject" line, right under the original iconType.  
int IconNotification(char *text, char *text2, char *Subject)  
{  
	_SET_NOTIFICATION_TEXT_ENTRY("STRING");  
	ADD_TEXT_COMPONENT_SUBSTRING_PLAYER_NAME(text);  
	_SET_NOTIFICATION_MESSAGE_CLAN_TAG_2("CHAR_SOCIAL_CLUB", "CHAR_SOCIAL_CLUB", 1, 7, text2, Subject, 1.0f, "__EXAMPLE", 7);  
	return _DRAW_NOTIFICATION(1, 1);  
}  
```
</summary>
	]]

native "_SET_PED_AI_BLIP"
    hash "0xD30C50DF888D58B5"
	jhash (0x96C4C4DD)
	arguments {
		int "pedHandle",
		BOOL "showViewCones",
	}
	alias "0xD30C50DF888D58B5"
	alias "_SET_PED_ENEMY_AI_BLIP"
	ns "HUD"
	returns "void"
	doc [[!
<summary>
```
Previously named _0xD30C50DF888D58B5, this native turns on the AI blip on the specified ped. It also disappears automatically when the ped is too far or if the ped is dead. You don't need to control it with other natives.   
See gtaforums.com/topic/884370-native-research-ai-blips for further information.  
Note: Everything said at the bottom is only valid for persistant peds, as AI blips seem to behave differently for non-persistant peds.  
• To create an AI blip, you must use UI::0xD30C50DF888D58B5() (_SET_PED_ENEMY_AI_BLIP). It has two arguments: "ped" which is the ped you want to AI blip to be linked to, and "showViewCones" which needs to be true for AI blips to appear.  
• To check if a ped has an AI blip, you can use UI::DOES_PED_HAVE_AI_BLIP(Ped ped), which returns a simple bool.  
• By default, AI blips never disappear. If you want them to disappear when you're at a certain distance from a ped, you can use UI::0x97C65887D4B37FA9(Ped ped, float distance) (_SET_AI_BLIP_MAX_DISTANCE)  
• By default, the blip only appears when you're in combat with the specified ped. If you want it to be always displayed, you can use UI::x0C4BBF625CA98C4E() (_IS_AI_BLIP_ALWAYS_SHOWN). It also has two arguments: "ped", and a flag. If the flag is set to true, the blip will always be displayed. If it's set to false, the AI blip will have its default behaviour.  
• By default, a view cone is displayed with the blip (basically a blue surface that represents the field of view of the ped, like in vanilla stealth missions). If you don't want it, you can disable it with UI::HIDE_SPECIAL_ABILITY_LOCKON_OPERATION(Ped ped, bool flag). If the flag is set to true, the view cone is displayed. If the flag is set to false, it is not.  
• Finally, there's actually 3 types of AI blips:  
0 - the default, red, "enemy" blip  
1 - a weird, semi-transparent, nameless, yellow blip  
2 - the blue "friend" blip  
You can change an AI blip's type with UI::0xE52B8E7F85D39A08(Ped ped, int type) (_SET_AI_BLIP_TYPE).  
```
</summary>
	]]

native "_SET_NOTIFICATION_MESSAGE_3"
    hash "0xC6F580E4C94926AC"
	arguments {
		charPtr "picName1",
		charPtr "picName2",
		BOOL "p2",
		Any "p3",
		charPtr "p4",
		charPtr "p5",
	}
	alias "0xC6F580E4C94926AC"
	ns "HUD"
	returns "int"
	doc [[!
<summary>
```
Needs more research.  
Only one type of usage in the scripts:  
UI::_C6F580E4C94926AC("CHAR_ACTING_UP", "CHAR_ACTING_UP", 0, 0, "DI_FEED_CHAR", a_0);  
```
</summary>
	]]

native "_SET_PLAYER_BLIP_POSITION_THIS_FRAME"
    hash "0x77E2DD177910E1CF"
	jhash (0x54E75C7D)
	arguments {
		float "x",
		float "y",
	}
	ns "HUD"
	returns "void"
	doc [[!
<summary>
```
Sets the position of the arrow icon representing the player on both the minimap and world map.  
Too bad this wouldn't work over the network (obviously not). Could spoof where we would be.  
```
</summary>
	]]

native "SET_RADAR_AS_EXTERIOR_THIS_FRAME"
    hash "0xE81B7D2A3DAB2D81"
	jhash (0x39ABB10E)
	ns "HUD"
	returns "void"
	doc [[!
	]]

native "_SET_NOTIFICATION_TEXT_ENTRY"
    hash "0x202709F4C58A0424"
	jhash (0x574EE85C)
	arguments {
		charPtr "text",
	}
	ns "HUD"
	returns "void"
	doc [[!
<summary>
```
Declares the entry type of a notification, for example "STRING".  
int ShowNotification(char *text)  
{  
	_SET_NOTIFICATION_TEXT_ENTRY("STRING");  
	ADD_TEXT_COMPONENT_SUBSTRING_PLAYER_NAME(text);  
	return _DRAW_NOTIFICATION(1, 1);  
}  
```
</summary>
	]]

native "SET_RADAR_ZOOM"
    hash "0x096EF57A0C999BBA"
	jhash (0x2A50D1A6)
	arguments {
		int "zoomLevel",
	}
	ns "HUD"
	returns "void"
	doc [[!
<summary>
```
zoomLevel ranges from 0 to 200  
```
</summary>
	]]

native "SET_PAUSE_MENU_PED_SLEEP_STATE"
    hash "0xECF128344E9FF9F1"
	jhash (0x8F45D327)
	arguments {
		BOOL "state",
	}
	alias "0xECF128344E9FF9F1"
	ns "HUD"
	returns "void"
	doc [[!
<summary>
Toggles the pause menu ped sleep state for frontend menus.

[Example GIF](https://vespura.com/hi/i/2019-04-01_15-51_8ed38_1014.gif)
</summary>
<param name="state">0 will make the ped slowly fall asleep, 1 will slowly wake the ped up.</param>
	]]

native "SET_TEXT_CENTRE"
    hash "0xC02F4DBFB51D988B"
	jhash (0xE26D39A1)
	arguments {
		BOOL "align",
	}
	ns "HUD"
	returns "void"
	doc [[!
	]]

native "_SET_TEXT_CHAT_UNK"
    hash "0x1DB21A44B09E8BA3"
	arguments {
		BOOL "p0",
	}
	ns "HUD"
	returns "void"
	doc [[!
<summary>
```
Sets an unknown boolean value in the text chat.  
```
</summary>
	]]

native "_SET_PLAYER_CASH_CHANGE"
    hash "0x0772DF77852C2E30"
	arguments {
		int "cash",
		int "bank",
	}
	alias "_SET_SINGLEPLAYER_HUD_CASH"
	ns "HUD"
	returns "void"
	doc [[!
<summary>
```
Displays cash change notifications on HUD.  
```
</summary>
	]]

native "SET_TEXT_DROPSHADOW"
    hash "0x465C84BC39F1C351"
	jhash (0xE6587517)
	arguments {
		int "distance",
		int "r",
		int "g",
		int "b",
		int "a",
	}
	ns "HUD"
	returns "void"
	doc [[!
<summary>
Sets the drop shadow for the current text style.
</summary>
<param name="distance">Shadow distance in pixels, both horizontal and vertical.</param>
<param name="r">Red color.</param>
<param name="g">Green color.</param>
<param name="b">Blue color.</param>
<param name="a">Alpha.</param>
	]]

native "SET_RADAR_AS_INTERIOR_THIS_FRAME"
    hash "0x59E727A1C9D3E31A"
	jhash (0x6F2626E1)
	arguments {
		Hash "interior",
		float "x",
		float "y",
		int "heading",
		int "zoom",
	}
	ns "HUD"
	returns "void"
	doc [[!
<summary>
```
List of interior hashes: pastebin.com/1FUyXNqY  
Not for every interior zoom > 0 available.  
```
</summary>
	]]

native "SET_TEXT_EDGE"
    hash "0x441603240D202FA6"
	jhash (0x3F1A5DAB)
	arguments {
		int "p0",
		int "r",
		int "g",
		int "b",
		int "a",
	}
	ns "HUD"
	returns "void"
	doc [[!
<summary>
**This native does absolutely nothing, just a nullsub**
</summary>
	]]

native "_SET_RADAR_ZOOM_LEVEL_THIS_FRAME"
    hash "0xCB7CC0D58405AD41"
	jhash (0x09CF1CE5)
	arguments {
		float "zoomLevel",
	}
	ns "HUD"
	returns "void"
	doc [[!
	]]

native "SET_TEXT_FONT"
    hash "0x66E0276CC5F6B9DA"
	jhash (0x80BC530D)
	arguments {
		int "fontType",
	}
	ns "HUD"
	returns "void"
	doc [[!
<summary>
```
fonts that mess up your text where made for number values/misc stuff  
```
</summary>
	]]

native "SET_TEXT_COLOUR"
    hash "0xBE6B23FFA53FB442"
	jhash (0xE54DD2C8)
	arguments {
		int "red",
		int "green",
		int "blue",
		int "alpha",
	}
	ns "HUD"
	returns "void"
	doc [[!
	]]

native "SET_TEXT_LEADING"
    hash "0xA50ABC31E3CDFAFF"
	jhash (0x98CE21D4)
	arguments {
		BOOL "p0",
	}
	ns "HUD"
	returns "void"
	doc [[!
<summary>
```
from script am_mp_yacht.c int?  
ui::set_text_leading(2);  
```
</summary>
	]]

native "SET_TEXT_PROPORTIONAL"
    hash "0x038C1F517D7FDCF8"
	jhash (0xF49D8A08)
	arguments {
		BOOL "p0",
	}
	ns "HUD"
	returns "void"
	doc [[!
<summary>
**This native does absolutely nothing, just a nullsub**
</summary>
	]]

native "SET_TEXT_DROP_SHADOW"
    hash "0x1CA3E9EAC9D93E5E"
	jhash (0xE2A11511)
	ns "HUD"
	returns "void"
	doc [[!
	]]

native "SET_TEXT_RIGHT_JUSTIFY"
    hash "0x6B3C4650BC8BEE47"
	jhash (0x45B60520)
	arguments {
		BOOL "toggle",
	}
	ns "HUD"
	returns "void"
	doc [[!
	]]

native "SET_TEXT_JUSTIFICATION"
    hash "0x4E096588B13FFECA"
	jhash (0x68CDFA60)
	arguments {
		int "justifyType",
	}
	alias "0x4E096588B13FFECA"
	ns "HUD"
	returns "void"
	doc [[!
<summary>
```
Types -  
0: Center-Justify  
1: Left-Justify  
2: Right-Justify  
Right-Justify requires SET_TEXT_WRAP, otherwise it will draw to the far right of the screen  
```
</summary>
	]]

native "SET_TEXT_SCALE"
    hash "0x07C837F9A01C34C9"
	jhash (0xB6E15B23)
	arguments {
		float "scale",
		float "size",
	}
	ns "HUD"
	returns "void"
	doc [[!
<summary>
```
Size range : 0f to 1.0f  
```
</summary>
	]]

native "SET_TEXT_OUTLINE"
    hash "0x2513DFB0FB8400FE"
	jhash (0xC753412F)
	ns "HUD"
	returns "void"
	doc [[!
	]]

native "SET_USERIDS_UIHIDDEN"
    hash "0xEF4CED81CEBEDC6D"
	jhash (0x4370999E)
	arguments {
		Any "p0",
		AnyPtr "p1",
	}
	ns "HUD"
	returns "BOOL"
	doc [[!
<summary>
```
Hash collision! Please change back to _0xEF4CED81CEBEDC6D  
```
</summary>
	]]

native "SET_WARNING_MESSAGE_WITH_HEADER"
    hash "0xDC38CC1E35B6A5D7"
	jhash (0x2DB9EAB5)
	arguments {
		charPtr "entryHeader",
		charPtr "entryLine1",
		int "instructionalKey",
		charPtr "entryLine2",
		BOOL "p4",
		Any "p5",
		BOOL "background",
		AnyPtr "p7",
		BOOL "p8",
	}
	alias "_SET_WARNING_MESSAGE_2"
	ns "HUD"
	returns "void"
	doc [[!
<summary>
```
You can only use text entries. No custom text.  
C# Example :  
Function.Call(Hash._SET_WARNING_MESSAGE_2, "HUD_QUIT", "HUD_CGIGNORE", 2, "HUD_CGINVITE", 0, -1, 0, 0, 1);  
you can recreate this easily with scaleforms  
---------------  
Fixed native name, from before nativedb restoration.  
```
</summary>
	]]

native "SET_TEXT_RENDER_ID"
    hash "0x5F15302936E07111"
	jhash (0xC5C3B7F3)
	arguments {
		int "renderId",
	}
	ns "HUD"
	returns "void"
	doc [[!
	]]

native "SET_TEXT_WRAP"
    hash "0x63145D9C883A1A70"
	jhash (0x6F60AB54)
	arguments {
		float "start",
		float "end",
	}
	ns "HUD"
	returns "void"
	doc [[!
<summary>
```
It sets the text in a specified box and wraps the text if it exceeds the boundries. Both values are for X axis. Useful when positioning text set to center or aligned to the right.  
start - left boundry on screen position (0.0 - 1.0)  
end - right boundry on screen position (0.0 - 1.0)  
```
</summary>
	]]

native "_SET_WARNING_MESSAGE_3"
    hash "0x701919482C74B5AB"
	jhash (0x749929D3)
	arguments {
		charPtr "entryHeader",
		charPtr "entryLine1",
		Any "instructionalKey",
		charPtr "entryLine2",
		BOOL "p4",
		Any "p5",
		Any "p6",
		AnyPtr "p7",
		AnyPtr "p8",
		BOOL "p9",
	}
	ns "HUD"
	returns "void"
	doc [[!
<summary>
```
You can only use text entries. No custom text.  
```
</summary>
	]]

native "SET_WARNING_MESSAGE"
    hash "0x7B1776B3B53F8D74"
	jhash (0xBE699BDE)
	arguments {
		charPtr "entryLine1",
		int "instructionalKey",
		charPtr "entryLine2",
		BOOL "p3",
		Any "p4",
		AnyPtr "background",
		AnyPtr "p6",
		BOOL "p7",
		Any "p8",
	}
	ns "HUD"
	returns "void"
	doc [[!
<summary>
**instructionalKey enum list**:

```
enum INSTRUCTIONAL_BUTTON_TYPES
{
    NONE = 0,
    SELECT = 1,
    OK = 2,
    YES = 4,
    BACK = 8,
    BACK_SELECT = 9,
    BACK_OK = 10,
    BACK_YES = 12,
    CANCEL = 16,
    CANCEL_SELECT = 17,
    CANCEL_OK = 18,
    CANCEL_YES = 20,
    NO = 32,
    NO_SELECT = 33,
    NO_OK = 34,
    YES_NO = 36,
    RETRY = 64,
    RETRY_SELECT = 65,
    RETRY_OK = 66,
    RETRY_YES = 68,
    RETRY_BACK = 72,
    RETRY_BACK_SELECT = 73,
    RETRY_BACK_OK = 74,
    RETRY_BACK_YES = 76,
    RETRY_CANCEL = 80,
    RETRY_CANCEL_SELECT = 81,
    RETRY_CANCEL_OK = 82,
    RETRY_CANCEL_YES = 84,
    SKIP = 256,
    SKIP_SELECT = 257,
    SKIP_OK = 258,
    SKIP_YES = 260,
    SKIP_BACK = 264,
    SKIP_BACK_SELECT = 265,
    SKIP_BACK_OK = 266,
    SKIP_BACK_YES = 268,
    SKIP_CANCEL = 272,
    SKIP_CANCEL_SELECT = 273,
    SKIP_CANCEL_OK = 274,
    SKIP_CANCEL_YES = 276,
    CONTINUE = 16384,
    BACK_CONTINUE = 16392,
    CANCEL_CONTINUE = 16400,
    LOADING_SPINNER = 134217728,
    SELECT_LOADING_SPINNER = 134217729,
    OK_LOADING_SPINNER = 134217730,
    YES_LOADING_SPINNER = 134217732,
    BACK_LOADING_SPINNER = 134217736,
    BACK_SELECT_LOADING_SPINNER = 134217737,
    BACK_OK_LOADING_SPINNER = 134217738,
    BACK_YES_LOADING_SPINNER = 134217740,
    CANCEL_LOADING_SPINNER = 134217744,
    CANCEL_SELECT_LOADING_SPINNER = 134217745,
    CANCEL_OK_LOADING_SPINNER = 134217746,
    CANCEL_YES_LOADING_SPINNER = 134217748
}
```

Note: this list is definitely NOT complete, but these are the ones I've been able to find before giving up because it's such a boring thing to look for 'good' combinations.

**Result of the example code:**
<https://i.imgur.com/imwoimm.png>
</summary>
<param name="entryLine1">The text label to display as the first line of the warning message.</param>
<param name="instructionalKey">This is an enum, check the description for a list.</param>
<param name="entryLine2">The text label to display as the second line of the warning message.</param>
<param name="p3">Purpose unknown.</param>
<param name="p4">Purpose unknown.</param>
<param name="background">Set to anything other than 0 or false (even any string) and it will draw a background. Setting it to 0 or false will draw no background.</param>
<param name="p6">Purpose unknown.</param>
<param name="p7">Purpose unknown.</param>
<param name="p8">Purpose unknown.</param>
	]]

native "SET_WIDESCREEN_FORMAT"
    hash "0xC3B07BA00A83B0F1"
	jhash (0xF016E08F)
	arguments {
		Any "p0",
	}
	ns "HUD"
	returns "void"
	doc [[!
	]]

native "_SHOW_CURSOR_THIS_FRAME"
    hash "0xAAE7CE1D63167423"
	ns "HUD"
	returns "void"
	doc [[!
<summary>
```
Shows the cursor on screen for the frame its called.  
```
</summary>
	]]

native "SET_WAYPOINT_OFF"
    hash "0xA7E4E2D361C2627F"
	jhash (0xB3496E1B)
	ns "HUD"
	returns "void"
	doc [[!
<summary>
```
This native removes the current waypoint from the map.  
Example:  
C#:  
Function.Call(Hash.SET_WAYPOINT_OFF);  
C++:  
UI::SET_WAYPOINT_OFF();  
```
</summary>
	]]

native "SHOW_HEADING_INDICATOR_ON_BLIP"
    hash "0x5FBCA48327B914DF"
	jhash (0xD1C3D71B)
	arguments {
		Blip "blip",
		BOOL "toggle",
	}
	alias "0x5FBCA48327B914DF"
	ns "HUD"
	returns "void"
	doc [[!
<summary>
```
Adds the GTA: Online player heading indicator to a blip.  
```
</summary>
	]]

native "SHOW_CREW_INDICATOR_ON_BLIP"
    hash "0xDCFB5D4DB8BF367E"
	jhash (0xABBE1E45)
	arguments {
		Blip "blip",
		BOOL "toggle",
	}
	alias "0xDCFB5D4DB8BF367E"
	alias "SET_BLIP_CREW"
	ns "HUD"
	returns "void"
	doc [[!
<summary>
Enables or disables the blue half circle ![](https://i.imgur.com/iZes9Ec.png) around the specified blip on the left side of the blip. This is used to indicate that the player is in your crew in GTA:O. Color is changeable by using [`SET_BLIP_SECONDARY_COLOUR`](#_0x14892474891E09EB).

To toggle the right side of the circle use: [`SHOW_FRIEND_INDICATOR_ON_BLIP`](#_0x23C3EB807312F01A).

Example code result:
![](https://i.imgur.com/iZ9tNWl.png)
</summary>
<param name="blip">The blip to toggle the half blue circle around the blip on.</param>
<param name="toggle">Enables or disables the half blue circle around the blip (on the left side).</param>
	]]

native "SHOW_NUMBER_ON_BLIP"
    hash "0xA3C0B359DCB848B6"
	jhash (0x7BFC66C6)
	arguments {
		Blip "blip",
		int "number",
	}
	ns "HUD"
	returns "void"
	doc [[!
	]]

native "SHOW_OUTLINE_INDICATOR_ON_BLIP"
    hash "0xB81656BC81FE24D1"
	jhash (0x8DE82C15)
	arguments {
		Blip "blip",
		BOOL "toggle",
	}
	alias "0xB81656BC81FE24D1"
	alias "SET_BLIP_FRIENDLY"
	ns "HUD"
	returns "void"
	doc [[!
<summary>
Toggles a cyan outline around the blip.

Color can be changed with `SET_BLIP_SECONDARY_COLOUR`. Enabling this circle will override the "crew" and "friend" half-circles (see [`SHOW_CREW_INDICATOR_ON_BLIP`](#_0xDCFB5D4DB8BF367E) and [`SHOW_FRIEND_INDICATOR_ON_BLIP`](#_0x23C3EB807312F01A)). 

~~Oddly enough, this native is called `_SET_BLIP_FRIENDLY`, but the color of the circle is only changable for the 'crew' half-circle (using `SET_BLIP_SECONDARY_COLOUR`), the 'friendly' side can NOT be changed and will always stay cyan/blue. This makes it seem more likely that this should be called `_SET_BLIP_CREW_CIRCLE` or something similar?~~

Real name is `SHOW_OUTLINE_INDICATOR_ON_BLIP`, discovered by Blattersturm.
</summary>
<param name="blip">The blip to toggle the outline on.</param>
<param name="toggle">Enables or disables the outline.</param>
	]]

native "SHOW_FRIEND_INDICATOR_ON_BLIP"
    hash "0x23C3EB807312F01A"
	jhash (0x4C8F02B4)
	arguments {
		Blip "blip",
		BOOL "toggle",
	}
	alias "0x23C3EB807312F01A"
	alias "SET_BLIP_FRIEND"
	ns "HUD"
	returns "void"
	doc [[!
<summary>
Highlights a blip by a half cyan circle on the right side of the blip. ![](https://i.imgur.com/FrV9M4e.png) Indicating that that player is a friend (in GTA:O). This color can not be changed.

To toggle the left side (crew member indicator) of the half circle around the blip, use: [`SHOW_CREW_INDICATOR_ON_BLIP`](#_0xDCFB5D4DB8BF367E).
</summary>
<param name="blip">The blip to toggle the half circle on.</param>
<param name="toggle">Enables or disables the half circle around the blip (on the right side of the blip).</param>
	]]

native "_SHOW_SOCIAL_CLUB_LEGAL_SCREEN"
    hash "0x805D7CBB36FD6C4C"
	jhash (0x19FCBBB2)
	ns "HUD"
	returns "void"
	doc [[!
<summary>
```
probs one frame  
```
</summary>
	]]

native "SHOW_HUD_COMPONENT_THIS_FRAME"
    hash "0x0B4DF1FA60C0E664"
	jhash (0x95E1546E)
	arguments {
		int "id",
	}
	ns "HUD"
	returns "void"
	doc [[!
	]]

native "_SHOW_WEAPON_WHEEL"
    hash "0xEB354E5376BC81A7"
	jhash (0x1EFFB02A)
	arguments {
		BOOL "forcedShow",
	}
	alias "0xEB354E5376BC81A7"
	ns "HUD"
	returns "void"
	doc [[!
<summary>
```
Forces the weapon wheel to appear on screen.  
```
</summary>
	]]

native "_SHOW_SOCIAL_CLUB_BANNED_SCREEN"
    hash "0x75D3691713C3B05A"
	jhash (0x57218529)
	alias "0x75D3691713C3B05A"
	ns "HUD"
	returns "void"
	doc [[!
<summary>
Uses the `SOCIAL_CLUB2` scaleform.
</summary>
	]]

native "UNLOCK_MINIMAP_ANGLE"
    hash "0x8183455E16C42E3A"
	jhash (0x742043F9)
	ns "HUD"
	returns "void"
	doc [[!
	]]

native "UNLOCK_MINIMAP_POSITION"
    hash "0x3E93E06DB8EF1F30"
	jhash (0x5E8E6F54)
	ns "HUD"
	returns "void"
	doc [[!
	]]

native "SHOW_TICK_ON_BLIP"
    hash "0x74513EA3E505181E"
	jhash (0x3DCF0092)
	arguments {
		Blip "blip",
		BOOL "toggle",
	}
	alias "0x74513EA3E505181E"
	alias "_SET_BLIP_CHECKED"
	ns "HUD"
	returns "void"
	doc [[!
<summary>
```
Adds a green checkmark on top of a blip.  
```
</summary>
	]]

native "TOGGLE_STEALTH_RADAR"
    hash "0x6AFDFB93754950C7"
	jhash (0xC68D47C4)
	arguments {
		BOOL "toggle",
	}
	ns "HUD"
	returns "void"
	doc [[!
	]]

native "ADD_COVER_BLOCKING_AREA"
    hash "0x45C597097DD7CB81"
	jhash (0x3536946F)
	arguments {
		float "playerX",
		float "playerY",
		float "playerZ",
		float "radiusX",
		float "radiusY",
		float "radiusZ",
		BOOL "p6",
		BOOL "p7",
		BOOL "p8",
		BOOL "p9",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
	]]

native "ADD_PATROL_ROUTE_LINK"
    hash "0x23083260DEC3A551"
	jhash (0xD8761BB3)
	arguments {
		Any "p0",
		Any "p1",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
	]]

native "ADD_COVER_POINT"
    hash "0xD5C12A75C7B9497F"
	jhash (0xA0AF0B98)
	arguments {
		float "p0",
		float "p1",
		float "p2",
		float "p3",
		Any "p4",
		Any "p5",
		Any "p6",
		BOOL "p7",
	}
	ns "BRAIN"
	returns "ScrHandle"
	doc [[!
	]]

native "ADD_SCRIPT_TO_RANDOM_PED"
    hash "0x4EE5367468A65CCC"
	jhash (0xECC76C3D)
	arguments {
		charPtr "name",
		Hash "model",
		float "p2",
		float "p3",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
<summary>
```
BRAIN::ADD_SCRIPT_TO_RANDOM_PED("pb_prostitute", ${s_f_y_hooker_01}, 100, 0);  
-----  
Hardcoded to not work in Multiplayer.  
------  
Which I'm sure can easily be bypassed by nop'ing the branch preventing it from working if you are in multiplayer lol. Which would still be pointless since you don't need this to make peds do what you wish.  
```
</summary>
	]]

native "ADD_VEHICLE_SUBTASK_ATTACK_PED"
    hash "0x85F462BADC7DA47F"
	jhash (0x80461113)
	arguments {
		Ped "ped",
		Ped "ped2",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
	]]

native "ADD_PATROL_ROUTE_NODE"
    hash "0x8EDF950167586B7C"
	jhash (0x21B48F10)
	arguments {
		int "p0",
		charPtr "p1",
		float "x1",
		float "y1",
		float "z1",
		float "x2",
		float "y2",
		float "z2",
		int "p8",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
<summary>
```
Example:   
AI::ADD_PATROL_ROUTE_NODE(2, "WORLD_HUMAN_GUARD_STAND", -193.4915, -2378.864990234375, 10.9719, -193.4915, -2378.864990234375, 10.9719, 3000);  
p0 is between 0 and 4 in the scripts.  
p1 is "WORLD_HUMAN_GUARD_STAND" or "StandGuard".  
p2, p3 and p4 is only one parameter sometimes in the scripts. Most likely a Vector3 hence p2, p3 and p4 are coordinates.   
Examples:   
AI::ADD_PATROL_ROUTE_NODE(1, "WORLD_HUMAN_GUARD_STAND", l_739[7/*3*/], 0.0, 0.0, 0.0, 0);  
AI::ADD_PATROL_ROUTE_NODE(1, "WORLD_HUMAN_GUARD_STAND", l_B0[17/*44*/]._f3, l_B0[17/*44*/]._f3, 2000);  
p5, p6 and p7 are for example set to: 1599.0406494140625, 2713.392578125, 44.4309.  
p8 is an int, often random set to for example: GAMEPLAY::GET_RANDOM_INT_IN_RANGE(5000, 10000).  
```
</summary>
	]]

native "ASSISTED_MOVEMENT_OVERRIDE_LOAD_DISTANCE_THIS_FRAME"
    hash "0x13945951E16EF912"
	jhash (0x8FB923EC)
	arguments {
		float "dist",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
	]]

native "ADD_VEHICLE_SUBTASK_ATTACK_COORD"
    hash "0x5CF0D8F9BBA0DD75"
	jhash (0x50779A2C)
	arguments {
		Ped "ped",
		float "x",
		float "y",
		float "z",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
<summary>
```
x, y, z: offset in world coords from some entity.  
```
</summary>
	]]

native "ASSISTED_MOVEMENT_REMOVE_ROUTE"
    hash "0x3548536485DD792B"
	jhash (0xB3CEC06F)
	arguments {
		charPtr "route",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
	]]

native "ASSISTED_MOVEMENT_SET_ROUTE_PROPERTIES"
    hash "0xD5002D78B7162E1B"
	jhash (0x01CAAFCC)
	arguments {
		charPtr "route",
		int "props",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
	]]

native "ASSISTED_MOVEMENT_IS_ROUTE_LOADED"
    hash "0x60F9A4393A21F741"
	jhash (0x79B067AF)
	arguments {
		charPtr "route",
	}
	ns "BRAIN"
	returns "BOOL"
	doc [[!
	]]

native "CLEAR_PED_SECONDARY_TASK"
    hash "0x176CECF6F920D707"
	jhash (0xA635F451)
	arguments {
		Ped "ped",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
	]]

native "CLEAR_PED_TASKS_IMMEDIATELY"
    hash "0xAAA34F8A7CB32098"
	jhash (0xBC045625)
	arguments {
		Ped "ped",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
<summary>
```
Immediately stops the pedestrian from whatever it's doing. They stop fighting, animations, etc. they forget what they were doing.  
```
</summary>
	]]

native "ASSISTED_MOVEMENT_REQUEST_ROUTE"
    hash "0x817268968605947A"
	jhash (0x48262EDA)
	arguments {
		charPtr "route",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
<summary>
```
Routes: "1_FIBStairs", "2_FIBStairs", "3_FIBStairs", "4_FIBStairs", "5_FIBStairs", "5_TowardsFire", "6a_FIBStairs", "7_FIBStairs", "8_FIBStairs", "Aprtmnt_1", "AssAfterLift", "ATM_1", "coroner2", "coroner_stairs", "f5_jimmy1", "fame1", "family5b", "family5c", "Family5d", "family5d", "FIB_Glass1", "FIB_Glass2", "FIB_Glass3", "finaBroute1A", "finalb1st", "finalB1sta", "finalbround", "finalbroute2", "Hairdresser1", "jan_foyet_ft_door", "Jo_3", "Lemar1", "Lemar2", "mansion_1", "Mansion_1", "pols_1", "pols_2", "pols_3", "pols_4", "pols_5", "pols_6", "pols_7", "pols_8", "Pro_S1", "Pro_S1a", "Pro_S2", "Towards_case", "trev_steps", "tunrs1", "tunrs2", "tunrs3", "Wave01457s"  
```
</summary>
	]]

native "CLEAR_SEQUENCE_TASK"
    hash "0x3841422E9C488D8C"
	jhash (0x47ED03CE)
	arguments {
		ObjectPtr "taskSequence",
	}
	ns "BRAIN"
	returns "Any"
	doc [[!
	]]

native "CLEAR_DRIVEBY_TASK_UNDERNEATH_DRIVING_TASK"
    hash "0xC35B5CDB2824CF69"
	jhash (0x9B76F7E6)
	arguments {
		Ped "ped",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
	]]

native "CONTROL_MOUNTED_WEAPON"
    hash "0xDCFE42068FE0135A"
	jhash (0x500D9244)
	arguments {
		Ped "ped",
	}
	ns "BRAIN"
	returns "BOOL"
	doc [[!
<summary>
```
Forces the ped to use the mounted weapon.  
Returns false if task is not possible.  
```
</summary>
	]]

native "CLEAR_PED_TASKS"
    hash "0xE1EF3C1216AFF2CD"
	jhash (0xDE3316AB)
	arguments {
		Ped "ped",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
	]]

native "DELETE_PATROL_ROUTE"
    hash "0x7767DD9D65E91319"
	jhash (0x2A4E6706)
	arguments {
		charPtr "patrolRoute",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
<summary>
```
From the b617d scripts:  
AI::DELETE_PATROL_ROUTE("miss_merc0");  
AI::DELETE_PATROL_ROUTE("miss_merc1");  
AI::DELETE_PATROL_ROUTE("miss_merc2");  
AI::DELETE_PATROL_ROUTE("miss_dock");  
```
</summary>
	]]

native "CLOSE_PATROL_ROUTE"
    hash "0xB043ECA801B8CBC1"
	jhash (0x67305E59)
	ns "BRAIN"
	returns "void"
	doc [[!
	]]

native "DOES_SCENARIO_EXIST_IN_AREA"
    hash "0x5A59271FFADD33C1"
	jhash (0xFA7F5047)
	arguments {
		float "x",
		float "y",
		float "z",
		float "radius",
		BOOL "b",
	}
	ns "BRAIN"
	returns "BOOL"
	doc [[!
	]]

native "CLOSE_SEQUENCE_TASK"
    hash "0x39E72BC99E6360CB"
	jhash (0x1A7CEBD0)
	arguments {
		Object "taskSequence",
	}
	ns "BRAIN"
	returns "Any"
	doc [[!
	]]

native "DOES_SCENARIO_GROUP_EXIST"
    hash "0xF9034C136C9E00D3"
	jhash (0x5F072EB9)
	arguments {
		charPtr "scenarioGroup",
	}
	ns "BRAIN"
	returns "BOOL"
	doc [[!
<summary>
```
Occurrences in the b617d scripts:  
"ARMY_GUARD",  
"ARMY_HELI",  
"Cinema_Downtown",  
"Cinema_Morningwood",  
"Cinema_Textile",  
"City_Banks",  
"Countryside_Banks",  
"DEALERSHIP",  
"GRAPESEED_PLANES",  
"KORTZ_SECURITY",  
"LOST_BIKERS",  
"LSA_Planes",  
"LSA_Planes",  
"MP_POLICE",  
"Observatory_Bikers",   
"POLICE_POUND1",  
"POLICE_POUND2",  
"POLICE_POUND3",  
"POLICE_POUND4",  
"POLICE_POUND5"  
"QUARRY",  
"SANDY_PLANES",  
"SCRAP_SECURITY",  
"SEW_MACHINE",  
"SOLOMON_GATE",  
"Triathlon_1_Start",   
"Triathlon_2_Start",   
"Triathlon_3_Start"  
Sometimes used with IS_SCENARIO_GROUP_ENABLED:  
if (AI::DOES_SCENARIO_GROUP_EXIST("Observatory_Bikers") && (!AI::IS_SCENARIO_GROUP_ENABLED("Observatory_Bikers"))) {  
else if (AI::IS_SCENARIO_GROUP_ENABLED("BLIMP")) {  
```
</summary>
	]]

native "CREATE_PATROL_ROUTE"
    hash "0xAF8A443CCC8018DC"
	jhash (0x0A6C7864)
	ns "BRAIN"
	returns "void"
	doc [[!
	]]

native "DOES_SCRIPTED_COVER_POINT_EXIST_AT_COORDS"
    hash "0xA98B8E3C088E5A31"
	jhash (0x29F97A71)
	arguments {
		float "x",
		float "y",
		float "z",
	}
	ns "BRAIN"
	returns "BOOL"
	doc [[!
<summary>
```
Checks if there is a cover point at position  
```
</summary>
	]]

native "GET_ACTIVE_VEHICLE_MISSION_TYPE"
    hash "0x534AEBA6E5ED4CAB"
	jhash (0xAFA914EF)
	arguments {
		Vehicle "veh",
	}
	ns "BRAIN"
	returns "int"
	doc [[!
	]]

native "DISABLE_SCRIPT_BRAIN_SET"
    hash "0x14D8518E9760F08F"
	jhash (0xFBD13FAD)
	arguments {
		int "brainSet",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
	]]

native "GET_CLIP_SET_FOR_SCRIPTED_GUN_TASK"
    hash "0x3A8CADC7D37AACC5"
	jhash (0x249EB4EB)
	arguments {
		int "p0",
	}
	ns "BRAIN"
	returns "charPtr"
	doc [[!
	]]

native "GET_IS_WAYPOINT_RECORDING_LOADED"
    hash "0xCB4E8BE8A0063C5D"
	jhash (0x87125F5D)
	arguments {
		charPtr "name",
	}
	ns "BRAIN"
	returns "BOOL"
	doc [[!
<summary>
```
For a full list, see here: pastebin.com/Tp0XpBMN  
```
</summary>
	]]

native "DOES_SCENARIO_OF_TYPE_EXIST_IN_AREA"
    hash "0x0A9D0C2A3BBC86C1"
	jhash (0x0FB138A5)
	arguments {
		float "p0",
		float "p1",
		float "p2",
		AnyPtr "p3",
		float "p4",
		BOOL "p5",
	}
	ns "BRAIN"
	returns "BOOL"
	doc [[!
	]]

native "ENABLE_SCRIPT_BRAIN_SET"
    hash "0x67AA4D73F0CFA86B"
	jhash (0x2765919F)
	arguments {
		int "brainSet",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
<summary>
```
#4  
```
</summary>
	]]

native "GET_NAVMESH_ROUTE_DISTANCE_REMAINING"
    hash "0xC6F5C0BCDC74D62D"
	jhash (0xD9281778)
	arguments {
		Ped "ped",
		floatPtr "distRemaining",
		BOOLPtr "isPathReady",
	}
	ns "BRAIN"
	returns "int"
	doc [[!
<summary>
```
Looks like the last parameter returns true if the path has been calculated, while the first returns the remaining distance to the end of the path.  
Return value of native is the same as GET_NAVMESH_ROUTE_RESULT  
Looks like the native returns an int for the path's state:  
1 - ???  
2   
3 - Finished Generating  
```
</summary>
	]]

native "GET_PED_DESIRED_MOVE_BLEND_RATIO"
    hash "0x8517D4A6CA8513ED"
	jhash (0x5FEFAB72)
	arguments {
		Ped "ped",
	}
	ns "BRAIN"
	returns "float"
	doc [[!
	]]

native "GET_IS_TASK_ACTIVE"
    hash "0xB0760331C7AA4155"
	jhash (0x86FDDF55)
	arguments {
		Ped "ped",
		int "taskNumber",
	}
	ns "BRAIN"
	returns "BOOL"
	doc [[!
<summary>
```
from docks_heistb.c4:  
AI::GET_IS_TASK_ACTIVE(PLAYER::PLAYER_PED_ID(), 2))  
Known Tasks: pastebin.com/2gFqJ3Px  
```
</summary>
	]]

native "GET_PED_WAYPOINT_PROGRESS"
    hash "0x2720AAA75001E094"
	jhash (0x3595B104)
	arguments {
		Ped "ped",
	}
	ns "BRAIN"
	returns "int"
	doc [[!
<summary>
```
Returns the progress percent to current waypoint.  
```
</summary>
	]]

native "GET_PHONE_GESTURE_ANIM_TOTAL_TIME"
    hash "0x1EE0F68A7C25DEC6"
	jhash (0xEF8C3959)
	arguments {
		Ped "ped",
	}
	ns "BRAIN"
	returns "float"
	doc [[!
	]]

native "GET_NAVMESH_ROUTE_RESULT"
    hash "0x632E831F382A0FA8"
	jhash (0x96491602)
	arguments {
		Ped "ped",
	}
	ns "BRAIN"
	returns "int"
	doc [[!
<summary>
```
See GET_NAVMESH_ROUTE_DISTANCE_REMAINING for more details.  
```
</summary>
	]]

native "GET_SCRIPTED_COVER_POINT_COORDS"
    hash "0x594A1028FC2A3E85"
	jhash (0xC6B6CCC1)
	arguments {
		ScrHandle "coverpoint",
	}
	ns "BRAIN"
	returns "Vector3"
	doc [[!
	]]

native "GET_PED_WAYPOINT_DISTANCE"
    hash "0xE6A877C64CAF1BC5"
	jhash (0x084B35B0)
	arguments {
		Any "p0",
	}
	ns "BRAIN"
	returns "float"
	doc [[!
	]]

native "GET_VEHICLE_WAYPOINT_PROGRESS"
    hash "0x9824CFF8FC66E159"
	jhash (0xD3CCF64E)
	arguments {
		Vehicle "vehicle",
	}
	ns "BRAIN"
	returns "int"
	doc [[!
	]]

native "GET_PHONE_GESTURE_ANIM_CURRENT_TIME"
    hash "0x47619ABE8B268C60"
	jhash (0x7B72AFD1)
	arguments {
		Ped "ped",
	}
	ns "BRAIN"
	returns "float"
	doc [[!
	]]

native "GET_WAYPOINT_DISTANCE_ALONG_ROUTE"
    hash "0xA5B769058763E497"
	jhash (0xE8422AC4)
	arguments {
		charPtr "p0",
		int "p1",
	}
	ns "BRAIN"
	returns "float"
	doc [[!
	]]

native "IS_DRIVEBY_TASK_UNDERNEATH_DRIVING_TASK"
    hash "0x8785E6E40C7A8818"
	jhash (0xB23F46E6)
	arguments {
		Ped "ped",
	}
	ns "BRAIN"
	returns "BOOL"
	doc [[!
	]]

native "GET_SCRIPT_TASK_STATUS"
    hash "0x77F1BEB8863288D5"
	jhash (0xB2477B23)
	arguments {
		Ped "targetPed",
		Hash "taskHash",
	}
	ns "BRAIN"
	returns "int"
	doc [[!
<summary>
```
Gets the status of a script-assigned task. The hash does not seem to match the actual native name, but is assigned hardcoded from the executable during task creation.  
Statuses are specific to tasks, in addition '7' means the specified task is not assigned to the ped.  
A few hashes found in the executable (although not a complete list) can be found at pastebin.com/R9iK6M9W as it was too long for this wiki.  
```
</summary>
	]]

native "IS_MOVE_BLEND_RATIO_RUNNING"
    hash "0xD4D8636C0199A939"
	jhash (0xE76A2353)
	arguments {
		Ped "ped",
	}
	ns "BRAIN"
	returns "BOOL"
	doc [[!
	]]

native "GET_SEQUENCE_PROGRESS"
    hash "0x00A9010CFE1E3533"
	jhash (0xA3419909)
	arguments {
		Ped "ped",
	}
	ns "BRAIN"
	returns "int"
	doc [[!
<summary>
```
returned values:  
0 to 7 = task that's currently in progress, 0 meaning the first one.  
```
</summary>
	]]

native "IS_MOVE_BLEND_RATIO_SPRINTING"
    hash "0x24A2AD74FA9814E2"
	jhash (0xDD616893)
	arguments {
		Ped "ped",
	}
	ns "BRAIN"
	returns "BOOL"
	doc [[!
	]]

native "GET_VEHICLE_WAYPOINT_TARGET_POINT"
    hash "0x416B62AC8B9E5BBD"
	jhash (0x81049608)
	arguments {
		Any "p0",
	}
	ns "BRAIN"
	returns "Any"
	doc [[!
	]]

native "IS_OBJECT_WITHIN_BRAIN_ACTIVATION_RANGE"
    hash "0xCCBA154209823057"
	jhash (0xBA4CAA56)
	arguments {
		Object "object",
	}
	ns "BRAIN"
	returns "BOOL"
	doc [[!
	]]

native "IS_MOUNTED_WEAPON_TASK_UNDERNEATH_DRIVING_TASK"
    hash "0xA320EF046186FA3B"
	jhash (0x291E938C)
	arguments {
		Ped "ped",
	}
	ns "BRAIN"
	returns "BOOL"
	doc [[!
	]]

native "IS_PED_ACTIVE_IN_SCENARIO"
    hash "0xAA135F9482C82CC3"
	jhash (0x05038F1A)
	arguments {
		Ped "ped",
	}
	ns "BRAIN"
	returns "BOOL"
	doc [[!
	]]

native "IS_PED_CUFFED"
    hash "0x74E559B3BC910685"
	jhash (0x511CE741)
	arguments {
		Ped "ped",
	}
	ns "BRAIN"
	returns "BOOL"
	doc [[!
<summary>
```
l  
```
</summary>
	]]

native "IS_MOVE_BLEND_RATIO_STILL"
    hash "0x349CE7B56DAFD95C"
	jhash (0xE9DAF877)
	arguments {
		Ped "ped",
	}
	ns "BRAIN"
	returns "BOOL"
	doc [[!
	]]

native "IS_MOVE_BLEND_RATIO_WALKING"
    hash "0xF133BBBE91E1691F"
	jhash (0xD21639A8)
	arguments {
		Ped "ped",
	}
	ns "BRAIN"
	returns "BOOL"
	doc [[!
	]]

native "IS_PED_GETTING_UP"
    hash "0x2A74E1D5F2F00EEC"
	jhash (0x320813E6)
	arguments {
		Ped "ped",
	}
	ns "BRAIN"
	returns "BOOL"
	doc [[!
	]]

native "IS_PED_RUNNING"
    hash "0xC5286FFC176F28A2"
	jhash (0xE9A5578F)
	arguments {
		Ped "ped",
	}
	ns "BRAIN"
	returns "BOOL"
	doc [[!
	]]

native "IS_PED_BEING_ARRESTED"
    hash "0x90A09F3A45FED688"
	jhash (0x5FF6C2ED)
	arguments {
		Ped "ped",
	}
	ns "BRAIN"
	returns "BOOL"
	doc [[!
<summary>
```
This function is hard-coded to always return 0.  
```
</summary>
	]]

native "IS_PED_SPRINTING"
    hash "0x57E457CD2C0FC168"
	jhash (0x4F3E0633)
	arguments {
		Ped "ped",
	}
	ns "BRAIN"
	returns "BOOL"
	doc [[!
	]]

native "IS_PED_IN_WRITHE"
    hash "0xDEB6D52126E7D640"
	jhash (0x09E61921)
	arguments {
		Ped "ped",
	}
	ns "BRAIN"
	returns "BOOL"
	doc [[!
<summary>
```
returns true is the ped is on the ground whining like a little female dog from a gunshot wound  
```
</summary>
	]]

native "IS_PED_STRAFING"
    hash "0xE45B7F222DE47E09"
	jhash (0xEFEED13C)
	arguments {
		Ped "ped",
	}
	ns "BRAIN"
	returns "BOOL"
	doc [[!
<summary>
```
What's strafing?  
```
</summary>
	]]

native "IS_PED_WALKING"
    hash "0xDE4C184B2B9B071A"
	jhash (0x4B865C4A)
	arguments {
		Ped "ped",
	}
	ns "BRAIN"
	returns "BOOL"
	doc [[!
	]]

native "IS_PED_RUNNING_ARREST_TASK"
    hash "0x3DC52677769B4AE0"
	jhash (0x6942DB7A)
	arguments {
		Ped "ped",
	}
	ns "BRAIN"
	returns "BOOL"
	doc [[!
	]]

native "IS_PED_STILL"
    hash "0xAC29253EEF8F0180"
	jhash (0x09E3418D)
	arguments {
		Ped "ped",
	}
	ns "BRAIN"
	returns "BOOL"
	doc [[!
	]]

native "IS_SCENARIO_GROUP_ENABLED"
    hash "0x367A09DED4E05B99"
	jhash (0x90991122)
	arguments {
		charPtr "scenarioGroup",
	}
	ns "BRAIN"
	returns "BOOL"
	doc [[!
<summary>
```
Occurrences in the b617d scripts:   
"ARMY_GUARD",  
"ARMY_HELI",  
"BLIMP",  
"Cinema_Downtown",  
"Cinema_Morningwood",  
"Cinema_Textile",  
"City_Banks",  
"Countryside_Banks",  
"DEALERSHIP",  
"KORTZ_SECURITY",  
"LSA_Planes",  
"MP_POLICE",  
"Observatory_Bikers",  
"POLICE_POUND1",  
"POLICE_POUND2",  
"POLICE_POUND3",  
"POLICE_POUND4",  
"POLICE_POUND5",  
"Rampage1",  
"SANDY_PLANES",  
"SCRAP_SECURITY",  
"SEW_MACHINE",  
"SOLOMON_GATE"  
		Sometimes used with DOES_SCENARIO_GROUP_EXIST:  
		if (AI::DOES_SCENARIO_GROUP_EXIST("Observatory_Bikers") &&   (!AI::IS_SCENARIO_GROUP_ENABLED("Observatory_Bikers"))) {  
		else if (AI::IS_SCENARIO_GROUP_ENABLED("BLIMP")) {  
```
</summary>
	]]

native "IS_SCENARIO_TYPE_ENABLED"
    hash "0x3A815DB3EA088722"
	jhash (0xAE37E969)
	arguments {
		charPtr "scenarioType",
	}
	ns "BRAIN"
	returns "BOOL"
	doc [[!
<summary>
```
Occurrences in the b617d scripts:  
"PROP_HUMAN_SEAT_CHAIR",  
"WORLD_HUMAN_DRINKING",  
"WORLD_HUMAN_HANG_OUT_STREET",  
"WORLD_HUMAN_SMOKING",  
"WORLD_MOUNTAIN_LION_WANDER",  
"WORLD_HUMAN_DRINKING"  
Sometimes used together with GAMEPLAY::IS_STRING_NULL_OR_EMPTY in the scripts.  
scenarioType could be the same as scenarioName, used in for example AI::TASK_START_SCENARIO_AT_POSITION.  
```
</summary>
	]]

native "IS_PLAYING_PHONE_GESTURE_ANIM"
    hash "0xB8EBB1E9D3588C10"
	jhash (0x500B6805)
	arguments {
		Ped "ped",
	}
	ns "BRAIN"
	returns "BOOL"
	doc [[!
	]]

native "IS_SCENARIO_OCCUPIED"
    hash "0x788756D73AC2E07C"
	jhash (0x697FC008)
	arguments {
		float "p0",
		float "p1",
		float "p2",
		float "p3",
		BOOL "p4",
	}
	ns "BRAIN"
	returns "BOOL"
	doc [[!
	]]

native "IS_WAYPOINT_PLAYBACK_GOING_ON_FOR_VEHICLE"
    hash "0xF5134943EA29868C"
	jhash (0x80DD15DB)
	arguments {
		Any "p0",
	}
	ns "BRAIN"
	returns "BOOL"
	doc [[!
	]]

native "0x0B40ED49D7D6FF84"
    hash "0x0B40ED49D7D6FF84"
	jhash (0x19B27825)
	ns "BRAIN"
	returns "void"
	doc [[!
	]]

native "IS_WAYPOINT_PLAYBACK_GOING_ON_FOR_PED"
    hash "0xE03B3F2D3DC59B64"
	jhash (0x85B7725F)
	arguments {
		Any "p0",
	}
	ns "BRAIN"
	returns "BOOL"
	doc [[!
	]]

native "0x19D1B791CB3670FE"
    hash "0x19D1B791CB3670FE"
	arguments {
		Any "p0",
		Any "p1",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
	]]

native "IS_WORLD_POINT_WITHIN_BRAIN_ACTIVATION_RANGE"
    hash "0xC5042CC6F5E3D450"
	jhash (0x2CF305A0)
	ns "BRAIN"
	returns "BOOL"
	doc [[!
<summary>
```
Gets whether the world point the calling script is registered to is within desired range of the player.  
```
</summary>
	]]

native "0x3E38E28A1D80DDF6"
    hash "0x3E38E28A1D80DDF6"
	arguments {
		Ped "ped",
	}
	ns "BRAIN"
	returns "BOOL"
	doc [[!
	]]

native "0x1F351CF1C6475734"
    hash "0x1F351CF1C6475734"
	arguments {
		Any "p0",
		Any "p1",
		Any "p2",
		Any "p3",
		Any "p4",
		Any "p5",
		Any "p6",
		Any "p7",
		Any "p8",
		Any "p9",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
	]]

native "0x4D953DF78EBF8158"
    hash "0x4D953DF78EBF8158"
	jhash (0xF3A3AB08)
	ns "BRAIN"
	returns "void"
	doc [[!
<summary>
```
Something like flush_all_scripts   
Most of time comes after NETWORK_END_TUTORIAL_SESSION() or before TERMINATE_THIS_THREAD()  
```
</summary>
	]]

native "0x30ED88D5E0C56A37"
    hash "0x30ED88D5E0C56A37"
	jhash (0x92FDBAE6)
	arguments {
		Any "p0",
	}
	ns "BRAIN"
	returns "BOOL"
	doc [[!
	]]

native "0x6D6840CEE8845831"
    hash "0x6D6840CEE8845831"
	jhash (0x949FE53E)
	arguments {
		charPtr "action",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
<summary>
```
Possible values:  
act_cinema  
am_mp_carwash_launch  
am_mp_carwash_control  
am_mp_property_ext  
chop  
fairgroundHub  
launcher_BasejumpHeli  
launcher_BasejumpPack  
launcher_CarWash  
launcher_golf  
launcher_Hunting_Ambient  
launcher_MrsPhilips  
launcher_OffroadRacing  
launcher_pilotschool  
launcher_Racing  
launcher_rampage  
launcher_rampage  
launcher_range  
launcher_stunts  
launcher_stunts  
launcher_tennis  
launcher_Tonya  
launcher_Triathlon  
launcher_Yoga  
ob_mp_bed_low  
ob_mp_bed_med  
```
</summary>
	]]

native "0x621C6E4729388E41"
    hash "0x621C6E4729388E41"
	arguments {
		Ped "ped",
	}
	ns "BRAIN"
	returns "BOOL"
	doc [[!
<summary>
```
Used only once (am_mp_property_int)  
ped was PLAYER_PED_ID()  
```
</summary>
	]]

native "0x717E4D1F2048376D"
    hash "0x717E4D1F2048376D"
	jhash (0x96C0277B)
	arguments {
		Ped "ped",
	}
	ns "BRAIN"
	returns "charPtr"
	doc [[!
<summary>
```
If the function fails, returns "Unknown".  
Could be task (sequence) name. Needs more research.  
```
</summary>
	]]

native "0x88E32DB8C1A4AA4B"
    hash "0x88E32DB8C1A4AA4B"
	jhash (0x55E06443)
	arguments {
		Ped "ped",
		float "p1",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
<summary>
```
SET_PED_PATH_*  
Could be the move speed on the path. Needs testing.  
Default is 1.0 and maximum is 10.0  
```
</summary>
	]]

native "0x6E91B04E08773030"
    hash "0x6E91B04E08773030"
	jhash (0x29CE8BAA)
	arguments {
		charPtr "action",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
<summary>
```
Looks like a cousin of above function _6D6840CEE8845831 as it was found among them. Must be similar  
Here are possible values of argument -   
"ob_tv"  
"launcher_Darts"  
```
</summary>
	]]

native "0x921CE12C489C4C41"
    hash "0x921CE12C489C4C41"
	jhash (0x902656EB)
	arguments {
		int "PlayerID",
	}
	ns "BRAIN"
	returns "BOOL"
	doc [[!
	]]

native "0x8C33220C8D78CA0D"
    hash "0x8C33220C8D78CA0D"
	arguments {
		Any "p0",
		Any "p1",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
	]]

native "0x92C360B5F15D2302"
    hash "0x92C360B5F15D2302"
	arguments {
		Any "p0",
		Any "p1",
		Any "p2",
		Any "p3",
		Any "p4",
		Any "p5",
		Any "p6",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
	]]

native "0x8FD89A6240813FD0"
    hash "0x8FD89A6240813FD0"
	arguments {
		Ped "ped",
		BOOL "p1",
		BOOL "p2",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
<summary>
```
Appears only in fm_mission_controller and used only 3 times.  
ped was always PLAYER_PED_ID()  
p1 was always true  
p2 was always true  
```
</summary>
	]]

native "0xB4F47213DF45A64C"
    hash "0xB4F47213DF45A64C"
	jhash (0x72FA5EF2)
	arguments {
		Ped "ped",
		charPtr "p1",
	}
	ns "BRAIN"
	returns "BOOL"
	doc [[!
	]]

native "0xA7FFBA498E4AAF67"
    hash "0xA7FFBA498E4AAF67"
	jhash (0x1EBB6F3D)
	arguments {
		Ped "ped",
		charPtr "p1",
	}
	ns "BRAIN"
	returns "BOOL"
	doc [[!
<summary>
```
Found in scripts:  
if (AI::_A7FFBA498E4AAF67(l_9BC, "Run")) {  
if (AI::_A7FFBA498E4AAF67(l_9BC, "Escape")) {  
```
</summary>
	]]

native "0xD01015C7316AE176"
    hash "0xD01015C7316AE176"
	jhash (0x885724DE)
	arguments {
		Ped "ped",
		charPtr "p1",
	}
	ns "BRAIN"
	returns "Any"
	doc [[!
	]]

native "0xAB13A5565480B6D9"
    hash "0xAB13A5565480B6D9"
	arguments {
		Any "p0",
		Any "p1",
	}
	ns "BRAIN"
	returns "Any"
	doc [[!
	]]

native "OPEN_PATROL_ROUTE"
    hash "0xA36BFB5EE89F3D82"
	jhash (0xF33F83CA)
	arguments {
		charPtr "patrolRoute",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
<summary>
```
patrolRoutes found in the b617d scripts:  
"miss_Ass0",  
"miss_Ass1",  
"miss_Ass2",  
"miss_Ass3",  
"miss_Ass4",  
"miss_Ass5",  
"miss_Ass6",  
"MISS_PATROL_6",  
"MISS_PATROL_7",  
"MISS_PATROL_8",  
"MISS_PATROL_9",  
"miss_Tower_01",  
"miss_Tower_02",  
"miss_Tower_03",  
"miss_Tower_04",  
"miss_Tower_05",  
"miss_Tower_06",  
"miss_Tower_07",  
"miss_Tower_08",  
"miss_Tower_10"  
```
</summary>
	]]

native "0xE70BA7B90F8390DC"
    hash "0xE70BA7B90F8390DC"
	arguments {
		Any "p0",
		Any "p1",
		BOOL "p2",
		Any "p3",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
	]]

native "OPEN_SEQUENCE_TASK"
    hash "0xE8854A4326B9E12B"
	jhash (0xABA6923E)
	arguments {
		ObjectPtr "taskSequence",
	}
	ns "BRAIN"
	returns "Any"
	doc [[!
	]]

native "PED_HAS_USE_SCENARIO_TASK"
    hash "0x295E3CCEC879CCD7"
	jhash (0x9BE9C691)
	arguments {
		Ped "ped",
	}
	ns "BRAIN"
	returns "BOOL"
	doc [[!
	]]

native "PLAY_ANIM_ON_RUNNING_SCENARIO"
    hash "0x748040460F8DF5DC"
	jhash (0x1984A5D1)
	arguments {
		Ped "ped",
		charPtr "animDict",
		charPtr "animName",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
<summary>
```
Animations list : www.los-santos-multiplayer.com/dev.airdancer?cxt=anim  
```
</summary>
	]]

native "PLAY_ENTITY_SCRIPTED_ANIM"
    hash "0x77A1EEC547E7FCF1"
	jhash (0x02F72AE5)
	arguments {
		Any "p0",
		AnyPtr "p1",
		AnyPtr "p2",
		AnyPtr "p3",
		float "p4",
		float "p5",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
	]]

native "REGISTER_WORLD_POINT_SCRIPT_BRAIN"
    hash "0x3CDC7136613284BD"
	jhash (0x725D91F7)
	arguments {
		AnyPtr "p0",
		float "p1",
		Any "p2",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
	]]

native "REGISTER_OBJECT_SCRIPT_BRAIN"
    hash "0x0BE84C318BA6EC22"
	jhash (0xB6BCC608)
	arguments {
		charPtr "scriptName",
		Hash "objectName",
		int "p2",
		float "p3",
		int "p4",
		int "p5",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
<summary>
```
Registers a script for any object with a specific model hash.  
BRAIN::REGISTER_OBJECT_SCRIPT_BRAIN("ob_telescope", ${prop_telescope_01}, 100, 4.0, -1, 9);  
```
</summary>
	]]

native "REMOVE_ALL_COVER_BLOCKING_AREAS"
    hash "0xDB6708C0B46F56D8"
	jhash (0xCF9221A7)
	ns "BRAIN"
	returns "void"
	doc [[!
	]]

native "REMOVE_COVER_POINT"
    hash "0xAE287C923D891715"
	jhash (0x0776888B)
	arguments {
		ScrHandle "coverpoint",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
	]]

native "REMOVE_WAYPOINT_RECORDING"
    hash "0xFF1B8B4AA1C25DC8"
	jhash (0x624530B0)
	arguments {
		charPtr "name",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
<summary>
```
For a full list, see here: pastebin.com/Tp0XpBMN  
```
</summary>
	]]

native "REQUEST_WAYPOINT_RECORDING"
    hash "0x9EEFB62EB27B5792"
	jhash (0xAFABFB5D)
	arguments {
		charPtr "name",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
<summary>
```
For a full list, see here: pastebin.com/Tp0XpBMN  
For a full list of the points, see here: goo.gl/wIH0vn  
Max number of loaded recordings is 32.  
```
</summary>
	]]

native "RESET_EXCLUSIVE_SCENARIO_GROUP"
    hash "0x4202BBCB8684563D"
	jhash (0x17F9DFE8)
	ns "BRAIN"
	returns "void"
	doc [[!
	]]

native "RESET_SCENARIO_GROUPS_ENABLED"
    hash "0xDD902D0349AFAD3A"
	jhash (0xBF55025D)
	ns "BRAIN"
	returns "void"
	doc [[!
	]]

native "RESET_SCENARIO_TYPES_ENABLED"
    hash "0x0D40EE2A7F2B2D6D"
	jhash (0xF58FDEB4)
	ns "BRAIN"
	returns "void"
	doc [[!
	]]

native "SET_ANIM_LOOPED"
    hash "0x70033C3CC29A1FF4"
	jhash (0x095D61A4)
	arguments {
		Any "p0",
		BOOL "p1",
		Any "p2",
		BOOL "p3",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
	]]

native "SET_ANIM_RATE"
    hash "0x032D49C5E359C847"
	jhash (0x6DB46584)
	arguments {
		Any "p0",
		float "p1",
		Any "p2",
		BOOL "p3",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
	]]

native "SET_ANIM_WEIGHT"
    hash "0x207F1A47C0342F48"
	jhash (0x17229D98)
	arguments {
		Any "p0",
		float "p1",
		Any "p2",
		Any "p3",
		BOOL "p4",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
	]]

native "SET_DRIVE_TASK_CRUISE_SPEED"
    hash "0x5C9B84BD7D31D908"
	jhash (0x3CEC07B1)
	arguments {
		Ped "driver",
		float "cruiseSpeed",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
	]]

native "SET_DRIVE_TASK_DRIVING_STYLE"
    hash "0xDACE1BE37D88AF67"
	jhash (0x59C5FAD7)
	arguments {
		Ped "ped",
		int "drivingStyle",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
<summary>
```
This native is used to set the driving style for specific ped.  
Driving styles id seems to be:  
786468  
262144  
786469  
http://gtaforums.com/topic/822314-guide-driving-styles/  
```
</summary>
	]]

native "SET_DRIVE_TASK_MAX_CRUISE_SPEED"
    hash "0x404A5AA9B9F0B746"
	jhash (0x7FDF6131)
	arguments {
		Any "p0",
		float "p1",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
	]]

native "SET_DRIVEBY_TASK_TARGET"
    hash "0xE5B302114D8162EE"
	jhash (0xDA6A6FC1)
	arguments {
		Ped "shootingPed",
		Ped "targetPed",
		Vehicle "targetVehicle",
		float "x",
		float "y",
		float "z",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
<summary>
```
For p1 & p2 (Ped, Vehicle). I could be wrong, as the only time this native is called in scripts is once and both are 0, but I assume this native will work like SET_MOUNTED_WEAPON_TARGET in which has the same exact amount of parameters and the 1st and last 3 parameters are right and the same for both natives.  
```
</summary>
	]]

native "SET_GLOBAL_MIN_BIRD_FLIGHT_HEIGHT"
    hash "0x6C6B148586F934F7"
	jhash (0x2AFB14B8)
	arguments {
		float "height",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
<summary>
```
Needs to be looped! And yes, it does work and is not a hash collision.  
Birds will try to reach the given height.  
```
</summary>
	]]

native "SET_EXCLUSIVE_SCENARIO_GROUP"
    hash "0x535E97E1F7FC0C6A"
	jhash (0x59DB8F26)
	arguments {
		charPtr "scenarioGroup",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
<summary>
```
Groups found in the scripts used with this native:  
"AMMUNATION",  
"QUARRY",  
"Triathlon_1",  
"Triathlon_2",  
"Triathlon_3"  
```
</summary>
	]]

native "SET_MOUNTED_WEAPON_TARGET"
    hash "0xCCD892192C6D2BB9"
	jhash (0x98713C68)
	arguments {
		Ped "shootingPed",
		Ped "targetPed",
		Vehicle "targetVehicle",
		float "x",
		float "y",
		float "z",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
<summary>
```
Note: Look in decompiled scripts and the times that p1 and p2 aren't 0. They are filled with vars. If you look through out that script what other natives those vars are used in, you can tell p1 is a ped and p2 is a vehicle. Which most likely means if you want the mounted weapon to target a ped set targetVehicle to 0 or vice-versa.  
```
</summary>
	]]

native "SET_HIGH_FALL_TASK"
    hash "0x8C825BDC7741D37C"
	jhash (0xBBB26172)
	arguments {
		Ped "ped",
		Any "p1",
		Any "p2",
		Any "p3",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
<summary>
```
Makes the ped ragdoll like when falling from a great height  
```
</summary>
	]]

native "SET_NEXT_DESIRED_MOVE_STATE"
    hash "0xF1B9F16E89E2C93A"
	jhash (0x4E937D57)
	arguments {
		float "p0",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
<summary>
**This native does absolutely nothing, just a nullsub**

```
Not used in the scripts.  
Bullshit! It's used in spawn_activities  
```
</summary>
	]]

native "SET_PARACHUTE_TASK_TARGET"
    hash "0xC313379AF0FCEDA7"
	jhash (0x6ED3AD81)
	arguments {
		Ped "ped",
		float "x",
		float "y",
		float "z",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
	]]

native "SET_PED_DESIRED_MOVE_BLEND_RATIO"
    hash "0x1E982AC8716912C5"
	jhash (0xC65FC712)
	arguments {
		Ped "ped",
		float "p1",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
	]]

native "SET_PARACHUTE_TASK_THRUST"
    hash "0x0729BAC1B8C64317"
	jhash (0xD07C8AAA)
	arguments {
		Ped "ped",
		float "thrust",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
	]]

native "SET_PED_PATH_AVOID_FIRE"
    hash "0x4455517B28441E60"
	jhash (0xDCC5B934)
	arguments {
		Ped "ped",
		BOOL "avoidFire",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
	]]

native "SET_PED_PATH_CAN_USE_CLIMBOVERS"
    hash "0x8E06A6FE76C9EFF4"
	jhash (0xB7B7D442)
	arguments {
		Ped "ped",
		BOOL "Toggle",
	}
	ns "BRAIN"
	returns "Any"
	doc [[!
	]]

native "SET_PED_PATH_CAN_DROP_FROM_HEIGHT"
    hash "0xE361C5C71C431A4F"
	jhash (0x394B7AC9)
	arguments {
		Ped "ped",
		BOOL "Toggle",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
	]]

native "SET_PED_PATH_CAN_USE_LADDERS"
    hash "0x77A5B103C87F476E"
	jhash (0x53A879EE)
	arguments {
		Ped "ped",
		BOOL "Toggle",
	}
	ns "BRAIN"
	returns "Any"
	doc [[!
	]]

native "SET_PED_PATH_PREFER_TO_AVOID_WATER"
    hash "0x38FE1EC73743793C"
	jhash (0x0EA39A29)
	arguments {
		Ped "ped",
		BOOL "avoidWater",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
	]]

native "SET_PED_PATHS_WIDTH_PLANT"
    hash "0xF35425A4204367EC"
	jhash (0x9C606EE3)
	arguments {
		Ped "ped",
		BOOL "mayEnterWater",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
<summary>
```
Hash collision!!! Actual name: SET_PED_PATH_MAY_ENTER_WATER  
```
</summary>
	]]

native "SET_PED_WAYPOINT_ROUTE_OFFSET"
    hash "0xED98E10B0AFCE4B4"
	jhash (0xF867F747)
	arguments {
		Any "p0",
		Any "p1",
		Any "p2",
		Any "p3",
	}
	ns "BRAIN"
	returns "Any"
	doc [[!
	]]

native "SET_SCENARIO_TYPE_ENABLED"
    hash "0xEB47EC4E34FB7EE1"
	jhash (0xDB18E5DE)
	arguments {
		charPtr "scenarioType",
		BOOL "toggle",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
<summary>
```
seems to enable/disable specific scenario-types from happening in the game world.  
Here are some scenario types from the scripts:  
"WORLD_MOUNTAIN_LION_REST"                                               
"WORLD_MOUNTAIN_LION_WANDER"                                              
"DRIVE"                                                                    
"WORLD_VEHICLE_POLICE_BIKE"                                               
"WORLD_VEHICLE_POLICE_CAR"                                               
"WORLD_VEHICLE_POLICE_NEXT_TO_CAR"                                          
"WORLD_VEHICLE_DRIVE_SOLO"                                                   
"WORLD_VEHICLE_BIKER"                                                        
"WORLD_VEHICLE_DRIVE_PASSENGERS"                                             
"WORLD_VEHICLE_SALTON_DIRT_BIKE"                                             
"WORLD_VEHICLE_BICYCLE_MOUNTAIN"                                             
"PROP_HUMAN_SEAT_CHAIR"                                               
"WORLD_VEHICLE_ATTRACTOR"                                               
"WORLD_HUMAN_LEANING"                                                   
"WORLD_HUMAN_HANG_OUT_STREET"                                          
"WORLD_HUMAN_DRINKING"                                                  
"WORLD_HUMAN_SMOKING"                                                  
"WORLD_HUMAN_GUARD_STAND"                                              
"WORLD_HUMAN_CLIPBOARD"                                                
"WORLD_HUMAN_HIKER"                                                    
"WORLD_VEHICLE_EMPTY"                                                        
"WORLD_VEHICLE_BIKE_OFF_ROAD_RACE"                                        
"WORLD_HUMAN_PAPARAZZI"                                                 
"WORLD_VEHICLE_PARK_PERPENDICULAR_NOSE_IN"                              
"WORLD_VEHICLE_PARK_PARALLEL"                                                
"WORLD_VEHICLE_CONSTRUCTION_SOLO"                                 
"WORLD_VEHICLE_CONSTRUCTION_PASSENGERS"                                                                      
"WORLD_VEHICLE_TRUCK_LOGS"   
-alphazolam  
scenarioType could be the same as scenarioName, used in for example AI::TASK_START_SCENARIO_AT_POSITION.  
```
</summary>
	]]

native "SET_SCENARIO_GROUP_ENABLED"
    hash "0x02C8E5B49848664E"
	jhash (0x116997B1)
	arguments {
		charPtr "scenarioGroup",
		BOOL "p1",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
<summary>
```
Occurrences in the b617d scripts: pastebin.com/Tvg2PRHU  
```
</summary>
	]]

native "SET_SEQUENCE_TO_REPEAT"
    hash "0x58C70CF3A41E4AE7"
	jhash (0xCDDF1508)
	arguments {
		Object "taskSequence",
		BOOL "repeat",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
	]]

native "_SET_TASK_PROPERTY_BOOL"
    hash "0xB0A6CFD2C69C1088"
	jhash (0xF3538041)
	arguments {
		Ped "ped",
		charPtr "p1",
		BOOL "p2",
	}
	alias "0xB0A6CFD2C69C1088"
	ns "BRAIN"
	returns "void"
	doc [[!
<summary>
```
Examples:  
AI::_B0A6CFD2C69C1088(PLAYER::PLAYER_PED_ID(), "isFirstPerson", 0);  
AI::_B0A6CFD2C69C1088(PLAYER::PLAYER_PED_ID(), "isFirstPerson", 1);  
AI::_B0A6CFD2C69C1088(PLAYER::PLAYER_PED_ID(), "isBlocked", sub_179027());  
```
</summary>
<param name="ped">The ped that's performing the task.</param>
<param name="p1">The property name.</param>
<param name="p2">The property value to set.</param>
	]]

native "_SET_TASK_PROPERTY_FLOAT"
    hash "0xD5BB4025AE449A4E"
	jhash (0xA79BE783)
	arguments {
		Ped "ped",
		charPtr "p1",
		float "p2",
	}
	alias "0xD5BB4025AE449A4E"
	ns "BRAIN"
	returns "void"
	doc [[!
<summary>
```
p0 - PLAYER::PLAYER_PED_ID();  
p1 - "Phase", "Wobble", "x_axis","y_axis","introphase","speed".  
p2 - From what i can see it goes up to 1f (maybe).  
-LcGamingHD  
Example: AI::_D5BB4025AE449A4E(PLAYER::PLAYER_PED_ID(), "Phase", 0.5);  
```
</summary>
<param name="ped">The ped on which the task is playing.</param>
<param name="p1">The property name.</param>
<param name="p2">The property value to set.</param>
	]]

native "SET_TASK_VEHICLE_CHASE_BEHAVIOR_FLAG"
    hash "0xCC665AAC360D31E7"
	jhash (0x2A83083F)
	arguments {
		Ped "ped",
		int "flag",
		BOOL "set",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
	]]

native "SET_TASK_VEHICLE_CHASE_IDEAL_PURSUIT_DISTANCE"
    hash "0x639B642FACBE4EDD"
	jhash (0x04FD3EE7)
	arguments {
		Ped "ped",
		float "distance",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
	]]

native "STOP_ANIM_PLAYBACK"
    hash "0xEE08C992D238C5D1"
	jhash (0xE5F16398)
	arguments {
		Ped "ped",
		int "p1",
		BOOL "p2",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
<summary>
```
From re_drunkdriver:  
• AI::STOP_ANIM_PLAYBACK(l_5B[0/*1*/], 0, 0);  
Looks like p1 may be a flag, still need to do some research, though.  
```
</summary>
	]]

native "STOP_ANIM_TASK"
    hash "0x97FF36A1D40EA00A"
	jhash (0x2B520A57)
	arguments {
		Ped "ped",
		charPtr "animDictionary",
		charPtr "animationName",
		float "p3",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
<summary>
```
Animations list : www.los-santos-multiplayer.com/dev.airdancer?cxt=anim  
```
</summary>
	]]

native "TASK_ACHIEVE_HEADING"
    hash "0x93B93A37987F1F3D"
	jhash (0x0A0E9B42)
	arguments {
		Ped "ped",
		float "heading",
		int "timeout",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
<summary>
```
Makes the specified ped achieve the specified heading.  
pedHandle: The handle of the ped to assign the task to.  
heading: The desired heading.  
timeout: The time, in milliseconds, to allow the task to complete. If the task times out, it is cancelled, and the ped will stay at the heading it managed to reach in the time.  
```
</summary>
	]]

native "TASK_AIM_GUN_AT_COORD"
    hash "0x6671F3EEC681BDA1"
	jhash (0xFBF44AD3)
	arguments {
		Ped "ped",
		float "x",
		float "y",
		float "z",
		int "time",
		BOOL "p5",
		BOOL "p6",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
<summary>
```

```
</summary>
	]]

native "TASK_AIM_GUN_AT_ENTITY"
    hash "0x9B53BB6E8943AF53"
	jhash (0xBE32B3B6)
	arguments {
		Ped "ped",
		Entity "entity",
		int "duration",
		BOOL "p3",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
<summary>
```
duration: the amount of time in milliseconds to do the task.  -1 will keep the task going until either another task is applied, or CLEAR_ALL_TASKS() is called with the ped  
```
</summary>
	]]

native "TASK_AIM_GUN_SCRIPTED"
    hash "0x7A192BE16D373D00"
	jhash (0x9D296BCD)
	arguments {
		Ped "ped",
		Hash "scriptTask",
		BOOL "p2",
		BOOL "p3",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
	]]

native "TASK_AIM_GUN_SCRIPTED_WITH_TARGET"
    hash "0x8605AF0DE8B3A5AC"
	jhash (0xFD517CE3)
	arguments {
		Any "p0",
		Any "p1",
		float "p2",
		float "p3",
		float "p4",
		Any "p5",
		BOOL "p6",
		BOOL "p7",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
	]]

native "TASK_ARREST_PED"
    hash "0xF3B9A78A178572B1"
	jhash (0xBC0F153D)
	arguments {
		Ped "ped",
		Ped "target",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
<summary>
```
Example from "me_amanda1.ysc.c4":  
AI::TASK_ARREST_PED(l_19F /* This is a Ped */ , PLAYER::PLAYER_PED_ID());  
Example from "armenian1.ysc.c4":  
if (!PED::IS_PED_INJURED(l_B18[0/*1*/])) {  
    AI::TASK_ARREST_PED(l_B18[0/*1*/], PLAYER::PLAYER_PED_ID());  
}  
I would love to have time to experiment to see if a player Ped can arrest another Ped. Might make for a good cop mod.  
Looks like only the player can be arrested this way. Peds react and try to arrest you if you task them, but the player charater doesn't do anything if tasked to arrest another ped.  
```
</summary>
	]]

native "TASK_BOAT_MISSION"
    hash "0x15C86013127CE63F"
	jhash (0x5865B031)
	arguments {
		Ped "pedDriver",
		Vehicle "boat",
		Any "p2",
		Any "p3",
		float "x",
		float "y",
		float "z",
		Any "p7",
		float "maxSpeed",
		int "drivingStyle",
		float "p10",
		Any "p11",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
<summary>
```
You need to call PED::SET_BLOCKING_OF_NON_TEMPORARY_EVENTS after TASK_BOAT_MISSION in order for the task to execute.  
Working example  
float vehicleMaxSpeed = VEHICLE::_GET_VEHICLE_MAX_SPEED(ENTITY::GET_ENTITY_MODEL(pedVehicle));  
AI::TASK_BOAT_MISSION(pedDriver, pedVehicle, 0, 0, waypointCoord.x, waypointCoord.y, waypointCoord.z, 4, vehicleMaxSpeed, 786469, -1.0, 7);  
PED::SET_BLOCKING_OF_NON_TEMPORARY_EVENTS(pedDriver, 1);  
P8 appears to be driving style flag - see gtaforums.com/topic/822314-guide-driving-styles/ for documentation  
```
</summary>
	]]

native "TASK_CLEAR_DEFENSIVE_AREA"
    hash "0x95A6C46A31D1917D"
	jhash (0x7A05BF0D)
	arguments {
		Any "p0",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
	]]

native "TASK_CHAT_TO_PED"
    hash "0x8C338E0263E4FD19"
	jhash (0xA2BE1821)
	arguments {
		Ped "ped",
		Ped "target",
		Any "p2",
		float "p3",
		float "p4",
		float "p5",
		float "p6",
		float "p7",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
<summary>
```
p2 tend to be 16, 17 or 1  
p3 to p7 tend to be 0.0  
```
</summary>
	]]

native "TASK_CLEAR_LOOK_AT"
    hash "0x0F804F1DB19B9689"
	jhash (0x60EB4054)
	arguments {
		Ped "ped",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
<summary>
```
Not clear what it actually does, but here's how script uses it -   
if (OBJECT::HAS_PICKUP_BEEN_COLLECTED(...)   
{  
	if(ENTITY::DOES_ENTITY_EXIST(PLAYER::PLAYER_PED_ID()))  
	{  
AI::TASK_CLEAR_LOOK_AT(PLAYER::PLAYER_PED_ID());  
	}  
	...  
}  
Another one where it doesn't "look" at current player -   
AI::TASK_PLAY_ANIM(l_3ED, "missheist_agency2aig_2", "look_at_phone_a", 1000.0, -2.0, -1, 48, v_2, 0, 0, 0);  
PED::_2208438012482A1A(l_3ED, 0, 0);  
AI::TASK_CLEAR_LOOK_AT(l_3ED);  
```
</summary>
	]]

native "TASK_CLIMB"
    hash "0x89D9FCC2435112F1"
	jhash (0x90847790)
	arguments {
		Ped "ped",
		BOOL "unused",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
<summary>
```
Climbs or vaults the nearest thing.  
```
</summary>
	]]

native "TASK_CLIMB_LADDER"
    hash "0xB6C987F9285A3814"
	jhash (0x35BB4EE0)
	arguments {
		Ped "ped",
		int "p1",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
	]]

native "TASK_COMBAT_HATED_TARGETS_AROUND_PED"
    hash "0x7BF835BB9E2698C8"
	jhash (0x2E7064E4)
	arguments {
		Ped "ped",
		float "radius",
		int "p2",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
<summary>
```
Despite its name, it only attacks ONE hated target. The one closest hated target.  
p2 seems to be always 0  
```
</summary>
	]]

native "TASK_COMBAT_HATED_TARGETS_AROUND_PED_TIMED"
    hash "0x2BBA30B854534A0C"
	jhash (0xF127AD6A)
	arguments {
		Any "p0",
		float "p1",
		Any "p2",
		Any "p3",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
	]]

native "TASK_COMBAT_HATED_TARGETS_IN_AREA"
    hash "0x4CF5F55DAC3280A0"
	jhash (0xDF099E18)
	arguments {
		Ped "ped",
		float "x",
		float "y",
		float "z",
		float "radius",
		Any "p5",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
<summary>
```
Despite its name, it only attacks ONE hated target. The one closest to the specified position.  
```
</summary>
	]]

native "TASK_COMBAT_PED"
    hash "0xF166E48407BAC484"
	jhash (0xCB0D8932)
	arguments {
		Ped "ped",
		Ped "targetPed",
		int "p2",
		int "p3",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
<summary>
```
Makes the specified ped attack the target ped.  
p2 should be 0  
p3 should be 16  
```
</summary>
	]]

native "TASK_COMBAT_PED_TIMED"
    hash "0x944F30DCB7096BDE"
	jhash (0xF5CA2A45)
	arguments {
		Any "p0",
		Ped "ped",
		int "p2",
		Any "p3",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
	]]

native "TASK_COWER"
    hash "0x3EB1FE9E8E908E15"
	jhash (0x9CF1C19B)
	arguments {
		Ped "ped",
		int "duration",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
	]]

native "TASK_DRIVE_BY"
    hash "0x2F8AF0E82773A171"
	jhash (0x2B84D1C4)
	arguments {
		Ped "driverPed",
		Ped "targetPed",
		Vehicle "targetVehicle",
		float "targetX",
		float "targetY",
		float "targetZ",
		float "distanceToShoot",
		int "pedAccuracy",
		BOOL "p8",
		Hash "firingPattern",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
<summary>
```
Example:  
AI::TASK_DRIVE_BY(l_467[1/*22*/], PLAYER::PLAYER_PED_ID(), 0, 0.0, 0.0, 2.0, 300.0, 100, 0, ${firing_pattern_burst_fire_driveby});  
Needs working example. Doesn't seem to do anything.  
I marked p2 as targetVehicle as all these shooting related tasks seem to have that in common.  
I marked p6 as distanceToShoot as if you think of GTA's Logic with the native SET_VEHICLE_SHOOT natives, it won't shoot till it gets within a certain distance of the target.  
I marked p7 as pedAccuracy as it seems it's mostly 100 (Completely Accurate), 75, 90, etc. Although this could be the ammo count within the gun, but I highly doubt it. I will change this comment once I find out if it's ammo count or not.  
```
</summary>
	]]

native "TASK_EVERYONE_LEAVE_VEHICLE"
    hash "0x7F93691AB4B92272"
	jhash (0xC1971F30)
	arguments {
		Vehicle "vehicle",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
	]]

native "TASK_ENTER_VEHICLE"
    hash "0xC20E50AA46D09CA8"
	jhash (0xB8689B4E)
	arguments {
		Ped "ped",
		Vehicle "vehicle",
		int "timeout",
		int "seat",
		float "speed",
		int "flag",
		Any "p6",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
<summary>
```
speed 1.0 = walk, 2.0 = run  
p5 1 = normal, 3 = teleport to vehicle, 16 = teleport directly into vehicle  
p6 is always 0  
Usage of seat   
-1 = driver  
0 = passenger  
1 = left back seat  
2 = right back seat  
3 = outside left  
4 = outside right  
```
</summary>
	]]

native "TASK_EXTEND_ROUTE"
    hash "0x1E7889778264843A"
	jhash (0x43271F69)
	arguments {
		float "x",
		float "y",
		float "z",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
<summary>
```
MulleKD19: Adds a new point to the current point route. Call TASK_FLUSH_ROUTE before the first call to this. Call TASK_FOLLOW_POINT_ROUTE to make the Ped go the route.  
A maximum of 8 points can be added.  
```
</summary>
	]]

native "TASK_EXIT_COVER"
    hash "0x79B258E397854D29"
	jhash (0xC829FAC9)
	arguments {
		Any "p0",
		Any "p1",
		float "p2",
		float "p3",
		float "p4",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
	]]

native "TASK_FOLLOW_NAV_MESH_TO_COORD"
    hash "0x15D3A79D4E44B913"
	jhash (0xFE4A10D9)
	arguments {
		Ped "ped",
		float "x",
		float "y",
		float "z",
		float "speed",
		int "timeout",
		float "stoppingRange",
		BOOL "persistFollowing",
		float "unk",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
<summary>
```
If no timeout, set timeout to -1.  
```
</summary>
	]]

native "TASK_FLUSH_ROUTE"
    hash "0x841142A1376E9006"
	jhash (0x34219154)
	ns "BRAIN"
	returns "void"
	doc [[!
<summary>
```
MulleKD19: Clears the current point route. Call this before TASK_EXTEND_ROUTE and TASK_FOLLOW_POINT_ROUTE.  
```
</summary>
	]]

native "TASK_FOLLOW_NAV_MESH_TO_COORD_ADVANCED"
    hash "0x17F58B88D085DBAC"
	jhash (0x6BF6E296)
	arguments {
		Ped "ped",
		float "x",
		float "y",
		float "z",
		float "speed",
		int "timeout",
		float "unkFloat",
		int "unkInt",
		float "unkX",
		float "unkY",
		float "unkZ",
		float "unk_40000f",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
	]]

native "TASK_FOLLOW_TO_OFFSET_OF_ENTITY"
    hash "0x304AE42E357B8C7E"
	jhash (0x2DF5A6AC)
	arguments {
		Ped "ped",
		Entity "entity",
		float "offsetX",
		float "offsetY",
		float "offsetZ",
		float "movementSpeed",
		int "timeout",
		float "stoppingRange",
		BOOL "persistFollowing",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
<summary>
```
p6 always -1  
p7 always 10.0  
p8 always 1  
```
</summary>
	]]

native "TASK_FOLLOW_POINT_ROUTE"
    hash "0x595583281858626E"
	jhash (0xB837C816)
	arguments {
		Ped "ped",
		float "speed",
		int "unknown",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
<summary>
```
MulleKD19: Makes the ped go on the created point route.  
ped: The ped to give the task to.  
speed: The speed to move at in m/s.  
int: Unknown. Can be 0, 1, 2 or 3.  
Example:  
TASK_FLUSH_ROUTE();  
TASK_EXTEND_ROUTE(0f, 0f, 70f);  
TASK_EXTEND_ROUTE(10f, 0f, 70f);  
TASK_EXTEND_ROUTE(10f, 10f, 70f);  
TASK_FOLLOW_POINT_ROUTE(GET_PLAYER_PED(), 1f, 0);  
```
</summary>
	]]

native "_TASK_GET_OFF_BOAT"
    hash "0x9C00E77AF14B2DFF"
	arguments {
		Ped "ped",
		Vehicle "boat",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
<summary>
```
Jenkins of this native is 0x4293601F. This is the actual name.  
```
</summary>
	]]

native "TASK_FOLLOW_WAYPOINT_RECORDING"
    hash "0x0759591819534F7B"
	jhash (0xADF9904D)
	arguments {
		Any "p0",
		Any "p1",
		Any "p2",
		Any "p3",
		Any "p4",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
	]]

native "TASK_FORCE_MOTION_STATE"
    hash "0x4F056E1AFFEF17AB"
	jhash (0xCAD2EF77)
	arguments {
		Ped "ped",
		Hash "state",
		BOOL "p2",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
<summary>
```
p2 always false  
[30/03/2017] ins1de :  
See dev-c.com/nativedb/func/info/f28965d04f570dca  
```
</summary>
	]]

native "TASK_GO_STRAIGHT_TO_COORD"
    hash "0xD76B57B44F1E6F8B"
	jhash (0x80A9E7A7)
	arguments {
		Ped "ped",
		float "x",
		float "y",
		float "z",
		float "speed",
		int "timeout",
		float "targetHeading",
		float "distanceToSlide",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
	]]

native "TASK_GO_TO_COORD_ANY_MEANS"
    hash "0x5BC448CB78FA3E88"
	jhash (0xF91DF93B)
	arguments {
		Ped "ped",
		float "x",
		float "y",
		float "z",
		float "speed",
		Any "p5",
		BOOL "p6",
		int "walkingStyle",
		float "p8",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
<summary>
```
example from fm_mission_controller  
AI::TASK_GO_TO_COORD_ANY_MEANS(l_649, sub_f7e86(-1, 0), 1.0, 0, 0, 786603, 0xbf800000);  
```
</summary>
	]]

native "TASK_GO_STRAIGHT_TO_COORD_RELATIVE_TO_ENTITY"
    hash "0x61E360B7E040D12E"
	jhash (0xD26CAC68)
	arguments {
		Entity "entity1",
		Entity "entity2",
		float "p2",
		float "p3",
		float "p4",
		float "p5",
		Any "p6",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
	]]

native "TASK_GO_TO_COORD_AND_AIM_AT_HATED_ENTITIES_NEAR_COORD"
    hash "0xA55547801EB331FC"
	jhash (0x3F91358E)
	arguments {
		Ped "pedHandle",
		float "goToLocationX",
		float "goToLocationY",
		float "goToLocationZ",
		float "focusLocationX",
		float "focusLocationY",
		float "focusLocationZ",
		float "speed",
		BOOL "shootAtEnemies",
		float "distanceToStopAt",
		float "noRoadsDistance",
		BOOL "unkTrue",
		int "unkFlag",
		int "aimingFlag",
		Hash "firingPattern",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
<summary>
```
The ped will walk or run towards goToLocation, aiming towards goToLocation or focusLocation (depending on the aimingFlag) and shooting if shootAtEnemies = true to any enemy in his path.  
If the ped is closer than noRoadsDistance, the ped will ignore pathing/navmesh and go towards goToLocation directly. This could cause the ped to get stuck behind tall walls if the goToLocation is on the other side. To avoid this, use 0.0f and the ped will always use pathing/navmesh to reach his destination.  
If the speed is set to 0.0f, the ped will just stand there while aiming, if set to 1.0f he will walk while aiming, 2.0f will run while aiming.  
The ped will stop aiming when he is closer than distanceToStopAt to goToLocation.  
I still can't figure out what unkTrue is used for. I don't notice any difference if I set it to false but in the decompiled scripts is always true.  
I think that unkFlag, like the driving styles, could be a flag that "work as a list of 32 bits converted to a decimal integer. Each bit acts as a flag, and enables or disables a function". What leads me to this conclusion is the fact that in the decompiled scripts, unkFlag takes values like: 0, 1, 5 (101 in binary) and 4097 (4096 + 1 or 1000000000001 in binary). For now, I don't know what behavior enable or disable this possible flag so I leave it at 0.  
Note: After some testing, using unkFlag = 16 (0x10) enables the use of sidewalks while moving towards goToLocation.  
The aimingFlag takes 2 values: 0 to aim at the focusLocation, 1 to aim at where the ped is heading (goToLocation).  
Example:  
enum AimFlag  
{  
   AimAtFocusLocation,  
   AimAtGoToLocation  
};  
Vector3 goToLocation1 = { 996.2867f, 0, -2143.044f, 0, 28.4763f, 0 }; // remember the padding.  
Vector3 goToLocation2 = { 990.2867f, 0, -2140.044f, 0, 28.4763f, 0 }; // remember the padding.  
Vector3 focusLocation = { 994.3478f, 0, -2136.118f, 0, 29.2463f, 0 }; // the coord z should be a little higher, around +1.0f to avoid aiming at the ground  
// 1st example  
AI::TASK_GO_TO_COORD_AND_AIM_AT_HATED_ENTITIES_NEAR_COORD(pedHandle, goToLocation1.x, goToLocation1.y, goToLocation1.z, focusLocation.x, focusLocation.y, focusLocation.z, 2.0f /*run*/, true /*shoot*/, 3.0f /*stop at*/, 0.0f /*noRoadsDistance*/, true /*always true*/, 0 /*possible flag*/, AimFlag::AimAtGoToLocation, -957453492 /*FullAuto pattern*/);  
// 2nd example  
AI::TASK_GO_TO_COORD_AND_AIM_AT_HATED_ENTITIES_NEAR_COORD(pedHandle, goToLocation2.x, goToLocation2.y, goToLocation2.z, focusLocation.x, focusLocation.y, focusLocation.z, 1.0f /*walk*/, false /*don't shoot*/, 3.0f /*stop at*/, 0.0f /*noRoadsDistance*/, true /*always true*/, 0 /*possible flag*/, AimFlag::AimAtFocusLocation, -957453492 /*FullAuto pattern*/);  
1st example: The ped (pedhandle) will run towards goToLocation1. While running and aiming towards goToLocation1, the ped will shoot on sight to any enemy in his path, using "FullAuto" firing pattern. The ped will stop once he is closer than distanceToStopAt to goToLocation1.  
2nd example: The ped will walk towards goToLocation2. This time, while walking towards goToLocation2 and aiming at focusLocation, the ped will point his weapon on sight to any enemy in his path without shooting. The ped will stop once he is closer than distanceToStopAt to goToLocation2.  
```
</summary>
	]]

native "TASK_GO_TO_COORD_ANY_MEANS_EXTRA_PARAMS_WITH_CRUISE_SPEED"
    hash "0xB8ECD61F531A7B02"
	jhash (0x86DC03F9)
	arguments {
		Ped "ped",
		float "x",
		float "y",
		float "z",
		float "speed",
		Any "p5",
		BOOL "p6",
		int "walkingStyle",
		float "p8",
		Any "p9",
		Any "p10",
		Any "p11",
		Any "p12",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
	]]

native "TASK_GO_TO_COORD_ANY_MEANS_EXTRA_PARAMS"
    hash "0x1DD45F9ECFDB1BC9"
	jhash (0x094B75EF)
	arguments {
		Ped "ped",
		float "x",
		float "y",
		float "z",
		float "speed",
		Any "p5",
		BOOL "p6",
		int "walkingStyle",
		float "p8",
		Any "p9",
		Any "p10",
		Any "p11",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
	]]

native "TASK_GO_TO_COORD_WHILE_AIMING_AT_ENTITY"
    hash "0xB2A16444EAD9AE47"
	jhash (0x9BD52ABD)
	arguments {
		Any "p0",
		float "p1",
		float "p2",
		float "p3",
		Any "p4",
		float "p5",
		BOOL "p6",
		float "p7",
		float "p8",
		BOOL "p9",
		Any "p10",
		BOOL "p11",
		Any "p12",
		Any "p13",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
	]]

native "TASK_GO_TO_COORD_WHILE_AIMING_AT_COORD"
    hash "0x11315AB3385B8AC0"
	jhash (0x1552DC91)
	arguments {
		Ped "ped",
		float "x",
		float "y",
		float "z",
		float "aimAtX",
		float "aimAtY",
		float "aimAtZ",
		float "moveSpeed",
		BOOL "p8",
		float "p9",
		float "p10",
		BOOL "p11",
		Any "flags",
		BOOL "p13",
		Hash "firingPattern",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
<summary>
```
movement_speed: mostly 2f, but also 1/1.2f, etc.  
p8: always false  
p9: 2f  
p10: 0.5f  
p11: true  
p12: 0 / 512 / 513, etc.  
p13: 0  
firing_pattern: ${firing_pattern_full_auto}, 0xC6EE6B4C  
```
</summary>
	]]

native "TASK_GO_TO_ENTITY"
    hash "0x6A071245EB0D1882"
	jhash (0x374827C2)
	arguments {
		Entity "entity",
		Entity "target",
		int "duration",
		float "distance",
		float "speed",
		float "p5",
		int "p6",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
<summary>
```
The entity will move towards the target until time is over (duration) or get in target's range (distance). p5 and p6 are unknown, but you could leave p5 = 1073741824 or 100 or even 0 (didn't see any difference but on the decompiled scripts, they use 1073741824 mostly) and p6 = 0  
Note: I've only tested it on entity -> ped and target -> vehicle. It could work differently on other entities, didn't try it yet.  
Example: AI::TASK_GO_TO_ENTITY(pedHandle, vehicleHandle, 5000, 4.0, 100, 1073741824, 0)  
Ped will run towards the vehicle for 5 seconds and stop when time is over or when he gets 4 meters(?) around the vehicle (with duration = -1, the task duration will be ignored).  
```
</summary>
	]]

native "TASK_GO_TO_ENTITY_WHILE_AIMING_AT_ENTITY"
    hash "0x97465886D35210E9"
	jhash (0x68E36B7A)
	arguments {
		Ped "ped",
		Entity "entityToWalkTo",
		Entity "entityToAimAt",
		float "speed",
		BOOL "shootatEntity",
		float "p5",
		float "p6",
		BOOL "p7",
		BOOL "p8",
		Hash "firingPattern",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
<summary>
```
shootatEntity:  
If true, peds will shoot at Entity till it is dead.  
If false, peds will just walk till they reach the entity and will cease shooting.  
```
</summary>
	]]

native "TASK_GO_TO_ENTITY_WHILE_AIMING_AT_COORD"
    hash "0x04701832B739DCE5"
	jhash (0xD896CD82)
	arguments {
		Any "p0",
		Any "p1",
		float "p2",
		float "p3",
		float "p4",
		float "p5",
		BOOL "p6",
		float "p7",
		float "p8",
		BOOL "p9",
		BOOL "p10",
		Any "p11",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
	]]

native "TASK_GOTO_ENTITY_AIMING"
    hash "0xA9DA48FAB8A76C12"
	jhash (0xF1C493CF)
	arguments {
		Ped "ped",
		Entity "target",
		float "distanceToStopAt",
		float "StartAimingDist",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
<summary>
```
eg  
AI::TASK_GOTO_ENTITY_AIMING(v_2, PLAYER::PLAYER_PED_ID(), 5.0, 25.0);  
		ped = Ped you want to perform this task.  
		target = the Entity they should aim at.  
		distanceToStopAt = distance from the target, where the ped should stop to aim.  
		StartAimingDist = distance where the ped should start to aim.  
```
</summary>
	]]

native "TASK_GOTO_ENTITY_OFFSET"
    hash "0xE39B4FF4FDEBDE27"
	jhash (0x1A17A85E)
	arguments {
		Ped "ped",
		Any "p1",
		Any "p2",
		float "x",
		float "y",
		float "z",
		int "duration",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
	]]

native "TASK_GUARD_ASSIGNED_DEFENSIVE_AREA"
    hash "0xD2A207EEBDF9889B"
	jhash (0x7AF0133D)
	arguments {
		Any "p0",
		float "p1",
		float "p2",
		float "p3",
		float "p4",
		float "p5",
		Any "p6",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
	]]

native "TASK_GOTO_ENTITY_OFFSET_XY"
    hash "0x338E7EF52B6095A9"
	jhash (0xBC1E3D0A)
	arguments {
		Ped "ped",
		Entity "entity",
		int "duration",
		float "xOffset",
		float "yOffset",
		float "zOffset",
		float "moveBlendRatio",
		BOOL "useNavmesh",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
	]]

native "TASK_GUARD_CURRENT_POSITION"
    hash "0x4A58A47A72E3FCB4"
	jhash (0x2FB099E9)
	arguments {
		Ped "p0",
		float "p1",
		float "p2",
		BOOL "p3",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
<summary>
```
From re_prisonvanbreak:  
AI::TASK_GUARD_CURRENT_POSITION(l_DD, 35.0, 35.0, 1);  
```
</summary>
	]]

native "TASK_HANDS_UP"
    hash "0xF2EAB31979A7F910"
	jhash (0x8DCC19C5)
	arguments {
		Ped "ped",
		int "duration",
		Ped "facingPed",
		int "p3",
		BOOL "p4",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
<summary>
```
In the scripts, p3 was always -1.  
p3 seems to be duration or timeout of turn animation.  
Also facingPed can be 0 or -1 so ped will just raise hands up.  
```
</summary>
	]]

native "TASK_GUARD_SPHERE_DEFENSIVE_AREA"
    hash "0xC946FE14BE0EB5E2"
	jhash (0x86B76CB7)
	arguments {
		Ped "p0",
		float "p1",
		float "p2",
		float "p3",
		float "p4",
		float "p5",
		Any "p6",
		float "p7",
		float "p8",
		float "p9",
		float "p10",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
<summary>
```
p0 - Guessing PedID  
p1, p2, p3 - XYZ?  
p4 - ???  
p5 - Maybe the size of sphere from XYZ?  
p6 - ???  
p7, p8, p9 - XYZ again?  
p10 - Maybe the size of sphere from second XYZ?  
```
</summary>
	]]

native "TASK_JUMP"
    hash "0x0AE4086104E067B1"
	jhash (0x0356E3CE)
	arguments {
		Ped "ped",
		BOOL "unused",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
<summary>
```
Definition is wrong. This has 4 parameters (Not sure when they were added. v350 has 2, v678 has 4).  
v350: Ped ped, bool unused  
v678: Ped ped, bool unused, bool flag1, bool flag2  
flag1 = super jump, flag2 = do nothing if flag1 is false and doubles super jump height if flag1 is true.  
```
</summary>
	]]

native "TASK_HELI_CHASE"
    hash "0xAC83B1DB38D0ADA0"
	jhash (0xAC290A21)
	arguments {
		Ped "pilot",
		Entity "entityToFollow",
		float "x",
		float "y",
		float "z",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
<summary>
```
Ped pilot should be in a heli.  
EntityToFollow can be a vehicle or Ped.  
x,y,z appear to be how close to the EntityToFollow the heli should be. Scripts use 0.0, 0.0, 80.0. Then the heli tries to position itself 80 units above the EntityToFollow. If you reduce it to -5.0, it tries to go below (if the EntityToFollow is a heli or plane)  
NOTE: If the pilot finds enemies, it will engage them, then remain there idle, not continuing to chase the Entity given.  
```
</summary>
	]]

native "TASK_LEAVE_ANY_VEHICLE"
    hash "0x504D54DF3F6F2247"
	jhash (0xDBDD79FA)
	arguments {
		Ped "ped",
		int "p1",
		int "p2",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
	]]

native "TASK_HELI_MISSION"
    hash "0xDAD029E187A2BEB4"
	jhash (0x0C143E97)
	arguments {
		Ped "pilot",
		Vehicle "aircraft",
		Vehicle "targetVehicle",
		Ped "targetPed",
		float "destinationX",
		float "destinationY",
		float "destinationZ",
		int "missionFlag",
		float "maxSpeed",
		float "landingRadius",
		float "targetHeading",
		int "unk1",
		int "unk2",
		Hash "unk3",
		int "landingFlags",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
<summary>
```
EDITED (8/16/2017)  
DESCRIPTION:  
Allow a ped to fly to a specific destination.  
USAGE:  
-- REQUIRED --  
• pilot = The ped flying the aircraft.  
• aircraft = The aircraft the pilot is flying.  
-- OPTIONAL -- [atleast 1 must be assigned]  
• targetVehicle = The vehicle the pilot will target.  
• targetPed = The ped the pilot will target.  
• destinationX, destinationY, destinationZ = The location the pilot will target.  
-- LOGIC --  
• missionFlag = The type of mission.  
• maxSpeed = The speed in mph that the pilot will limit his/her self to while flying.  
• landingRadius = The distance from the destination that the pilot must be to land.  
• targetHeading = The heading that the pilot will try to achieve while flying.  
• unk1, unk2 = Set to -1 and it will be okay.  
• unk3 = I'm almost sure this is a vehicle record/waypoint recording hash. A value of -1 is for none. Maybe it's a float? Idk.  
• landingFlags = Bit flags used for landing. All I know is:  
0 = Hover over the destination.  
32 = Land on destination.  
1024 = Erratic, crash into nearby obstacles.  
4096 = Rushed movement + Hover over destination  
Known Mission Types:  
4 = FlyToCoord  
8 = FleeFromPed  
9 = CircleAroundTarget  
10 = CopyTargetHeading  
20 = LandNearPed  
21 = Crash  
Example C#:  
Function.Call(Hash.TASK_HELI_MISSION, driver, heli, 0, 0, position.X, position.Y, position.Z, 4, 50.0, 10.0, (position - heli.Position).ToHeading(), -1, -1, -1, 32);  
OLD USAGE: pastebin.com/ndkSjaaW  
```
</summary>
	]]

native "TASK_LEAVE_VEHICLE"
    hash "0xD3DBCE61A490BE02"
	jhash (0x7B1141C6)
	arguments {
		Ped "ped",
		Vehicle "vehicle",
		int "flags",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
<summary>
```
Flags from decompiled scripts:  
0 = normal exit and closes door.  
1 = normal exit and closes door.  
16 = teleports outside, door kept closed.  
64 = normal exit and closes door, maybe a bit slower animation than 0.  
256 = normal exit but does not close the door.  
4160 = ped is throwing himself out, even when the vehicle is still.  
262144 = ped moves to passenger seat first, then exits normally  
Others to be tried out: 320, 512, 131072.  
```
</summary>
	]]

native "TASK_LOOK_AT_ENTITY"
    hash "0x69F4BE8C8CC4796C"
	jhash (0x991D6619)
	arguments {
		Ped "ped",
		Entity "lookAt",
		int "duration",
		int "unknown1",
		int "unknown2",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
<summary>
```
param3: duration in ms, use -1 to look forever  
param4: using 2048 is fine  
param5: using 3 is fine  
```
</summary>
	]]

native "_TASK_MOVE_NETWORK_ADVANCED"
    hash "0xD5B35BEA41919ACB"
	jhash (0x71A5C5DB)
	arguments {
		Ped "ped",
		charPtr "p1",
		float "p2",
		float "p3",
		float "p4",
		float "p5",
		float "p6",
		float "p7",
		Any "p8",
		float "p9",
		BOOL "p10",
		charPtr "animDict",
		int "flags",
	}
	alias "0xD5B35BEA41919ACB"
	ns "BRAIN"
	returns "void"
	doc [[!
<summary>
```
Example:  
AI::_D5B35BEA41919ACB(PLAYER::PLAYER_PED_ID(), "minigame_tattoo_michael_parts", 324.13, 181.29, 102.6, 0.0, 0.0, 22.32, 2, 0, 0, 0, 0);  
```
</summary>
	]]

native "TASK_LOOK_AT_COORD"
    hash "0x6FA46612594F7973"
	jhash (0x7B784DD8)
	arguments {
		Entity "entity",
		float "x",
		float "y",
		float "z",
		float "duration",
		Any "p5",
		Any "p6",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
<summary>
```
p5 = 0, p6 = 2  
```
</summary>
	]]

native "TASK_PARACHUTE"
    hash "0xD2F1C53C97EE81AB"
	jhash (0xEC3060A2)
	arguments {
		Ped "ped",
		BOOL "p1",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
<summary>
```
This function has a third parameter as well (bool).  
Second parameter is unused.  
seconds parameter was for jetpack in the early stages of gta and the hard coded code is now removed  
```
</summary>
	]]

native "_TASK_MOVE_NETWORK"
    hash "0x2D537BA194896636"
	jhash (0x6F5D215F)
	arguments {
		Ped "ped",
		charPtr "task",
		float "multiplier",
		BOOL "p3",
		charPtr "animDict",
		int "flags",
	}
	alias "0x2D537BA194896636"
	ns "BRAIN"
	returns "void"
	doc [[!
<summary>
```
Example:  
AI::_2D537BA194896636(PLAYER::PLAYER_PED_ID(), "arm_wrestling_sweep_paired_a_rev3", 0.0, 1, "mini@arm_wrestling", 0);  
```
</summary>
	]]

native "TASK_PARACHUTE_TO_TARGET"
    hash "0xB33E291AFA6BD03A"
	jhash (0xE0104D6C)
	arguments {
		Ped "ped",
		float "x",
		float "y",
		float "z",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
<summary>
```
makes ped parachute to coords x y z. Works well with PATHFIND::GET_SAFE_COORD_FOR_PED  
```
</summary>
	]]

native "TASK_OPEN_VEHICLE_DOOR"
    hash "0x965791A9A488A062"
	jhash (0x8EE06BF4)
	arguments {
		Ped "ped",
		Vehicle "vehicle",
		int "timeOut",
		int "doorIndex",
		float "speed",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
	]]

native "TASK_PED_SLIDE_TO_COORD"
    hash "0xD04FE6765D990A06"
	jhash (0x225380EF)
	arguments {
		Ped "ped",
		float "x",
		float "y",
		float "z",
		float "heading",
		float "duration",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
	]]

native "TASK_PATROL"
    hash "0xBDA5DF49D080FE4E"
	jhash (0xB92E5AF6)
	arguments {
		Ped "ped",
		charPtr "p1",
		Any "p2",
		BOOL "p3",
		BOOL "p4",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
<summary>
```
After looking at some scripts the second parameter seems to be an id of some kind. Here are some I found from some R* scripts:  
"miss_Tower_01" (this went from 01 - 10)  
"miss_Ass0" (0, 4, 6, 3)  
"MISS_PATROL_8"  
I think they're patrol routes, but I'm not sure. And I believe the 3rd parameter is a BOOL, but I can't confirm other than only seeing 0 and 1 being passed.  
As far as I can see the patrol routes names such as "miss_Ass0" have been defined earlier in the scripts. This leads me to believe we can defined our own new patrol routes by following the same approach.   
From the scripts  
    AI::OPEN_PATROL_ROUTE("miss_Ass0");  
    AI::ADD_PATROL_ROUTE_NODE(0, "WORLD_HUMAN_GUARD_STAND", l_738[0/*3*/], -139.4076690673828, -993.4732055664062, 26.2754, GAMEPLAY::GET_RANDOM_INT_IN_RANGE(5000, 10000));  
    AI::ADD_PATROL_ROUTE_NODE(1, "WORLD_HUMAN_GUARD_STAND", l_738[1/*3*/], -116.1391830444336, -987.4984130859375, 26.38541030883789, GAMEPLAY::GET_RANDOM_INT_IN_RANGE(5000, 10000));  
    AI::ADD_PATROL_ROUTE_NODE(2, "WORLD_HUMAN_GUARD_STAND", l_738[2/*3*/], -128.46847534179688, -979.0340576171875, 26.2754, GAMEPLAY::GET_RANDOM_INT_IN_RANGE(5000, 10000));  
    AI::ADD_PATROL_ROUTE_LINK(0, 1);  
    AI::ADD_PATROL_ROUTE_LINK(1, 2);  
    AI::ADD_PATROL_ROUTE_LINK(2, 0);  
    AI::CLOSE_PATROL_ROUTE();  
    AI::CREATE_PATROL_ROUTE();  
```
</summary>
	]]

native "TASK_PED_SLIDE_TO_COORD_HDG_RATE"
    hash "0x5A4A6A6D3DC64F52"
	jhash (0x38A995C1)
	arguments {
		Ped "ped",
		float "x",
		float "y",
		float "z",
		float "heading",
		float "p5",
		float "p6",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
	]]

native "TASK_PAUSE"
    hash "0xE73A266DB0CA9042"
	jhash (0x17A64668)
	arguments {
		Ped "ped",
		int "ms",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
<summary>
```
Stand still (?)  
```
</summary>
	]]

native "TASK_PERFORM_SEQUENCE_FROM_PROGRESS"
    hash "0x89221B16730234F0"
	jhash (0xFA60601B)
	arguments {
		Any "p0",
		Any "p1",
		Any "p2",
		Any "p3",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
	]]

native "TASK_PERFORM_SEQUENCE"
    hash "0x5ABA3986D90D8A3B"
	jhash (0x4D9FBD11)
	arguments {
		Ped "ped",
		Object "taskSequence",
	}
	ns "BRAIN"
	returns "Any"
	doc [[!
	]]

native "TASK_PLANE_CHASE"
    hash "0x2D2386F273FF7A25"
	jhash (0x12FA1C28)
	arguments {
		Ped "pilot",
		Entity "entityToFollow",
		float "x",
		float "y",
		float "z",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
	]]

native "TASK_PLANE_LAND"
    hash "0xBF19721FA34D32C0"
	jhash (0x5F7E23EA)
	arguments {
		Ped "pilot",
		Vehicle "plane",
		float "runwayStartX",
		float "runwayStartY",
		float "runwayStartZ",
		float "runwayEndX",
		float "runwayEndY",
		float "runwayEndZ",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
<summary>
```
Function.Call(Hash.TASK_PLANE_LAND, pilot, selectedAirplane, runwayStartPoint.X, runwayStartPoint.Y, runwayStartPoint.Z, runwayEndPoint.X, runwayEndPoint.Y, runwayEndPoint.Z);  
```
</summary>
	]]

native "TASK_PLANE_MISSION"
    hash "0x23703CD154E83B88"
	jhash (0x1D007E65)
	arguments {
		Ped "pilot",
		Vehicle "aircraft",
		Vehicle "targetVehicle",
		Ped "targetPed",
		float "destinationX",
		float "destinationY",
		float "destinationZ",
		int "missionFlag",
		float "angularDrag",
		float "unk",
		float "targetHeading",
		float "maxZ",
		float "minZ",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
<summary>
```
EDITED (7/13/2017)  
NOTE: If you want air combat, AI::TASK_COMBAT_PED (while your pilot is in an aircraft) also does the same thing as this native.  
DESCRIPTION:  
Ever wish your buddy could shoot down one of your enemies for you? Ever wanted an auto-pilot? Well look no further! This is the native for you! (Ped intelligence may vary)  
USAGE:  
-- REQUIRED --  
• pilot = The ped flying the aircraft.  
• aircraft = The aircraft the pilot is flying  
-- OPTIONAL -- [atleast 1 must be assigned]  
• targetVehicle = The vehicle the pilot will target.  
• targetPed = The ped the pilot will target.  
• destinationX, destinationY, destinationZ = The location the pilot will target.  
-- LOGIC --  
• missionFlag = The type of mission. pastebin.com/R8x73dbv  
• angularDrag = The higher the value, the slower the plane will rotate. Value ranges from 0 - Infinity.  
• unk = Set to 0, and you'll be fine.  
• targetHeading = The target angle (from world space north) that the pilot will try to acheive before executing an attack/landing.  
• maxZ = Maximum Z coordinate height for flying.  
• minZ = Minimum Z coordinate height for flying.  
Z: 2,700 is the default max height a pilot will be able to fly. Anything greater and he will fly downward until reaching 2,700 again.  
Mission Types (incase you don't like links..):  
0 = None  
1 = Unk  
2 = CTaskVehicleRam  
3 = CTaskVehicleBlock  
4 = CTaskVehicleGoToPlane  
5 = CTaskVehicleStop  
6 = CTaskVehicleAttack  
7 = CTaskVehicleFollow  
8 = CTaskVehicleFleeAirborne  
9 = CTaskVehicleCircle  
10 = CTaskVehicleEscort  
15 = CTaskVehicleFollowRecording  
16 = CTaskVehiclePoliceBehaviour  
17 = CTaskVehicleCrash  
Example C#:  
Function.Call(Hash.TASK_PLANE_MISSION, pilot, vehicle, 0, Game.Player.Character, 0, 0, 0, 6, 0f, 0f, 0f, 2500.0f, -1500f);  
Example C++  
AI::TASK_PLANE_MISSION(pilot, vehicle, 0, PLAYER::GET_PLAYER_PED(PLAYER::GET_PLAYER_INDEX()), 0, 0, 0, 6, 0.0, 0.0, 0.0, 2500.0, -1500.0);  
[DEPRECATED] EXAMPLE USAGE:  
pastebin.com/gx7Finsk  
```
</summary>
	]]

native "TASK_PLANT_BOMB"
    hash "0x965FEC691D55E9BF"
	jhash (0x33457535)
	arguments {
		Ped "ped",
		float "x",
		float "y",
		float "z",
		float "heading",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
	]]

native "TASK_PLAY_ANIM_ADVANCED"
    hash "0x83CDB10EA29B370B"
	jhash (0x3DDEB0E6)
	arguments {
		Ped "ped",
		charPtr "animDict",
		charPtr "animName",
		float "posX",
		float "posY",
		float "posZ",
		float "rotX",
		float "rotY",
		float "rotZ",
		float "speed",
		float "speedMultiplier",
		int "duration",
		Any "flag",
		float "animTime",
		Any "p14",
		Any "p15",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
<summary>
```
It's similar to the one above, except the first 6 floats let you specify the initial position and rotation of the task. (Ped gets teleported to the position). animTime is a float from 0.0 -> 1.0, lets you start an animation from given point. The rest as in AI::TASK_PLAY_ANIM.   
Rotation information : rotX and rotY don't seem to have any effect, only rotZ works.  
Animations list : www.los-santos-multiplayer.com/dev.airdancer?cxt=anim  
```
</summary>
	]]

native "TASK_PLAY_ANIM"
    hash "0xEA47FE3719165B94"
	jhash (0x5AB552C6)
	arguments {
		Ped "ped",
		charPtr "animDictionary",
		charPtr "animationName",
		float "blendInSpeed",
		float "blendOutSpeed",
		int "duration",
		int "flag",
		float "playbackRate",
		BOOL "lockX",
		BOOL "lockY",
		BOOL "lockZ",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
<summary>
```
Animations list : www.los-santos-multiplayer.com/dev.airdancer?cxt=anim  
float blendInSpeed > normal speed is 8.0f
----------------------  
float blendOutSpeed > normal speed is 8.0f
----------------------  
int duration: time in millisecond  
----------------------  
-1 _ _ _ _ _ _ _> Default (see flag)  
0 _ _ _ _ _ _ _ > Not play at all  
Small value _ _ > Slow down animation speed  
Other _ _ _ _ _ > freeze player control until specific time (ms) has   
_ _ _ _ _ _ _ _ _ passed. (No effect if flag is set to be   
_ _ _ _ _ _ _ _ _ controllable.)  
int flag:  
----------------------  
enum eAnimationFlags  
{  
 ANIM_FLAG_NORMAL = 0,  
   ANIM_FLAG_REPEAT = 1,  
   ANIM_FLAG_STOP_LAST_FRAME = 2,  
   ANIM_FLAG_UPPERBODY = 16,  
   ANIM_FLAG_ENABLE_PLAYER_CONTROL = 32,  
   ANIM_FLAG_CANCELABLE = 120,  
};  
Odd number : loop infinitely  
Even number : Freeze at last frame  
Multiple of 4: Freeze at last frame but controllable  
01 to 15 > Full body  
10 to 31 > Upper body  
32 to 47 > Full body > Controllable  
48 to 63 > Upper body > Controllable  
...  
001 to 255 > Normal  
256 to 511 > Garbled  
...  
playbackRate:  
values are between 0.0 and 1.0  
lockX:    
0 in most cases 1 for rcmepsilonism8 and rcmpaparazzo_3  
> 1 for mini@sprunk  
lockY:  
0 in most cases   
1 for missfam5_yoga, missfra1mcs_2_crew_react  
lockZ:   
    0 for single player   
    Can be 1 but only for MP  
```
</summary>
	]]

native "TASK_PLAY_PHONE_GESTURE_ANIMATION"
    hash "0x8FBB6758B3B3E9EC"
	jhash (0x1582162C)
	arguments {
		Ped "ped",
		charPtr "animDict",
		charPtr "animation",
		charPtr "boneMaskType",
		float "p4",
		float "p5",
		BOOL "p6",
		BOOL "p7",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
<summary>
```
Example from the scripts:  
AI::TASK_PLAY_PHONE_GESTURE_ANIMATION(PLAYER::PLAYER_PED_ID(), v_3, v_2, v_4, 0.25, 0.25, 0, 0);  
=========================================================  
^^ No offense, but Idk how that would really help anyone.  
As for the animDict & animation, they're both store in a global in all 5 scripts. So if anyone would be so kind as to read that global and comment what strings they use. Thanks.  
Known boneMaskTypes'  
"BONEMASK_HEADONLY"  
"BONEMASK_HEAD_NECK_AND_ARMS"  
"BONEMASK_HEAD_NECK_AND_L_ARM"  
"BONEMASK_HEAD_NECK_AND_R_ARM"  
p4 known args - 0.0f, 0.5f, 0.25f  
p5 known args - 0.0f, 0.25f  
p6 known args - 1 if a global if check is passed.  
p7 known args - 1 if a global if check is passed.  
The values found above, I found within the 5 scripts this is ever called in. (fmmc_launcher, fm_deathmatch_controller, fm_impromptu_dm_controller, fm_mission_controller, and freemode).  
=========================================================  
```
</summary>
	]]

native "TASK_PUT_PED_DIRECTLY_INTO_COVER"
    hash "0x4172393E6BE1FECE"
	jhash (0xC9F00E68)
	arguments {
		Ped "ped",
		float "x",
		float "y",
		float "z",
		Any "timeout",
		BOOL "p5",
		float "p6",
		BOOL "p7",
		BOOL "p8",
		Any "p9",
		BOOL "p10",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
	]]

native "TASK_RAPPEL_FROM_HELI"
    hash "0x09693B0312F91649"
	jhash (0x2C7ADB93)
	arguments {
		Ped "ped",
		int "unused",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
<summary>
```
Only appears twice in the scripts.  
AI::TASK_RAPPEL_FROM_HELI(PLAYER::PLAYER_PED_ID(), 0x41200000);  
AI::TASK_RAPPEL_FROM_HELI(a_0, 0x41200000);  
Fixed, definitely not a float and since it's such a big number obviously not a bool. All though note when I thought it was a bool and set it to 1 it seemed to work that same as int 0x41200000.  
0x41200000 = 10.0 as float.  
Not all helicopters support rappelling.  
```
</summary>
	]]

native "TASK_PUT_PED_DIRECTLY_INTO_MELEE"
    hash "0x1C6CD14A876FFE39"
	jhash (0x79E1D27D)
	arguments {
		Ped "ped",
		Ped "meleeTarget",
		float "p2",
		float "p3",
		float "p4",
		BOOL "p5",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
<summary>
```
from armenian3.c4  
AI::TASK_PUT_PED_DIRECTLY_INTO_MELEE(PlayerPed, armenianPed, 0.0, -1.0, 0.0, 0);  
```
</summary>
	]]

native "TASK_RELOAD_WEAPON"
    hash "0x62D2916F56B9CD2D"
	jhash (0xCA6E91FD)
	arguments {
		Ped "ped",
		BOOL "unused",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
<summary>
```
The 2nd param (unused) is not implemented.  
-----------------------------------------------------------------------  
The only occurrence I found in a R* script ("assassin_construction.ysc.c4"):  
            if (((v_3 < v_4) && (AI::GET_SCRIPT_TASK_STATUS(PLAYER::PLAYER_PED_ID(), 0x6a67a5cc) != 1)) && (v_5 > v_3)) {  
                AI::TASK_RELOAD_WEAPON(PLAYER::PLAYER_PED_ID(), 1);  
            }  
```
</summary>
	]]

native "TASK_REACT_AND_FLEE_PED"
    hash "0x72C896464915D1B1"
	jhash (0x8A632BD8)
	arguments {
		Ped "ped",
		Ped "fleeTarget",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
	]]

native "TASK_SEEK_COVER_FROM_PED"
    hash "0x84D32B3BEC531324"
	jhash (0xC1EC907E)
	arguments {
		Ped "ped",
		Ped "target",
		int "duration",
		BOOL "p3",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
	]]

native "TASK_SCRIPTED_ANIMATION"
    hash "0x126EF75F1E17ABE5"
	jhash (0xFC2DCF47)
	arguments {
		Ped "ped",
		AnyPtr "p1",
		AnyPtr "p2",
		AnyPtr "p3",
		float "p4",
		float "p5",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
<summary>
```
From fm_mission_controller.c:  
reserve_network_mission_objects(get_num_reserved_mission_objects(0) + 1);  
	vVar28 = {0.094f, 0.02f, -0.005f};  
	vVar29 = {-92.24f, 63.64f, 150.24f};  
	func_253(&uVar30, joaat("prop_ld_case_01"), Global_1592429.imm_34757[iParam1 <268>], 1, 1, 0, 1);  
	set_entity_lod_dist(net_to_ent(uVar30), 500);  
	attach_entity_to_entity(net_to_ent(uVar30), iParam0, get_ped_bone_index(iParam0, 28422), vVar28, vVar29, 1, 0, 0, 0, 2, 1);  
	Var31.imm_4 = 1065353216;  
	Var31.imm_5 = 1065353216;  
	Var31.imm_9 = 1065353216;  
	Var31.imm_10 = 1065353216;  
	Var31.imm_14 = 1065353216;  
	Var31.imm_15 = 1065353216;  
	Var31.imm_17 = 1040187392;  
	Var31.imm_18 = 1040187392;  
	Var31.imm_19 = -1;  
	Var32.imm_4 = 1065353216;  
	Var32.imm_5 = 1065353216;  
	Var32.imm_9 = 1065353216;  
	Var32.imm_10 = 1065353216;  
	Var32.imm_14 = 1065353216;  
	Var32.imm_15 = 1065353216;  
	Var32.imm_17 = 1040187392;  
	Var32.imm_18 = 1040187392;  
	Var32.imm_19 = -1;  
	Var31 = 1;  
	Var31.imm_1 = "weapons@misc@jerrycan@mp_male";  
	Var31.imm_2 = "idle";  
	Var31.imm_20 = 1048633;  
	Var31.imm_4 = 0.5f;  
	Var31.imm_16 = get_hash_key("BONEMASK_ARMONLY_R");  
	task_scripted_animation(iParam0, &Var31, &Var32, &Var32, 0f, 0.25f);  
	set_model_as_no_longer_needed(joaat("prop_ld_case_01"));  
	remove_anim_dict("anim@heists@biolab@");  
```
</summary>
	]]

native "TASK_SEEK_COVER_TO_COORDS"
    hash "0x39246A6958EF072C"
	jhash (0xFFFE754E)
	arguments {
		Ped "ped",
		float "x1",
		float "y1",
		float "z1",
		float "x2",
		float "y2",
		float "z2",
		Any "p7",
		BOOL "p8",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
<summary>
```
from michael2:  
AI::TASK_SEEK_COVER_TO_COORDS(ped, 967.5164794921875, -2121.603515625, 30.479299545288086, 978.94677734375, -2125.84130859375, 29.4752, -1, 1);  
appears to be shorter variation  
from michael3:  
AI::TASK_SEEK_COVER_TO_COORDS(ped, -2231.011474609375, 263.6326599121094, 173.60195922851562, -1, 0);  
```
</summary>
	]]

native "TASK_SEEK_COVER_FROM_POS"
    hash "0x75AC2B60386D89F2"
	jhash (0x83F18EE9)
	arguments {
		Ped "ped",
		float "x",
		float "y",
		float "z",
		int "duration",
		BOOL "p5",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
	]]

native "TASK_SET_BLOCKING_OF_NON_TEMPORARY_EVENTS"
    hash "0x90D2156198831D69"
	jhash (0x1B54FB6B)
	arguments {
		Ped "ped",
		BOOL "toggle",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
<summary>
```
I cant believe I have to define this, this is one of the best natives.  
It makes the ped ignore basically all shocking events around it. Occasionally the ped may comment or gesture, but other than that they just continue their daily activities. This includes shooting and wounding the ped. And - most importantly - they do not flee.  
Since it is a task, every time the native is called the ped will stop for a moment.  
```
</summary>
	]]

native "TASK_SEEK_COVER_TO_COVER_POINT"
    hash "0xD43D95C7A869447F"
	jhash (0x3D026B29)
	arguments {
		Any "p0",
		Any "p1",
		float "p2",
		float "p3",
		float "p4",
		Any "p5",
		BOOL "p6",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
	]]

native "TASK_SET_SPHERE_DEFENSIVE_AREA"
    hash "0x933C06518B52A9A4"
	jhash (0x9F3C5D6A)
	arguments {
		Any "p0",
		float "p1",
		float "p2",
		float "p3",
		float "p4",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
	]]

native "TASK_SET_DECISION_MAKER"
    hash "0xEB8517DDA73720DA"
	jhash (0x830AD50C)
	arguments {
		Ped "p0",
		Hash "p1",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
<summary>
```
p1 is always GET_HASH_KEY("empty") in scripts, for the rare times this is used  
```
</summary>
	]]

native "TASK_SHOCKING_EVENT_REACT"
    hash "0x452419CBD838065B"
	jhash (0x9BD00ACF)
	arguments {
		Ped "ped",
		int "eventHandle",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
	]]

native "TASK_SHOOT_AT_COORD"
    hash "0x46A6CC01E0826106"
	jhash (0x601C22E3)
	arguments {
		Ped "ped",
		float "x",
		float "y",
		float "z",
		int "duration",
		Hash "firingPattern",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
	]]

native "TASK_SHOOT_AT_ENTITY"
    hash "0x08DA95E8298AE772"
	jhash (0xAC0631C9)
	arguments {
		Entity "entity",
		Entity "target",
		int "duration",
		Hash "firingPattern",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
<summary>
```
//this part of the code is to determine at which entity the player is aiming, for example if you want to create a mod where you give orders to peds  
Entity aimedentity;  
Player player = PLAYER::PLAYER_ID();  
PLAYER::_GET_AIMED_ENTITY(player, &aimedentity);  
//bg is an array of peds  
AI::TASK_SHOOT_AT_ENTITY(bg[i], aimedentity, 5000, GAMEPLAY::GET_HASH_KEY("FIRING_PATTERN_FULL_AUTO"));  
in practical usage, getting the entity the player is aiming at and then task the peds to shoot at the entity, at a button press event would be better.  
```
</summary>
	]]

native "TASK_SHUFFLE_TO_NEXT_VEHICLE_SEAT"
    hash "0x7AA80209BDA643EB"
	jhash (0xBEAF8F67)
	arguments {
		Ped "ped",
		Vehicle "vehicle",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
<summary>
```
Makes the specified ped shuffle to the next vehicle seat.  
The ped MUST be in a vehicle and the vehicle parameter MUST be the ped's current vehicle.  
```
</summary>
	]]

native "TASK_SKY_DIVE"
    hash "0x601736CFE536B0A0"
	jhash (0xD3874AFA)
	arguments {
		Ped "ped",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
	]]

native "TASK_SMART_FLEE_COORD"
    hash "0x94587F17E9C365D5"
	jhash (0xB2E686FC)
	arguments {
		Ped "ped",
		float "x",
		float "y",
		float "z",
		float "distance",
		int "time",
		BOOL "p6",
		BOOL "p7",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
<summary>
```
Makes the specified ped flee the specified distance from the specified position.  
```
</summary>
	]]

native "TASK_SMART_FLEE_PED"
    hash "0x22B0D0E37CCB840D"
	jhash (0xE52EB560)
	arguments {
		Ped "ped",
		Ped "fleeTarget",
		float "distance",
		Any "fleeTime",
		BOOL "p4",
		BOOL "p5",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
<summary>
```
Makes a ped run away from another ped (fleeTarget).  
distance = ped will flee this distance.  
fleeTime = ped will flee for this amount of time, set to "-1" to flee forever  
```
</summary>
	]]

native "TASK_STAND_STILL"
    hash "0x919BE13EED931959"
	jhash (0x6F80965D)
	arguments {
		Ped "ped",
		int "time",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
<summary>
```
Makes the specified ped stand still for (time) milliseconds.  
```
</summary>
	]]

native "TASK_STAND_GUARD"
    hash "0xAE032F8BBA959E90"
	jhash (0xD130F636)
	arguments {
		Ped "ped",
		float "x",
		float "y",
		float "z",
		float "heading",
		charPtr "scenarioName",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
<summary>
```
scenarioName example: "WORLD_HUMAN_GUARD_STAND"  
```
</summary>
	]]

native "TASK_START_SCENARIO_AT_POSITION"
    hash "0xFA4EFC79F69D4F07"
	jhash (0xAA2C4AC2)
	arguments {
		Ped "ped",
		charPtr "scenarioName",
		float "x",
		float "y",
		float "z",
		float "heading",
		int "duration",
		BOOL "sittingScenario",
		BOOL "teleport",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
<summary>
```
List of scenarioNames: pastebin.com/6mrYTdQv  
Also a few more listed at AI::TASK_START_SCENARIO_IN_PLACE just above.  
---------------  
The first parameter in every scenario has always been a Ped of some sort. The second like TASK_START_SCENARIO_IN_PLACE is the name of the scenario.   
The next 4 parameters were harder to decipher. After viewing "hairdo_shop_mp.ysc.c4", and being confused from seeing the case in other scripts, they passed the first three of the arguments as one array from a function, and it looked like it was obviously x, y, and z.  
I haven't seen the sixth parameter go to or over 360, making me believe that it is rotation, but I really can't confirm anything.  
I have no idea what the last 3 parameters are, but I'll try to find out.  
-going on the last 3 parameters, they appear to always be "0, 0, 1"  
p6 -1 also used in scrips  
p7 used for sitting scenarios  
p8 teleports ped to position  
```
</summary>
	]]

native "TASK_STAY_IN_COVER"
    hash "0xE5DA8615A6180789"
	jhash (0xA27A9413)
	arguments {
		Ped "ped",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
<summary>
```
Makes the ped run to take cover  
```
</summary>
	]]

native "TASK_START_SCENARIO_IN_PLACE"
    hash "0x142A02425FF02BD9"
	jhash (0xE50D6DDE)
	arguments {
		Ped "ped",
		charPtr "scenarioName",
		int "unkDelay",
		BOOL "playEnterAnim",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
<summary>
```
Plays a scenario on a Ped at their current location.  
unkDelay - Usually 0 or -1, doesn't seem to have any effect. Might be a delay between sequences.  
playEnterAnim - Plays the "Enter" anim if true, otherwise plays the "Exit" anim. Scenarios that don't have any "Enter" anims won't play if this is set to true.  
----  
From "am_hold_up.ysc.c4" at line 339:  
AI::TASK_START_SCENARIO_IN_PLACE(NETWORK::NET_TO_PED(l_8D._f4), sub_adf(), 0, 1);  
I'm unsure of what the last two parameters are, however sub_adf() randomly returns 1 of 3 scenarios, those being:  
WORLD_HUMAN_SMOKING  
WORLD_HUMAN_HANG_OUT_STREET  
WORLD_HUMAN_STAND_MOBILE  
This makes sense, as these are what I commonly see when going by a liquor store.  
-------------------------  
List of scenarioNames: pastebin.com/6mrYTdQv  
(^ Thank you so fucking much for this)  
Also these:  
WORLD_FISH_FLEE  
DRIVE  
WORLD_HUMAN_HIKER  
WORLD_VEHICLE_ATTRACTOR  
WORLD_VEHICLE_BICYCLE_MOUNTAIN  
WORLD_VEHICLE_BIKE_OFF_ROAD_RACE  
WORLD_VEHICLE_BIKER  
WORLD_VEHICLE_CONSTRUCTION_PASSENGERS  
WORLD_VEHICLE_CONSTRUCTION_SOLO  
WORLD_VEHICLE_DRIVE_PASSENGERS  
WORLD_VEHICLE_DRIVE_SOLO  
WORLD_VEHICLE_EMPTY  
WORLD_VEHICLE_PARK_PARALLEL  
WORLD_VEHICLE_PARK_PERPENDICULAR_NOSE_IN  
WORLD_VEHICLE_POLICE_BIKE  
WORLD_VEHICLE_POLICE_CAR  
WORLD_VEHICLE_POLICE_NEXT_TO_CAR  
WORLD_VEHICLE_SALTON_DIRT_BIKE  
WORLD_VEHICLE_TRUCK_LOGS  
```
</summary>
	]]

native "TASK_STEALTH_KILL"
    hash "0xAA5DC05579D60BD9"
	jhash (0x0D64C2FA)
	arguments {
		Ped "killer",
		Ped "target",
		Hash "actionType",
		float "p3",
		Any "p4",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
<summary>
```
Stealth kill action name hashes:  
stealth kills can be found here: Grand Theft Auto V\common.rpf\data\action\stealth_kills.meta  
...  
{  
    "ACT_stealth_kill_a",  
    "ACT_stealth_kill_weapon",  
    "ACT_stealth_kill_b",  
    "ACT_stealth_kill_c",  
    "ACT_stealth_kill_d",  
    "ACT_stealth_kill_a_gardener"  
}  
Only known script using this native: fbi4_prep2  
EXAMPLE:  
ai::task_stealth_kill(iParam1, Local_252, gameplay::get_hash_key("AR_stealth_kill_a"), 1f, 0);ai::task_stealth_kill(iParam1, Local_252, gameplay::get_hash_key("AR_stealth_kill_knife"), 1f, 0);  
Also it may be important to note, that each time this task is called, it's followed by AI::CLEAR_PED_TASKS on the target  
```
</summary>
	]]

native "_TASK_STOP_PHONE_GESTURE_ANIMATION"
    hash "0x3FA00D4F4641BFAE"
	arguments {
		Ped "ped",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
<summary>
```
TODO: add hash from x360  
^^^  
I got you, x360 Hash: 0x5A32D4B4.   
Note: Whoever named this I just compared it and the hash matches, it was the correct name thanks.   
Note: Alexander Blade, needs to fix this site or his code one, as when we do find the right name the server throws an error saying the name is already in use. AB is a legend coder, so I'm sure this is a simple fix for him.  
```
</summary>
	]]

native "TASK_SWEEP_AIM_ENTITY"
    hash "0x2047C02158D6405A"
	jhash (0x4D210467)
	arguments {
		Ped "ped",
		charPtr "anim",
		charPtr "p2",
		charPtr "p3",
		charPtr "p4",
		int "p5",
		Vehicle "vehicle",
		float "p7",
		float "p8",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
<summary>
```
This function is called on peds in vehicles.  
anim: animation name  
p2, p3, p4: "sweep_low", "sweep_med" or "sweep_high"  
p5: no idea what it does but is usually -1  
```
</summary>
	]]

native "TASK_SWAP_WEAPON"
    hash "0xA21C51255B205245"
	jhash (0xDAF4F8FC)
	arguments {
		Ped "ped",
		BOOL "p1",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
	]]

native "TASK_SYNCHRONIZED_SCENE"
    hash "0xEEA929141F699854"
	jhash (0x4F217E7B)
	arguments {
		Ped "ped",
		int "scene",
		charPtr "animDictionary",
		charPtr "animationName",
		float "speed",
		float "speedMultiplier",
		int "duration",
		int "flag",
		float "playbackRate",
		Any "p9",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
<summary>
```
AI::TASK_SYNCHRONIZED_SCENE(ped, scene, "creatures@rottweiler@in_vehicle@std_car", "get_in", 1000.0, -8.0, 4, 0, 0x447a0000, 0);  
Animations List : www.ls-multiplayer.com/dev/index.php?section=3  
```
</summary>
	]]

native "TASK_SWEEP_AIM_POSITION"
    hash "0x7AFE8FDC10BC07D2"
	jhash (0x1683FE66)
	arguments {
		Any "p0",
		AnyPtr "p1",
		AnyPtr "p2",
		AnyPtr "p3",
		AnyPtr "p4",
		Any "p5",
		float "p6",
		float "p7",
		float "p8",
		float "p9",
		float "p10",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
	]]

native "TASK_TOGGLE_DUCK"
    hash "0xAC96609B9995EDF8"
	jhash (0x61CFBCBF)
	arguments {
		BOOL "p0",
		BOOL "p1",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
<summary>
```
used in sequence task  
both parameters seems to be always 0  
```
</summary>
	]]

native "TASK_THROW_PROJECTILE"
    hash "0x7285951DBF6B5A51"
	jhash (0xF65C20A7)
	arguments {
		int "ped",
		float "x",
		float "y",
		float "z",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
<summary>
```
In every case of this native, I've only seen the first parameter passed as 0, although I believe it's a Ped after seeing tasks around it using 0. That's because it's used in a Sequence Task.  
The last 3 parameters are definitely coordinates after seeing them passed in other scripts, and even being used straight from the player's coordinates.  
---  
It seems that - in the decompiled scripts - this native was used on a ped who was in a vehicle to throw a projectile out the window at the player. This is something any ped will naturally do if they have a throwable and they are doing driveby-combat (although not very accurately).  
It is possible, however, that this is how SWAT throws smoke grenades at the player when in cover.  
----------------------------------------------------  
The first comment is right it definately is the ped as if you look in script finale_heist2b.c line 59628 in Xbox Scripts atleast you will see task_throw_projectile and the first param is Local_559[2 <14>] if you look above it a little bit line 59622 give_weapon_to_ped uses the same exact param Local_559[2 <14>] and we all know the first param of that native is ped. So it guaranteed has to be ped. 0 just may mean to use your ped by default for some reason.  
```
</summary>
	]]

native "TASK_TURN_PED_TO_FACE_COORD"
    hash "0x1DDA930A0AC38571"
	jhash (0x30463D73)
	arguments {
		Ped "ped",
		float "x",
		float "y",
		float "z",
		int "duration",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
<summary>
```
duration in milliseconds  
```
</summary>
	]]

native "TASK_USE_MOBILE_PHONE"
    hash "0xBD2A8EC3AF4DE7DB"
	jhash (0x225A38C8)
	arguments {
		Ped "ped",
		int "p1",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
<summary>
```
Actually has 3 params, not 2.  
p0: Ped  
p1: int (or bool?)  
p2: int  
```
</summary>
	]]

native "TASK_TURN_PED_TO_FACE_ENTITY"
    hash "0x5AD23D40115353AC"
	jhash (0x3C37C767)
	arguments {
		Ped "ped",
		Entity "entity",
		int "duration",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
<summary>
```
duration: the amount of time in milliseconds to do the task. -1 will keep the task going until either another task is applied, or CLEAR_ALL_TASKS() is called with the ped  
```
</summary>
	]]

native "TASK_USE_NEAREST_SCENARIO_CHAIN_TO_COORD_WARP"
    hash "0x97A28E63F0BA5631"
	jhash (0xBAB4C0AE)
	arguments {
		Any "p0",
		float "p1",
		float "p2",
		float "p3",
		float "p4",
		Any "p5",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
	]]

native "TASK_USE_MOBILE_PHONE_TIMED"
    hash "0x5EE02954A14C69DB"
	jhash (0xC99C19F5)
	arguments {
		Ped "ped",
		int "duration",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
	]]

native "TASK_USE_NEAREST_SCENARIO_CHAIN_TO_COORD"
    hash "0x9FDA1B3D7E7028B3"
	jhash (0xE32FFB22)
	arguments {
		Any "p0",
		float "p1",
		float "p2",
		float "p3",
		float "p4",
		Any "p5",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
	]]

native "TASK_VEHICLE_AIM_AT_COORD"
    hash "0x447C1E9EF844BC0F"
	jhash (0x010F47CE)
	arguments {
		Ped "ped",
		float "x",
		float "y",
		float "z",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
	]]

native "TASK_VEHICLE_AIM_AT_PED"
    hash "0xE41885592B08B097"
	jhash (0x920AE6DB)
	arguments {
		Ped "ped",
		Ped "target",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
	]]

native "TASK_USE_NEAREST_SCENARIO_TO_COORD"
    hash "0x277F471BA9DB000B"
	jhash (0x9C50FBF0)
	arguments {
		Ped "ped",
		float "x",
		float "y",
		float "z",
		float "distance",
		int "duration",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
<summary>
```
Updated variables  
An alternative to AI::TASK_USE_NEAREST_SCENARIO_TO_COORD_WARP. Makes the ped walk to the scenario instead.  
```
</summary>
	]]

native "TASK_VEHICLE_DRIVE_TO_COORD_LONGRANGE"
    hash "0x158BB33F920D360C"
	jhash (0x1490182A)
	arguments {
		Ped "ped",
		Vehicle "vehicle",
		float "x",
		float "y",
		float "z",
		float "speed",
		int "driveMode",
		float "stopRange",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
	]]

native "TASK_USE_NEAREST_SCENARIO_TO_COORD_WARP"
    hash "0x58E2E0F23F6B76C3"
	jhash (0x1BE9D65C)
	arguments {
		Ped "ped",
		float "x",
		float "y",
		float "z",
		float "radius",
		Any "p5",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
	]]

native "TASK_VEHICLE_DRIVE_WANDER"
    hash "0x480142959D337D00"
	jhash (0x36EC0EB0)
	arguments {
		Ped "ped",
		Vehicle "vehicle",
		float "speed",
		int "drivingStyle",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
	]]

native "TASK_VEHICLE_CHASE"
    hash "0x3C08A8E30363B353"
	jhash (0x55634798)
	arguments {
		Ped "driver",
		Entity "targetEnt",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
<summary>
```
chases targetEnt fast and aggressively  
--  
Makes ped (needs to be in vehicle) chase targetEnt.  
```
</summary>
	]]

native "TASK_VEHICLE_ESCORT"
    hash "0x0FA6E4B75F302400"
	jhash (0x9FDCB250)
	arguments {
		Ped "ped",
		Vehicle "vehicle",
		Vehicle "targetVehicle",
		int "mode",
		float "speed",
		int "drivingStyle",
		float "minDistance",
		int "p7",
		float "noRoadsDistance",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
<summary>
```
Makes a ped follow the targetVehicle with <minDistance> in between.  
note: minDistance is ignored if drivingstyle is avoiding traffic, but Rushed is fine.  
Mode: The mode defines the relative position to the targetVehicle. The ped will try to position its vehicle there.  
-1 = behind  
0 = ahead  
1 = left  
2 = right  
3 = back left  
4 = back right  
if the target is closer than noRoadsDistance, the driver will ignore pathing/roads and follow you directly.  
Driving Styles guide: gtaforums.com/topic/822314-guide-driving-styles/  
```
</summary>
	]]

native "TASK_VEHICLE_DRIVE_TO_COORD"
    hash "0xE2A2AA2F659D77A7"
	jhash (0xE4AC0387)
	arguments {
		Ped "ped",
		Vehicle "vehicle",
		float "x",
		float "y",
		float "z",
		float "speed",
		Any "p6",
		Hash "vehicleModel",
		int "drivingMode",
		float "stopRange",
		float "p10",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
<summary>
```
info about driving modes: HTTP://gtaforums.com/topic/822314-guide-driving-styles/  
---------------------------------------------------------------  
Passing P6 value as floating value didn't throw any errors, though unsure what is it exactly, looks like radius or something.  
P10 though, it is mentioned as float, however, I used bool and set it to true, that too worked.  
Here the e.g. code I used  
Function.Call(Hash.TASK_VEHICLE_DRIVE_TO_COORD, Ped, Vehicle, Cor X, Cor Y, Cor Z, 30f, 1f, Vehicle.GetHashCode(), 16777216, 1f, true);  
```
</summary>
	]]

native "TASK_VEHICLE_FOLLOW_WAYPOINT_RECORDING"
    hash "0x3123FAA6DB1CF7ED"
	jhash (0x959818B6)
	arguments {
		Ped "ped",
		Vehicle "vehicle",
		charPtr "WPRecording",
		int "p3",
		int "p4",
		int "p5",
		int "p6",
		float "p7",
		BOOL "p8",
		float "p9",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
<summary>
```
task_vehicle_follow_waypoint_recording(Ped p0, Vehicle p1, string p2, int p3, int p4, int p5, int p6, float.x p7, float.Y p8, float.Z p9, bool p10, int p11)  
p2 = Waypoint recording string (found in update\update.rpf\x64\levels\gta5\waypointrec.rpf  
p3 = 786468  
p4 = 0  
p5 = 16  
p6 = -1 (angle?)  
p7/8/9 = usually v3.zero  
p10 = bool (repeat?)  
p11 = 1073741824  
```
</summary>
	]]

native "_TASK_VEHICLE_FOLLOW"
    hash "0xFC545A9F0626E3B6"
	arguments {
		Ped "driver",
		Vehicle "vehicle",
		Entity "targetEntity",
		float "speed",
		int "drivingStyle",
		int "minDistance",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
<summary>
```
Makes a ped in a vehicle follow an entity (ped, vehicle, etc.)  
Driving Styles guide: gtaforums.com/topic/822314-guide-driving-styles/  
Console Hash: 0xA8B917D7  
AI::_TASK_VEHICLE_FOLLOW(l_244[3/*1*/], l_268[3/*1*/], l_278, 40.0, 262144, 10);  
What is this known as in the decompiled scripts ffs. I need more examples. I've searched in all scripts for keywords suchas,  
TASK_VEHICLE_FOLLOW, FC545A9F0626E3B6, 0xFC545A9F0626E3B6, all the parameters in the above example even just search the last few params '40.0, 262144, 10' and couldnt find where this native is used in scripts at all unless whoever decompiled the scripts gave it a whack a.. name.  
```
</summary>
	]]

native "TASK_VEHICLE_HELI_PROTECT"
    hash "0x1E09C32048FEFD1C"
	jhash (0x0CB415EE)
	arguments {
		Ped "pilot",
		Vehicle "vehicle",
		Entity "entityToFollow",
		float "targetSpeed",
		int "p4",
		float "radius",
		int "altitude",
		int "p7",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
<summary>
```
pilot, vehicle and altitude are rather self-explanatory.  
p4: is unused variable in the function.  
entityToFollow: you can provide a Vehicle entity or a Ped entity, the heli will protect them.  
'targetSpeed':  The pilot will dip the nose AS MUCH AS POSSIBLE so as to reach this value AS FAST AS POSSIBLE.  As such, you'll want to modulate it as opposed to calling it via a hard-wired, constant #.  
'radius' isn't just "stop within radius of X of target" like with ground vehicles.  In this case, the pilot will fly an entire circle around 'radius' and continue to do so.  
NOT CONFIRMED:  p7 appears to be a FlyingStyle enum.  Still investigating it as of this writing, but playing around with values here appears to result in different -behavior- as opposed to offsetting coordinates, altitude, target speed, etc.  
NOTE: If the pilot finds enemies, it will engage them until it kills them, but will return to protect the ped/vehicle given shortly thereafter.  
```
</summary>
	]]

native "TASK_VEHICLE_GOTO_NAVMESH"
    hash "0x195AEEB13CEFE2EE"
	jhash (0x55CF3BCD)
	arguments {
		Ped "ped",
		Vehicle "vehicle",
		float "x",
		float "y",
		float "z",
		float "speed",
		int "behaviorFlag",
		float "stoppingRange",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
<summary>
```
Differs from TASK_VEHICLE_DRIVE_TO_COORDS in that it will pick the shortest possible road route without taking one-way streets and other "road laws" into consideration.  
WARNING:  
A behaviorFlag value of 0 will result in a clunky, stupid driver!  
Recommended settings:  
speed = 30.0f,  
behaviorFlag = 156,   
stoppingRange = 5.0f;  
If you simply want to have your driver move to a fixed location, call it only once, or, when necessary in the event of interruption.   
If using this to continually follow a Ped who is on foot:  You will need to run this in a tick loop.  Call it in with the Ped's updated coordinates every 20 ticks or so and you will have one hell of a smart, fast-reacting NPC driver -- provided he doesn't get stuck.  If your update frequency is too fast, the Ped may not have enough time to figure his way out of being stuck, and thus, remain stuck.  One way around this would be to implement an "anti-stuck" mechanism, which allows the driver to realize he's stuck, temporarily pause the tick, unstuck, then resume the tick.  
EDIT:  This is being discussed in more detail at http://gtaforums.com/topic/818504-any-idea-on-how-to-make-peds-clever-and-insanely-fast-c/  
```
</summary>
	]]

native "TASK_VEHICLE_MISSION_COORS_TARGET"
    hash "0xF0AF20AA7731F8C3"
	jhash (0x6719C109)
	arguments {
		Ped "ped",
		Vehicle "vehicle",
		float "x",
		float "y",
		float "z",
		int "p5",
		int "p6",
		int "p7",
		float "p8",
		float "p9",
		BOOL "p10",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
<summary>
```
Example from fm_mission_controller.c4:  
AI::TASK_VEHICLE_MISSION_COORS_TARGET(l_65E1, l_65E2, 324.84588623046875, 325.09619140625, 104.3525, 4, 15.0, 802987, 5.0, 5.0, 0);  
```
</summary>
	]]

native "TASK_VEHICLE_MISSION"
    hash "0x659427E0EF36BCDE"
	jhash (0x20609E56)
	arguments {
		int "p0",
		int "p1",
		Vehicle "veh",
		Any "p3",
		float "p4",
		Any "p5",
		float "p6",
		float "p7",
		BOOL "p8",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
	]]

native "TASK_VEHICLE_MISSION_PED_TARGET"
    hash "0x9454528DF15D657A"
	jhash (0xC81C4677)
	arguments {
		Ped "ped",
		Vehicle "vehicle",
		Ped "pedTarget",
		int "mode",
		float "maxSpeed",
		int "drivingStyle",
		float "minDistance",
		float "p7",
		BOOL "p8",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
<summary>
```
Modes:  
8= flees  
1=drives around the ped  
4=drives and stops near  
7=follows  
10=follows to the left  
11=follows to the  right  
12 = follows behind  
13=follows ahead  
14=follows, stop when near  
```
</summary>
	]]

native "TASK_VEHICLE_PARK"
    hash "0x0F3E34E968EA374E"
	jhash (0x5C85FF90)
	arguments {
		Ped "ped",
		Vehicle "vehicle",
		float "x",
		float "y",
		float "z",
		float "heading",
		int "mode",
		float "radius",
		BOOL "keepEngineOn",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
<summary>
```
Modes:  
0 - ignore heading  
1 - park forward  
2 - park backwards  
Depending on the angle of approach, the vehicle can park at the specified heading or at its exact opposite (-180) angle.  
Radius seems to define how close the vehicle has to be -after parking- to the position for this task considered completed. If the value is too small, the vehicle will try to park again until it's exactly where it should be. 20.0 Works well but lower values don't, like the radius is measured in centimeters or something.  
```
</summary>
	]]

native "TASK_VEHICLE_PLAY_ANIM"
    hash "0x69F5C3BD0F3EBD89"
	jhash (0x2B28F598)
	arguments {
		Vehicle "vehicle",
		charPtr "animation_set",
		charPtr "animation_name",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
<summary>
```
Most probably plays a specific animation on vehicle. For example getting chop out of van etc...  
Here's how its used -   
AI::TASK_VEHICLE_PLAY_ANIM(l_325, "rcmnigel1b", "idle_speedo");  
AI::TASK_VEHICLE_PLAY_ANIM(l_556[0/*1*/], "missfra0_chop_drhome", "InCar_GetOutofBack_Speedo");  
FYI : Speedo is the name of van in which chop was put in the mission.  
Animations list : www.los-santos-multiplayer.com/dev.airdancer?cxt=anim  
```
</summary>
	]]

native "TASK_VEHICLE_SHOOT_AT_COORD"
    hash "0x5190796ED39C9B6D"
	jhash (0xA7AAA4D6)
	arguments {
		Ped "ped",
		float "x",
		float "y",
		float "z",
		float "p4",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
	]]

native "TASK_VEHICLE_SHOOT_AT_PED"
    hash "0x10AB107B887214D8"
	jhash (0x59677BA0)
	arguments {
		Ped "ped",
		Ped "target",
		float "p2",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
	]]

native "TASK_VEHICLE_TEMP_ACTION"
    hash "0xC429DCEEB339E129"
	jhash (0x0679DFB8)
	arguments {
		Ped "driver",
		Vehicle "vehicle",
		int "action",
		int "time",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
<summary>
```
'1   
'3 - brake + reverse  
'4 - turn left 90 + braking  
'5 - turn right 90 + braking  
'6 - brake strong (handbrake?) until time ends  
'7 - turn left + accelerate  
'7 - turn right + accelerate  
'9 - weak acceleration  
'10 - turn left + restore wheel pos to center in the end  
'11 - turn right + restore wheel pos to center in the end  
'13 - turn left + go reverse  
'14 - turn left + go reverse  
'16 - crash the game after like 2 seconds :)  
'17 - keep actual state, game crashed after few tries  
'18 - game crash  
'19 - strong brake + turn left/right  
'20 - weak brake + turn left then turn right  
'21 - weak brake + turn right then turn left  
'22 - brake + reverse  
'23 - accelerate fast  
'24   
'25 - brake turning left then when almost stopping it turns left more  
'26 - brake turning right then when almost stopping it turns right more  
'27 - brake until car stop or until time ends  
'28 - brake + strong reverse acceleration  
'30 - performs a burnout (brake until stop + brake and accelerate)  
'31 - accelerate + handbrake  
'32 - accelerate very strong  
Seems to be this:  
Works on NPCs, but overrides their current task. If inside a task sequence (and not being the last task), "time" will work, otherwise the task will be performed forever until tasked with something else  
```
</summary>
	]]

native "TASK_WANDER_IN_AREA"
    hash "0xE054346CA3A0F315"
	jhash (0xC6981FB9)
	arguments {
		Ped "ped",
		float "x",
		float "y",
		float "z",
		float "radius",
		float "minimalLength",
		float "timeBetweenWalks",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
	]]

native "TASK_WANDER_STANDARD"
    hash "0xBB9CE077274F6A1B"
	jhash (0xAF59151A)
	arguments {
		Ped "ped",
		float "p1",
		int "p2",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
<summary>
```
Makes ped walk around the area.  
set p1 to 10.0f and p2 to 10 if you want the ped to walk anywhere without a duration.  
```
</summary>
	]]

native "TASK_WARP_PED_INTO_VEHICLE"
    hash "0x9A7D091411C5F684"
	jhash (0x65D4A35D)
	arguments {
		Ped "ped",
		Vehicle "vehicle",
		int "seat",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
<summary>
```
Seat Numbers  
-------------------------------  
Driver = -1  
Any = -2  
Left-Rear = 1  
Right-Front = 0  
Right-Rear = 2  
Extra seats = 3-14(This may differ from vehicle type e.g. Firetruck Rear Stand, Ambulance Rear)  
```
</summary>
	]]

native "TASK_WRITHE"
    hash "0xCDDC2B77CE54AC6E"
	jhash (0x0FDC54FC)
	arguments {
		Ped "ped",
		Ped "target",
		int "time",
		int "p3",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
<summary>
```
EX: Function.Call(Ped1, Ped2, Time, 0);  
The last parameter is always 0 for some reason I do not know. The first parameter is the pedestrian who will writhe to the pedestrian in the other parameter. The third paremeter is how long until the Writhe task ends. When the task ends, the ped will die. If set to -1, he will not die automatically, and the task will continue until something causes it to end. This can be being touched by an entity, being shot, explosion, going into ragdoll, having task cleared. Anything that ends the current task will kill the ped at this point.  
MulleDK19: Third parameter does not appear to be time. The last parameter is not implemented (It's not used, regardless of value).  
```
</summary>
	]]

native "UNCUFF_PED"
    hash "0x67406F2C8F87FC4F"
	jhash (0xA23A1D61)
	arguments {
		Ped "ped",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
	]]

native "UPDATE_TASK_AIM_GUN_SCRIPTED_TARGET"
    hash "0x9724FB59A3E72AD0"
	jhash (0x67E73525)
	arguments {
		Ped "p0",
		Ped "p1",
		float "p2",
		float "p3",
		float "p4",
		BOOL "p5",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
	]]

native "UPDATE_TASK_HANDS_UP_DURATION"
    hash "0xA98FCAFD7893C834"
	jhash (0x3AA39BE9)
	arguments {
		Ped "ped",
		int "duration",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
	]]

native "UPDATE_TASK_SWEEP_AIM_ENTITY"
    hash "0xE4973DBDBE6E44B3"
	jhash (0xF65F0F4F)
	arguments {
		Ped "ped",
		Entity "entity",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
	]]

native "UPDATE_TASK_SWEEP_AIM_POSITION"
    hash "0xBB106883F5201FC4"
	jhash (0x6345EC80)
	arguments {
		Any "p0",
		float "p1",
		float "p2",
		float "p3",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
	]]

native "USE_WAYPOINT_RECORDING_AS_ASSISTED_MOVEMENT_ROUTE"
    hash "0x5A353B8E6B1095B5"
	jhash (0x4DFD5FEC)
	arguments {
		AnyPtr "p0",
		BOOL "p1",
		float "p2",
		float "p3",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
	]]

native "VEHICLE_WAYPOINT_PLAYBACK_OVERRIDE_SPEED"
    hash "0x121F0593E0A431D7"
	jhash (0xBE1E7BB4)
	arguments {
		Any "p0",
		float "p1",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
	]]

native "VEHICLE_WAYPOINT_PLAYBACK_PAUSE"
    hash "0x8A4E6AC373666BC5"
	jhash (0x7C00B415)
	arguments {
		Any "p0",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
	]]

native "VEHICLE_WAYPOINT_PLAYBACK_RESUME"
    hash "0xDC04FCAA7839D492"
	jhash (0xBEB14C82)
	arguments {
		Any "p0",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
	]]

native "VEHICLE_WAYPOINT_PLAYBACK_USE_DEFAULT_SPEED"
    hash "0x5CEB25A7D2848963"
	jhash (0x923C3AA4)
	arguments {
		Any "p0",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
	]]

native "WAYPOINT_PLAYBACK_GET_IS_PAUSED"
    hash "0x701375A7D43F01CB"
	jhash (0xA6BB5717)
	arguments {
		Any "p0",
	}
	ns "BRAIN"
	returns "BOOL"
	doc [[!
	]]

native "WAYPOINT_PLAYBACK_PAUSE"
    hash "0x0F342546AA06FED5"
	jhash (0xFE39ECF8)
	arguments {
		Any "p0",
		BOOL "p1",
		BOOL "p2",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
	]]

native "WAYPOINT_PLAYBACK_OVERRIDE_SPEED"
    hash "0x7D7D2B47FA788E85"
	jhash (0x23E6BA96)
	arguments {
		Any "p0",
		float "p1",
		BOOL "p2",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
	]]

native "WAYPOINT_PLAYBACK_RESUME"
    hash "0x244F70C84C547D2D"
	jhash (0x50F392EF)
	arguments {
		Any "p0",
		BOOL "p1",
		Any "p2",
		Any "p3",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
	]]

native "WAYPOINT_PLAYBACK_START_AIMING_AT_PED"
    hash "0x20E330937C399D29"
	jhash (0x75E60CF6)
	arguments {
		Any "p0",
		Any "p1",
		BOOL "p2",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
	]]

native "WAYPOINT_PLAYBACK_START_AIMING_AT_COORD"
    hash "0x8968400D900ED8B3"
	jhash (0xF120A34E)
	arguments {
		Any "p0",
		float "p1",
		float "p2",
		float "p3",
		BOOL "p4",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
	]]

native "WAYPOINT_PLAYBACK_START_SHOOTING_AT_COORD"
    hash "0x057A25CFCC9DB671"
	jhash (0xCDDB44D5)
	arguments {
		Any "p0",
		float "p1",
		float "p2",
		float "p3",
		BOOL "p4",
		Any "p5",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
	]]

native "WAYPOINT_PLAYBACK_STOP_AIMING_OR_SHOOTING"
    hash "0x47EFA040EBB8E2EA"
	jhash (0x6D7CF40C)
	arguments {
		Any "p0",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
	]]

native "WAYPOINT_PLAYBACK_USE_DEFAULT_SPEED"
    hash "0x6599D834B12D0800"
	jhash (0x1BBB2CAC)
	arguments {
		Any "p0",
	}
	ns "BRAIN"
	returns "void"
	doc [[!
	]]

native "WAYPOINT_RECORDING_GET_CLOSEST_WAYPOINT"
    hash "0xB629A298081F876F"
	jhash (0xC4CD35AF)
	arguments {
		charPtr "name",
		float "x",
		float "y",
		float "z",
		intPtr "point",
	}
	ns "BRAIN"
	returns "BOOL"
	doc [[!
<summary>
```
For a full list, see here: pastebin.com/Tp0XpBMN  
For a full list of the points, see here: goo.gl/wIH0vn  
```
</summary>
	]]

native "WAYPOINT_RECORDING_GET_NUM_POINTS"
    hash "0x5343532C01A07234"
	jhash (0xF5F9B71E)
	arguments {
		charPtr "name",
		intPtr "points",
	}
	ns "BRAIN"
	returns "BOOL"
	doc [[!
<summary>
```
For a full list, see here: pastebin.com/Tp0XpBMN  
For a full list of the points, see here: goo.gl/wIH0vn  
```
</summary>
	]]

native "WAYPOINT_RECORDING_GET_COORD"
    hash "0x2FB897405C90B361"
	jhash (0x19266913)
	arguments {
		charPtr "name",
		int "point",
		Vector3Ptr "coord",
	}
	ns "BRAIN"
	returns "BOOL"
	doc [[!
<summary>
```
For a full list, see here: pastebin.com/Tp0XpBMN  
For a full list of the points, see here: goo.gl/wIH0vn  
```
</summary>
	]]

native "WAYPOINT_RECORDING_GET_SPEED_AT_POINT"
    hash "0x005622AEBC33ACA9"
	jhash (0xC765633A)
	arguments {
		charPtr "name",
		int "point",
	}
	ns "BRAIN"
	returns "float"
	doc [[!
	]]

native "_ANIMATE_GAMEPLAY_CAM_ZOOM"
    hash "0xDF2E1F7742402E81"
	jhash (0x77340650)
	arguments {
		float "p0",
		float "distance",
	}
	ns "CAM"
	returns "void"
	doc [[!
<summary>
```
Seems to animate the gameplay camera zoom.  
Eg. _ANIMATE_GAMEPLAY_CAM_ZOOM(1f, 1000f);  
will animate the camera zooming in from 1000 meters away.  
Game scripts use it like this:  
// Setting this to 1 prevents V key from changing zoom  
PLAYER::SET_PLAYER_FORCED_ZOOM(PLAYER::PLAYER_ID(), 1);  
// These restrict how far you can move cam up/down left/right  
CAM::_CLAMP_GAMEPLAY_CAM_YAW(-20f, 50f);  
CAM::_CLAMP_GAMEPLAY_CAM_PITCH(-60f, 0f);  
CAM::_ANIMATE_GAMEPLAY_CAM_ZOOM(1f, 1f);  
```
</summary>
	]]

native "ANIMATED_SHAKE_CAM"
    hash "0xA2746EEAE3E577CD"
	jhash (0xE1168767)
	arguments {
		Cam "cam",
		charPtr "p1",
		charPtr "p2",
		charPtr "p3",
		float "amplitude",
	}
	ns "CAM"
	returns "void"
	doc [[!
<summary>
```
Example from michael2 script.  
CAM::ANIMATED_SHAKE_CAM(l_5069, "shake_cam_all@", "light", "", 1f);  
```
</summary>
	]]

native "ATTACH_CAM_TO_PED_BONE"
    hash "0x61A3DBA14AB7F411"
	jhash (0x506BB35C)
	arguments {
		Cam "cam",
		Ped "ped",
		int "boneIndex",
		float "x",
		float "y",
		float "z",
		BOOL "heading",
	}
	ns "CAM"
	returns "void"
	doc [[!
	]]

native "ADD_CAM_SPLINE_NODE"
    hash "0x8609C75EC438FB3B"
	jhash (0xAD3C7EAA)
	arguments {
		Cam "camera",
		float "x",
		float "y",
		float "z",
		float "xRot",
		float "yRot",
		float "zRot",
		int "length",
		int "p8",
		int "transitionType",
	}
	ns "CAM"
	returns "void"
	doc [[!
<summary>
```
I filled p1-p6 (the floats) as they are as other natives with 6 floats in a row are similar and I see no other method. So if a test from anyone proves them wrong please correct.  
p7 (length) determines the length of the spline, affects camera path and duration of transition between previous node and this one  
p8 big values ~100 will slow down the camera movement before reaching this node  
p9 != 0 seems to override the rotation/pitch (bool?)  
```
</summary>
	]]

native "_CLAMP_GAMEPLAY_CAM_PITCH"
    hash "0xA516C198B7DCA1E1"
	jhash (0xFA3A16E7)
	arguments {
		float "minimum",
		float "maximum",
	}
	ns "CAM"
	returns "Any"
	doc [[!
<summary>
```
minimum: Degrees between -90f and 90f.  
maximum: Degrees between -90f and 90f.  
Clamps the gameplay camera's current pitch.  
Eg. _CLAMP_GAMEPLAY_CAM_PITCH(0.0f, 0.0f) will set the vertical angle directly behind the player.  
```
</summary>
	]]

native "ATTACH_CAM_TO_ENTITY"
    hash "0xFEDB7D269E8C60E3"
	jhash (0xAD7C45F6)
	arguments {
		Cam "cam",
		Entity "entity",
		float "xOffset",
		float "yOffset",
		float "zOffset",
		BOOL "isRelative",
	}
	ns "CAM"
	returns "void"
	doc [[!
<summary>
```
Last param determines if its relative to the Entity  
```
</summary>
	]]

native "CREATE_CAM_WITH_PARAMS"
    hash "0xB51194800B257161"
	jhash (0x23B02F15)
	arguments {
		charPtr "camName",
		float "posX",
		float "posY",
		float "posZ",
		float "rotX",
		float "rotY",
		float "rotZ",
		float "fov",
		BOOL "p8",
		int "p9",
	}
	ns "CAM"
	returns "Cam"
	doc [[!
<summary>
```
camName is always set to "DEFAULT_SCRIPTED_CAMERA" in Rockstar's scripts.  
------------  
Camera names found in the b617d scripts:  
"DEFAULT_ANIMATED_CAMERA"  
"DEFAULT_SCRIPTED_CAMERA"  
"DEFAULT_SCRIPTED_FLY_CAMERA"  
"DEFAULT_SPLINE_CAMERA"  
------------  
Side Note: It seems p8 is basically to represent what would be the bool p1 within CREATE_CAM native. As well as the p9 since it's always 2 in scripts seems to represent what would be the last param within SET_CAM_ROT native which normally would be 2.  
```
</summary>
	]]

native "_ATTACH_CAM_TO_VEHICLE_BONE"
    hash "0x8DB3F12A02CAEF72"
	arguments {
		Cam "cam",
		Vehicle "vehicle",
		int "boneIndex",
		BOOL "relativeRotation",
		float "rotX",
		float "rotY",
		float "rotZ",
		float "offX",
		float "offY",
		float "offZ",
		BOOL "fixedDirection",
	}
	alias "0x8DB3F12A02CAEF72"
	ns "CAM"
	returns "void"
	doc [[!
<summary>
This native works with vehicles only.
Bone indexes are usually given by this native [GET_ENTITY_BONE_INDEX_BY_NAME](#_0xFB71170B7E76ACBA).
</summary>
<param name="cam">The camera handle.</param>
<param name="vehicle">The vehicle handle.</param>
<param name="relativeRotation">Whether or not the camera rotation will relative the vehicle rotation.</param>
<param name="rotX">The X rotation.</param>
<param name="rotY">The Y rotation.</param>
<param name="rotZ">The Z rotation.</param>
<param name="offX">The X offset direction.</param>
<param name="offY">The Y offset direction.</param>
<param name="offZ">The Z offset direction.</param>
<param name="fixedDirection">Whether or not the camera direction will relative to the vehicle direction.</param>
	]]

native "CREATE_CAMERA"
    hash "0x5E3CF89C6BCCA67D"
	jhash (0x5D6739AE)
	arguments {
		Hash "camHash",
		BOOL "p1",
	}
	ns "CAM"
	returns "Cam"
	doc [[!
	]]

native "_CLAMP_GAMEPLAY_CAM_YAW"
    hash "0x8F993D26E0CA5E8E"
	jhash (0x749909AC)
	arguments {
		float "minimum",
		float "maximum",
	}
	ns "CAM"
	returns "Any"
	doc [[!
<summary>
```
minimum: Degrees between -180f and 180f.  
maximum: Degrees between -180f and 180f.  
Clamps the gameplay camera's current yaw.  
Eg. _CLAMP_GAMEPLAY_CAM_YAW(0.0f, 0.0f) will set the horizontal angle directly behind the player.  
```
</summary>
	]]

native "CREATE_CINEMATIC_SHOT"
    hash "0x741B0129D4560F31"
	jhash (0xAC494E35)
	arguments {
		Any "p0",
		int "p1",
		Any "p2",
		Entity "entity",
	}
	ns "CAM"
	returns "void"
	doc [[!
	]]

native "CREATE_CAM"
    hash "0xC3981DCE61D9E13F"
	jhash (0xE9BF2A7D)
	arguments {
		charPtr "Gippo",
		BOOL "p1",
	}
	ns "CAM"
	returns "Cam"
	doc [[!
<summary>
```
"DEFAULT_SCRIPTED_CAMERA"  
"DEFAULT_ANIMATED_CAMERA"  
"DEFAULT_SPLINE_CAMERA"  
"DEFAULT_SCRIPTED_FLY_CAMERA"  
"TIMED_SPLINE_CAMERA"  
```
</summary>
	]]

native "DESTROY_ALL_CAMS"
    hash "0x8E5FB15663F79120"
	jhash (0x10C151CE)
	arguments {
		BOOL "thisScriptCheck",
	}
	ns "CAM"
	returns "void"
	doc [[!
<summary>
```
BOOL param indicates whether the cam should be destroyed if it belongs to the calling script.  
```
</summary>
	]]

native "DETACH_CAM"
    hash "0xA2FABBE87F4BAD82"
	jhash (0xF4FBF14A)
	arguments {
		Cam "cam",
	}
	ns "CAM"
	returns "void"
	doc [[!
	]]

native "CREATE_CAMERA_WITH_PARAMS"
    hash "0x6ABFA3E16460F22D"
	jhash (0x0688BE9A)
	arguments {
		Hash "camHash",
		float "posX",
		float "posY",
		float "posZ",
		float "rotX",
		float "rotY",
		float "rotZ",
		float "fov",
		BOOL "p8",
		Any "p9",
	}
	ns "CAM"
	returns "Cam"
	doc [[!
<summary>
```
CAM::_GET_GAMEPLAY_CAM_COORDS can be used instead of posX,Y,Z  
CAM::_GET_GAMEPLAY_CAM_ROT can be used instead of rotX,Y,Z  
CAM::_80EC114669DAEFF4() can be used instead of p7 (Possible p7 is FOV parameter. )  
p8 ???  
p9 uses 2 by default  
```
</summary>
	]]

native "DISABLE_AIM_CAM_THIS_UPDATE"
    hash "0x1A31FE0049E542F6"
	jhash (0x1BAA7182)
	alias "0x1A31FE0049E542F6"
	ns "CAM"
	returns "void"
	doc [[!
	]]

native "CUSTOM_MENU_COORDINATES"
    hash "0x487A82C650EB7799"
	jhash (0xA6E73135)
	arguments {
		float "p0",
	}
	alias "0x487A82C650EB7799"
	ns "CAM"
	returns "void"
	doc [[!
<summary>
```
some camera effect that is used in the drunk-cheat, and turned off (by setting it to 0.0) along with the shaking effects once the drunk cheat is disabled.  
```
</summary>
	]]

native "_DISABLE_VEHICLE_FIRST_PERSON_CAM_THIS_FRAME"
    hash "0xADFF1B2A555F5FBA"
	jhash (0x5AC6DAC9)
	ns "CAM"
	returns "void"
	doc [[!
	]]

native "DESTROY_CAM"
    hash "0x865908C81A2C22E9"
	jhash (0xC39302BD)
	arguments {
		Cam "cam",
		BOOL "thisScriptCheck",
	}
	ns "CAM"
	returns "void"
	doc [[!
<summary>
```
BOOL param indicates whether the cam should be destroyed if it belongs to the calling script.  
```
</summary>
	]]

native "DO_SCREEN_FADE_OUT"
    hash "0x891B5B39AC6302AF"
	jhash (0x89D01805)
	arguments {
		int "duration",
	}
	ns "CAM"
	returns "void"
	doc [[!
<summary>
```
Fades the screen out.  
duration: The time the fade should take, in milliseconds.  
```
</summary>
	]]

native "_DISABLE_FIRST_PERSON_CAM_THIS_FRAME"
    hash "0xDE2EF5DA284CC8DF"
	ns "CAM"
	returns "void"
	doc [[!
<summary>
```
Disables first person camera for the current frame.  
Found in decompiled scripts:  
GRAPHICS::DRAW_DEBUG_TEXT_2D("Disabling First Person Cam", 0.5, 0.8, 0.0, 0, 0, 255, 255);  
CAM::_DE2EF5DA284CC8DF();  
```
</summary>
	]]

native "DOES_CAM_EXIST"
    hash "0xA7A932170592B50E"
	jhash (0x1EF89DC0)
	arguments {
		Cam "cam",
	}
	ns "CAM"
	returns "BOOL"
	doc [[!
<summary>
```
Returns whether or not the passed camera handle exists.  
```
</summary>
	]]

native "GET_CAM_ANIM_CURRENT_PHASE"
    hash "0xA10B2DB49E92A6B0"
	jhash (0x345F72D0)
	arguments {
		Cam "cam",
	}
	ns "CAM"
	returns "float"
	doc [[!
	]]

native "DO_SCREEN_FADE_IN"
    hash "0xD4E8E24955024033"
	jhash (0x66C1BDEE)
	arguments {
		int "duration",
	}
	ns "CAM"
	returns "void"
	doc [[!
<summary>
```
Fades the screen in.  
duration: The time the fade should take, in milliseconds.  
```
</summary>
	]]

native "GET_CAM_FAR_CLIP"
    hash "0xB60A9CFEB21CA6AA"
	jhash (0x09F119B8)
	arguments {
		Cam "cam",
	}
	ns "CAM"
	returns "float"
	doc [[!
	]]

native "_ENABLE_CROSSHAIR_THIS_FRAME"
    hash "0xEA7F0AD7E9BA676F"
	jhash (0xA61FF9AC)
	ns "CAM"
	returns "void"
	doc [[!
<summary>
```
Shows the crosshair even if it wouldn't show normally. Only works for one frame, so make sure to call it repeatedly.  
```
</summary>
	]]

native "GET_CAM_FOV"
    hash "0xC3330A45CCCDB26A"
	jhash (0xD6E9FCF5)
	arguments {
		Cam "cam",
	}
	ns "CAM"
	returns "float"
	doc [[!
	]]

native "GET_CAM_COORD"
    hash "0xBAC038F7459AE5AE"
	jhash (0x7C40F09C)
	arguments {
		Cam "cam",
	}
	ns "CAM"
	returns "Vector3"
	doc [[!
	]]

native "GET_CAM_ROT"
    hash "0x7D304C1C955E3E12"
	jhash (0xDAC84C9F)
	arguments {
		Cam "cam",
		int "rotationOrder",
	}
	ns "CAM"
	returns "Vector3"
	doc [[!
<summary>
```
The last parameter, as in other "ROT" methods, is usually 2.  
```
</summary>
	]]

native "GET_CAM_FAR_DOF"
    hash "0x255F8DAFD540D397"
	jhash (0x98C5CCE9)
	arguments {
		Cam "cam",
	}
	ns "CAM"
	returns "float"
	doc [[!
	]]

native "GET_CAM_SPLINE_NODE_PHASE"
    hash "0xD9D0E694C8282C96"
	jhash (0x7B9522F6)
	arguments {
		Cam "cam",
	}
	ns "CAM"
	returns "float"
	doc [[!
<summary>
```
I'm pretty sure the parameter is the camera as usual, but I am not certain so I'm going to leave it as is.  
```
</summary>
	]]

native "GET_CAM_NEAR_CLIP"
    hash "0xC520A34DAFBF24B1"
	jhash (0xCFCD35EE)
	arguments {
		Cam "cam",
	}
	ns "CAM"
	returns "float"
	doc [[!
	]]

native "GET_CAM_SPLINE_PHASE"
    hash "0xB5349E36C546509A"
	jhash (0x39784DD9)
	arguments {
		Cam "cam",
	}
	ns "CAM"
	returns "float"
	doc [[!
<summary>
```
Can use this with SET_CAM_SPLINE_PHASE to set the float it this native returns.  
(returns 1.0f when no nodes has been added, reached end of non existing spline)  
```
</summary>
	]]

native "GET_CAM_SPLINE_NODE_INDEX"
    hash "0xB22B17DF858716A6"
	jhash (0xF8AEB6BD)
	arguments {
		Cam "cam",
	}
	ns "CAM"
	returns "int"
	doc [[!
<summary>
```
I named the beginning from Any to BOOL as this native is used in an if statement as well.   
Big surprise it returns an int.  
```
</summary>
	]]

native "GET_FOLLOW_PED_CAM_ZOOM_LEVEL"
    hash "0x33E6C8EFD0CD93E9"
	jhash (0x57583DF1)
	ns "CAM"
	returns "int"
	doc [[!
	]]

native "GET_FOLLOW_PED_CAM_VIEW_MODE"
    hash "0x8D4D46230B2C353A"
	jhash (0xA65FF946)
	ns "CAM"
	returns "int"
	doc [[!
<summary>
```
Returns  
0 - Third Person Close  
1 - Third Person Mid  
2 - Third Person Far  
4 - First Person  
```
</summary>
	]]

native "GET_FOLLOW_VEHICLE_CAM_ZOOM_LEVEL"
    hash "0xEE82280AB767B690"
	jhash (0x8CD67DE3)
	ns "CAM"
	returns "int"
	doc [[!
	]]

native "GET_FOLLOW_VEHICLE_CAM_VIEW_MODE"
    hash "0xA4FF579AC0E3AAAE"
	jhash (0xA4B4DB03)
	ns "CAM"
	returns "int"
	doc [[!
<summary>
```
Returns the type of camera:  
0 - Third Person Close  
1 - Third Person Mid  
2 - Third Person Far  
4 - First Person  
```
</summary>
	]]

native "GET_GAMEPLAY_CAM_COORD"
    hash "0x14D6F5678D8F1B37"
	jhash (0x9388CF79)
	ns "CAM"
	returns "Vector3"
	doc [[!
	]]

native "_GET_GAMEPLAY_CAM_COORDS"
    hash "0xA200EB1EE790F448"
	jhash (0x9C84BDA0)
	ns "CAM"
	returns "Vector3"
	doc [[!
	]]

native "_GET_GAMEPLAY_CAM_FAR_CLIP"
    hash "0xDFC8CBC606FDB0FC"
	jhash (0x46CB3A49)
	alias "0xDFC8CBC606FDB0FC"
	ns "CAM"
	returns "float"
	doc [[!
<summary>
```
Gets the gameplay camera's far clipping plane.  
```
</summary>
	]]

native "_GET_GAMEPLAY_CAM_FAR_DOF"
    hash "0x9780F32BCAF72431"
	jhash (0xF24777CA)
	alias "0x9780F32BCAF72431"
	ns "CAM"
	returns "float"
	doc [[!
<summary>
```
Gets the gameplay camera's far depth of field distance.  
```
</summary>
	]]

native "_GET_GAMEPLAY_CAM_NEAR_DOF"
    hash "0xA03502FC581F7D9B"
	jhash (0x19297A7A)
	alias "0xA03502FC581F7D9B"
	ns "CAM"
	returns "float"
	doc [[!
<summary>
```
Gets the gameplay camera's near depth of field distance.  
```
</summary>
	]]

native "GET_GAMEPLAY_CAM_FOV"
    hash "0x65019750A0324133"
	jhash (0x4D6B3BFA)
	ns "CAM"
	returns "float"
	doc [[!
	]]

native "GET_GAMEPLAY_CAM_RELATIVE_PITCH"
    hash "0x3A6867B4845BEDA2"
	jhash (0xFC5A4946)
	ns "CAM"
	returns "float"
	doc [[!
	]]

native "_GET_GAMEPLAY_CAM_ROT_2"
    hash "0x5B4E4C817FCC2DFB"
	jhash (0x1FFBEFC5)
	arguments {
		int "rotationOrder",
	}
	ns "CAM"
	returns "Vector3"
	doc [[!
<summary>
```
p0 seems to consistently be 2 across scripts  
Function is called faily often by CAM::CREATE_CAM_WITH_PARAMS  
```
</summary>
	]]

native "GET_GAMEPLAY_CAM_RELATIVE_HEADING"
    hash "0x743607648ADD4587"
	jhash (0xCAF839C2)
	ns "CAM"
	returns "float"
	doc [[!
	]]

native "GET_IS_MULTIPLAYER_BRIEF"
    hash "0xE3433EADAAF7EE40"
	jhash (0x2F0CE859)
	arguments {
		BOOL "p0",
	}
	ns "CAM"
	returns "void"
	doc [[!
<summary>
```
Hash collision  
```
</summary>
	]]

native "GET_GAMEPLAY_CAM_ROT"
    hash "0x837765A25378F0BB"
	jhash (0x13A010B5)
	arguments {
		int "rotationOrder",
	}
	ns "CAM"
	returns "Vector3"
	doc [[!
<summary>
```
p0 dosen't seem to change much, I tried it with 0, 1, 2:  
0-Pitch(X): -70.000092  
0-Roll(Y): -0.000001  
0-Yaw(Z): -43.886459  
1-Pitch(X): -70.000092  
1-Roll(Y): -0.000001  
1-Yaw(Z): -43.886463  
2-Pitch(X): -70.000092  
2-Roll(Y): -0.000002  
2-Yaw(Z): -43.886467  
```
</summary>
	]]

native "INVALIDATE_IDLE_CAM"
    hash "0xF4F2C0D4EE209E20"
	jhash (0xD75CDD75)
	alias "0xF4F2C0D4EE209E20"
	ns "CAM"
	returns "void"
	doc [[!
<summary>
Resets the idle camera timer. Calling this in a loop will disable the idle camera.
</summary>
	]]

native "_GET_GAMEPLAY_CAM_ZOOM"
    hash "0x7EC52CC40597D170"
	jhash (0x33951005)
	ns "CAM"
	returns "float"
	doc [[!
	]]

native "IS_CAM_ACTIVE"
    hash "0xDFB2B516207D3534"
	jhash (0x4B58F177)
	arguments {
		Cam "cam",
	}
	ns "CAM"
	returns "BOOL"
	doc [[!
<summary>
```
Returns whether or not the passed camera handle is active.  
```
</summary>
	]]

native "GET_RENDERING_CAM"
    hash "0x5234F9F10919EABA"
	jhash (0x0FCF4DF1)
	ns "CAM"
	returns "Cam"
	doc [[!
	]]

native "IS_CAM_PLAYING_ANIM"
    hash "0xC90621D8A0CEECF2"
	jhash (0xB998CB49)
	arguments {
		Cam "cam",
		charPtr "animName",
		charPtr "animDictionary",
	}
	ns "CAM"
	returns "BOOL"
	doc [[!
<summary>
```
Animations list : www.los-santos-multiplayer.com/dev.airdancer?cxt=anim  
```
</summary>
	]]

native "IS_AIM_CAM_ACTIVE"
    hash "0x68EDDA28A5976D07"
	jhash (0xC24B4F6F)
	ns "CAM"
	returns "BOOL"
	doc [[!
	]]

native "IS_CAM_SHAKING"
    hash "0x6B24BFE83A2BE47B"
	jhash (0x0961FD9B)
	arguments {
		Cam "cam",
	}
	ns "CAM"
	returns "BOOL"
	doc [[!
	]]

native "IS_CAM_SPLINE_PAUSED"
    hash "0x0290F35C0AD97864"
	jhash (0x60B34FF5)
	arguments {
		Any "p0",
	}
	ns "CAM"
	returns "BOOL"
	doc [[!
	]]

native "IS_CAM_INTERPOLATING"
    hash "0x036F97C908C2B52C"
	jhash (0x7159CB5D)
	arguments {
		Cam "cam",
	}
	ns "CAM"
	returns "BOOL"
	doc [[!
	]]

native "IS_CAM_RENDERING"
    hash "0x02EC0AF5C5A49B7A"
	jhash (0x6EC6B5B2)
	arguments {
		Cam "cam",
	}
	ns "CAM"
	returns "BOOL"
	doc [[!
	]]

native "IS_CINEMATIC_CAM_SHAKING"
    hash "0xBBC08F6B4CB8FF0A"
	jhash (0x8376D939)
	ns "CAM"
	returns "BOOL"
	doc [[!
	]]

native "IS_CINEMATIC_CAM_RENDERING"
    hash "0xB15162CB5826E9E8"
	jhash (0x80471AD9)
	ns "CAM"
	returns "BOOL"
	doc [[!
	]]

native "IS_FIRST_PERSON_AIM_CAM_ACTIVE"
    hash "0x5E346D934122613F"
	jhash (0xD6280468)
	ns "CAM"
	returns "BOOL"
	doc [[!
	]]

native "IS_FOLLOW_VEHICLE_CAM_ACTIVE"
    hash "0xCBBDE6D335D6D496"
	jhash (0x8DD49B77)
	ns "CAM"
	returns "BOOL"
	doc [[!
	]]

native "IS_CINEMATIC_SHOT_ACTIVE"
    hash "0xCC9F3371A7C28BC9"
	jhash (0xA4049042)
	arguments {
		Any "p0",
	}
	ns "CAM"
	returns "BOOL"
	doc [[!
	]]

native "IS_GAMEPLAY_CAM_LOOKING_BEHIND"
    hash "0x70FDA869F3317EA9"
	jhash (0x33C83F17)
	ns "CAM"
	returns "BOOL"
	doc [[!
	]]

native "IS_FOLLOW_PED_CAM_ACTIVE"
    hash "0xC6D3D26810C8E0F9"
	jhash (0x9F9E856C)
	ns "CAM"
	returns "BOOL"
	doc [[!
	]]

native "IS_GAMEPLAY_CAM_SHAKING"
    hash "0x016C090630DF1F89"
	jhash (0x3457D681)
	ns "CAM"
	returns "BOOL"
	doc [[!
	]]

native "_IS_IN_VEHICLE_CAM_DISABLED"
    hash "0x4F32C0D5A90A9B40"
	alias "0x4F32C0D5A90A9B40"
	ns "CAM"
	returns "BOOL"
	doc [[!
	]]

native "IS_GAMEPLAY_CAM_RENDERING"
    hash "0x39B5D1B10383F0C8"
	jhash (0x0EF276DA)
	ns "CAM"
	returns "BOOL"
	doc [[!
<summary>
```
Examples when this function will return 0 are:  
- During busted screen.  
- When player is coming out from a hospital.  
- When player is coming out from a police station.  
```
</summary>
	]]

native "IS_SCREEN_FADED_OUT"
    hash "0xB16FCE9DDC7BA182"
	jhash (0x9CAA05FA)
	ns "CAM"
	returns "BOOL"
	doc [[!
	]]

native "IS_GAMEPLAY_HINT_ACTIVE"
    hash "0xE520FF1AD2785B40"
	jhash (0xAD8DA205)
	ns "CAM"
	returns "BOOL"
	doc [[!
	]]

native "IS_SCREEN_FADED_IN"
    hash "0x5A859503B0C08678"
	jhash (0x4F37276D)
	ns "CAM"
	returns "BOOL"
	doc [[!
	]]

native "IS_SCREEN_FADING_OUT"
    hash "0x797AC7CB535BA28F"
	jhash (0x79275A57)
	ns "CAM"
	returns "BOOL"
	doc [[!
	]]

native "IS_SPHERE_VISIBLE"
    hash "0xE33D59DA70B58FDF"
	jhash (0xDD1329E2)
	arguments {
		float "x",
		float "y",
		float "z",
		float "radius",
	}
	ns "CAM"
	returns "BOOL"
	doc [[!
	]]

native "IS_SCREEN_FADING_IN"
    hash "0x5C544BC6C57AC575"
	jhash (0xC7C82800)
	ns "CAM"
	returns "BOOL"
	doc [[!
	]]

native "0x0225778816FDC28C"
    hash "0x0225778816FDC28C"
	jhash (0x1126E37C)
	arguments {
		float "p0",
	}
	ns "CAM"
	returns "void"
	doc [[!
<summary>
```
some camera effect that is (also) used in the drunk-cheat, and turned off (by setting it to 0.0) along with the shaking effects once the drunk cheat is disabled. Possibly a cinematic or script-cam version of _0x487A82C650EB7799  
```
</summary>
	]]

native "IS_SCRIPT_GLOBAL_SHAKING"
    hash "0xC912AF078AF19212"
	jhash (0x6AEFE6A5)
	alias "0xC912AF078AF19212"
	ns "CAM"
	returns "BOOL"
	doc [[!
<summary>
```
In drunk_controller.c4, sub_309  
if (CAM::_C912AF078AF19212()) {  
    CAM::_1C9D7949FA533490(0);  
}  
What does "IS_SCRIPT_GLOBAL_SHAKING" mean..? :/ Is this a hash collision?  
```
</summary>
	]]

native "0x0FB82563989CF4FB"
    hash "0x0FB82563989CF4FB"
	jhash (0xBA6C085B)
	arguments {
		Any "p0",
		Any "p1",
		Any "p2",
		Any "p3",
	}
	ns "CAM"
	returns "void"
	doc [[!
	]]

native "0x0A9F2A468B328E74"
    hash "0x0A9F2A468B328E74"
	jhash (0x30510511)
	arguments {
		Any "p0",
		Any "p1",
		Any "p2",
		Any "p3",
	}
	ns "CAM"
	returns "void"
	doc [[!
	]]

native "0x12DED8CA53D47EA5"
    hash "0x12DED8CA53D47EA5"
	jhash (0x067BA6F5)
	arguments {
		float "p0",
	}
	ns "CAM"
	returns "void"
	doc [[!
<summary>
```
Hardcoded to only work in multiplayer.  
```
</summary>
	]]

native "0x0AA27680A0BD43FA"
    hash "0x0AA27680A0BD43FA"
	ns "CAM"
	returns "void"
	doc [[!
	]]

native "0x162F9D995753DC19"
    hash "0x162F9D995753DC19"
	jhash (0x38992E83)
	ns "CAM"
	returns "float"
	doc [[!
<summary>
```
gets some camera far clip  
```
</summary>
	]]

native "0x19CAFA3C87F7C2FF"
    hash "0x19CAFA3C87F7C2FF"
	ns "CAM"
	returns "Any"
	doc [[!
<summary>
```
Seems to return the current type of view  
example: // checks if you're currently in first person  
if ((CAM::_EE778F8C7E1142E2(CAM::_19CAFA3C87F7C2FF()) == 4) && (!__463_$28ED382849B17AFC())) {  
    UI::_FDEC055AB549E328();  
    UI::_SET_NOTIFICATION_TEXT_ENTRY("REC_FEED_WAR");  
    l_CE[0/*1*/] = UI::_DRAW_NOTIFICATION(0, 1);  
}  
```
</summary>
	]]

native "0x11FA5D3479C7DD47"
    hash "0x11FA5D3479C7DD47"
	arguments {
		Any "p0",
	}
	ns "CAM"
	returns "void"
	doc [[!
	]]

native "0x17FCA7199A530203"
    hash "0x17FCA7199A530203"
	ns "CAM"
	returns "Any"
	doc [[!
	]]

native "0x21E253A7F8DA5DFB"
    hash "0x21E253A7F8DA5DFB"
	arguments {
		charPtr "vehicleName",
	}
	ns "CAM"
	returns "void"
	doc [[!
<summary>
```
From b617 scripts:  
CAM::_21E253A7F8DA5DFB("DINGHY");  
CAM::_21E253A7F8DA5DFB("ISSI2");  
CAM::_21E253A7F8DA5DFB("SPEEDO");  
```
</summary>
	]]

native "0x1F2300CB7FA7B7F6"
    hash "0x1F2300CB7FA7B7F6"
	jhash (0x6739AD55)
	ns "CAM"
	returns "Any"
	doc [[!
	]]

native "0x247ACBC4ABBC9D1C"
    hash "0x247ACBC4ABBC9D1C"
	arguments {
		BOOL "p0",
	}
	ns "CAM"
	returns "void"
	doc [[!
	]]

native "0x271017B9BA825366"
    hash "0x271017B9BA825366"
	jhash (0x43220969)
	arguments {
		Any "p0",
		BOOL "p1",
	}
	ns "CAM"
	returns "void"
	doc [[!
	]]

native "0x26903D9CD1175F2C"
    hash "0x26903D9CD1175F2C"
	jhash (0xACADF916)
	arguments {
		Any "p0",
		Any "p1",
	}
	ns "CAM"
	returns "int"
	doc [[!
	]]

native "0x2AED6301F67007D5"
    hash "0x2AED6301F67007D5"
	jhash (0x2701A9AD)
	arguments {
		Entity "entity",
	}
	ns "CAM"
	returns "void"
	doc [[!
<summary>
```
if (ENTITY::DOES_ENTITY_EXIST(l_228)) {  
CAM::_2AED6301F67007D5(l_228);  
```
</summary>
	]]

native "0x271401846BD26E92"
    hash "0x271401846BD26E92"
	jhash (0x8DC53629)
	arguments {
		BOOL "p0",
		BOOL "p1",
	}
	ns "CAM"
	returns "void"
	doc [[!
	]]

native "0x2F7F2B26DD3F18EE"
    hash "0x2F7F2B26DD3F18EE"
	jhash (0x2F29F0D5)
	arguments {
		float "p0",
		float "p1",
	}
	ns "CAM"
	returns "void"
	doc [[!
	]]

native "0x4008EDF7D6E48175"
    hash "0x4008EDF7D6E48175"
	jhash (0xD1EEBC45)
	arguments {
		BOOL "p0",
	}
	ns "CAM"
	returns "void"
	doc [[!
	]]

native "0x2A2173E46DAECD12"
    hash "0x2A2173E46DAECD12"
	jhash (0x1DEBCB45)
	arguments {
		Any "p0",
		Any "p1",
	}
	ns "CAM"
	returns "void"
	doc [[!
	]]

native "0x47B595D60664CFFA"
    hash "0x47B595D60664CFFA"
	arguments {
		Any "p0",
		Any "p1",
	}
	ns "CAM"
	returns "void"
	doc [[!
	]]

native "0x3044240D2E0FA842"
    hash "0x3044240D2E0FA842"
	jhash (0xC0B00C20)
	ns "CAM"
	returns "BOOL"
	doc [[!
	]]

native "0x4879E4FE39074CDF"
    hash "0x4879E4FE39074CDF"
	ns "CAM"
	returns "Any"
	doc [[!
	]]

native "0x469F2ECDEC046337"
    hash "0x469F2ECDEC046337"
	arguments {
		BOOL "p0",
	}
	ns "CAM"
	returns "void"
	doc [[!
	]]

native "0x503F5920162365B2"
    hash "0x503F5920162365B2"
	jhash (0x56F9ED27)
	arguments {
		Any "p0",
		float "p1",
		float "p2",
		float "p3",
	}
	ns "CAM"
	returns "void"
	doc [[!
	]]

native "0x48608C3464F58AB4"
    hash "0x48608C3464F58AB4"
	arguments {
		Any "p0",
		Any "p1",
		Any "p2",
	}
	ns "CAM"
	returns "void"
	doc [[!
	]]

native "0x59424BD75174C9B1"
    hash "0x59424BD75174C9B1"
	ns "CAM"
	returns "void"
	doc [[!
	]]

native "0x49482F9FCD825AAA"
    hash "0x49482F9FCD825AAA"
	jhash (0xC4736ED3)
	arguments {
		Entity "entity",
	}
	ns "CAM"
	returns "void"
	doc [[!
	]]

native "0x5C48A1D6E3B33179"
    hash "0x5C48A1D6E3B33179"
	jhash (0xDA931D65)
	arguments {
		Any "p0",
	}
	ns "CAM"
	returns "BOOL"
	doc [[!
	]]

native "0x5A43C76F7FC7BA5F"
    hash "0x5A43C76F7FC7BA5F"
	jhash (0xE206C450)
	ns "CAM"
	returns "void"
	doc [[!
	]]

native "0x5F35F6732C3FBBA0"
    hash "0x5F35F6732C3FBBA0"
	jhash (0x23E3F106)
	arguments {
		Any "p0",
	}
	ns "CAM"
	returns "float"
	doc [[!
	]]

native "0x5C41E6BABC9E2112"
    hash "0x5C41E6BABC9E2112"
	arguments {
		Any "p0",
	}
	ns "CAM"
	returns "void"
	doc [[!
	]]

native "0x609278246A29CA34"
    hash "0x609278246A29CA34"
	jhash (0xB4737F03)
	arguments {
		Any "p0",
		Any "p1",
		Any "p2",
	}
	ns "CAM"
	returns "void"
	doc [[!
	]]

native "0x5D7B620DAE436138"
    hash "0x5D7B620DAE436138"
	jhash (0xFC7464A0)
	arguments {
		float "p0",
	}
	ns "CAM"
	returns "void"
	doc [[!
	]]

native "0x62ECFCFDEE7885D6"
    hash "0x62ECFCFDEE7885D6"
	jhash (0x837F8581)
	ns "CAM"
	returns "void"
	doc [[!
	]]

native "0x62374889A4D59F72"
    hash "0x62374889A4D59F72"
	ns "CAM"
	returns "void"
	doc [[!
	]]

native "0x661B5C8654ADD825"
    hash "0x661B5C8654ADD825"
	jhash (0xE1A0B2F1)
	arguments {
		Any "p0",
		BOOL "p1",
	}
	ns "CAM"
	returns "void"
	doc [[!
	]]

native "0x6493CF69859B116A"
    hash "0x6493CF69859B116A"
	ns "CAM"
	returns "void"
	doc [[!
	]]

native "0x705A276EBFF3133D"
    hash "0x705A276EBFF3133D"
	jhash (0x60C23785)
	ns "CAM"
	returns "BOOL"
	doc [[!
	]]

native "0x70894BD0915C5BCA"
    hash "0x70894BD0915C5BCA"
	jhash (0x9F4AF763)
	arguments {
		float "p0",
	}
	ns "CAM"
	returns "Any"
	doc [[!
	]]

native "0x7B8A361C1813FBEF"
    hash "0x7B8A361C1813FBEF"
	ns "CAM"
	returns "void"
	doc [[!
	]]

native "0x74BD83EA840F6BC9"
    hash "0x74BD83EA840F6BC9"
	jhash (0x8F320DE4)
	ns "CAM"
	returns "BOOL"
	doc [[!
	]]

native "0x80EC114669DAEFF4"
    hash "0x80EC114669DAEFF4"
	jhash (0x721B763B)
	ns "CAM"
	returns "float"
	doc [[!
<summary>
```
gets some camera fov  
```
</summary>
	]]

native "0x7BF1A54AE67AC070"
    hash "0x7BF1A54AE67AC070"
	jhash (0xC90B2DDC)
	arguments {
		Any "p0",
		Any "p1",
		Any "p2",
	}
	ns "CAM"
	returns "void"
	doc [[!
	]]

native "0x89215EC747DF244A"
    hash "0x89215EC747DF244A"
	jhash (0xFD99BE2B)
	arguments {
		float "p0",
		int "p1",
		float "p2",
		float "p3",
		float "p4",
		float "p5",
		float "p6",
		int "p7",
		int "p8",
	}
	ns "CAM"
	returns "Entity"
	doc [[!
	]]

native "0x83B8201ED82A9A2D"
    hash "0x83B8201ED82A9A2D"
	jhash (0x21D275DA)
	arguments {
		Any "p0",
		Any "p1",
		Any "p2",
		float "p3",
	}
	ns "CAM"
	returns "void"
	doc [[!
	]]

native "0x8BFCEB5EA1B161B6"
    hash "0x8BFCEB5EA1B161B6"
	ns "CAM"
	returns "Any"
	doc [[!
	]]

native "0x8BBACBF51DA047A8"
    hash "0x8BBACBF51DA047A8"
	jhash (0x7D3007A2)
	arguments {
		Any "p0",
	}
	ns "CAM"
	returns "void"
	doc [[!
	]]

native "0x9E4CFFF989258472"
    hash "0x9E4CFFF989258472"
	jhash (0x65DDE8AF)
	ns "CAM"
	returns "void"
	doc [[!
	]]

native "0x91EF6EE6419E5B97"
    hash "0x91EF6EE6419E5B97"
	jhash (0x9DB5D391)
	arguments {
		BOOL "p0",
	}
	ns "CAM"
	returns "void"
	doc [[!
	]]

native "0xA2767257A320FC82"
    hash "0xA2767257A320FC82"
	arguments {
		Any "p0",
		BOOL "p1",
	}
	ns "CAM"
	returns "void"
	doc [[!
	]]

native "0xA41BCD7213805AAC"
    hash "0xA41BCD7213805AAC"
	jhash (0xFBB85E02)
	arguments {
		BOOL "p0",
	}
	ns "CAM"
	returns "void"
	doc [[!
	]]

native "0xA6385DEB180F319F"
    hash "0xA6385DEB180F319F"
	jhash (0xA3BD9E94)
	arguments {
		Any "p0",
		Any "p1",
		float "p2",
	}
	ns "CAM"
	returns "void"
	doc [[!
	]]

native "0xBF72910D0F26F025"
    hash "0xBF72910D0F26F025"
	ns "CAM"
	returns "Any"
	doc [[!
	]]

native "0xC2EAE3FB8CDBED31"
    hash "0xC2EAE3FB8CDBED31"
	jhash (0xCB75BD9C)
	arguments {
		charPtr "p0",
		charPtr "p1",
		charPtr "p2",
		float "p3",
	}
	ns "CAM"
	returns "void"
	doc [[!
<summary>
```
CAM::_C2EAE3FB8CDBED31("SHAKE_CAM_medium", "medium", "", 0.5f);  
```
</summary>
	]]

native "0xC8B5C4A79CC18B94"
    hash "0xC8B5C4A79CC18B94"
	jhash (0x44473EFC)
	arguments {
		Cam "p0",
	}
	ns "CAM"
	returns "void"
	doc [[!
	]]

native "0xC8391C309684595A"
    hash "0xC8391C309684595A"
	jhash (0x1F9DE6E4)
	ns "CAM"
	returns "void"
	doc [[!
	]]

native "0xC92717EF615B6704"
    hash "0xC92717EF615B6704"
	jhash (0x3554AA0E)
	arguments {
		float "p0",
	}
	ns "CAM"
	returns "void"
	doc [[!
	]]

native "0xC91C6C55199308CA"
    hash "0xC91C6C55199308CA"
	jhash (0x60B345DE)
	arguments {
		Any "p0",
		float "p1",
		float "p2",
		float "p3",
	}
	ns "CAM"
	returns "void"
	doc [[!
	]]

native "0xCA9D2AA3E326D720"
    hash "0xCA9D2AA3E326D720"
	jhash (0x96A07066)
	ns "CAM"
	returns "BOOL"
	doc [[!
	]]

native "0xCED08CBE8EBB97C7"
    hash "0xCED08CBE8EBB97C7"
	jhash (0x68BA0730)
	arguments {
		float "p0",
		float "p1",
	}
	ns "CAM"
	returns "void"
	doc [[!
	]]

native "0xD1B0F412F109EA5D"
    hash "0xD1B0F412F109EA5D"
	jhash (0x15E141CE)
	arguments {
		Any "p0",
		Any "p1",
	}
	ns "CAM"
	returns "void"
	doc [[!
	]]

native "0xCCD078C2665D2973"
    hash "0xCCD078C2665D2973"
	jhash (0xCAFEE798)
	arguments {
		BOOL "p0",
	}
	ns "CAM"
	returns "void"
	doc [[!
<summary>
**This native does absolutely nothing, just a nullsub**
</summary>
	]]

native "0xD7360051C885628B"
    hash "0xD7360051C885628B"
	ns "CAM"
	returns "Any"
	doc [[!
	]]

native "0xD0082607100D7193"
    hash "0xD0082607100D7193"
	jhash (0x457AE195)
	ns "CAM"
	returns "float"
	doc [[!
<summary>
```
Maybe gets gameplay cam near clip?  
```
</summary>
	]]

native "0xDC9DA9E8789F5246"
    hash "0xDC9DA9E8789F5246"
	jhash (0x4938C82F)
	ns "CAM"
	returns "void"
	doc [[!
	]]

native "0xE111A7C0D200CBC5"
    hash "0xE111A7C0D200CBC5"
	arguments {
		Any "p0",
		float "p1",
	}
	ns "CAM"
	returns "void"
	doc [[!
	]]

native "0xD1F8363DFAD03848"
    hash "0xD1F8363DFAD03848"
	jhash (0x79472AE3)
	arguments {
		float "p0",
	}
	ns "CAM"
	returns "void"
	doc [[!
	]]

native "0xDB90C6CCA48940F1"
    hash "0xDB90C6CCA48940F1"
	jhash (0x20BFF6E5)
	arguments {
		BOOL "p0",
	}
	ns "CAM"
	returns "void"
	doc [[!
	]]

native "0xE827B9382CFB41BA"
    hash "0xE827B9382CFB41BA"
	arguments {
		Any "p0",
		Any "p1",
		Any "p2",
		Any "p3",
	}
	ns "CAM"
	returns "void"
	doc [[!
	]]

native "0xEAF0FA793D05C592"
    hash "0xEAF0FA793D05C592"
	ns "CAM"
	returns "Any"
	doc [[!
	]]

native "0xDD79DF9F4D26E1C9"
    hash "0xDD79DF9F4D26E1C9"
	jhash (0x6B0E9D57)
	ns "CAM"
	returns "void"
	doc [[!
	]]

native "0xE9EA16D6E54CDCA4"
    hash "0xE9EA16D6E54CDCA4"
	jhash (0x4B22C5CB)
	arguments {
		Vehicle "p0",
		int "p1",
	}
	ns "CAM"
	returns "Any"
	doc [[!
	]]

native "0xF4C8CF9E353AFECA"
    hash "0xF4C8CF9E353AFECA"
	jhash (0x2B0F05CD)
	arguments {
		charPtr "p0",
		float "p1",
	}
	ns "CAM"
	returns "void"
	doc [[!
<summary>
```
Something to do with shake:  
CAM::_F4C8CF9E353AFECA("HAND_SHAKE", 0.2);  
```
</summary>
	]]

native "0xF8BDBF3D573049A1"
    hash "0xF8BDBF3D573049A1"
	jhash (0x72E8CD3A)
	arguments {
		float "p0",
	}
	ns "CAM"
	returns "void"
	doc [[!
	]]

native "0xEE778F8C7E1142E2"
    hash "0xEE778F8C7E1142E2"
	jhash (0xF3B148A6)
	arguments {
		Any "p0",
	}
	ns "CAM"
	returns "Any"
	doc [[!
<summary>
```
interprets the result of CAM::_0x19CAFA3C87F7C2FF()  
example: // checks if you're currently in first person  
if ((CAM::_EE778F8C7E1142E2(CAM::_19CAFA3C87F7C2FF()) == 4) && (!__463_$28ED382849B17AFC())) {  
UI::_FDEC055AB549E328();  
UI::_SET_NOTIFICATION_TEXT_ENTRY("REC_FEED_WAR");  
l_CE[0/*1*/] = UI::_DRAW_NOTIFICATION(0, 1);  
}  
```
</summary>
	]]

native "0xFD3151CD37EA2245"
    hash "0xFD3151CD37EA2245"
	arguments {
		Any "p0",
	}
	ns "CAM"
	returns "void"
	doc [[!
	]]

native "0xF55E4046F6F831DC"
    hash "0xF55E4046F6F831DC"
	arguments {
		Any "p0",
		float "p1",
	}
	ns "CAM"
	returns "void"
	doc [[!
	]]

native "PLAY_CAM_ANIM"
    hash "0x9A2D0FB2E7852392"
	jhash (0xBCEFB87E)
	arguments {
		Cam "cam",
		charPtr "animName",
		charPtr "animDictionary",
		float "x",
		float "y",
		float "z",
		float "xRot",
		float "yRot",
		float "zRot",
		BOOL "p9",
		int "p10",
	}
	ns "CAM"
	returns "BOOL"
	doc [[!
<summary>
```
Atleast one time in a script for the zRot Rockstar uses GET_ENTITY_HEADING to help fill the parameter.  
p9 is unknown at this time.  
p10 throughout all the X360 Scripts is always 2.  
Animations list : www.los-santos-multiplayer.com/dev.airdancer?cxt=anim  
```
</summary>
	]]

native "OVERRIDE_CAM_SPLINE_MOTION_BLUR"
    hash "0x7DCF7C708D292D55"
	jhash (0x633179E6)
	arguments {
		Cam "cam",
		int "p1",
		float "p2",
		float "p3",
	}
	ns "CAM"
	returns "void"
	doc [[!
<summary>
```
Max value for p1 is 15.  
```
</summary>
	]]

native "PLAY_SYNCHRONIZED_CAM_ANIM"
    hash "0xE32EFE9AB4A9AA0C"
	jhash (0x9458459E)
	arguments {
		Any "p0",
		Any "p1",
		charPtr "animName",
		charPtr "animDictionary",
	}
	ns "CAM"
	returns "BOOL"
	doc [[!
<summary>
```
Examples:  
CAM::PLAY_SYNCHRONIZED_CAM_ANIM(l_2734, NETWORK::_02C40BF885C567B6(l_2739), "PLAYER_EXIT_L_CAM", "mp_doorbell");  
CAM::PLAY_SYNCHRONIZED_CAM_ANIM(l_F0D[7/*1*/], l_F4D[15/*1*/], "ah3b_attackheli_cam2", "missheistfbi3b_helicrash");  
Animations list : www.los-santos-multiplayer.com/dev.airdancer?cxt=anim  
```
</summary>
	]]

native "OVERRIDE_CAM_SPLINE_VELOCITY"
    hash "0x40B62FA033EB0346"
	jhash (0x326A17E2)
	arguments {
		Cam "cam",
		int "p1",
		float "p2",
		float "p3",
	}
	ns "CAM"
	returns "void"
	doc [[!
	]]

native "POINT_CAM_AT_ENTITY"
    hash "0x5640BFF86B16E8DC"
	jhash (0x7597A0F7)
	arguments {
		Cam "cam",
		Entity "entity",
		float "p2",
		float "p3",
		float "p4",
		BOOL "p5",
	}
	ns "CAM"
	returns "void"
	doc [[!
<summary>
```
p5 always seems to be 1 i.e TRUE  
```
</summary>
	]]

native "POINT_CAM_AT_COORD"
    hash "0xF75497BB865F0803"
	jhash (0x914BC21A)
	arguments {
		Cam "cam",
		float "x",
		float "y",
		float "z",
	}
	ns "CAM"
	returns "void"
	doc [[!
	]]

native "_RENDER_FIRST_PERSON_CAM"
    hash "0xC819F3CBB62BF692"
	jhash (0xD3C08183)
	arguments {
		BOOL "render",
		float "p1",
		int "p2",
	}
	alias "0xC819F3CBB62BF692"
	ns "CAM"
	returns "void"
	doc [[!
<summary>
```
This native makes the gameplay camera zoom into first person/third person with a special effect.  
For example, if you were first person in a mission and after the cutscene ends, the camera would then zoom into the first person camera view.  
if (CAM::GET_FOLLOW_PED_CAM_VIEW_MODE() != 4)  
           CAM::_C819F3CBB62BF692(1, 0, 3, 0)  
This makes the camera zoom in to first person.  
--------------------------------------------  
1st Param Options: 0 or 1 (Changes quit often, toggle?)  
2nd Param Options: 0, 0f, 1f, 3.8f, 10f, 20f (Mostly 0)   
3rd Param Options: 3, 2, 1 (Mostly 3);  
Note for the 2nd param 10f (offroad_race.c) and 3rd param 20f (range_modern.c) are the only times those 2 high floats are called.  
Note for the 3rd param 2 is only ever set in (franklin0.c), but it also sets it as 3. (0, 0, 3) ||(0, 0f, 2) || (0, 0, 3)  
```
</summary>
	]]

native "POINT_CAM_AT_PED_BONE"
    hash "0x68B2B5F33BA63C41"
	jhash (0x09F47049)
	arguments {
		Cam "cam",
		int "ped",
		int "boneIndex",
		float "x",
		float "y",
		float "z",
		BOOL "p6",
	}
	ns "CAM"
	returns "void"
	doc [[!
<summary>
```
Parameters p0-p5 seems correct. The bool p6 is unknown, but through every X360 script it's always 1. Please correct p0-p5 if any prove to be wrong.  
```
</summary>
	]]

native "RENDER_SCRIPT_CAMS"
    hash "0x07E5B515DB0636FC"
	jhash (0x74337969)
	arguments {
		BOOL "render",
		BOOL "ease",
		int "easeTime",
		BOOL "p3",
		BOOL "p4",
	}
	ns "CAM"
	returns "void"
	doc [[!
<summary>
```
ease - smooth transition between the camera's positions  
easeTime - Time in milliseconds for the transition to happen  
If you have created a script (rendering) camera, and want to go back to the   
character (gameplay) camera, call this native with render set to 0.  
Setting ease to 1 will smooth the transition.  
```
</summary>
	]]

native "SET_CAM_ACTIVE"
    hash "0x026FB97D0A425F84"
	jhash (0x064659C2)
	arguments {
		Cam "cam",
		BOOL "active",
	}
	ns "CAM"
	returns "void"
	doc [[!
<summary>
```
Set camera as active/inactive.  
```
</summary>
	]]

native "SET_CAM_AFFECTS_AIMING"
    hash "0x8C1DC7770C51DC8D"
	jhash (0x0C74F9AF)
	arguments {
		Cam "cam",
		BOOL "toggle",
	}
	ns "CAM"
	returns "void"
	doc [[!
<summary>
```
Allows you to aim and shoot at the direction the camera is facing.  
```
</summary>
	]]

native "SET_CAM_ACTIVE_WITH_INTERP"
    hash "0x9FBDA379383A52A4"
	jhash (0x7983E7F0)
	arguments {
		Cam "camTo",
		Cam "camFrom",
		int "duration",
		int "easeLocation",
		int "easeRotation",
	}
	ns "CAM"
	returns "void"
	doc [[!
<summary>
```
Previous declaration void SET_CAM_ACTIVE_WITH_INTERP(Cam camTo, Cam camFrom, int duration, BOOL easeLocation, BOOL easeRotation) is completely wrong. The last two params are integers not BOOLs...  
```
</summary>
	]]

native "SET_CAM_ANIM_CURRENT_PHASE"
    hash "0x4145A4C44FF3B5A6"
	jhash (0x3CB1D17F)
	arguments {
		Cam "cam",
		float "phase",
	}
	ns "CAM"
	returns "void"
	doc [[!
	]]

native "SET_CAM_COORD"
    hash "0x4D41783FB745E42E"
	jhash (0x7A8053AF)
	arguments {
		Cam "cam",
		float "posX",
		float "posY",
		float "posZ",
	}
	ns "CAM"
	returns "void"
	doc [[!
<summary>
```
Sets the position of the cam.  
```
</summary>
	]]

native "SET_CAM_DEBUG_NAME"
    hash "0x1B93E0107865DD40"
	jhash (0x9B00DF3F)
	arguments {
		Cam "camera",
		charPtr "name",
	}
	ns "CAM"
	returns "void"
	doc [[!
<summary>
```
NOTE: Debugging functions are not present in the retail version of the game.  
```
</summary>
	]]

native "_SET_CAM_DOF_FNUMBER_OF_LENS"
    hash "0x7DD234D6F3914C5B"
	arguments {
		Cam "camera",
		float "p1",
	}
	alias "0x7DD234D6F3914C5B"
	ns "CAM"
	returns "void"
	doc [[!
<summary>
```
This native has its name defined inside its codE  
```
</summary>
	]]

native "_SET_CAM_DOF_FOCUS_DISTANCE_BIAS"
    hash "0xC669EEA5D031B7DE"
	arguments {
		Cam "camera",
		float "p1",
	}
	alias "0xC669EEA5D031B7DE"
	ns "CAM"
	returns "void"
	doc [[!
<summary>
```
This native has a name defined inside its code  
```
</summary>
	]]

native "_SET_CAM_DOF_MAX_NEAR_IN_FOCUS_DISTANCE"
    hash "0xC3654A441402562D"
	arguments {
		Cam "camera",
		float "p1",
	}
	alias "0xC3654A441402562D"
	ns "CAM"
	returns "void"
	doc [[!
<summary>
```
This native has a name defined inside its code  
```
</summary>
	]]

native "_SET_CAM_DOF_MAX_NEAR_IN_FOCUS_DISTANCE_BLEND_LEVEL"
    hash "0x2C654B4943BDDF7C"
	arguments {
		Cam "camera",
		float "p1",
	}
	alias "0x2C654B4943BDDF7C"
	ns "CAM"
	returns "void"
	doc [[!
<summary>
```
This native has a name defined inside its code  
```
</summary>
	]]

native "SET_CAM_DOF_PLANES"
    hash "0x3CF48F6F96E749DC"
	jhash (0xAD6C2B8F)
	arguments {
		Cam "cam",
		float "p1",
		float "p2",
		float "p3",
		float "p4",
	}
	ns "CAM"
	returns "void"
	doc [[!
	]]

native "SET_CAM_DOF_STRENGTH"
    hash "0x5EE29B4D7D5DF897"
	jhash (0x3CC4EB3F)
	arguments {
		Cam "cam",
		float "dofStrength",
	}
	ns "CAM"
	returns "void"
	doc [[!
	]]

native "_SET_CAM_EFFECT"
    hash "0x80C8B1846639BB19"
	jhash (0xB06CCD38)
	arguments {
		int "p0",
	}
	ns "CAM"
	returns "void"
	doc [[!
<summary>
```
if p0 is 0, effect is cancelled  
if p0 is 1, effect zooms in, gradually tilts cam clockwise apx 30 degrees, wobbles slowly. Motion blur is active until cancelled.  
if p0 is 2, effect immediately tilts cam clockwise apx 30 degrees, begins to wobble slowly, then gradually tilts cam back to normal. The wobbling will continue until the effect is cancelled.  
```
</summary>
	]]

native "SET_CAM_FAR_CLIP"
    hash "0xAE306F2A904BF86E"
	jhash (0x0D23E381)
	arguments {
		Cam "cam",
		float "farClip",
	}
	ns "CAM"
	returns "void"
	doc [[!
	]]

native "SET_CAM_FAR_DOF"
    hash "0xEDD91296CD01AEE0"
	jhash (0x58515E8E)
	arguments {
		Cam "cam",
		float "farDOF",
	}
	ns "CAM"
	returns "void"
	doc [[!
	]]

native "SET_CAM_FOV"
    hash "0xB13C14F66A00D047"
	jhash (0xD3D5D74F)
	arguments {
		Cam "cam",
		float "fieldOfView",
	}
	ns "CAM"
	returns "void"
	doc [[!
<summary>
```
Sets the field of view of the cam.  
---------------------------------------------  
Min: 1.0f  
Max: 130.0f  
```
</summary>
	]]

native "SET_CAM_INHERIT_ROLL_VEHICLE"
    hash "0x45F1DE9C34B93AE6"
	jhash (0xE4BD5342)
	arguments {
		Cam "cam",
		BOOL "p1",
	}
	ns "CAM"
	returns "void"
	doc [[!
<summary>
```
The native seems to only be called once.  
The native is used as so,  
CAM::SET_CAM_INHERIT_ROLL_VEHICLE(l_544, getElem(2, &l_525, 4));  
In the exile1 script.  
```
</summary>
	]]

native "SET_CAM_MOTION_BLUR_STRENGTH"
    hash "0x6F0F77FBA9A8F2E6"
	jhash (0xFD6E0D67)
	arguments {
		Cam "cam",
		float "strength",
	}
	ns "CAM"
	returns "void"
	doc [[!
	]]

native "SET_CAM_NEAR_CLIP"
    hash "0xC7848EFCCC545182"
	jhash (0x46DB13B1)
	arguments {
		Cam "cam",
		float "nearClip",
	}
	ns "CAM"
	returns "void"
	doc [[!
	]]

native "SET_CAM_NEAR_DOF"
    hash "0x3FA4BF0A7AB7DE2C"
	jhash (0xF28254DF)
	arguments {
		Cam "cam",
		float "nearDOF",
	}
	ns "CAM"
	returns "void"
	doc [[!
	]]

native "SET_CAM_PARAMS"
    hash "0xBFD8727AEA3CCEBA"
	jhash (0x2167CEBF)
	arguments {
		Cam "cam",
		float "posX",
		float "posY",
		float "posZ",
		float "rotX",
		float "rotY",
		float "rotZ",
		float "fieldOfView",
		Any "p8",
		int "p9",
		int "p10",
		int "p11",
	}
	ns "CAM"
	returns "void"
	doc [[!
	]]

native "SET_CAM_ROT"
    hash "0x85973643155D0B07"
	jhash (0xEE38B3C1)
	arguments {
		Cam "cam",
		float "rotX",
		float "rotY",
		float "rotZ",
		int "rotationOrder",
	}
	ns "CAM"
	returns "void"
	doc [[!
<summary>
```
Sets the rotation of the cam.  
Last parameter unknown.  
Last parameter seems to always be set to 2.  
```
</summary>
	]]

native "SET_CAM_SHAKE_AMPLITUDE"
    hash "0xD93DB43B82BC0D00"
	jhash (0x60FF6382)
	arguments {
		Cam "cam",
		float "amplitude",
	}
	ns "CAM"
	returns "void"
	doc [[!
	]]

native "SET_CAM_SPLINE_DURATION"
    hash "0x1381539FEE034CDA"
	jhash (0x3E91FC8A)
	arguments {
		int "cam",
		int "timeDuration",
	}
	ns "CAM"
	returns "void"
	doc [[!
<summary>
```
I named p1 as timeDuration as it is obvious. I'm assuming tho it is ran in ms(Milliseconds) as usual.  
```
</summary>
	]]

native "SET_CAM_SPLINE_PHASE"
    hash "0x242B5874F0A4E052"
	jhash (0xF0AED233)
	arguments {
		Cam "cam",
		float "p1",
	}
	ns "CAM"
	returns "void"
	doc [[!
	]]

native "SET_CAM_USE_SHALLOW_DOF_MODE"
    hash "0x16A96863A17552BB"
	jhash (0x8306C256)
	arguments {
		Cam "cam",
		BOOL "toggle",
	}
	ns "CAM"
	returns "void"
	doc [[!
	]]

native "_SET_CAMERA_RANGE"
    hash "0xF9D02130ECDD1D77"
	jhash (0x71570DBA)
	arguments {
		Cam "cam",
		float "range",
	}
	alias "0xF9D02130ECDD1D77"
	ns "CAM"
	returns "void"
	doc [[!
	]]

native "SET_CINEMATIC_CAM_SHAKE_AMPLITUDE"
    hash "0xC724C701C30B2FE7"
	jhash (0x67510C4B)
	arguments {
		float "p0",
	}
	ns "CAM"
	returns "void"
	doc [[!
	]]

native "SET_CINEMATIC_BUTTON_ACTIVE"
    hash "0x51669F7D1FB53D9F"
	jhash (0x3FBC5D00)
	arguments {
		BOOL "p0",
	}
	ns "CAM"
	returns "void"
	doc [[!
	]]

native "SET_CINEMATIC_MODE_ACTIVE"
    hash "0xDCF0754AC3D6FD4E"
	jhash (0x2009E747)
	arguments {
		BOOL "p0",
	}
	ns "CAM"
	returns "void"
	doc [[!
<summary>
```
p0 = 0/1 or true/false  
It doesn't seems to work  
```
</summary>
	]]

native "_SET_FIRST_PERSON_CAM_NEAR_CLIP"
    hash "0x0AF7B437918103B3"
	jhash (0x0E21069D)
	arguments {
		float "distance",
	}
	alias "0x0AF7B437918103B3"
	ns "CAM"
	returns "void"
	doc [[!
<summary>
```
Sets the near clipping plane of the first person camera.  
```
</summary>
	]]

native "_SET_FIRST_PERSON_CAM_PITCH_RANGE"
    hash "0xBCFC632DB7673BF0"
	jhash (0x76DAC96C)
	arguments {
		float "minAngle",
		float "maxAngle",
	}
	alias "0xBCFC632DB7673BF0"
	ns "CAM"
	returns "void"
	doc [[!
<summary>
```
Similar to _CLAMP_GAMEPLAY_CAM_PITCH except this is specifically for the FP camera, and it only lets you clamp the pitch within the normal range.  
```
</summary>
	]]

native "SET_FOLLOW_PED_CAM_CUTSCENE_CHAT"
    hash "0x44A113DD6FFC48D1"
	jhash (0x1425F6AC)
	arguments {
		charPtr "p0",
		int "p1",
	}
	ns "CAM"
	returns "BOOL"
	doc [[!
<summary>
```
From the b617d scripts:  
CAM::SET_FOLLOW_PED_CAM_CUTSCENE_CHAT("FOLLOW_PED_ATTACHED_TO_ROPE_CAMERA", 0);  
 CAM::SET_FOLLOW_PED_CAM_CUTSCENE_CHAT("FOLLOW_PED_ON_EXILE1_LADDER_CAMERA", 1500);  
 CAM::SET_FOLLOW_PED_CAM_CUTSCENE_CHAT("FOLLOW_PED_SKY_DIVING_CAMERA", 0);  
 CAM::SET_FOLLOW_PED_CAM_CUTSCENE_CHAT("FOLLOW_PED_SKY_DIVING_CAMERA", 3000);  
 CAM::SET_FOLLOW_PED_CAM_CUTSCENE_CHAT("FOLLOW_PED_SKY_DIVING_FAMILY5_CAMERA", 0);  
CAM::SET_FOLLOW_PED_CAM_CUTSCENE_CHAT("FOLLOW_PED_SKY_DIVING_CAMERA", 0);  
```
</summary>
	]]

native "SET_FOLLOW_PED_CAM_VIEW_MODE"
    hash "0x5A4F9EDF1673F704"
	jhash (0x495DBE8D)
	arguments {
		int "viewMode",
	}
	ns "CAM"
	returns "void"
	doc [[!
<summary>
```
Sets the type of Player camera:  
0 - Third Person Close  
1 - Third Person Mid  
2 - Third Person Far  
4 - First Person  
```
</summary>
	]]

native "SET_FOLLOW_VEHICLE_CAM_VIEW_MODE"
    hash "0xAC253D7842768F48"
	jhash (0xC4FBBBD3)
	arguments {
		int "viewMode",
	}
	ns "CAM"
	returns "void"
	doc [[!
<summary>
```
Sets the type of Player camera in vehicles:  
0 - Third Person Close  
1 - Third Person Mid  
2 - Third Person Far  
4 - First Person  
```
</summary>
	]]

native "_SET_GAMEPLAY_CAM_RAW_PITCH"
    hash "0x759E13EBC1C15C5A"
	arguments {
		float "pitch",
	}
	ns "CAM"
	returns "void"
	doc [[!
	]]

native "SET_FOLLOW_VEHICLE_CAM_ZOOM_LEVEL"
    hash "0x19464CB6E4078C8A"
	jhash (0x8F55EBBE)
	arguments {
		int "zoomLevel",
	}
	ns "CAM"
	returns "void"
	doc [[!
	]]

native "SET_GAMEPLAY_CAM_RELATIVE_HEADING"
    hash "0xB4EC2312F4E5B1F1"
	jhash (0x20C6217C)
	arguments {
		float "heading",
	}
	ns "CAM"
	returns "void"
	doc [[!
<summary>
```
Sets the camera position relative to heading in float from -360 to +360.  
Heading is alwyas 0 in aiming camera.  
```
</summary>
	]]

native "_SET_GAMEPLAY_CAM_RAW_YAW"
    hash "0x103991D4A307D472"
	arguments {
		float "yaw",
	}
	ns "CAM"
	returns "void"
	doc [[!
<summary>
```
Does nothing  
```
</summary>
	]]

native "SET_GAMEPLAY_CAM_SHAKE_AMPLITUDE"
    hash "0xA87E00932DB4D85D"
	jhash (0x9219D44A)
	arguments {
		float "amplitude",
	}
	ns "CAM"
	returns "void"
	doc [[!
<summary>
```
Sets the amplitude for the gameplay (i.e. 3rd or 1st) camera to shake. Used in script "drunk_controller.ysc.c4" to simulate making the player drunk.  
```
</summary>
	]]

native "SET_GAMEPLAY_CAM_RELATIVE_PITCH"
    hash "0x6D0858B8EDFD2B7D"
	jhash (0x6381B963)
	arguments {
		float "x",
		float "Value2",
	}
	ns "CAM"
	returns "void"
	doc [[!
<summary>
```
Sets the camera pitch.  
Parameters:  
x = pitches the camera on the x axis.  
Value2 = always seems to be hex 0x3F800000 (1.000000 float).  
```
</summary>
	]]

native "SET_GAMEPLAY_COORD_HINT"
    hash "0xD51ADCD2D8BC0FB3"
	jhash (0xF27483C9)
	arguments {
		float "x",
		float "y",
		float "z",
		int "duration",
		int "blendOutDuration",
		int "blendInDuration",
		int "unk",
	}
	ns "CAM"
	returns "void"
	doc [[!
<summary>
```
Example C#:  
Function.Call(Hash.SET_GAMEPLAY_COORD_HINT, position.X, position.Y, position.Z, hintDuration, 1500, 1000, 0);  
The camera look-at is canceled if the user is already panning the camera around.  
```
</summary>
	]]

native "SET_GAMEPLAY_ENTITY_HINT"
    hash "0x189E955A8313E298"
	jhash (0x66C32306)
	arguments {
		Entity "entity",
		float "xOffset",
		float "yOffset",
		float "zOffset",
		BOOL "p4",
		int "p5",
		int "p6",
		int "p7",
		Any "p8",
	}
	ns "CAM"
	returns "void"
	doc [[!
<summary>
```
p6 & p7 - possibly length or time  
```
</summary>
	]]

native "SET_GAMEPLAY_HINT_FOV"
    hash "0x513403FB9C56211F"
	jhash (0x96FD173B)
	arguments {
		float "FOV",
	}
	ns "CAM"
	returns "void"
	doc [[!
	]]

native "SET_GAMEPLAY_OBJECT_HINT"
    hash "0x83E87508A2CA2AC6"
	jhash (0x2ED5E2F8)
	arguments {
		Any "p0",
		float "p1",
		float "p2",
		float "p3",
		BOOL "p4",
		Any "p5",
		Any "p6",
		Any "p7",
	}
	ns "CAM"
	returns "void"
	doc [[!
	]]

native "SET_GAMEPLAY_VEHICLE_HINT"
    hash "0xA2297E18F3E71C2E"
	jhash (0x2C9A11D8)
	arguments {
		Any "p0",
		float "p1",
		float "p2",
		float "p3",
		BOOL "p4",
		Any "p5",
		Any "p6",
		Any "p7",
	}
	ns "CAM"
	returns "void"
	doc [[!
	]]

native "SET_GAMEPLAY_PED_HINT"
    hash "0x2B486269ACD548D3"
	jhash (0x7C27343E)
	arguments {
		Ped "p0",
		float "x1",
		float "y1",
		float "z1",
		BOOL "p4",
		Any "p5",
		Any "p6",
		Any "p7",
	}
	ns "CAM"
	returns "void"
	doc [[!
	]]

native "SET_TIME_IDLE_DROP"
    hash "0x9DFE13ECDC1EC196"
	jhash (0x92302899)
	arguments {
		BOOL "p0",
		BOOL "p1",
	}
	alias "0x9DFE13ECDC1EC196"
	ns "CAM"
	returns "void"
	doc [[!
<summary>
```
hash collision?  
```
</summary>
	]]

native "_SET_THIRD_PERSON_AIM_CAM_NEAR_CLIP"
    hash "0x42156508606DE65E"
	jhash (0x71E9C63E)
	arguments {
		float "distance",
	}
	alias "0x42156508606DE65E"
	ns "CAM"
	returns "void"
	doc [[!
<summary>
```
Sets the near clipping plane of the third person aim camera.  
```
</summary>
	]]

native "SET_USE_HI_DOF"
    hash "0xA13B0222F3D94A94"
	jhash (0x8BBF2950)
	ns "CAM"
	returns "void"
	doc [[!
	]]

native "SHAKE_CAM"
    hash "0x6A25241C340D3822"
	jhash (0x1D4211B0)
	arguments {
		Cam "cam",
		charPtr "type",
		float "amplitude",
	}
	ns "CAM"
	returns "void"
	doc [[!
<summary>
```
Possible shake types (updated b617d):  
DEATH_FAIL_IN_EFFECT_SHAKE  
DRUNK_SHAKE  
FAMILY5_DRUG_TRIP_SHAKE  
HAND_SHAKE  
JOLT_SHAKE  
LARGE_EXPLOSION_SHAKE  
MEDIUM_EXPLOSION_SHAKE  
SMALL_EXPLOSION_SHAKE  
ROAD_VIBRATION_SHAKE  
SKY_DIVING_SHAKE  
VIBRATE_SHAKE  
```
</summary>
	]]

native "SET_WIDESCREEN_BORDERS"
    hash "0xDCD4EA924F42D01A"
	jhash (0x1A75DC9A)
	arguments {
		BOOL "p0",
		int "p1",
	}
	ns "CAM"
	returns "Any"
	doc [[!
	]]

native "SHAKE_GAMEPLAY_CAM"
    hash "0xFD55E49555E017CF"
	jhash (0xF2EFE660)
	arguments {
		charPtr "shakeName",
		float "intensity",
	}
	ns "CAM"
	returns "void"
	doc [[!
<summary>
```
Possible shake types (updated b617d):  
DEATH_FAIL_IN_EFFECT_SHAKE  
DRUNK_SHAKE  
FAMILY5_DRUG_TRIP_SHAKE  
HAND_SHAKE  
JOLT_SHAKE  
LARGE_EXPLOSION_SHAKE  
MEDIUM_EXPLOSION_SHAKE  
SMALL_EXPLOSION_SHAKE  
ROAD_VIBRATION_SHAKE  
SKY_DIVING_SHAKE  
VIBRATE_SHAKE  
```
</summary>
	]]

native "SHAKE_CINEMATIC_CAM"
    hash "0xDCE214D9ED58F3CF"
	jhash (0x61815F31)
	arguments {
		charPtr "p0",
		float "p1",
	}
	ns "CAM"
	returns "void"
	doc [[!
<summary>
```
p0 argument found in the b617d scripts: "DRUNK_SHAKE"  
```
</summary>
	]]

native "STOP_CAM_POINTING"
    hash "0xF33AB75780BA57DE"
	jhash (0x5435F6A5)
	arguments {
		Cam "cam",
	}
	ns "CAM"
	returns "void"
	doc [[!
	]]

native "STOP_CINEMATIC_CAM_SHAKING"
    hash "0x2238E588E588A6D7"
	jhash (0x71C12904)
	arguments {
		BOOL "p0",
	}
	ns "CAM"
	returns "void"
	doc [[!
	]]

native "STOP_CAM_SHAKING"
    hash "0xBDECF64367884AC3"
	jhash (0x40D0EB87)
	arguments {
		Cam "cam",
		BOOL "p1",
	}
	ns "CAM"
	returns "void"
	doc [[!
	]]

native "STOP_CUTSCENE_CAM_SHAKING"
    hash "0xDB629FFD9285FA06"
	jhash (0xF07D603D)
	ns "CAM"
	returns "void"
	doc [[!
	]]

native "STOP_CINEMATIC_SHOT"
    hash "0x7660C6E75D3A078E"
	jhash (0xD78358C5)
	arguments {
		Any "p0",
	}
	ns "CAM"
	returns "void"
	doc [[!
	]]

native "STOP_GAMEPLAY_HINT"
    hash "0xF46C581C61718916"
	jhash (0x1BC28B7B)
	arguments {
		BOOL "p0",
	}
	ns "CAM"
	returns "void"
	doc [[!
	]]

native "STOP_GAMEPLAY_CAM_SHAKING"
    hash "0x0EF93E9F3D08C178"
	jhash (0xFD569E4E)
	arguments {
		BOOL "p0",
	}
	ns "CAM"
	returns "void"
	doc [[!
	]]

native "STOP_SCRIPT_GLOBAL_SHAKING"
    hash "0x1C9D7949FA533490"
	jhash (0x26FCFB96)
	arguments {
		BOOL "p0",
	}
	alias "0x1C9D7949FA533490"
	ns "CAM"
	returns "void"
	doc [[!
<summary>
```
In drunk_controller.c4, sub_309  
if (CAM::_C912AF078AF19212()) {  
    CAM::_1C9D7949FA533490(0);  
}  
```
</summary>
	]]

native "ADD_MINIMAP_OVERLAY"
	arguments {
		charPtr "name",
	}
	ns "CFX"
    apiset "client"
	returns "int"
	doc [[!
<summary>
Loads a minimap overlay from a GFx file in the current resource.
</summary>
<param name="name">The path to a `.gfx` file in the current resource. It has to be specified as a `file`.</param>
<returns>A minimap overlay ID.</returns>
	]]

native "ADD_REPLACE_TEXTURE"
	arguments {
		charPtr "origTxd",
		charPtr "origTxn",
		charPtr "newTxd",
		charPtr "newTxn",
	}
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
<summary>
Experimental natives, please do not use in a live environment.
</summary>
	]]

native "ADD_TEXT_ENTRY"
	arguments {
		charPtr "entryKey",
		charPtr "entryText",
	}
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
	]]

native "CALL_MINIMAP_SCALEFORM_FUNCTION"
	arguments {
		int "miniMap",
		charPtr "fnName",
	}
	ns "CFX"
    apiset "client"
	returns "BOOL"
	doc [[!
<summary>
This is similar to the PushScaleformMovieFunction natives, except it calls in the `TIMELINE` of a minimap overlay.
</summary>
<param name="miniMap">The minimap overlay ID.</param>
<param name="fnName">A function in the overlay's TIMELINE.</param>
	]]

native "ADD_TEXT_ENTRY_BY_HASH"
	arguments {
		Hash "entryKey",
		charPtr "entryText",
	}
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
	]]

native "CANCEL_EVENT"
	ns "CFX"
    apiset "shared"
	returns "void"
	doc [[!
<summary>
Cancels the currently executing event.
</summary>
	]]

native "CAN_PLAYER_START_COMMERCE_SESSION"
	arguments {
		charPtr "playerSrc",
	}
	ns "CFX"
    apiset "server"
	returns "BOOL"
	doc [[!
<summary>
Returns whether or not the specified player has enough information to start a commerce session for.
</summary>
<param name="playerSrc">The player handle</param>
<returns>True or false.</returns>
	]]

native "COMMIT_RUNTIME_TEXTURE"
	arguments {
		long "tex",
	}
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
<summary>
Commits the backing pixels to the specified runtime texture.
</summary>
<param name="tex">The runtime texture handle.</param>
	]]

native "CREATE_RUNTIME_TEXTURE"
	arguments {
		long "txd",
		charPtr "txn",
		int "width",
		int "height",
	}
	ns "CFX"
    apiset "client"
	returns "long"
	doc [[!
<summary>
Creates a blank runtime texture.
</summary>
<param name="txd">A handle to the runtime TXD to create the runtime texture in.</param>
<param name="txn">The name for the texture in the runtime texture dictionary.</param>
<param name="width">The width of the new texture.</param>
<param name="height">The height of the new texture.</param>
<returns>A runtime texture handle.</returns>
	]]

native "CREATE_RUNTIME_TEXTURE_FROM_IMAGE"
	arguments {
		long "txd",
		charPtr "txn",
		charPtr "fileName",
	}
	ns "CFX"
    apiset "client"
	returns "long"
	doc [[!
<summary>
Creates a runtime texture from the specified file in the current resource.
</summary>
<param name="txd">A handle to the runtime TXD to create the runtime texture in.</param>
<param name="txn">The name for the texture in the runtime texture dictionary.</param>
<param name="fileName">The file name of an image to load. This should preferably be a PNG, and has to be specified as a `file` in the resource manifest.</param>
<returns>A runtime texture handle.</returns>
	]]

native "CREATE_DUI"
	arguments {
		charPtr "url",
		int "width",
		int "height",
	}
	ns "CFX"
    apiset "client"
	returns "long"
	doc [[!
<summary>
Creates a DUI browser. This can be used to draw on a runtime texture using CREATE_RUNTIME_TEXTURE_FROM_DUI_HANDLE.
</summary>
<param name="url">The initial URL to load in the browser.</param>
<param name="width">The width of the backing surface.</param>
<param name="height">The height of the backing surface.</param>
<returns>A DUI object.</returns>
	]]

native "CREATE_RUNTIME_TXD"
	arguments {
		charPtr "name",
	}
	ns "CFX"
    apiset "client"
	returns "long"
	doc [[!
<summary>
Creates a runtime texture dictionary with the specified name.
Example:

```lua
local txd = CreateRuntimeTxd('meow')
```
</summary>
<param name="name">The name for the runtime TXD.</param>
<returns>A handle to the runtime TXD.</returns>
	]]

native "CREATE_RUNTIME_TEXTURE_FROM_DUI_HANDLE"
	arguments {
		long "txd",
		long "txn",
		charPtr "duiHandle",
	}
	ns "CFX"
    apiset "client"
	returns "long"
	doc [[!
<summary>
Creates a runtime texture from a DUI handle.
</summary>
<param name="txd">A handle to the runtime TXD to create the runtime texture in.</param>
<param name="txn">The name for the texture in the runtime texture dictionary.</param>
<param name="duiHandle">The DUI handle returned from GET_DUI_HANDLE.</param>
<returns>The runtime texture handle.</returns>
	]]

native "DELETE_FUNCTION_REFERENCE"
	arguments {
		charPtr "referenceIdentity",
	}
	ns "CFX"
    apiset "shared"
	returns "void"
	doc [[!
	]]

native "DELETE_RESOURCE_KVP"
	arguments {
		charPtr "key",
	}
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
	]]

native "DESTROY_DUI"
	arguments {
		long "duiObject",
	}
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
<summary>
Destroys a DUI browser.
</summary>
<param name="duiObject">The DUI browser handle.</param>
	]]

native "DOES_ENTITY_EXIST"
	arguments {
		Object "entity",
	}
	ns "CFX"
    apiset "server"
	returns "BOOL"
	doc [[!
	]]

native "DOES_PLAYER_OWN_SKU"
	arguments {
		charPtr "playerSrc",
		int "skuId",
	}
	ns "CFX"
    apiset "server"
	returns "BOOL"
	doc [[!
<summary>
Requests whether or not the player owns the specified SKU.
</summary>
<param name="playerSrc">The player handle</param>
<param name="skuId">The ID of the SKU.</param>
<returns>A boolean.</returns>
	]]

native "DROP_PLAYER"
	arguments {
		charPtr "playerSrc",
		charPtr "reason",
	}
	ns "CFX"
    apiset "server"
	returns "void"
	doc [[!
	]]

native "DUPLICATE_FUNCTION_REFERENCE"
	arguments {
		charPtr "referenceIdentity",
	}
	ns "CFX"
    apiset "shared"
	returns "charPtr"
	doc [[!
	]]

native "ENABLE_ENHANCED_HOST_SUPPORT"
	arguments {
		BOOL "enabled",
	}
	ns "CFX"
    apiset "server"
	returns "void"
	doc [[!
	]]

native "END_FIND_KVP"
	arguments {
		int "handle",
	}
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
	]]

native "END_FIND_OBJECT"
	arguments {
		int "findHandle",
	}
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
	]]

native "END_FIND_PICKUP"
	arguments {
		int "findHandle",
	}
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
	]]

native "END_FIND_PED"
	arguments {
		int "findHandle",
	}
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
	]]

native "EXECUTE_COMMAND"
	arguments {
		charPtr "commandString",
	}
	ns "CFX"
    apiset "shared"
	returns "void"
	doc [[!
	]]

native "EXPERIMENTAL_LOAD_CLONE_CREATE"
	arguments {
		charPtr "data",
		int "objectId",
		charPtr "tree",
	}
	ns "CFX"
    apiset "client"
	returns "Entity"
	doc [[!
<summary>
This native is not implemented.
</summary>
	]]

native "END_FIND_VEHICLE"
	arguments {
		int "findHandle",
	}
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
	]]

native "EXPERIMENTAL_SAVE_CLONE_SYNC"
	arguments {
		Entity "entity",
	}
	ns "CFX"
    apiset "client"
	returns "charPtr"
	doc [[!
<summary>
This native is not implemented.
</summary>
	]]

native "EXPERIMENTAL_LOAD_CLONE_SYNC"
	arguments {
		Entity "entity",
		charPtr "data",
	}
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
<summary>
This native is not implemented.
</summary>
	]]

native "FIND_FIRST_PED"
	arguments {
		EntityPtr "outEntity",
	}
	ns "CFX"
    apiset "client"
	returns "int"
	doc [[!
	]]

native "EXPERIMENTAL_SAVE_CLONE_CREATE"
	arguments {
		Entity "entity",
	}
	ns "CFX"
    apiset "client"
	returns "charPtr"
	doc [[!
<summary>
This native is not implemented.
</summary>
	]]

native "FIND_FIRST_PICKUP"
	arguments {
		EntityPtr "outEntity",
	}
	ns "CFX"
    apiset "client"
	returns "int"
	doc [[!
	]]

native "FIND_FIRST_OBJECT"
	arguments {
		EntityPtr "outEntity",
	}
	ns "CFX"
    apiset "client"
	returns "int"
	doc [[!
	]]

native "FIND_KVP"
	arguments {
		int "handle",
	}
	ns "CFX"
    apiset "client"
	returns "charPtr"
	doc [[!
	]]

native "FIND_FIRST_VEHICLE"
	arguments {
		EntityPtr "outEntity",
	}
	ns "CFX"
    apiset "client"
	returns "int"
	doc [[!
	]]

native "FIND_NEXT_PED"
	arguments {
		int "findHandle",
		EntityPtr "outEntity",
	}
	ns "CFX"
    apiset "client"
	returns "BOOL"
	doc [[!
	]]

native "FIND_NEXT_OBJECT"
	arguments {
		int "findHandle",
		EntityPtr "outEntity",
	}
	ns "CFX"
    apiset "client"
	returns "BOOL"
	doc [[!
	]]

native "FIND_NEXT_VEHICLE"
	arguments {
		int "findHandle",
		EntityPtr "outEntity",
	}
	ns "CFX"
    apiset "client"
	returns "BOOL"
	doc [[!
	]]

native "GET_CAM_MATRIX"
	arguments {
		Cam "camera",
		Vector3Ptr "rightVector",
		Vector3Ptr "forwardVector",
		Vector3Ptr "upVector",
		Vector3Ptr "position",
	}
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
<summary>
Returns the world matrix of the specified camera. To turn this into a view matrix, calculate the inverse.
</summary>
	]]

native "FIND_NEXT_PICKUP"
	arguments {
		int "findHandle",
		EntityPtr "outEntity",
	}
	ns "CFX"
    apiset "client"
	returns "BOOL"
	doc [[!
	]]

native "FLAG_SERVER_AS_PRIVATE"
	arguments {
		BOOL "private_",
	}
	ns "CFX"
    apiset "server"
	returns "void"
	doc [[!
	]]

native "GET_CONVAR_INT"
	arguments {
		charPtr "varName",
		int "default_",
	}
	ns "CFX"
    apiset "shared"
	returns "int"
	doc [[!
	]]

native "GET_CURRENT_SERVER_ENDPOINT"
	ns "CFX"
    apiset "client"
	returns "charPtr"
	doc [[!
<summary>
Returns the peer address of the remote game server that the user is currently connected to.
</summary>
<returns>The peer address of the game server (e.g. `127.0.0.1:30120`), or NULL if not available.</returns>
	]]

native "GET_CONVAR"
	arguments {
		charPtr "varName",
		charPtr "default_",
	}
	ns "CFX"
    apiset "shared"
	returns "charPtr"
	doc [[!
	]]

native "GET_DUI_HANDLE"
	arguments {
		long "duiObject",
	}
	ns "CFX"
    apiset "client"
	returns "charPtr"
	doc [[!
<summary>
Returns the NUI window handle for a specified DUI browser object.
</summary>
<param name="duiObject">The DUI browser handle.</param>
<returns>The NUI window handle, for use in e.g. CREATE_RUNTIME_TEXTURE_FROM_DUI_HANDLE.</returns>
	]]

native "GET_CURRENT_RESOURCE_NAME"
	ns "CFX"
    apiset "shared"
	returns "charPtr"
	doc [[!
<summary>
Returns the name of the currently executing resource.
</summary>
<returns>The name of the resource.</returns>
	]]

native "GET_ENTITY_HEADING"
	arguments {
		Entity "entity",
	}
	ns "CFX"
    apiset "server"
	returns "float"
	doc [[!
	]]

native "GET_ENTITY_COORDS"
	arguments {
		Entity "entity",
	}
	ns "CFX"
    apiset "server"
	returns "Vector3"
	doc [[!
	]]

native "GET_ENTITY_POPULATION_TYPE"
	arguments {
		Entity "entity",
	}
	ns "CFX"
    apiset "server"
	returns "int"
	doc [[!
	]]

native "GET_ENTITY_ROTATION_VELOCITY"
	arguments {
		Entity "entity",
	}
	ns "CFX"
    apiset "server"
	returns "Vector3"
	doc [[!
	]]

native "GET_ENTITY_MODEL"
	arguments {
		Entity "entity",
	}
	ns "CFX"
    apiset "server"
	returns "Hash"
	doc [[!
	]]

native "GET_ENTITY_TYPE"
	arguments {
		Entity "entity",
	}
	ns "CFX"
    apiset "server"
	returns "int"
	doc [[!
	]]

native "GET_ENTITY_ROTATION"
	arguments {
		Entity "entity",
	}
	ns "CFX"
    apiset "server"
	returns "Vector3"
	doc [[!
	]]

native "GET_GAME_TIMER"
	ns "CFX"
    apiset "server"
	returns "long"
	doc [[!
<summary>
Gets the current game timer in milliseconds.
</summary>
<returns>The game time.</returns>
	]]

native "GET_ENTITY_SCRIPT"
	arguments {
		Entity "entity",
	}
	ns "CFX"
    apiset "server"
	returns "charPtr"
	doc [[!
	]]

native "GET_HOST_ID"
	ns "CFX"
    apiset "server"
	returns "charPtr"
	doc [[!
	]]

native "GET_INSTANCE_ID"
	ns "CFX"
    apiset "shared"
	returns "int"
	doc [[!
	]]

native "GET_ENTITY_VELOCITY"
	arguments {
		Entity "entity",
	}
	ns "CFX"
    apiset "server"
	returns "Vector3"
	doc [[!
	]]

native "GET_HASH_KEY"
	arguments {
		charPtr "model",
	}
	ns "CFX"
    apiset "server"
	returns "Hash"
	doc [[!
<summary>
This native converts the passed string to a hash.
</summary>
	]]

native "GET_NUM_PLAYER_IDENTIFIERS"
	arguments {
		charPtr "playerSrc",
	}
	ns "CFX"
    apiset "server"
	returns "int"
	doc [[!
	]]

native "GET_NUM_PLAYER_INDICES"
	ns "CFX"
    apiset "server"
	returns "int"
	doc [[!
	]]

native "GET_INVOKING_RESOURCE"
	ns "CFX"
    apiset "server"
	returns "charPtr"
	doc [[!
	]]

native "GET_NUM_RESOURCES"
	ns "CFX"
    apiset "shared"
	returns "int"
	doc [[!
	]]

native "GET_NUI_CURSOR_POSITION"
	arguments {
		intPtr "x",
		intPtr "y",
	}
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
	]]

native "GET_PED_EYE_COLOR"
	arguments {
		Ped "ped",
	}
	ns "CFX"
    apiset "client"
	returns "int"
	doc [[!
<summary>
A getter for [\_SET_PED_EYE_COLOR](#_0x50B56988B170AFDF). Returns -1 if fails to get.
</summary>
<param name="ped">The target ped</param>
<returns>Returns ped's eye colour, or -1 if fails to get.</returns>
	]]

native "GET_PED_HAIR_COLOR"
	arguments {
		Ped "ped",
	}
	ns "CFX"
    apiset "client"
	returns "int"
	doc [[!
<summary>
A getter for [\_SET_PED_HAIR_COLOR](#_0x4CFFC65454C93A49). Returns -1 if fails to get.
</summary>
<param name="ped">The target ped</param>
<returns>Returns ped's primary hair colour.</returns>
	]]

native "GET_NUM_RESOURCE_METADATA"
	arguments {
		charPtr "resourceName",
		charPtr "metadataKey",
	}
	ns "CFX"
    apiset "shared"
	returns "int"
	doc [[!
<summary>
Gets the amount of metadata values with the specified key existing in the specified resource's manifest.
See also: [Resource manifest](https://docs.fivem.net/resources/manifest/)
</summary>
<param name="resourceName">The resource name.</param>
<param name="metadataKey">The key to look up in the resource manifest.</param>
	]]

native "GET_PASSWORD_HASH"
	arguments {
		charPtr "password",
	}
	ns "CFX"
    apiset "server"
	returns "charPtr"
	doc [[!
	]]

native "GET_PED_HAIR_HIGHLIGHT_COLOR"
	arguments {
		Ped "ped",
	}
	ns "CFX"
    apiset "client"
	returns "int"
	doc [[!
<summary>
A getter for [\_SET_PED_HAIR_COLOR](#_0x4CFFC65454C93A49). Returns -1 if fails to get.
</summary>
<param name="ped">The target ped</param>
<returns>Returns ped's secondary hair colour.</returns>
	]]

native "GET_PED_FACE_FEATURE"
	arguments {
		Ped "ped",
		int "index",
	}
	ns "CFX"
    apiset "client"
	returns "float"
	doc [[!
<summary>
A getter for [\_SET_PED_FACE_FEATURE](#_0x71A5C1DBA060049E). Returns 0.0 if fails to get.
</summary>
<param name="ped">The target ped</param>
<param name="index">Face feature index</param>
<returns>Returns ped's face feature value, or 0.0 if fails to get.</returns>
	]]

native "GET_PLAYER_ENDPOINT"
	arguments {
		charPtr "playerSrc",
	}
	ns "CFX"
    apiset "server"
	returns "charPtr"
	doc [[!
	]]

native "GET_PLAYER_FROM_SERVER_ID"
	arguments {
		int "serverId",
	}
	ns "CFX"
    apiset "client"
	returns "Player"
	doc [[!
	]]

native "GET_PED_HEAD_OVERLAY_DATA"
	arguments {
		Ped "ped",
		int "index",
		intPtr "overlayValue",
		intPtr "colourType",
		intPtr "firstColour",
		intPtr "secondColour",
		floatPtr "overlayOpacity",
	}
	ns "CFX"
    apiset "client"
	returns "BOOL"
	doc [[!
<summary>
A getter for [SET_PED_HEAD_OVERLAY](#_0x48F44967FA05CC1E) and [\_SET_PED_HEAD_OVERLAY_COLOR](#_0x497BF74A7B9CB952) natives.
</summary>
<param name="ped">The target ped</param>
<param name="index">Overlay index</param>
<param name="overlayValue">Overlay value pointer</param>
<param name="colourType">Colour type pointer</param>
<param name="firstColour">First colour pointer</param>
<param name="secondColour">Second colour pointer</param>
<param name="overlayOpacity">Opacity pointer</param>
<returns>Returns ped's head overlay data.</returns>
	]]

native "GET_PLAYER_IDENTIFIER"
	arguments {
		charPtr "playerSrc",
		int "identifier",
	}
	ns "CFX"
    apiset "server"
	returns "charPtr"
	doc [[!
	]]

native "GET_PLAYER_FROM_INDEX"
	arguments {
		int "index",
	}
	ns "CFX"
    apiset "server"
	returns "charPtr"
	doc [[!
	]]

native "GET_PLAYER_LAST_MSG"
	arguments {
		charPtr "playerSrc",
	}
	ns "CFX"
    apiset "server"
	returns "int"
	doc [[!
	]]

native "GET_PLAYER_GUID"
	arguments {
		charPtr "playerSrc",
	}
	ns "CFX"
    apiset "server"
	returns "charPtr"
	doc [[!
	]]

native "GET_PLAYER_PING"
	arguments {
		charPtr "playerSrc",
	}
	ns "CFX"
    apiset "server"
	returns "int"
	doc [[!
	]]

native "GET_PLAYER_NAME"
	arguments {
		charPtr "playerSrc",
	}
	ns "CFX"
    apiset "server"
	returns "charPtr"
	doc [[!
	]]

native "GET_PLAYER_PED"
	arguments {
		charPtr "playerSrc",
	}
	ns "CFX"
    apiset "server"
	returns "Entity"
	doc [[!
	]]

native "GET_PLAYER_SERVER_ID"
	arguments {
		Player "player",
	}
	ns "CFX"
    apiset "client"
	returns "int"
	doc [[!
	]]

native "GET_RESOURCE_BY_FIND_INDEX"
	arguments {
		int "findIndex",
	}
	ns "CFX"
    apiset "shared"
	returns "charPtr"
	doc [[!
	]]

native "GET_REGISTERED_COMMANDS"
	ns "CFX"
    apiset "shared"
	returns "object"
	doc [[!
<summary>
Returns all commands that are registered in the command system.
The data returned adheres to the following layout:

```
[
{
"name": "cmdlist"
},
{
"name": "command1"
}
]
```
</summary>
<returns>An object containing registered commands.</returns>
	]]

native "GET_RESOURCE_KVP_FLOAT"
	arguments {
		charPtr "key",
	}
	ns "CFX"
    apiset "client"
	returns "float"
	doc [[!
	]]

native "GET_RESOURCE_KVP_INT"
	arguments {
		charPtr "key",
	}
	ns "CFX"
    apiset "client"
	returns "int"
	doc [[!
	]]

native "GET_RESOURCE_KVP_STRING"
	arguments {
		charPtr "key",
	}
	ns "CFX"
    apiset "client"
	returns "charPtr"
	doc [[!
	]]

native "GET_RESOURCE_METADATA"
	arguments {
		charPtr "resourceName",
		charPtr "metadataKey",
		int "index",
	}
	ns "CFX"
    apiset "shared"
	returns "charPtr"
	doc [[!
<summary>
Gets the metadata value at a specified key/index from a resource's manifest.
See also: [Resource manifest](https://docs.fivem.net/resources/manifest/)
</summary>
<param name="resourceName">The resource name.</param>
<param name="metadataKey">The key in the resource manifest.</param>
<param name="index">The value index, in a range from [0..GET_NUM_RESOURCE_METDATA-1].</param>
	]]

native "GET_RESOURCE_PATH"
	arguments {
		charPtr "resourceName",
	}
	ns "CFX"
    apiset "server"
	returns "charPtr"
	doc [[!
<summary>
Returns the physical on-disk path of the specified resource.
</summary>
<param name="resourceName">The name of the resource.</param>
<returns>The resource directory name, possibly without trailing slash.</returns>
	]]

native "GET_RESOURCE_STATE"
	arguments {
		charPtr "resourceName",
	}
	ns "CFX"
    apiset "shared"
	returns "charPtr"
	doc [[!
<summary>
Returns the current state of the specified resource.
</summary>
<param name="resourceName">The name of the resource.</param>
<returns>The resource state. One of `"missing", "started", "starting", "stopped", "stopping", "uninitialized" or "unknown"`.</returns>
	]]

native "GET_RUNTIME_TEXTURE_HEIGHT"
	arguments {
		long "tex",
	}
	ns "CFX"
    apiset "client"
	returns "int"
	doc [[!
<summary>
Gets the height of the specified runtime texture.
</summary>
<param name="tex">A handle to the runtime texture.</param>
<returns>The height in pixels.</returns>
	]]

native "GET_RUNTIME_TEXTURE_PITCH"
	arguments {
		long "tex",
	}
	ns "CFX"
    apiset "client"
	returns "int"
	doc [[!
<summary>
Gets the row pitch of the specified runtime texture, for use when creating data for `SET_RUNTIME_TEXTURE_ARGB_DATA`.
</summary>
<param name="tex">A handle to the runtime texture.</param>
<returns>The row pitch in bytes.</returns>
	]]

native "GET_RUNTIME_TEXTURE_WIDTH"
	arguments {
		long "tex",
	}
	ns "CFX"
    apiset "client"
	returns "int"
	doc [[!
<summary>
Gets the width of the specified runtime texture.
</summary>
<param name="tex">A handle to the runtime texture.</param>
<returns>The width in pixels.</returns>
	]]

native "GET_VEHICLE_ALARM_TIME_LEFT"
	arguments {
		Vehicle "vehicle",
	}
	ns "CFX"
    apiset "client"
	returns "int"
	doc [[!
	]]

native "GET_VEHICLE_CURRENT_ACCELERATION"
	arguments {
		Vehicle "vehicle",
	}
	ns "CFX"
    apiset "client"
	returns "float"
	doc [[!
	]]

native "GET_VEHICLE_CLUTCH"
	arguments {
		Vehicle "vehicle",
	}
	ns "CFX"
    apiset "client"
	returns "float"
	doc [[!
	]]

native "GET_VEHICLE_CURRENT_RPM"
	arguments {
		Vehicle "vehicle",
	}
	ns "CFX"
    apiset "client"
	returns "float"
	doc [[!
	]]

native "GET_VEHICLE_CURRENT_GEAR"
	arguments {
		Vehicle "vehicle",
	}
	ns "CFX"
    apiset "client"
	returns "int"
	doc [[!
	]]

native "GET_VEHICLE_ENGINE_TEMPERATURE"
	arguments {
		Vehicle "vehicle",
	}
	ns "CFX"
    apiset "client"
	returns "float"
	doc [[!
	]]

native "GET_VEHICLE_FUEL_LEVEL"
	arguments {
		Vehicle "vehicle",
	}
	ns "CFX"
    apiset "client"
	returns "float"
	doc [[!
	]]

native "GET_VEHICLE_DASHBOARD_SPEED"
	arguments {
		Vehicle "vehicle",
	}
	ns "CFX"
    apiset "client"
	returns "float"
	doc [[!
	]]

native "GET_VEHICLE_GRAVITY_AMOUNT"
	arguments {
		Vehicle "vehicle",
	}
	ns "CFX"
    apiset "client"
	returns "float"
	doc [[!
	]]

native "GET_VEHICLE_HANDLING_FLOAT"
	arguments {
		Vehicle "vehicle",
		charPtr "class_",
		charPtr "fieldName",
	}
	ns "CFX"
    apiset "client"
	returns "float"
	doc [[!
<summary>
Returns the effective handling data of a vehicle as a floating-point value.
Example: `local fSteeringLock = GetVehicleHandlingFloat(vehicle, 'CHandlingData', 'fSteeringLock')`
</summary>
<param name="vehicle">The vehicle to obtain data for.</param>
<param name="class_">The handling class to get. Only "CHandlingData" is supported at this time.</param>
<param name="fieldName">The field name to get. These match the keys in `handling.meta`.</param>
<returns>A floating-point value.</returns>
	]]

native "GET_VEHICLE_HANDBRAKE"
	arguments {
		Vehicle "vehicle",
	}
	ns "CFX"
    apiset "client"
	returns "BOOL"
	doc [[!
	]]

native "GET_VEHICLE_HANDLING_INT"
	arguments {
		Vehicle "vehicle",
		charPtr "class_",
		charPtr "fieldName",
	}
	ns "CFX"
    apiset "client"
	returns "int"
	doc [[!
<summary>
Returns the effective handling data of a vehicle as an integer value.
Example: `local modelFlags = GetVehicleHandlingInt(vehicle, 'CHandlingData', 'strModelFlags')`
</summary>
<param name="vehicle">The vehicle to obtain data for.</param>
<param name="class_">The handling class to get. Only "CHandlingData" is supported at this time.</param>
<param name="fieldName">The field name to get. These match the keys in `handling.meta`.</param>
<returns>An integer.</returns>
	]]

native "GET_VEHICLE_HANDLING_VECTOR"
	arguments {
		Vehicle "vehicle",
		charPtr "class_",
		charPtr "fieldName",
	}
	ns "CFX"
    apiset "client"
	returns "Vector3"
	doc [[!
<summary>
Returns the effective handling data of a vehicle as a vector value.
Example: `local inertiaMultiplier = GetVehicleHandlingVector(vehicle, 'CHandlingData', 'vecInertiaMultiplier')`
</summary>
<param name="vehicle">The vehicle to obtain data for.</param>
<param name="class_">The handling class to get. Only "CHandlingData" is supported at this time.</param>
<param name="fieldName">The field name to get. These match the keys in `handling.meta`.</param>
<returns>An integer.</returns>
	]]

native "GET_VEHICLE_INDICATOR_LIGHTS"
	arguments {
		Vehicle "vehicle",
	}
	ns "CFX"
    apiset "client"
	returns "int"
	doc [[!
<summary>
Gets the vehicle indicator light state. 0 = off, 1 = left, 2 = right, 3 = both
</summary>
<returns>An integer.</returns>
	]]

native "GET_VEHICLE_HIGH_GEAR"
	arguments {
		Vehicle "vehicle",
	}
	ns "CFX"
    apiset "client"
	returns "int"
	doc [[!
	]]

native "GET_VEHICLE_NEXT_GEAR"
	arguments {
		Vehicle "vehicle",
	}
	ns "CFX"
    apiset "client"
	returns "int"
	doc [[!
	]]

native "GET_VEHICLE_OIL_LEVEL"
	arguments {
		Vehicle "vehicle",
	}
	ns "CFX"
    apiset "client"
	returns "float"
	doc [[!
	]]

native "GET_VEHICLE_NUMBER_OF_WHEELS"
	arguments {
		Vehicle "vehicle",
	}
	ns "CFX"
    apiset "client"
	returns "int"
	doc [[!
	]]

native "GET_VEHICLE_STEERING_ANGLE"
	arguments {
		Vehicle "vehicle",
	}
	ns "CFX"
    apiset "client"
	returns "float"
	doc [[!
	]]

native "GET_VEHICLE_TURBO_PRESSURE"
	arguments {
		Vehicle "vehicle",
	}
	ns "CFX"
    apiset "client"
	returns "float"
	doc [[!
	]]

native "GET_VEHICLE_WHEEL_HEALTH"
	arguments {
		Vehicle "vehicle",
		int "wheelIndex",
	}
	ns "CFX"
    apiset "client"
	returns "float"
	doc [[!
	]]

native "GET_VEHICLE_STEERING_SCALE"
	arguments {
		Vehicle "vehicle",
	}
	ns "CFX"
    apiset "client"
	returns "float"
	doc [[!
	]]

native "GET_VEHICLE_WHEEL_X_OFFSET"
	arguments {
		Vehicle "vehicle",
		int "wheelIndex",
	}
	ns "CFX"
    apiset "client"
	returns "float"
	doc [[!
<summary>
Returns the offset of the specified wheel relative to the wheel's axle center.
</summary>
	]]

native "GET_VEHICLE_WHEEL_SPEED"
	arguments {
		Vehicle "vehicle",
		int "wheelIndex",
	}
	ns "CFX"
    apiset "client"
	returns "float"
	doc [[!
<summary>
Gets speed of a wheel at the tyre.
Max number of wheels can be retrieved with the native GET_VEHICLE_NUMBER_OF_WHEELS.
</summary>
<returns>An integer.</returns>
	]]

native "GET_VEHICLE_WHEELIE_STATE"
	arguments {
		Vehicle "vehicle",
	}
	ns "CFX"
    apiset "client"
	returns "int"
	doc [[!
<summary>
List of known states:

```
1: Not wheeling.
65: Vehicle is ready to do wheelie (burnouting).
129: Vehicle is doing wheelie.
```
</summary>
<param name="vehicle">Vehicle</param>
<returns>Vehicle's current wheelie state.</returns>
	]]

native "GET_VEHICLE_WHEEL_Y_ROTATION"
	arguments {
		Vehicle "vehicle",
		int "wheelIndex",
	}
	alias "GET_VEHICLE_WHEEL_XROT"
	ns "CFX"
    apiset "client"
	returns "float"
	doc [[!
	]]

native "HAS_MINIMAP_OVERLAY_LOADED"
	arguments {
		int "id",
	}
	ns "CFX"
    apiset "client"
	returns "BOOL"
	doc [[!
<summary>
Returns whether or not the specific minimap overlay has loaded.
</summary>
<param name="id">A minimap overlay ID.</param>
<returns>A boolean indicating load status.</returns>
	]]

native "IS_BIGMAP_ACTIVE"
	ns "CFX"
    apiset "client"
	returns "BOOL"
	doc [[!
<summary>
<!-- Native implemented by Disquse. 0xFFF65C63 -->

Returns true if the minimap is currently expanded. False if it's the normal minimap state.
Use [`IsBigmapFull`](#_0x66EE14B2) to check if the full map is currently revealed on the minimap.
</summary>
<returns>A bool indicating if the minimap is currently expanded or normal state.</returns>
	]]

native "INVOKE_FUNCTION_REFERENCE"
	arguments {
		charPtr "referenceIdentity",
		charPtr "argsSerialized",
		int "argsLength",
		intPtr "retvalLength",
	}
	ns "CFX"
    apiset "shared"
	returns "charPtr"
	doc [[!
	]]

native "IS_DUI_AVAILABLE"
	arguments {
		long "duiObject",
	}
	ns "CFX"
    apiset "client"
	returns "BOOL"
	doc [[!
<summary>
Returns whether or not a browser is created for a specified DUI browser object.
</summary>
<param name="duiObject">The DUI browser handle.</param>
<returns>A boolean indicating TRUE if the browser is created.</returns>
	]]

native "IS_ACE_ALLOWED"
	arguments {
		charPtr "object",
	}
	ns "CFX"
    apiset "shared"
	returns "BOOL"
	doc [[!
	]]

native "IS_PLAYER_ACE_ALLOWED"
	arguments {
		charPtr "playerSrc",
		charPtr "object",
	}
	ns "CFX"
    apiset "server"
	returns "BOOL"
	doc [[!
	]]

native "IS_BIGMAP_FULL"
	ns "CFX"
    apiset "client"
	returns "BOOL"
	doc [[!
<summary>
<!-- Native implemented by Disquse. 0x66EE14B2 -->

Returns true if the full map is currently revealed on the minimap. 
Use [`IsBigmapActive`](#_0xFFF65C63) to check if the minimap is currently expanded or in it's normal state.
</summary>
<returns>Returns true if the full map is currently revealed on the minimap.</returns>
	]]

native "IS_PRINCIPAL_ACE_ALLOWED"
	arguments {
		charPtr "principal",
		charPtr "object",
	}
	ns "CFX"
    apiset "shared"
	returns "BOOL"
	doc [[!
	]]

native "IS_DUPLICITY_VERSION"
	ns "CFX"
    apiset "shared"
	returns "BOOL"
	doc [[!
<summary>
Gets whether or not this is the CitizenFX server.
</summary>
<returns>A boolean value.</returns>
	]]

native "IS_STREAMING_FILE_READY"
	arguments {
		charPtr "registerAs",
	}
	ns "CFX"
    apiset "client"
	returns "BOOL"
	doc [[!
<summary>
**Experimental**: This native may be altered or removed in future versions of CitizenFX without warning.

Returns whether an asynchronous streaming file registration completed.
</summary>
<param name="registerAs">The file name to check, for example `asset.ydr`.</param>
<returns>Whether or not the streaming file has been registered.</returns>
	]]

native "IS_PLAYER_COMMERCE_INFO_LOADED"
	arguments {
		charPtr "playerSrc",
	}
	ns "CFX"
    apiset "server"
	returns "BOOL"
	doc [[!
<summary>
Requests whether or not the commerce data for the specified player has loaded.
</summary>
<param name="playerSrc">The player handle</param>
<returns>A boolean.</returns>
	]]

native "IS_VEHICLE_INTERIOR_LIGHT_ON"
	arguments {
		Vehicle "vehicle",
	}
	ns "CFX"
    apiset "client"
	returns "BOOL"
	doc [[!
	]]

native "IS_VEHICLE_ALARM_SET"
	arguments {
		Vehicle "vehicle",
	}
	ns "CFX"
    apiset "client"
	returns "BOOL"
	doc [[!
	]]

native "IS_VEHICLE_ENGINE_STARTING"
	arguments {
		Vehicle "vehicle",
	}
	ns "CFX"
    apiset "client"
	returns "BOOL"
	doc [[!
	]]

native "IS_VEHICLE_NEEDS_TO_BE_HOTWIRED"
	arguments {
		Vehicle "vehicle",
	}
	ns "CFX"
    apiset "client"
	returns "BOOL"
	doc [[!
	]]

native "IS_VEHICLE_WANTED"
	arguments {
		Vehicle "vehicle",
	}
	ns "CFX"
    apiset "client"
	returns "BOOL"
	doc [[!
	]]

native "IS_VEHICLE_PREVIOUSLY_OWNED_BY_PLAYER"
	arguments {
		Vehicle "vehicle",
	}
	ns "CFX"
    apiset "client"
	returns "BOOL"
	doc [[!
	]]

native "LOAD_PLAYER_COMMERCE_DATA"
	arguments {
		charPtr "playerSrc",
	}
	ns "CFX"
    apiset "server"
	returns "void"
	doc [[!
<summary>
Requests the commerce data for the specified player, including the owned SKUs. Use `IS_PLAYER_COMMERCE_INFO_LOADED` to check if it has loaded.
</summary>
<param name="playerSrc">The player handle</param>
	]]

native "LOAD_RESOURCE_FILE"
	arguments {
		charPtr "resourceName",
		charPtr "fileName",
	}
	ns "CFX"
    apiset "shared"
	returns "charPtr"
	doc [[!
<summary>
Reads the contents of a text file in a specified resource.
If executed on the client, this file has to be included in `files` in the resource manifest.
Example: `local data = LoadResourceFile("devtools", "data.json")`
</summary>
<param name="resourceName">The resource name.</param>
<param name="fileName">The file in the resource.</param>
<returns>The file contents</returns>
	]]

native "NETWORK_GET_ENTITY_FROM_NETWORK_ID"
	arguments {
		int "netId",
	}
	ns "CFX"
    apiset "server"
	returns "Entity"
	doc [[!
	]]

native "NETWORK_GET_ENTITY_OWNER"
	arguments {
		Entity "entity",
	}
	ns "CFX"
    apiset "shared"
	returns "int"
	doc [[!
<summary>
Returns the owner ID of the specified entity.
</summary>
<param name="entity">The entity to get the owner for.</param>
<returns>On the server, the server ID of the entity owner. On the client, returns the player/slot ID of the entity owner.</returns>
	]]

native "PERFORM_HTTP_REQUEST_INTERNAL"
	arguments {
		charPtr "requestData",
		int "requestDataLength",
	}
	ns "CFX"
    apiset "server"
	returns "int"
	doc [[!
	]]

native "NETWORK_GET_NETWORK_ID_FROM_ENTITY"
	arguments {
		Entity "entity",
	}
	ns "CFX"
    apiset "server"
	returns "int"
	doc [[!
	]]

native "REGISTER_COMMAND"
	arguments {
		charPtr "commandName",
		func "handler",
		BOOL "restricted",
	}
	ns "CFX"
    apiset "shared"
	returns "void"
	doc [[!
<summary>
Registered commands can be executed by entering them in the client console (this works for client side and server side registered commands). Or by entering them in the server console/through an RCON client (only works for server side registered commands). Or if you use a supported chat resource, like the default one provided in the cfx-server-data repository, then you can enter the command in chat by prefixing it with a `/`.

Commands registered using this function can also be executed by resources, using the [`ExecuteCommand` native](#_0x561C060B).

The restricted bool is not used on the client side. Permissions can only be checked on the server side, so if you want to limit your command with an ace permission automatically, make it a server command (by registering it in a server script).

**Example result**:

![](https://i.imgur.com/TaCnG09.png)
</summary>
<param name="commandName">The command you want to register.</param>
<param name="handler">A handler function that gets called whenever the command is executed.</param>
<param name="restricted">If this is a server command and you set this to true, then players will need the command.yourCommandName ace permission to execute this command.</param>
	]]

native "REGISTER_ARCHETYPES"
	arguments {
		func "factory",
	}
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
<summary>
**Experimental**: This native may be altered or removed in future versions of CitizenFX without warning.

Registers a set of archetypes with the game engine. These should match `CBaseArchetypeDef` class information from the game.
</summary>
<param name="factory">A function returning a list of archetypes.</param>
	]]

native "REGISTER_FONT_FILE"
	arguments {
		charPtr "fileName",
	}
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
<summary>
Registers a specified .gfx file as GFx font library.
The .gfx file has to be registered with the streamer already.
</summary>
<param name="fileName">The name of the .gfx file, without extension.</param>
	]]

native "REGISTER_ENTITIES"
	arguments {
		func "factory",
	}
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
<summary>
**Experimental**: This native may be altered or removed in future versions of CitizenFX without warning.

Registers a set of entities with the game engine. These should match `CEntityDef` class information from the game.
At this time, this function **should not be used in a live environment**.
</summary>
<param name="factory">A function returning a list of entities.</param>
	]]

native "REGISTER_FONT_ID"
	arguments {
		charPtr "fontName",
	}
	ns "CFX"
    apiset "client"
	returns "int"
	doc [[!
<summary>
Registers a specified font name for use with text draw commands.
</summary>
<param name="fontName">The name of the font in the GFx font library.</param>
<returns>An index to use with [SET_TEXT_FONT](#_0x66E0276CC5F6B9DA) and similar natives.</returns>
	]]

native "REGISTER_NUI_CALLBACK_TYPE"
	arguments {
		charPtr "callbackType",
	}
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
	]]

native "REGISTER_RESOURCE_ASSET"
	arguments {
		charPtr "resourceName",
		charPtr "fileName",
	}
	ns "CFX"
    apiset "server"
	returns "charPtr"
	doc [[!
<summary>
**Experimental**: This native may be altered or removed in future versions of CitizenFX without warning.

Registers a cached resource asset with the resource system, similar to the automatic scanning of the `stream/` folder.
</summary>
<param name="resourceName">The resource to add the asset to.</param>
<param name="fileName">A file name in the resource.</param>
<returns>A cache string to pass to `REGISTER_STREAMING_FILE_FROM_CACHE` on the client.</returns>
	]]

native "REGISTER_RESOURCE_BUILD_TASK_FACTORY"
	arguments {
		charPtr "factoryId",
		func "factoryFn",
	}
	ns "CFX"
    apiset "server"
	returns "void"
	doc [[!
<summary>
Registers a build task factory for resources.
The function should return an object (msgpack map) with the following fields:

```
{
// returns whether the specific resource should be built
shouldBuild = func(resourceName: string): bool,

// asynchronously start building the specific resource.
// call cb when completed
build = func(resourceName: string, cb: func(success: bool, status: string): void): void
}
```
</summary>
<param name="factoryId">The identifier for the build task.</param>
<param name="factoryFn">The factory function.</param>
	]]

native "REGISTER_STREAMING_FILE_FROM_CACHE"
	arguments {
		charPtr "resourceName",
		charPtr "fileName",
		charPtr "cacheString",
	}
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
<summary>
**Experimental**: This native may be altered or removed in future versions of CitizenFX without warning.

Registers a dynamic streaming asset from the server with the GTA streaming module system.
</summary>
<param name="resourceName">The resource to add the asset to.</param>
<param name="fileName">A file name in the resource.</param>
<param name="cacheString">The string returned from `REGISTER_RESOURCE_ASSET` on the server.</param>
	]]

native "REGISTER_STREAMING_FILE_FROM_KVS"
	arguments {
		charPtr "kvsKey",
	}
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
<summary>
**Experimental**: This native may be altered or removed in future versions of CitizenFX without warning.

Registers a KVP value as an asset with the GTA streaming module system. This function currently won't work.
</summary>
<param name="kvsKey">The KVP key in the current resource to register as an asset.</param>
	]]

native "REGISTER_STREAMING_FILE_FROM_URL"
	arguments {
		charPtr "registerAs",
		charPtr "url",
	}
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
<summary>
**Experimental**: This native may be altered or removed in future versions of CitizenFX without warning.

Registers a file from an URL as a streaming asset in the GTA streaming subsystem. This will asynchronously register the asset, and caching is done based on the URL itself - cache headers are ignored.

Use `IS_STREAMING_FILE_READY` to check if the asset has been registered successfully.
</summary>
<param name="registerAs">The file name to register as, for example `asset.ydr`.</param>
<param name="url">The URL to fetch the asset from.</param>
	]]

native "REMOVE_REPLACE_TEXTURE"
	arguments {
		charPtr "origTxd",
		charPtr "origTxn",
	}
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
<summary>
Experimental natives, please do not use in a live environment.
</summary>
	]]

native "SAVE_RESOURCE_FILE"
	arguments {
		charPtr "resourceName",
		charPtr "fileName",
		charPtr "data",
		int "dataLength",
	}
	ns "CFX"
    apiset "server"
	returns "BOOL"
	doc [[!
<summary>
Writes the specified data to a file in the specified resource.
Using a length of `-1` will automatically detect the length assuming the data is a C string.
</summary>
<param name="resourceName">The name of the resource.</param>
<param name="fileName">The name of the file.</param>
<param name="data">The data to write to the file.</param>
<param name="dataLength">The length of the written data.</param>
<returns>A value indicating if the write succeeded.</returns>
	]]

native "REQUEST_PLAYER_COMMERCE_SESSION"
	arguments {
		charPtr "playerSrc",
		int "skuId",
	}
	ns "CFX"
    apiset "server"
	returns "void"
	doc [[!
<summary>
Requests the specified player to buy the passed SKU. This'll pop up a prompt on the client, which upon acceptance
will open the browser prompting further purchase details.
</summary>
<param name="playerSrc">The player handle</param>
<param name="skuId">The ID of the SKU.</param>
	]]

native "SEND_DUI_MESSAGE"
	arguments {
		long "duiObject",
		charPtr "jsonString",
	}
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
<summary>
Sends a message to the specific DUI root page. This is similar to SEND_NUI_MESSAGE.
</summary>
<param name="duiObject">The DUI browser handle.</param>
<param name="jsonString">The message, encoded as JSON.</param>
	]]

native "SEND_DUI_MOUSE_DOWN"
	arguments {
		long "duiObject",
		charPtr "button",
	}
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
<summary>
Injects a 'mouse down' event for a DUI object. Coordinates are expected to be set using SEND_DUI_MOUSE_MOVE.
</summary>
<param name="duiObject">The DUI browser handle.</param>
<param name="button">Either `'left'`, `'middle'` or `'right'`.</param>
	]]

native "SEND_DUI_MOUSE_UP"
	arguments {
		long "duiObject",
		charPtr "button",
	}
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
<summary>
Injects a 'mouse up' event for a DUI object. Coordinates are expected to be set using SEND_DUI_MOUSE_MOVE.
</summary>
<param name="duiObject">The DUI browser handle.</param>
<param name="button">Either `'left'`, `'middle'` or `'right'`.</param>
	]]

native "SEND_DUI_MOUSE_MOVE"
	arguments {
		long "duiObject",
		int "x",
		int "y",
	}
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
<summary>
Injects a 'mouse move' event for a DUI object. Coordinates are in browser space.
</summary>
<param name="duiObject">The DUI browser handle.</param>
<param name="x">The mouse X position.</param>
<param name="y">The mouse Y position.</param>
	]]

native "SEND_LOADING_SCREEN_MESSAGE"
	arguments {
		charPtr "jsonString",
	}
	ns "CFX"
    apiset "client"
	returns "BOOL"
	doc [[!
<summary>
Sends a message to the `loadingScreen` NUI frame, which contains the HTML page referenced in `loadscreen` resources.
</summary>
<param name="jsonString">The JSON-encoded message.</param>
<returns>A success value.</returns>
	]]

native "SET_CONVAR"
	arguments {
		charPtr "varName",
		charPtr "value",
	}
	ns "CFX"
    apiset "server"
	returns "void"
	doc [[!
	]]

native "SEND_DUI_MOUSE_WHEEL"
	arguments {
		long "duiObject",
		int "deltaY",
		int "deltaX",
	}
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
<summary>
Injects a 'mouse wheel' event for a DUI object.
</summary>
<param name="duiObject">The DUI browser handle.</param>
<param name="deltaY">The wheel Y delta.</param>
<param name="deltaX">The wheel X delta.</param>
	]]

native "SEND_NUI_MESSAGE"
	arguments {
		charPtr "jsonString",
	}
	ns "CFX"
    apiset "client"
	returns "BOOL"
	doc [[!
	]]

native "SET_CONVAR_SERVER_INFO"
	arguments {
		charPtr "varName",
		charPtr "value",
	}
	ns "CFX"
    apiset "server"
	returns "void"
	doc [[!
	]]

native "SET_CONVAR_REPLICATED"
	arguments {
		charPtr "varName",
		charPtr "value",
	}
	ns "CFX"
    apiset "server"
	returns "void"
	doc [[!
	]]

native "SET_DISCORD_APP_ID"
	arguments {
		charPtr "appId",
	}
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
<summary>
This native sets the app id for the discord rich presence implementation.
</summary>
<param name="appId">A valid Discord API App Id, can be generated at <https://discordapp.com/developers/applications/></param>
	]]

native "SET_DISCORD_RICH_PRESENCE_ASSET_SMALL"
	arguments {
		charPtr "assetName",
	}
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
<summary>
This native sets the small image asset for the discord rich presence implementation.
</summary>
<param name="assetName">The name of a valid asset registered on Discordapp's developer dashboard. Note that the asset has to be registered under the same discord API application set using the SET_DISCORD_APP_ID native.</param>
	]]

native "SET_DISCORD_RICH_PRESENCE_ASSET"
	arguments {
		charPtr "assetName",
	}
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
<summary>
This native sets the image asset for the discord rich presence implementation.
</summary>
<param name="assetName">The name of a valid asset registered on Discordapp's developer dashboard. note that the asset has to be registered under the same discord API application set using the SET_DISCORD_APP_ID native.</param>
	]]

native "SET_DISCORD_RICH_PRESENCE_ASSET_SMALL_TEXT"
	arguments {
		charPtr "text",
	}
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
<summary>
This native sets the hover text of the small image asset for the discord rich presence implementation.
</summary>
<param name="text">Text to be displayed when hovering over small image asset. Note that you must also set a valid small image asset using the SET_DISCORD_RICH_PRESENCE_ASSET_SMALL native.</param>
	]]

native "SET_DISCORD_RICH_PRESENCE_ASSET_TEXT"
	arguments {
		charPtr "text",
	}
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
<summary>
This native sets the hover text of the image asset for the discord rich presence implementation.
</summary>
<param name="text">Text to be displayed when hovering over image asset. Note that you must also set a valid image asset using the SET_DISCORD_RICH_PRESENCE_ASSET native.</param>
	]]

native "SET_DUI_URL"
	arguments {
		long "duiObject",
		charPtr "url",
	}
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
<summary>
Navigates the specified DUI browser to a different URL.
</summary>
<param name="duiObject">The DUI browser handle.</param>
<param name="url">The new URL.</param>
	]]

native "SET_GAME_TYPE"
	arguments {
		charPtr "gametypeName",
	}
	ns "CFX"
    apiset "server"
	returns "void"
	doc [[!
	]]

native "SET_HANDLING_FIELD"
	arguments {
		charPtr "vehicle",
		charPtr "class_",
		charPtr "fieldName",
		Any "value",
	}
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
<summary>
Sets a global handling override for a specific vehicle class. The name is supposed to match the `handlingName` field from handling.meta.
Example: `SetHandlingField('AIRTUG', 'CHandlingData', 'fSteeringLock', 360.0)`
</summary>
<param name="vehicle">The vehicle class to set data for.</param>
<param name="class_">The handling class to set. Only "CHandlingData" is supported at this time.</param>
<param name="fieldName">The field name to set. These match the keys in `handling.meta`.</param>
<param name="value">The value to set.</param>
	]]

native "SET_HANDLING_INT"
	arguments {
		charPtr "vehicle",
		charPtr "class_",
		charPtr "fieldName",
		int "value",
	}
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
<summary>
Sets a global handling override for a specific vehicle class. The name is supposed to match the `handlingName` field from handling.meta.
</summary>
<param name="vehicle">The vehicle class to set data for.</param>
<param name="class_">The handling class to set. Only "CHandlingData" is supported at this time.</param>
<param name="fieldName">The field name to set. These match the keys in `handling.meta`.</param>
<param name="value">The integer value to set.</param>
	]]

native "SET_HANDLING_FLOAT"
	arguments {
		charPtr "vehicle",
		charPtr "class_",
		charPtr "fieldName",
		float "value",
	}
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
<summary>
Sets a global handling override for a specific vehicle class. The name is supposed to match the `handlingName` field from handling.meta.
Example: `SetHandlingFloat('AIRTUG', 'CHandlingData', 'fSteeringLock', 360.0)`
</summary>
<param name="vehicle">The vehicle class to set data for.</param>
<param name="class_">The handling class to set. Only "CHandlingData" is supported at this time.</param>
<param name="fieldName">The field name to set. These match the keys in `handling.meta`.</param>
<param name="value">The floating-point value to set.</param>
	]]

native "SET_HTTP_HANDLER"
	arguments {
		func "handler",
	}
	ns "CFX"
    apiset "server"
	returns "void"
	doc [[!
	]]

native "SET_HANDLING_VECTOR"
	arguments {
		charPtr "vehicle",
		charPtr "class_",
		charPtr "fieldName",
		Vector3 "value",
	}
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
<summary>
Sets a global handling override for a specific vehicle class. The name is supposed to match the `handlingName` field from handling.meta.
Example: `SetHandlingVector('AIRTUG', 'CHandlingData', 'vecCentreOfMassOffset', vector3(0.0, 0.0, -5.0))`
</summary>
<param name="vehicle">The vehicle class to set data for.</param>
<param name="class_">The handling class to set. Only "CHandlingData" is supported at this time.</param>
<param name="fieldName">The field name to set. These match the keys in `handling.meta`.</param>
<param name="value">The Vector3 value to set.</param>
	]]

native "SET_MANUAL_SHUTDOWN_LOADING_SCREEN_NUI"
	arguments {
		BOOL "manualShutdown",
	}
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
<summary>
Sets whether or not `SHUTDOWN_LOADING_SCREEN` automatically shuts down the NUI frame for the loading screen. If this is enabled,
you will have to manually invoke `SHUTDOWN_LOADING_SCREEN_NUI` whenever you want to hide the NUI loading screen.
</summary>
<param name="manualShutdown">TRUE to manually shut down the loading screen NUI.</param>
	]]

native "SET_MAP_NAME"
	arguments {
		charPtr "mapName",
	}
	ns "CFX"
    apiset "server"
	returns "void"
	doc [[!
	]]

native "SET_MINIMAP_OVERLAY_DISPLAY"
	arguments {
		int "miniMap",
		float "x",
		float "y",
		float "xScale",
		float "yScale",
		float "alpha",
	}
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
<summary>
Sets the display info for a minimap overlay.
</summary>
<param name="miniMap">The minimap overlay ID.</param>
<param name="x">The X position for the overlay. This is equivalent to a game coordinate X.</param>
<param name="y">The Y position for the overlay. This is equivalent to a game coordinate Y, except that it's inverted (gfxY = -gameY).</param>
<param name="xScale">The X scale for the overlay. This is equivalent to the Flash \_xscale property, therefore 100 = 100%.</param>
<param name="yScale">The Y scale for the overlay. This is equivalent to the Flash \_yscale property.</param>
<param name="alpha">The alpha value for the overlay. This is equivalent to the Flash \_alpha property, therefore 100 = 100%.</param>
	]]

native "SET_NUI_FOCUS"
	arguments {
		BOOL "hasFocus",
		BOOL "hasCursor",
	}
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
	]]

native "SET_MODEL_HEADLIGHT_CONFIGURATION"
	arguments {
		Hash "modelHash",
		float "ratePerSecond",
		float "headlightRotation",
		BOOL "invertRotation",
	}
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
	]]

native "SET_PLAYER_TALKING_OVERRIDE"
	arguments {
		Player "player",
		BOOL "state",
	}
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
<summary>
the status of default voip system. It affects on `NETWORK_IS_PLAYER_TALKING` and `mp_facial` animation.
This function doesn't need to be called every frame, it works like a switcher.
</summary>
<param name="player">The target player.</param>
<param name="state">Overriding state.</param>
	]]

native "SET_RESOURCE_KVP_FLOAT"
	arguments {
		charPtr "key",
		float "value",
	}
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
	]]

native "SET_RESOURCE_KVP"
	arguments {
		charPtr "key",
		charPtr "value",
	}
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
	]]

native "SET_RUNTIME_TEXTURE_ARGB_DATA"
	arguments {
		long "tex",
		charPtr "buffer",
		int "length",
	}
	ns "CFX"
    apiset "client"
	returns "BOOL"
	doc [[!
	]]

native "SET_RESOURCE_KVP_INT"
	arguments {
		charPtr "key",
		int "value",
	}
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
	]]

native "SET_RICH_PRESENCE"
	arguments {
		charPtr "presenceState",
	}
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
<summary>
Sets the player's rich presence detail state for social platform providers to a specified string.
</summary>
<param name="presenceState">The rich presence string to set.</param>
	]]

native "SET_RUNTIME_TEXTURE_PIXEL"
	arguments {
		long "tex",
		int "x",
		int "y",
		int "r",
		int "g",
		int "b",
		int "a",
	}
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
<summary>
Sets a pixel in the specified runtime texture. This will have to be committed using `COMMIT_RUNTIME_TEXTURE` to have any effect.
</summary>
<param name="tex">A handle to the runtime texture.</param>
<param name="x">The X position of the pixel to change.</param>
<param name="y">The Y position of the pixel to change.</param>
<param name="r">The new R value (0-255).</param>
<param name="g">The new G value (0-255).</param>
<param name="b">The new B value (0-255).</param>
<param name="a">The new A value (0-255).</param>
	]]

native "SET_SNAKEOIL_FOR_ENTRY"
	arguments {
		charPtr "name",
		charPtr "path",
		charPtr "data",
	}
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
	]]

native "SET_TEXT_CHAT_ENABLED"
	arguments {
		BOOL "enabled",
	}
	ns "CFX"
    apiset "client"
	returns "BOOL"
	doc [[!
	]]

native "SET_VEHICLE_AUTO_REPAIR_DISABLED"
	arguments {
		Vehicle "vehicle",
		BOOL "value",
	}
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
<summary>
Disables the vehicle from being repaired when a vehicle extra is enabled.
</summary>
<param name="vehicle">The vehicle to set disable auto vehicle repair.</param>
<param name="value">Setting the value to  true prevents the vehicle from being repaired when a extra is enabled. Setting the value to false allows the vehicle from being repaired when a extra is enabled.</param>
	]]

native "SET_VEHICLE_ALARM_TIME_LEFT"
	arguments {
		Vehicle "vehicle",
		int "time",
	}
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
	]]

native "SET_VEHICLE_CLUTCH"
	arguments {
		Vehicle "vehicle",
		float "clutch",
	}
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
	]]

native "SET_VEHICLE_ENGINE_TEMPERATURE"
	arguments {
		Vehicle "vehicle",
		float "temperature",
	}
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
	]]

native "SET_VEHICLE_CURRENT_RPM"
	arguments {
		Vehicle "vehicle",
		float "rpm",
	}
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
	]]

native "SET_VEHICLE_GRAVITY_AMOUNT"
	arguments {
		Vehicle "vehicle",
		float "gravity",
	}
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
	]]

native "SET_VEHICLE_FUEL_LEVEL"
	arguments {
		Vehicle "vehicle",
		float "level",
	}
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
	]]

native "SET_VEHICLE_HANDLING_FLOAT"
	arguments {
		Vehicle "vehicle",
		charPtr "class_",
		charPtr "fieldName",
		float "value",
	}
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
<summary>
Sets a handling override for a specific vehicle. Certain handling flags can only be set globally using `SET_HANDLING_FLOAT`, this might require some experimentation.
Example: `SetVehicleHandlingFloat(vehicle, 'CHandlingData', 'fSteeringLock', 360.0)`
</summary>
<param name="vehicle">The vehicle to set data for.</param>
<param name="class_">The handling class to set. Only "CHandlingData" is supported at this time.</param>
<param name="fieldName">The field name to set. These match the keys in `handling.meta`.</param>
<param name="value">The floating-point value to set.</param>
	]]

native "SET_VEHICLE_HANDLING_FIELD"
	arguments {
		Vehicle "vehicle",
		charPtr "class_",
		charPtr "fieldName",
		Any "value",
	}
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
<summary>
Sets a handling override for a specific vehicle. Certain handling flags can only be set globally using `SET_HANDLING_FIELD`, this might require some experimentation.
Example: `SetVehicleHandlingField(vehicle, 'CHandlingData', 'fSteeringLock', 360.0)`
</summary>
<param name="vehicle">The vehicle to set data for.</param>
<param name="class_">The handling class to set. Only "CHandlingData" is supported at this time.</param>
<param name="fieldName">The field name to set. These match the keys in `handling.meta`.</param>
<param name="value">The value to set.</param>
	]]

native "SET_VEHICLE_HANDLING_VECTOR"
	arguments {
		Vehicle "vehicle",
		charPtr "class_",
		charPtr "fieldName",
		Vector3 "value",
	}
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
<summary>
Sets a handling override for a specific vehicle. Certain handling flags can only be set globally using `SET_HANDLING_VECTOR`, this might require some experimentation.
</summary>
<param name="vehicle">The vehicle to set data for.</param>
<param name="class_">The handling class to set. Only "CHandlingData" is supported at this time.</param>
<param name="fieldName">The field name to set. These match the keys in `handling.meta`.</param>
<param name="value">The Vector3 value to set.</param>
	]]

native "SET_VEHICLE_STEERING_ANGLE"
	arguments {
		Vehicle "vehicle",
		float "angle",
	}
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
	]]

native "SET_VEHICLE_HANDLING_INT"
	arguments {
		Vehicle "vehicle",
		charPtr "class_",
		charPtr "fieldName",
		int "value",
	}
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
<summary>
Sets a handling override for a specific vehicle. Certain handling flags can only be set globally using `SET_HANDLING_INT`, this might require some experimentation.
</summary>
<param name="vehicle">The vehicle to set data for.</param>
<param name="class_">The handling class to set. Only "CHandlingData" is supported at this time.</param>
<param name="fieldName">The field name to set. These match the keys in `handling.meta`.</param>
<param name="value">The integer value to set.</param>
	]]

native "SET_VEHICLE_TURBO_PRESSURE"
	arguments {
		Vehicle "vehicle",
		float "pressure",
	}
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
	]]

native "SET_VEHICLE_HIGH_GEAR"
	arguments {
		Vehicle "vehicle",
		int "gear",
	}
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
	]]

native "SET_VEHICLE_WHEEL_HEALTH"
	arguments {
		Vehicle "vehicle",
		int "wheelIndex",
		float "health",
	}
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
	]]

native "SET_VEHICLE_OIL_LEVEL"
	arguments {
		Vehicle "vehicle",
		float "level",
	}
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
	]]

native "SET_VEHICLE_WHEEL_Y_ROTATION"
	arguments {
		Vehicle "vehicle",
		int "wheelIndex",
		float "value",
	}
	alias "SET_VEHICLE_WHEEL_XROT"
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
	]]

native "SET_VEHICLE_STEERING_SCALE"
	arguments {
		Vehicle "vehicle",
		float "scale",
	}
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
	]]

native "SHUTDOWN_LOADING_SCREEN_NUI"
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
<summary>
Shuts down the `loadingScreen` NUI frame, similarly to `SHUTDOWN_LOADING_SCREEN`.
</summary>
	]]

native "START_RESOURCE"
	arguments {
		charPtr "resourceName",
	}
	ns "CFX"
    apiset "server"
	returns "BOOL"
	doc [[!
	]]

native "SET_VEHICLE_WHEEL_X_OFFSET"
	arguments {
		Vehicle "vehicle",
		int "wheelIndex",
		float "offset",
	}
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
<summary>
Adjusts the offset of the specified wheel relative to the wheel's axle center.
Needs to be called every frame in order to function properly, as GTA will reset the offset otherwise.
This function can be especially useful to set the track width of a vehicle, for example:

```
function SetVehicleFrontTrackWidth(vehicle, width)
SetVehicleWheelXOffset(vehicle, 0, -width/2)
SetVehicleWheelXOffset(vehicle, 1, width/2)
end
```
</summary>
	]]

native "STOP_RESOURCE"
	arguments {
		charPtr "resourceName",
	}
	ns "CFX"
    apiset "server"
	returns "BOOL"
	doc [[!
	]]

native "SET_VEHICLE_WHEELIE_STATE"
	arguments {
		Vehicle "vehicle",
		int "state",
	}
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
<summary>
Example script: <https://pastebin.com/J6XGbkCW>

List of known states:

```
1: Not wheeling.
65: Vehicle is ready to do wheelie (burnouting).
129: Vehicle is doing wheelie.
```
</summary>
<param name="vehicle">Vehicle</param>
<param name="state">Wheelie state</param>
	]]

native "TRIGGER_CLIENT_EVENT_INTERNAL"
	arguments {
		charPtr "eventName",
		charPtr "eventTarget",
		charPtr "eventPayload",
		int "payloadLength",
	}
	ns "CFX"
    apiset "server"
	returns "void"
	doc [[!
<summary>
The backing function for TriggerClientEvent.
</summary>
	]]

native "START_FIND_KVP"
	arguments {
		charPtr "prefix",
	}
	ns "CFX"
    apiset "client"
	returns "int"
	doc [[!
	]]

native "TEMP_BAN_PLAYER"
	arguments {
		charPtr "playerSrc",
		charPtr "reason",
	}
	ns "CFX"
    apiset "server"
	returns "void"
	doc [[!
	]]

native "TRIGGER_SERVER_EVENT_INTERNAL"
	arguments {
		charPtr "eventName",
		charPtr "eventPayload",
		int "payloadLength",
	}
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
<summary>
The backing function for TriggerServerEvent.
</summary>
	]]

native "TRIGGER_EVENT_INTERNAL"
	arguments {
		charPtr "eventName",
		charPtr "eventPayload",
		int "payloadLength",
	}
	ns "CFX"
    apiset "shared"
	returns "void"
	doc [[!
<summary>
The backing function for TriggerEvent.
</summary>
	]]

native "WAS_EVENT_CANCELED"
	ns "CFX"
    apiset "shared"
	returns "BOOL"
	doc [[!
<summary>
Returns whether or not the currently executing event was canceled.
</summary>
<returns>A boolean.</returns>
	]]

native "VERIFY_PASSWORD_HASH"
	arguments {
		charPtr "password",
		charPtr "hash",
	}
	ns "CFX"
    apiset "server"
	returns "BOOL"
	doc [[!
	]]

native "REGISTER_RESOURCE_AS_EVENT_HANDLER"
	arguments {
		charPtr "eventName",
	}
	ns "CFX"
    apiset "shared"
	returns "void"
	doc [[!
<summary>
An internal function which allows the current resource's HLL script runtimes to receive state for the specified event.
</summary>
<param name="eventName">An event name, or "\*" to disable HLL event filtering for this resource.</param>
	]]

native "ADD_TO_CLOCK_TIME"
    hash "0xD716F30D8C8980E2"
	jhash (0xCC40D20D)
	arguments {
		int "hours",
		int "minutes",
		int "seconds",
	}
	ns "CLOCK"
	returns "void"
	doc [[!
	]]

native "GET_CLOCK_DAY_OF_MONTH"
    hash "0x3D10BC92A4DB1D35"
	jhash (0xC7A5ACB7)
	ns "CLOCK"
	returns "int"
	doc [[!
	]]

native "ADVANCE_CLOCK_TIME_TO"
    hash "0xC8CA9670B9D83B3B"
	jhash (0x57B8DA7C)
	arguments {
		int "hour",
		int "minute",
		int "second",
	}
	ns "CLOCK"
	returns "void"
	doc [[!
	]]

native "GET_CLOCK_HOURS"
    hash "0x25223CA6B4D20B7F"
	jhash (0x7EF8316F)
	ns "CLOCK"
	returns "int"
	doc [[!
<summary>
```
Gets the current ingame hour, expressed without zeros. (09:34 will be represented as 9)  
```
</summary>
	]]

native "GET_CLOCK_DAY_OF_WEEK"
    hash "0xD972E4BD7AEB235F"
	jhash (0x84E4A289)
	ns "CLOCK"
	returns "int"
	doc [[!
<summary>
```
Gets the current day of the week.  
0: Sunday  
1: Monday  
2: Tuesday  
3: Wednesday  
4: Thursday  
5: Friday  
6: Saturday  
```
</summary>
	]]

native "GET_CLOCK_MINUTES"
    hash "0x13D2B8ADD79640F2"
	jhash (0x94AAC486)
	ns "CLOCK"
	returns "int"
	doc [[!
<summary>
```
Gets the current ingame clock minute.  
```
</summary>
	]]

native "GET_CLOCK_MONTH"
    hash "0xBBC72712E80257A1"
	jhash (0x3C48A3D5)
	ns "CLOCK"
	returns "int"
	doc [[!
	]]

native "GET_CLOCK_YEAR"
    hash "0x961777E64BDAF717"
	jhash (0xB8BECF15)
	ns "CLOCK"
	returns "int"
	doc [[!
	]]

native "GET_CLOCK_SECONDS"
    hash "0x494E97C2EF27C470"
	jhash (0x099C927E)
	ns "CLOCK"
	returns "int"
	doc [[!
<summary>
```
Gets the current ingame clock second. Note that ingame clock seconds change really fast since a day in GTA is only 48 minutes in real life.  
```
</summary>
	]]

native "GET_LOCAL_TIME"
    hash "0x50C7A99057A69748"
	jhash (0x124BCFA2)
	arguments {
		intPtr "year",
		intPtr "month",
		intPtr "day",
		intPtr "hour",
		intPtr "minute",
		intPtr "second",
	}
	ns "CLOCK"
	returns "void"
	doc [[!
<summary>
```
Gets local system time as year, month, day, hour, minute and second.  
Example usage:  
int year;  
int month;  
int day;  
int hour;  
int minute;  
int second;  
or use std::tm struct  
TIME::GET_LOCAL_TIME(&year, &month, &day, &hour, &minute, &second);  
```
</summary>
	]]

native "GET_MILLISECONDS_PER_GAME_MINUTE"
    hash "0x2F8B4D1C595B11DB"
	jhash (0x3B74095C)
	ns "CLOCK"
	returns "int"
	doc [[!
	]]

native "GET_POSIX_TIME"
    hash "0xDA488F299A5B164E"
	jhash (0xE15A5281)
	arguments {
		intPtr "year",
		intPtr "month",
		intPtr "day",
		intPtr "hour",
		intPtr "minute",
		intPtr "second",
	}
	ns "CLOCK"
	returns "void"
	doc [[!
<summary>
```
Gets system time as year, month, day, hour, minute and second.  
Example usage:  
	int year;  
	int month;  
	int day;  
	int hour;  
	int minute;  
	int second;  
	TIME::GET_POSIX_TIME(&year, &month, &day, &hour, &minute, &second);  
```
</summary>
	]]

native "_GET_UTC_TIME"
    hash "0x8117E09A19EEF4D3"
	arguments {
		intPtr "year",
		intPtr "month",
		intPtr "day",
		intPtr "hour",
		intPtr "minute",
		intPtr "second",
	}
	alias "_GET_LOCAL_TIME"
	ns "CLOCK"
	returns "void"
	doc [[!
<summary>
```
console hash: 0xC589CD7D = GET_UTC_TIME  
gets current UTC time  
```
</summary>
	]]

native "PAUSE_CLOCK"
    hash "0x4055E40BD2DBEC1D"
	jhash (0xB02D6124)
	arguments {
		BOOL "toggle",
	}
	ns "CLOCK"
	returns "void"
	doc [[!
	]]

native "SET_CLOCK_DATE"
    hash "0xB096419DF0D06CE7"
	jhash (0x96891C94)
	arguments {
		int "day",
		int "month",
		int "year",
	}
	ns "CLOCK"
	returns "void"
	doc [[!
	]]

native "SET_CLOCK_TIME"
    hash "0x47C3B5848C3E45D8"
	jhash (0x26F6AF14)
	arguments {
		int "hour",
		int "minute",
		int "second",
	}
	ns "CLOCK"
	returns "void"
	doc [[!
<summary>
```
SET_CLOCK_TIME(12, 34, 56);  
```
</summary>
	]]

native "CAN_SET_ENTER_STATE_FOR_REGISTERED_ENTITY"
    hash "0x645D0B458D8E17B5"
	jhash (0x55C30B26)
	arguments {
		charPtr "cutsceneEntName",
		Hash "modelHash",
	}
	ns "CUTSCENE"
	returns "BOOL"
	doc [[!
<summary>
```
modelHash (p1) was always 0 in R* scripts  
```
</summary>
	]]

native "CAN_SET_EXIT_STATE_FOR_REGISTERED_ENTITY"
    hash "0x4C6A6451C79E4662"
	jhash (0x8FF5D3C4)
	arguments {
		charPtr "cutsceneEntName",
		Hash "modelHash",
	}
	ns "CUTSCENE"
	returns "BOOL"
	doc [[!
	]]

native "CAN_SET_EXIT_STATE_FOR_CAMERA"
    hash "0xB2CBCD0930DFB420"
	jhash (0xEDAE6C02)
	arguments {
		BOOL "p0",
	}
	ns "CUTSCENE"
	returns "BOOL"
	doc [[!
	]]

native "GET_CUTSCENE_SECTION_PLAYING"
    hash "0x49010A6A396553D8"
	jhash (0x1026F0D6)
	ns "CUTSCENE"
	returns "int"
	doc [[!
	]]

native "DOES_CUTSCENE_ENTITY_EXIST"
    hash "0x499EF20C5DB25C59"
	jhash (0x58E67409)
	arguments {
		charPtr "cutsceneEntName",
		Hash "modelHash",
	}
	ns "CUTSCENE"
	returns "BOOL"
	doc [[!
	]]

native "GET_CUTSCENE_TIME"
    hash "0xE625BEABBAFFDAB9"
	jhash (0x53F5B5AB)
	ns "CUTSCENE"
	returns "int"
	doc [[!
	]]

native "GET_ENTITY_INDEX_OF_CUTSCENE_ENTITY"
    hash "0x0A2E9FDB9A8C62F6"
	jhash (0x1D09ABC7)
	arguments {
		charPtr "cutsceneEntName",
		Hash "modelHash",
	}
	ns "CUTSCENE"
	returns "Entity"
	doc [[!
	]]

native "GET_CUTSCENE_TOTAL_DURATION"
    hash "0xEE53B14A19E480D4"
	jhash (0x0824EBE8)
	ns "CUTSCENE"
	returns "int"
	doc [[!
	]]

native "HAS_CUTSCENE_LOADED"
    hash "0xC59F528E9AB9F339"
	jhash (0xF9998582)
	ns "CUTSCENE"
	returns "BOOL"
	doc [[!
	]]

native "GET_ENTITY_INDEX_OF_REGISTERED_ENTITY"
    hash "0xC0741A26499654CD"
	jhash (0x46D18755)
	arguments {
		charPtr "cutsceneEntName",
		Hash "modelHash",
	}
	ns "CUTSCENE"
	returns "Entity"
	doc [[!
	]]

native "HAS_THIS_CUTSCENE_LOADED"
    hash "0x228D3D94F8A11C3C"
	jhash (0x3C5619F2)
	arguments {
		charPtr "cutsceneName",
	}
	ns "CUTSCENE"
	returns "BOOL"
	doc [[!
	]]

native "HAS_CUTSCENE_FINISHED"
    hash "0x7C0A893088881D57"
	jhash (0x5DED14B4)
	ns "CUTSCENE"
	returns "BOOL"
	doc [[!
	]]

native "IS_CUTSCENE_PLAYING"
    hash "0xD3C2E180A40F031E"
	jhash (0xA3A78392)
	ns "CUTSCENE"
	returns "BOOL"
	doc [[!
	]]

native "IS_CUTSCENE_ACTIVE"
    hash "0x991251AFC3981F84"
	jhash (0xCCE2FE9D)
	ns "CUTSCENE"
	returns "BOOL"
	doc [[!
	]]

native "0x06A3524161C502BA"
    hash "0x06A3524161C502BA"
	arguments {
		AnyPtr "p0",
	}
	ns "CUTSCENE"
	returns "void"
	doc [[!
	]]

native "0x011883F41211432A"
    hash "0x011883F41211432A"
	arguments {
		Any "p0",
		Any "p1",
		Any "p2",
		Any "p3",
		Any "p4",
		Any "p5",
		Any "p6",
	}
	ns "CUTSCENE"
	returns "void"
	doc [[!
	]]

native "0x0ABC54DE641DC0FC"
    hash "0x0ABC54DE641DC0FC"
	arguments {
		AnyPtr "p0",
	}
	ns "CUTSCENE"
	returns "Any"
	doc [[!
	]]

native "0x2A56C06EBEF2B0D9"
    hash "0x2A56C06EBEF2B0D9"
	jhash (0x1E7DA95E)
	arguments {
		charPtr "cutsceneEntName",
		Ped "ped",
		Hash "modelHash",
	}
	ns "CUTSCENE"
	returns "void"
	doc [[!
	]]

native "0x06EE9048FD080382"
    hash "0x06EE9048FD080382"
	arguments {
		BOOL "p0",
	}
	ns "CUTSCENE"
	returns "void"
	doc [[!
	]]

native "0x41FAA8FB2ECE8720"
    hash "0x41FAA8FB2ECE8720"
	jhash (0x28D54A7F)
	arguments {
		BOOL "p0",
	}
	ns "CUTSCENE"
	returns "void"
	doc [[!
	]]

native "0x20746F7B1032A3C7"
    hash "0x20746F7B1032A3C7"
	arguments {
		BOOL "p0",
		BOOL "p1",
		BOOL "p2",
		BOOL "p3",
	}
	ns "CUTSCENE"
	returns "void"
	doc [[!
	]]

native "0x4CEBC1ED31E8925E"
    hash "0x4CEBC1ED31E8925E"
	arguments {
		charPtr "cutsceneName",
	}
	ns "CUTSCENE"
	returns "BOOL"
	doc [[!
<summary>
```
This function is hard-coded to always return 1.  
```
</summary>
	]]

native "0x2F137B508DE238F2"
    hash "0x2F137B508DE238F2"
	jhash (0x8338DA1D)
	arguments {
		BOOL "p0",
	}
	ns "CUTSCENE"
	returns "void"
	doc [[!
	]]

native "0x5EDEF0CF8C1DAB3C"
    hash "0x5EDEF0CF8C1DAB3C"
	jhash (0xDBD88708)
	ns "CUTSCENE"
	returns "BOOL"
	doc [[!
	]]

native "0x708BDD8CD795B043"
    hash "0x708BDD8CD795B043"
	jhash (0x4315A7C5)
	ns "CUTSCENE"
	returns "void"
	doc [[!
	]]

native "0x4C61C75BEE8184C2"
    hash "0x4C61C75BEE8184C2"
	jhash (0x47DB08A9)
	arguments {
		charPtr "p0",
		Any "p1",
		Any "p2",
	}
	ns "CUTSCENE"
	returns "void"
	doc [[!
	]]

native "0x583DF8E3D4AFBD98"
    hash "0x583DF8E3D4AFBD98"
	jhash (0x5AE68AE6)
	ns "CUTSCENE"
	returns "int"
	doc [[!
	]]

native "0x7F96F23FA9B73327"
    hash "0x7F96F23FA9B73327"
	arguments {
		Hash "modelHash",
	}
	ns "CUTSCENE"
	returns "void"
	doc [[!
	]]

native "0xA0FE76168A189DDB"
    hash "0xA0FE76168A189DDB"
	ns "CUTSCENE"
	returns "int"
	doc [[!
	]]

native "0x71B74D2AE19338D0"
    hash "0x71B74D2AE19338D0"
	jhash (0x7B93CDAA)
	arguments {
		int "p0",
	}
	ns "CUTSCENE"
	returns "BOOL"
	doc [[!
<summary>
```
It's 100% an IS_CUTSCENE_* native.  
```
</summary>
	]]

native "0xB56BBBCC2955D9CB"
    hash "0xB56BBBCC2955D9CB"
	jhash (0xDD8878E9)
	ns "CUTSCENE"
	returns "BOOL"
	doc [[!
<summary>
```
"Can request assets for cutscene entity"? (found in decompiled scripts)  
```
</summary>
	]]

native "0x8D9DF6ECA8768583"
    hash "0x8D9DF6ECA8768583"
	jhash (0x25A2CABC)
	arguments {
		int "p0",
	}
	ns "CUTSCENE"
	returns "void"
	doc [[!
<summary>
```
Example of usage:  
v_2 = SCRIPT::_30B4FA1C82DD4B9F(); // int _GET_ID_OF_NEXT_SCRIPT_IN_ENUMERATION()  
CUTSCENE::_8D9DF6ECA8768583(v_2);  
```
</summary>
	]]

native "0xA1C996C2A744262E"
    hash "0xA1C996C2A744262E"
	arguments {
		AnyPtr "p0",
	}
	ns "CUTSCENE"
	returns "BOOL"
	doc [[!
	]]

native "0xD00D76A7DFC9D852"
    hash "0xD00D76A7DFC9D852"
	arguments {
		AnyPtr "p0",
	}
	ns "CUTSCENE"
	returns "void"
	doc [[!
	]]

native "REGISTER_ENTITY_FOR_CUTSCENE"
    hash "0xE40C1C56DF95C2E8"
	jhash (0x7CBC3EC7)
	arguments {
		Ped "cutscenePed",
		charPtr "cutsceneEntName",
		int "p2",
		Hash "modelHash",
		int "p4",
	}
	ns "CUTSCENE"
	returns "void"
	doc [[!
	]]

native "0xC61B86C9F61EB404"
    hash "0xC61B86C9F61EB404"
	jhash (0x35721A08)
	arguments {
		BOOL "toggle",
	}
	ns "CUTSCENE"
	returns "void"
	doc [[!
<summary>
```
Toggles a value (bool) for cutscenes.  
```
</summary>
	]]

native "REGISTER_SYNCHRONISED_SCRIPT_SPEECH"
    hash "0x2131046957F31B04"
	jhash (0xB60CFBB9)
	ns "CUTSCENE"
	returns "void"
	doc [[!
	]]

native "0xE36A98D8AB3D3C66"
    hash "0xE36A98D8AB3D3C66"
	jhash (0x04377C10)
	arguments {
		BOOL "p0",
	}
	ns "CUTSCENE"
	returns "void"
	doc [[!
	]]

native "REQUEST_CUTSCENE"
    hash "0x7A86743F475D9E09"
	jhash (0xB5977853)
	arguments {
		charPtr "cutsceneName",
		int "p1",
	}
	ns "CUTSCENE"
	returns "void"
	doc [[!
<summary>
```
p1: usually 8  
Cutscene list: pastebin.com/Bbj7ANpQ  
```
</summary>
	]]

native "REMOVE_CUTSCENE"
    hash "0x440AF51A3462B86F"
	jhash (0x8052F533)
	ns "CUTSCENE"
	returns "void"
	doc [[!
	]]

native "SET_CUTSCENE_FADE_VALUES"
    hash "0x8093F23ABACCC7D4"
	jhash (0xD19EF0DD)
	arguments {
		BOOL "p0",
		BOOL "p1",
		BOOL "p2",
		BOOL "p3",
	}
	ns "CUTSCENE"
	returns "void"
	doc [[!
	]]

native "_REQUEST_CUTSCENE_EX"
    hash "0xC23DE0E91C30B58C"
	jhash (0xD98F656A)
	arguments {
		charPtr "cutsceneName",
		int "p1",
		int "p2",
	}
	alias "0xC23DE0E91C30B58C"
	ns "CUTSCENE"
	returns "void"
	doc [[!
<summary>
```
Example:  
CUTSCENE::_0xC23DE0E91C30B58C("JOSH_1_INT_CONCAT", 13, 8);  
Cutscene list: pastebin.com/Bbj7ANpQ  
```
</summary>
	]]

native "SET_CUTSCENE_PED_COMPONENT_VARIATION"
    hash "0xBA01E7B6DEEFBBC9"
	jhash (0x6AF994A1)
	arguments {
		charPtr "cutsceneEntName",
		int "p1",
		int "p2",
		int "p3",
		Hash "modelHash",
	}
	ns "CUTSCENE"
	returns "void"
	doc [[!
	]]

native "SET_CUTSCENE_PED_PROP_VARIATION"
    hash "0x0546524ADE2E9723"
	jhash (0x22E9A9DE)
	arguments {
		charPtr "cutsceneEntName",
		int "p1",
		int "p2",
		int "p3",
		Hash "modelHash",
	}
	alias "0x0546524ADE2E9723"
	ns "CUTSCENE"
	returns "void"
	doc [[!
<summary>
```
Thanks R*! ;)  
if ((l_161 == 0) || (l_161 == 2)) {  
    sub_2ea27("Trying to set Jimmy prop variation");  
    CUTSCENE::_0546524ADE2E9723("Jimmy_Boston", 1, 0, 0, 0);  
}  
```
</summary>
	]]

native "SET_CUTSCENE_ORIGIN"
    hash "0xB812B3FD1C01CF27"
	jhash (0xB0AD7792)
	arguments {
		float "x",
		float "y",
		float "z",
		float "p3",
		int "p4",
	}
	ns "CUTSCENE"
	returns "void"
	doc [[!
<summary>
```
p3 could be heading. Needs more research.  
```
</summary>
	]]

native "SET_CUTSCENE_TRIGGER_AREA"
    hash "0x9896CE4721BE84BA"
	jhash (0x9D76D9DE)
	arguments {
		float "p0",
		float "p1",
		float "p2",
		float "p3",
		float "p4",
		float "p5",
	}
	ns "CUTSCENE"
	returns "void"
	doc [[!
<summary>
```
Only used twice in R* scripts  
```
</summary>
	]]

native "START_CUTSCENE_AT_COORDS"
    hash "0x1C9ADDA3244A1FBF"
	jhash (0x58BEA436)
	arguments {
		float "x",
		float "y",
		float "z",
		int "p3",
	}
	ns "CUTSCENE"
	returns "void"
	doc [[!
<summary>
```
p3: some kind of flag. Usually 0.  
```
</summary>
	]]

native "START_CUTSCENE"
    hash "0x186D5CB5E7B0FF7B"
	jhash (0x210106F6)
	arguments {
		int "p0",
	}
	ns "CUTSCENE"
	returns "void"
	doc [[!
<summary>
```
some kind of flag. Usually 0.  
```
</summary>
	]]

native "STOP_CUTSCENE"
    hash "0xC7272775B4DC786E"
	jhash (0x5EE84DC7)
	arguments {
		BOOL "p0",
	}
	ns "CUTSCENE"
	returns "void"
	doc [[!
	]]

native "WAS_CUTSCENE_SKIPPED"
    hash "0x40C8656EDAEDD569"
	jhash (0xC9B6949D)
	ns "CUTSCENE"
	returns "BOOL"
	doc [[!
	]]

native "STOP_CUTSCENE_IMMEDIATELY"
    hash "0xD220BDD222AC4A1E"
	jhash (0xF528A2AD)
	ns "CUTSCENE"
	returns "void"
	doc [[!
	]]

native "_ARRAY_VALUE_ADD_INTEGER"
    hash "0xCABDB751D86FE93B"
	jhash (0xF29C0B36)
	arguments {
		AnyPtr "arrayData",
		int "value",
	}
	ns "DATAFILE"
	returns "void"
	doc [[!
	]]

native "_ARRAY_VALUE_ADD_BOOLEAN"
    hash "0xF8B0F5A43E928C76"
	jhash (0x08174B90)
	arguments {
		AnyPtr "arrayData",
		BOOL "value",
	}
	ns "DATAFILE"
	returns "void"
	doc [[!
	]]

native "_ARRAY_VALUE_ADD_OBJECT"
    hash "0x6889498B3E19C797"
	jhash (0xC174C71B)
	arguments {
		AnyPtr "arrayData",
	}
	ns "DATAFILE"
	returns "AnyPtr"
	doc [[!
	]]

native "_ARRAY_VALUE_ADD_FLOAT"
    hash "0x57A995FD75D37F56"
	jhash (0xE4302123)
	arguments {
		AnyPtr "arrayData",
		float "value",
	}
	ns "DATAFILE"
	returns "void"
	doc [[!
	]]

native "_ARRAY_VALUE_ADD_VECTOR3"
    hash "0x407F8D034F70F0C2"
	jhash (0x16F464B6)
	arguments {
		AnyPtr "arrayData",
		float "valueX",
		float "valueY",
		float "valueZ",
	}
	ns "DATAFILE"
	returns "void"
	doc [[!
	]]

native "_ARRAY_VALUE_ADD_STRING"
    hash "0x2F0661C155AEEEAA"
	jhash (0xF3C01350)
	arguments {
		AnyPtr "arrayData",
		charPtr "value",
	}
	ns "DATAFILE"
	returns "void"
	doc [[!
	]]

native "_ARRAY_VALUE_GET_FLOAT"
    hash "0xC0C527B525D7CFB5"
	jhash (0x08AD2CC2)
	arguments {
		AnyPtr "arrayData",
		int "arrayIndex",
	}
	ns "DATAFILE"
	returns "float"
	doc [[!
	]]

native "_ARRAY_VALUE_GET_BOOLEAN"
    hash "0x50C1B2874E50C114"
	jhash (0xA2E5F921)
	arguments {
		AnyPtr "arrayData",
		int "arrayIndex",
	}
	ns "DATAFILE"
	returns "BOOL"
	doc [[!
	]]

native "_ARRAY_VALUE_GET_OBJECT"
    hash "0x8B5FADCC4E3A145F"
	jhash (0xECE81278)
	arguments {
		AnyPtr "arrayData",
		int "arrayIndex",
	}
	ns "DATAFILE"
	returns "AnyPtr"
	doc [[!
	]]

native "_ARRAY_VALUE_GET_STRING"
    hash "0xD3F2FFEB8D836F52"
	jhash (0x93F985A6)
	arguments {
		AnyPtr "arrayData",
		int "arrayIndex",
	}
	ns "DATAFILE"
	returns "charPtr"
	doc [[!
	]]

native "_ARRAY_VALUE_GET_INTEGER"
    hash "0x3E5AE19425CD74BE"
	jhash (0xBB120CFC)
	arguments {
		AnyPtr "arrayData",
		int "arrayIndex",
	}
	ns "DATAFILE"
	returns "int"
	doc [[!
	]]

native "_ARRAY_VALUE_GET_TYPE"
    hash "0x3A0014ADB172A3C5"
	jhash (0xFA2402C8)
	arguments {
		AnyPtr "arrayData",
		int "arrayIndex",
	}
	ns "DATAFILE"
	returns "int"
	doc [[!
<summary>
```
Types:  
1 = Boolean  
2 = Integer  
3 = Float  
4 = String  
5 = Vector3  
6 = Object  
7 = Array  
```
</summary>
	]]

native "_ARRAY_VALUE_GET_SIZE"
    hash "0x065DB281590CEA2D"
	jhash (0xA8A21766)
	arguments {
		AnyPtr "arrayData",
	}
	ns "DATAFILE"
	returns "int"
	doc [[!
	]]

native "DATAFILE_DELETE"
    hash "0x9AB9C1CFC8862DFB"
	jhash (0xDEF31B0A)
	ns "DATAFILE"
	returns "void"
	doc [[!
	]]

native "_ARRAY_VALUE_GET_VECTOR3"
    hash "0x8D2064E5B64A628A"
	jhash (0x80E3DA55)
	arguments {
		AnyPtr "arrayData",
		int "arrayIndex",
	}
	ns "DATAFILE"
	returns "Vector3"
	doc [[!
	]]

native "DATAFILE_IS_SAVE_PENDING"
    hash "0xBEDB96A7584AA8CF"
	jhash (0x5DCD0796)
	alias "0xBEDB96A7584AA8CF"
	ns "DATAFILE"
	returns "BOOL"
	doc [[!
<summary>
```
Example:  
if (!DATAFILE::_BEDB96A7584AA8CF())  
{  
    if (!g_109E3)  
	{  
        if (((sub_d4f() == 2) == 0) && (!NETWORK::NETWORK_IS_GAME_IN_PROGRESS()))  
{  
            if (NETWORK::NETWORK_IS_CLOUD_AVAILABLE())  
	{  
                g_17A8B = 0;  
            }  
            if (!g_D52C)  
	{  
                sub_730();  
            }  
        }  
    }  
}  
```
</summary>
	]]

native "DATAFILE_CREATE"
    hash "0xD27058A1CA2B13EE"
	jhash (0x95F8A221)
	ns "DATAFILE"
	returns "void"
	doc [[!
	]]

native "_LOAD_UGC_FILE"
    hash "0xC5238C011AF405E4"
	jhash (0x660C468E)
	arguments {
		charPtr "filename",
	}
	ns "DATAFILE"
	returns "BOOL"
	doc [[!
<summary>
```
Loads a User-Generated Content (UGC) file. These files can be found in "[GTA5]\data\ugc" and "[GTA5]\common\patch\ugc". They seem to follow a naming convention, most likely of "[name]_[part].ugc". See example below for usage.  
Returns whether or not the file was successfully loaded.  
Example:  
DATAFILE::_LOAD_UGC_FILE("RockstarPlaylists") // loads "rockstarplaylists_00.ugc"  
```
</summary>
	]]

native "DATAFILE_GET_FILE_DICT"
    hash "0x906B778CA1DC72B6"
	jhash (0x86DDF9C2)
	alias "0x906B778CA1DC72B6"
	ns "DATAFILE"
	returns "charPtr"
	doc [[!
	]]

native "0x15FF52B809DB2353"
    hash "0x15FF52B809DB2353"
	arguments {
		Any "p0",
	}
	ns "DATAFILE"
	returns "BOOL"
	doc [[!
	]]

native "0x2ED61456317B8178"
    hash "0x2ED61456317B8178"
	jhash (0x4E03F632)
	ns "DATAFILE"
	returns "void"
	doc [[!
	]]

native "0x01095C95CD46B624"
    hash "0x01095C95CD46B624"
	jhash (0xB8515B2F)
	arguments {
		int "p0",
	}
	ns "DATAFILE"
	returns "BOOL"
	doc [[!
<summary>
```
if ((NETWORK::_597F8DBA9B206FC7() > 0) && DATAFILE::_01095C95CD46B624(0)) {  
v_10 = DATAFILE::_GET_ROOT_OBJECT();  
v_11 = DATAFILE::_OBJECT_VALUE_GET_INTEGER(v_10, "pt");  
sub_20202(2, v_11);  
a_0 += 1;  
		} else {   
a_0 += 1;  
		}  
```
</summary>
	]]

native "0x4DFDD9EB705F8140"
    hash "0x4DFDD9EB705F8140"
	jhash (0x0B4087F7)
	arguments {
		BOOLPtr "p0",
	}
	ns "DATAFILE"
	returns "BOOL"
	doc [[!
	]]

native "0x22DA66936E0FFF37"
    hash "0x22DA66936E0FFF37"
	jhash (0xB41064A4)
	arguments {
		Any "p0",
	}
	ns "DATAFILE"
	returns "BOOL"
	doc [[!
	]]

native "0x648E7A5434AF7969"
    hash "0x648E7A5434AF7969"
	jhash (0x459F2683)
	arguments {
		charPtr "p0",
		AnyPtr "p1",
		BOOL "p2",
		AnyPtr "p3",
		AnyPtr "p4",
		AnyPtr "p5",
		charPtr "type",
	}
	ns "DATAFILE"
	returns "BOOL"
	doc [[!
	]]

native "0x4645DE9980999E93"
    hash "0x4645DE9980999E93"
	jhash (0xDBB83E2B)
	arguments {
		charPtr "p0",
		charPtr "p1",
		charPtr "p2",
		charPtr "p3",
		charPtr "type",
	}
	ns "DATAFILE"
	returns "BOOL"
	doc [[!
<summary>
```
NOTE: 'p2' might be some kind of array.  
```
</summary>
	]]

native "0x6CC86E78358D5119"
    hash "0x6CC86E78358D5119"
	ns "DATAFILE"
	returns "void"
	doc [[!
	]]

native "0x52818819057F2B40"
    hash "0x52818819057F2B40"
	jhash (0xA4D1B30E)
	arguments {
		int "p0",
	}
	ns "DATAFILE"
	returns "BOOL"
	doc [[!
	]]

native "0x83BCCE3224735F05"
    hash "0x83BCCE3224735F05"
	jhash (0x768CBB35)
	arguments {
		charPtr "filename",
	}
	ns "DATAFILE"
	returns "BOOL"
	doc [[!
<summary>
```
Saves a JSON file? It might even be saving it to the Rockstar Cloud, but I have no way of verifying this  
"shrinkletter.c4", line ~378:  
DATAFILE::DATAFILE_CREATE();  
v_5 = DATAFILE::_GET_ROOT_OBJECT();  
DATAFILE::_OBJECT_VALUE_ADD_INTEGER(v_5, "in", a_2);  
DATAFILE::_OBJECT_VALUE_ADD_STRING(v_5, "st", &a_2._f1);  
DATAFILE::_OBJECT_VALUE_ADD_STRING(v_5, "mp", &a_2._f2);  
DATAFILE::_OBJECT_VALUE_ADD_STRING(v_5, "ms", &a_2._f3);  
DATAFILE::_OBJECT_VALUE_ADD_STRING(v_5, "sc", &a_2._f5);  
DATAFILE::_OBJECT_VALUE_ADD_STRING(v_5, "pr", &a_2._f6);  
DATAFILE::_OBJECT_VALUE_ADD_STRING(v_5, "fa", &a_2._f7);  
DATAFILE::_OBJECT_VALUE_ADD_STRING(v_5, "sm", &a_2._f8);  
DATAFILE::_OBJECT_VALUE_ADD_STRING(v_5, "kp", &a_2._f9);  
DATAFILE::_OBJECT_VALUE_ADD_STRING(v_5, "sv", &a_2._fA);  
DATAFILE::_OBJECT_VALUE_ADD_STRING(v_5, "yo", &a_2._fB);  
DATAFILE::_OBJECT_VALUE_ADD_STRING(v_5, "fi", &a_2._fC);  
DATAFILE::_OBJECT_VALUE_ADD_STRING(v_5, "rc", &a_2._fD);  
DATAFILE::_OBJECT_VALUE_ADD_STRING(v_5, "co", &a_2._fE);  
DATAFILE::_OBJECT_VALUE_ADD_INTEGER(v_5, "su", a_2._fF);  
DATAFILE::_83BCCE3224735F05("gta5/psych/index.json"); // saves the file?  
```
</summary>
	]]

native "0x692D808C34A82143"
    hash "0x692D808C34A82143"
	jhash (0xBB6321BD)
	arguments {
		charPtr "p0",
		float "p1",
		charPtr "type",
	}
	ns "DATAFILE"
	returns "BOOL"
	doc [[!
	]]

native "0x9CB0BFA7A9342C3D"
    hash "0x9CB0BFA7A9342C3D"
	jhash (0xCB6A351E)
	arguments {
		int "p0",
		BOOL "p1",
	}
	ns "DATAFILE"
	returns "BOOL"
	doc [[!
	]]

native "0x8F5EA1C01D65A100"
    hash "0x8F5EA1C01D65A100"
	jhash (0x9DB63CFF)
	arguments {
		Any "p0",
	}
	ns "DATAFILE"
	returns "BOOL"
	doc [[!
	]]

native "0xA69AC4ADE82B57A4"
    hash "0xA69AC4ADE82B57A4"
	jhash (0xE8D56DA2)
	arguments {
		int "p0",
	}
	ns "DATAFILE"
	returns "BOOL"
	doc [[!
	]]

native "0xC55854C7D7274882"
    hash "0xC55854C7D7274882"
	jhash (0xF11F956F)
	ns "DATAFILE"
	returns "void"
	doc [[!
	]]

native "0xA5EFC3E847D60507"
    hash "0xA5EFC3E847D60507"
	jhash (0xD96860FC)
	arguments {
		charPtr "p0",
		charPtr "p1",
		charPtr "p2",
		charPtr "p3",
		BOOL "p4",
	}
	ns "DATAFILE"
	returns "BOOL"
	doc [[!
<summary>
```
NOTE: 'p1' might be some kind of array.  
```
</summary>
	]]

native "0xF8CC1EBE0B62E29F"
    hash "0xF8CC1EBE0B62E29F"
	arguments {
		Any "p0",
	}
	ns "DATAFILE"
	returns "BOOL"
	doc [[!
	]]

native "0xAD6875BBC0FC899C"
    hash "0xAD6875BBC0FC899C"
	jhash (0x621388FF)
	arguments {
		Blip "x",
	}
	ns "DATAFILE"
	returns "void"
	doc [[!
	]]

native "_OBJECT_VALUE_ADD_ARRAY"
    hash "0x5B11728527CA6E5F"
	jhash (0x03939B8D)
	arguments {
		AnyPtr "objectData",
		charPtr "key",
	}
	ns "DATAFILE"
	returns "AnyPtr"
	doc [[!
	]]

native "0xC84527E235FCA219"
    hash "0xC84527E235FCA219"
	jhash (0xF09157B0)
	arguments {
		charPtr "p0",
		BOOL "p1",
		charPtr "p2",
		AnyPtr "p3",
		AnyPtr "p4",
		charPtr "type",
		BOOL "p6",
	}
	ns "DATAFILE"
	returns "BOOL"
	doc [[!
	]]

native "0xFCCAE5B92A830878"
    hash "0xFCCAE5B92A830878"
	arguments {
		Any "p0",
	}
	ns "DATAFILE"
	returns "BOOL"
	doc [[!
	]]

native "_OBJECT_VALUE_ADD_BOOLEAN"
    hash "0x35124302A556A325"
	jhash (0x9B29D99B)
	arguments {
		AnyPtr "objectData",
		charPtr "key",
		BOOL "value",
	}
	ns "DATAFILE"
	returns "void"
	doc [[!
	]]

native "_OBJECT_VALUE_ADD_INTEGER"
    hash "0xE7E035450A7948D5"
	jhash (0xEFCF554A)
	arguments {
		AnyPtr "objectData",
		charPtr "key",
		int "value",
	}
	ns "DATAFILE"
	returns "void"
	doc [[!
	]]

native "_OBJECT_VALUE_ADD_FLOAT"
    hash "0xC27E1CC2D795105E"
	jhash (0xE972CACF)
	arguments {
		AnyPtr "objectData",
		charPtr "key",
		float "value",
	}
	ns "DATAFILE"
	returns "void"
	doc [[!
	]]

native "_OBJECT_VALUE_ADD_STRING"
    hash "0x8FF3847DADD8E30C"
	jhash (0xD437615C)
	arguments {
		AnyPtr "objectData",
		charPtr "key",
		charPtr "value",
	}
	ns "DATAFILE"
	returns "void"
	doc [[!
	]]

native "_OBJECT_VALUE_ADD_OBJECT"
    hash "0xA358F56F10732EE1"
	jhash (0x96A8E05F)
	arguments {
		AnyPtr "objectData",
		charPtr "key",
	}
	ns "DATAFILE"
	returns "AnyPtr"
	doc [[!
	]]

native "_OBJECT_VALUE_ADD_VECTOR3"
    hash "0x4CD49B76338C7DEE"
	jhash (0x75FC6C3C)
	arguments {
		AnyPtr "objectData",
		charPtr "key",
		float "valueX",
		float "valueY",
		float "valueZ",
	}
	ns "DATAFILE"
	returns "void"
	doc [[!
	]]

native "_OBJECT_VALUE_GET_ARRAY"
    hash "0x7A983AA9DA2659ED"
	jhash (0x1F2F7D00)
	arguments {
		AnyPtr "objectData",
		charPtr "key",
	}
	ns "DATAFILE"
	returns "AnyPtr"
	doc [[!
	]]

native "_OBJECT_VALUE_GET_FLOAT"
    hash "0x06610343E73B9727"
	jhash (0xA92C1AF4)
	arguments {
		AnyPtr "objectData",
		charPtr "key",
	}
	ns "DATAFILE"
	returns "float"
	doc [[!
	]]

native "_OBJECT_VALUE_GET_BOOLEAN"
    hash "0x1186940ED72FFEEC"
	jhash (0x8876C872)
	arguments {
		AnyPtr "objectData",
		charPtr "key",
	}
	ns "DATAFILE"
	returns "BOOL"
	doc [[!
	]]

native "_OBJECT_VALUE_GET_OBJECT"
    hash "0xB6B9DDC412FCEEE2"
	jhash (0xC9C13D8D)
	arguments {
		AnyPtr "objectData",
		charPtr "key",
	}
	ns "DATAFILE"
	returns "AnyPtr"
	doc [[!
	]]

native "_OBJECT_VALUE_GET_INTEGER"
    hash "0x78F06F6B1FB5A80C"
	jhash (0xA6C68693)
	arguments {
		AnyPtr "objectData",
		charPtr "key",
	}
	ns "DATAFILE"
	returns "int"
	doc [[!
	]]

native "_OBJECT_VALUE_GET_TYPE"
    hash "0x031C55ED33227371"
	jhash (0x2678342A)
	arguments {
		AnyPtr "objectData",
		charPtr "key",
	}
	ns "DATAFILE"
	returns "int"
	doc [[!
<summary>
```
Types:  
1 = Boolean  
2 = Integer  
3 = Float  
4 = String  
5 = Vector3  
6 = Object  
7 = Array  
```
</summary>
	]]

native "_OBJECT_VALUE_GET_STRING"
    hash "0x3D2FD9E763B24472"
	jhash (0x942160EC)
	arguments {
		AnyPtr "objectData",
		charPtr "key",
	}
	ns "DATAFILE"
	returns "charPtr"
	doc [[!
	]]

native "_OBJECT_VALUE_GET_VECTOR3"
    hash "0x46CD3CB66E0825CC"
	jhash (0xE84A127A)
	arguments {
		AnyPtr "objectData",
		charPtr "key",
	}
	ns "DATAFILE"
	returns "Vector3"
	doc [[!
	]]

native "DECOR_EXIST_ON"
    hash "0x05661B80A8C9165F"
	jhash (0x74EF9C40)
	arguments {
		Entity "entity",
		charPtr "propertyName",
	}
	ns "DECORATOR"
	returns "BOOL"
	doc [[!
<summary>
```
Returns whether or not the specified property is set for the entity.  
```
</summary>
	]]

native "DECOR_GET_BOOL"
    hash "0xDACE671663F2F5DB"
	jhash (0xDBCE51E0)
	arguments {
		Entity "entity",
		charPtr "propertyName",
	}
	ns "DECORATOR"
	returns "BOOL"
	doc [[!
	]]

native "_DECOR_GET_FLOAT"
    hash "0x6524A2F114706F43"
	arguments {
		Entity "entity",
		charPtr "propertyName",
	}
	ns "DECORATOR"
	returns "float"
	doc [[!
<summary>
```
Console Hash: 0x8DE5382F  
The native name is correct but the db automatically prefixes "_" to unknown natives when changed.  
```
</summary>
	]]

native "DECOR_GET_INT"
    hash "0xA06C969B02A97298"
	jhash (0xDDDE59B5)
	arguments {
		Entity "entity",
		charPtr "propertyName",
	}
	ns "DECORATOR"
	returns "int"
	doc [[!
	]]

native "DECOR_REGISTER_LOCK"
    hash "0xA9D14EEA259F9248"
	jhash (0x7F3F1C02)
	ns "DECORATOR"
	returns "void"
	doc [[!
<summary>
```
Called after all decorator type initializations.  
```
</summary>
	]]

native "DECOR_IS_REGISTERED_AS_TYPE"
    hash "0x4F14F9F870D6FBC8"
	jhash (0x7CF0971D)
	arguments {
		charPtr "propertyName",
		int "type",
	}
	ns "DECORATOR"
	returns "BOOL"
	doc [[!
<summary>
```
Is property of that type.  
enum eDecorType  
{  
	DECOR_TYPE_FLOAT = 1,  
	DECOR_TYPE_BOOL,  
	DECOR_TYPE_INT,  
	DECOR_TYPE_UNK,  
	DECOR_TYPE_TIME  
};  
```
</summary>
	]]

native "DECOR_REGISTER"
    hash "0x9FD90732F56403CE"
	jhash (0x68BD42A9)
	arguments {
		charPtr "propertyName",
		int "type",
	}
	ns "DECORATOR"
	returns "void"
	doc [[!
<summary>
```
Found this in standard_global_init.c4 line 1898  
void sub_523a() {  
    DECORATOR::DECOR_REGISTER("Player_Vehicle", 3);  
    DECORATOR::DECOR_REGISTER("PV_Slot", 3);  
    DECORATOR::DECOR_REGISTER("Previous_Owner", 3);  
    DECORATOR::DECOR_REGISTER("Sprayed_Vehicle_Decorator", 2);  
    DECORATOR::DECOR_REGISTER("Sprayed_Vehicle_Timer_Dec", 5);  
    DECORATOR::DECOR_REGISTER("Vehicle_Reward", 3);  
    DECORATOR::DECOR_REGISTER("Vehicle_Reward_Teams", 3);  
    DECORATOR::DECOR_REGISTER("Skill_Blocker", 2);  
    DECORATOR::DECOR_REGISTER("TargetPlayerForTeam", 3);  
    DECORATOR::DECOR_REGISTER("XP_Blocker", 2);  
    DECORATOR::DECOR_REGISTER("CrowdControlSetUp", 3);  
    DECORATOR::DECOR_REGISTER("Bought_Drugs", 2);  
    DECORATOR::DECOR_REGISTER("HeroinInPossession", 1);  
    DECORATOR::DECOR_REGISTER("CokeInPossession", 1);  
    DECORATOR::DECOR_REGISTER("WeedInPossession", 1);  
    DECORATOR::DECOR_REGISTER("MethInPossession", 1);  
    DECORATOR::DECOR_REGISTER("bombdec", 3);  
    DECORATOR::DECOR_REGISTER("bombdec1", 3);  
    DECORATOR::DECOR_REGISTER("bombowner", 3);  
    DECORATOR::DECOR_REGISTER("noPlateScan", 2);  
    DECORATOR::DECOR_REGISTER("prisonBreakBoss", 2);  
    DECORATOR::DECOR_REGISTER("cashondeadbody", 3);  
    DECORATOR::DECOR_REGISTER("MissionType", 3);  
    DECORATOR::DECOR_REGISTER("MatchId", 3);  
    DECORATOR::DECOR_REGISTER("TeamId", 3);  
    DECORATOR::DECOR_REGISTER("Not_Allow_As_Saved_Veh", 3);  
    DECORATOR::DECOR_REGISTER("Veh_Modded_By_Player", 3);  
    DECORATOR::DECOR_REGISTER("MPBitset", 3);  
    DECORATOR::DECOR_REGISTER("MC_EntityID", 3);  
    DECORATOR::DECOR_REGISTER("MC_ChasePedID", 3);  
    DECORATOR::DECOR_REGISTER("MC_Team0_VehDeliveredRules", 3);  
    DECORATOR::DECOR_REGISTER("MC_Team1_VehDeliveredRules", 3);  
    DECORATOR::DECOR_REGISTER("MC_Team2_VehDeliveredRules", 3);  
    DECORATOR::DECOR_REGISTER("MC_Team3_VehDeliveredRules", 3);  
    DECORATOR::DECOR_REGISTER("AttributeDamage", 3);  
    DECORATOR::DECOR_REGISTER("GangBackup", 3);  
    DECORATOR::DECOR_REGISTER("CreatedByPegasus", 2);  
    DECORATOR::DECOR_REGISTER("BeforeCorona_0", 2);  
}  
-----------------------------------------------------------------------  
Defines type of property for property name.  
enum eDecorType  
{  
	DECOR_TYPE_FLOAT = 1,  
	DECOR_TYPE_BOOL,  
	DECOR_TYPE_INT,  
	DECOR_TYPE_UNK,  
	DECOR_TYPE_TIME  
};  
```
</summary>
	]]

native "DECOR_REMOVE"
    hash "0x00EE9F297C738720"
	jhash (0xE0E2640B)
	arguments {
		Entity "entity",
		charPtr "propertyName",
	}
	ns "DECORATOR"
	returns "BOOL"
	doc [[!
	]]

native "_DECOR_SET_FLOAT"
    hash "0x211AB1DD8D0F363A"
	arguments {
		Entity "entity",
		charPtr "propertyName",
		float "value",
	}
	ns "DECORATOR"
	returns "BOOL"
	doc [[!
<summary>
```
Console Hash: 0xBC7BD5CB  
The native name is correct but the db automatically prefixes "_" to unknown natives when changed.  
```
</summary>
	]]

native "DECOR_SET_BOOL"
    hash "0x6B1E8E2ED1335B71"
	jhash (0x8E101F5C)
	arguments {
		Entity "entity",
		charPtr "propertyName",
		BOOL "value",
	}
	ns "DECORATOR"
	returns "BOOL"
	doc [[!
<summary>
```
This function sets metadata of type bool to specified entity.  
```
</summary>
	]]

native "0x241FCA5B1AA14F75"
    hash "0x241FCA5B1AA14F75"
	ns "DECORATOR"
	returns "BOOL"
	doc [[!
<summary>
```
------------------------  
| Belongs in DLC2 |  
------------------------  
Console Hash: 0x0AF83036  
Only used once in scripts, in maintransition.  
maintransition.c4, line ~82432:  
if (PED::_7350823473013C02(PLAYER::PLAYER_PED_ID()) && (DECORATOR::_241FCA5B1AA14F75() == 0)) {  
    g_2542A5 = a_1; // 'g_2542A5' used in 'building_controller.ysc' for IPL stuff?  
    return 1;  
}  
Likely used solely for the players ped. The function it's in seems to only be used for initialization/quitting. Called among natives to discard scaleforms, disable frontend, fading in/out, etc. Neighboring strings to some calls include "HUD_JOINING", "HUD_QUITTING".  
```
</summary>
	]]

native "DECOR_SET_INT"
    hash "0x0CE3AA5E1CA19E10"
	jhash (0xDB718B21)
	arguments {
		Entity "entity",
		charPtr "propertyName",
		int "value",
	}
	ns "DECORATOR"
	returns "BOOL"
	doc [[!
<summary>
```
Sets property to int.  
```
</summary>
	]]

native "DECOR_SET_TIME"
    hash "0x95AED7B8E39ECAA4"
	jhash (0xBBAEEF94)
	arguments {
		Entity "entity",
		charPtr "propertyName",
		int "timestamp",
	}
	ns "DECORATOR"
	returns "BOOL"
	doc [[!
	]]

native "GET_IS_LOADING_SCREEN_ACTIVE"
    hash "0x10D0A8F259E93EC9"
	jhash (0x517B601B)
	ns "DLC"
	returns "BOOL"
	doc [[!
	]]

native "_LOAD_MP_DLC_MAPS"
    hash "0x0888C3502DBBEEF5"
	ns "DLC"
	returns "void"
	doc [[!
<summary>
```
This loads the GTA:O dlc map parts (high end garages, apartments).  
Works in singleplayer.  
In order to use GTA:O heist IPL's you have to call this native with the following params: _9BAE5AD2508DF078(1);  
console hash: 0xC65586A9  
```
</summary>
	]]

native "IS_DLC_PRESENT"
    hash "0x812595A0644CE1DE"
	jhash (0x1F321943)
	arguments {
		Hash "dlcHash",
	}
	ns "DLC"
	returns "BOOL"
	doc [[!
<summary>
```
Example:  
DLC2::IS_DLC_PRESENT($\mpbusiness2\);  
($ = gethashkey)  
bruteforce these:  
0xB119F6D  
0x96F02EE6  
```
</summary>
	]]

native "0x9489659372A81585"
    hash "0x9489659372A81585"
	jhash (0xC2169164)
	ns "DLC"
	returns "Any"
	doc [[!
<summary>
```
MulleDK19: This function is hard-coded to always return 0.  
```
</summary>
	]]

native "0x8D30F648014A92B5"
    hash "0x8D30F648014A92B5"
	jhash (0xF69B729C)
	ns "DLC"
	returns "BOOL"
	doc [[!
	]]

native "0xD7C10C4A637992C9"
    hash "0xD7C10C4A637992C9"
	alias "_LOAD_SP_DLC_MAPS"
	ns "DLC"
	returns "void"
	doc [[!
<summary>
```
Unloads GROUP_MAP (GTAO/MP) DLC data and loads GROUP_MAP_SP DLC. Neither are loaded by default, 0888C3502DBBEEF5 is a cognate to this function and loads MP DLC (and unloads SP DLC by extension).  
The original (and wrong) definition is below:  
This unload the GTA:O DLC map parts (like high end garages/apartments).  
Works in singleplayer.  
console hash: 0x8BF60FC3  
```
</summary>
	]]

native "0xA213B11DFF526300"
    hash "0xA213B11DFF526300"
	jhash (0xF79A97F5)
	ns "DLC"
	returns "Any"
	doc [[!
<summary>
```
MulleDK19: This function is hard-coded to always return 1.  
```
</summary>
	]]

native "_NULLIFY"
    hash "0x46E2B844905BC5F0"
	jhash (0x6087C10C)
	arguments {
		AnyPtr "variable",
		Any "unused",
	}
	ns "DLC"
	returns "BOOL"
	doc [[!
<summary>
```
Sets the value of the specified variable to 0.  
Always returns true.  
bool _NULLIFY(void* variable, int unused)  
{  
    *variable = NULL;  
    return true;  
}  
```
</summary>
	]]

native "0xF2E07819EF1A5289"
    hash "0xF2E07819EF1A5289"
	jhash (0x881B1FDB)
	ns "DLC"
	returns "BOOL"
	doc [[!
<summary>
```
MulleDK19: This function is hard-coded to always return 1.  
```
</summary>
	]]

native "ADD_SHOCKING_EVENT_FOR_ENTITY"
    hash "0x7FD8F3BE76F89422"
	jhash (0xA81B5B71)
	arguments {
		int "type",
		Entity "entity",
		float "duration",
	}
	ns "EVENT"
	returns "ScrHandle"
	doc [[!
<summary>
```
duration is float here  
Event types - camx.me/gtav/tasks/shockingevents.txt  
```
</summary>
	]]

native "ADD_SHOCKING_EVENT_AT_POSITION"
    hash "0xD9F8455409B525E9"
	jhash (0x0B30F779)
	arguments {
		int "type",
		float "x",
		float "y",
		float "z",
		float "duration",
	}
	ns "EVENT"
	returns "ScrHandle"
	doc [[!
<summary>
```
duration is float here  
Event types- camx.me/gtav/tasks/shockingevents.txt  
```
</summary>
	]]

native "BLOCK_DECISION_MAKER_EVENT"
    hash "0xE42FCDFD0E4196F7"
	jhash (0x57506EA6)
	arguments {
		Hash "name",
		int "type",
	}
	ns "EVENT"
	returns "void"
	doc [[!
	]]

native "CLEAR_DECISION_MAKER_EVENT_RESPONSE"
    hash "0x4FC9381A7AEE8968"
	jhash (0x07ABD94D)
	arguments {
		Hash "name",
		int "type",
	}
	ns "EVENT"
	returns "void"
	doc [[!
	]]

native "IS_SHOCKING_EVENT_IN_SPHERE"
    hash "0x1374ABB7C15BAB92"
	jhash (0x2F98823E)
	arguments {
		int "type",
		float "x",
		float "y",
		float "z",
		float "radius",
	}
	ns "EVENT"
	returns "BOOL"
	doc [[!
<summary>
```
Some events that i found, not sure about them, but seems to have logic based on my tests:  
'82 - dead body  
'86   
'87   
'88 - shooting, fire extinguisher in use  
'89   
'93 - ped using horn  
'95 - ped receiving melee attack  
'102 - living ped receiving shot  
'104 - player thrown grenade, tear gas, smoke grenade, jerry can dropping gasoline  
'105 - melee attack against veh  
'106 - player running  
'108 - vehicle theft  
'112 - melee attack  
'113 - veh rollover ped  
'114 - dead ped receiving shot  
'116 - aiming at ped  
'121   
		Here is full dump of shocking event types from the exe camx.me/gtav/tasks/shockingevents.txt  
```
</summary>
	]]

native "REMOVE_ALL_SHOCKING_EVENTS"
    hash "0xEAABE8FDFA21274C"
	jhash (0x64DF6282)
	arguments {
		BOOL "p0",
	}
	ns "EVENT"
	returns "void"
	doc [[!
	]]

native "REMOVE_SHOCKING_EVENT"
    hash "0x2CDA538C44C6CCE5"
	jhash (0xF82D5A87)
	arguments {
		ScrHandle "event",
	}
	ns "EVENT"
	returns "BOOL"
	doc [[!
	]]

native "REMOVE_SHOCKING_EVENT_SPAWN_BLOCKING_AREAS"
    hash "0x340F1415B68AEADE"
	jhash (0xA0CE89C8)
	ns "EVENT"
	returns "void"
	doc [[!
	]]

native "SUPPRESS_SHOCKING_EVENT_TYPE_NEXT_FRAME"
    hash "0x3FD2EC8BF1F1CF30"
	jhash (0xA0FDCB82)
	arguments {
		int "type",
	}
	ns "EVENT"
	returns "void"
	doc [[!
	]]

native "UNBLOCK_DECISION_MAKER_EVENT"
    hash "0xD7CD9CF34F2C99E8"
	jhash (0x62A3161D)
	arguments {
		Hash "name",
		int "type",
	}
	ns "EVENT"
	returns "void"
	doc [[!
	]]

native "SET_DECISION_MAKER"
    hash "0xB604A2942ADED0EE"
	jhash (0x19CEAC9E)
	arguments {
		Ped "ped",
		Hash "name",
	}
	ns "EVENT"
	returns "void"
	doc [[!
	]]

native "SUPPRESS_AGITATION_EVENTS_NEXT_FRAME"
    hash "0x5F3B7749C112D552"
	jhash (0x80340396)
	ns "EVENT"
	returns "void"
	doc [[!
	]]

native "SUPPRESS_SHOCKING_EVENTS_NEXT_FRAME"
    hash "0x2F9A292AD0A3BD89"
	jhash (0x4CC674B5)
	ns "EVENT"
	returns "void"
	doc [[!
	]]

native "GET_DLC_VEHICLE_DATA"
    hash "0x33468EDC08E371F6"
	jhash (0xCF428FA4)
	arguments {
		int "dlcVehicleIndex",
		intPtr "outData",
	}
	ns "FILE"
	returns "BOOL"
	doc [[!
<summary>
```
dlcVehicleIndex takes a number from 0 - GET_NUM_DLC_VEHICLES() - 1.  
outData is a struct of 3 8-byte items.  
The Second item in the struct *(Hash *)(outData + 1) is the vehicle hash.  
```
</summary>
	]]

native "GET_DLC_VEHICLE_MODEL"
    hash "0xECC01B7C5763333C"
	jhash (0xA2201E09)
	arguments {
		int "dlcVehicleIndex",
	}
	ns "FILE"
	returns "Hash"
	doc [[!
<summary>
```
dlcVehicleIndex is 0 to GET_NUM_DLC_VEHICLS()  
```
</summary>
	]]

native "GET_DLC_WEAPON_DATA"
    hash "0x79923CD21BECE14E"
	jhash (0xD88EC8EA)
	arguments {
		int "dlcWeaponIndex",
		intPtr "outData",
	}
	ns "FILE"
	returns "BOOL"
	doc [[!
<summary>
```
dlcWeaponIndex takes a number from 0 - GET_NUM_DLC_WEAPONS() - 1.  
struct DlcWeaponData  
{  
int emptyCheck; //use DLC1::_IS_DLC_DATA_EMPTY on this  
int padding1;  
int weaponHash;  
int padding2;  
int unk;  
int padding3;  
int weaponCost;  
int padding4;  
int ammoCost;  
int padding5;  
int ammoType;  
int padding6;  
int defaultClipSize;  
int padding7;  
char nameLabel[64];  
char descLabel[64];  
char desc2Label[64]; // usually "the" + name  
char upperCaseNameLabel[64];  
};  
```
</summary>
	]]

native "GET_DLC_VEHICLE_FLAGS"
    hash "0x5549EE11FA22FCF2"
	jhash (0xAB12738C)
	arguments {
		int "dlcVehicleIndex",
	}
	ns "FILE"
	returns "int"
	doc [[!
	]]

native "GET_HASH_NAME_FOR_COMPONENT"
    hash "0x0368B3A838070348"
	jhash (0xC8A4BF12)
	arguments {
		Entity "entity",
		int "componentId",
		int "drawableVariant",
		int "textureVariant",
	}
	ns "FILE"
	returns "Hash"
	doc [[!
	]]

native "GET_DLC_WEAPON_COMPONENT_DATA"
    hash "0x6CF598A2957C2BF8"
	jhash (0x4B83FCAF)
	arguments {
		int "dlcWeaponIndex",
		int "dlcWeapCompIndex",
		AnyPtr "ComponentDataPtr",
	}
	ns "FILE"
	returns "BOOL"
	doc [[!
<summary>
```
p0 seems to be the weapon index  
p1 seems to be the weapon component index  
struct DlcComponentData{  
int attachBone;  
int padding1;  
int bActiveByDefault;  
int padding2;  
int unk;  
int padding3;  
int componentHash;  
int padding4;  
int unk2;  
int padding5;  
int componentCost;  
int padding6;  
char nameLabel[64];  
char descLabel[64];  
};  
```
</summary>
	]]

native "_GET_NUM_DECORATIONS"
    hash "0x278F76C3B0A8F109"
	jhash (0x71D0CF3E)
	arguments {
		int "character",
	}
	alias "0x278F76C3B0A8F109"
	ns "FILE"
	returns "int"
	doc [[!
<summary>
```
only documented to be continued...  
```
</summary>
	]]

native "GET_FORCED_COMPONENT"
    hash "0x6C93ED8C2F74859B"
	jhash (0x382C70BE)
	arguments {
		Hash "componentHash",
		int "componentId",
		AnyPtr "p2",
		AnyPtr "p3",
		AnyPtr "p4",
	}
	ns "FILE"
	returns "void"
	doc [[!
	]]

native "GET_NUM_DLC_WEAPON_COMPONENTS"
    hash "0x405425358A7D61FE"
	jhash (0x476B23A9)
	arguments {
		int "dlcWeaponIndex",
	}
	ns "FILE"
	returns "int"
	doc [[!
<summary>
```
Allowed Values from 0 - DLC1::GET_NUM_DLC_WEAPONS()  
```
</summary>
	]]

native "GET_NUM_DLC_WEAPONS"
    hash "0xEE47635F352DA367"
	jhash (0x2B757E6C)
	ns "FILE"
	returns "int"
	doc [[!
<summary>
```
Gets the total number of DLC weapons.  
```
</summary>
	]]

native "GET_HASH_NAME_FOR_PROP"
    hash "0x5D6160275CAEC8DD"
	jhash (0x7D876DC0)
	arguments {
		Entity "entity",
		int "componentId",
		int "propIndex",
		int "propTextureIndex",
	}
	ns "FILE"
	returns "Hash"
	doc [[!
	]]

native "_GET_PROP_FROM_OUTFIT"
    hash "0x19F2A026EDF0013F"
	jhash (0x818534AC)
	arguments {
		Any "outfit",
		int "slot",
		AnyPtr "item",
	}
	ns "FILE"
	returns "BOOL"
	doc [[!
<summary>
```
outfit = a structure passing though it - see GET_SHOP_PED_QUERY_OUTFIT  
slot - outfit slot  
item - hold 3 ints in a struct, you can use Vector3 structure  
GET_SHOP_PED_???  
```
</summary>
	]]

native "GET_NUM_DLC_VEHICLES"
    hash "0xA7A866D21CD2329B"
	jhash (0x8EAF9CF6)
	ns "FILE"
	returns "int"
	doc [[!
	]]

native "GET_SHOP_PED_COMPONENT"
    hash "0x74C0E2A57EC66760"
	jhash (0xB39677C5)
	arguments {
		Hash "p0",
		AnyPtr "p1",
	}
	ns "FILE"
	returns "void"
	doc [[!
	]]

native "GET_SHOP_PED_OUTFIT"
    hash "0xB7952076E444979D"
	jhash (0xCAFE9209)
	arguments {
		Any "p0",
		AnyPtr "p1",
	}
	ns "FILE"
	returns "void"
	doc [[!
	]]

native "_GET_NUM_FORCED_COMPONENTS"
    hash "0xC6B9DB42C04DD8C3"
	jhash (0xCE70F183)
	arguments {
		Hash "componentHash",
	}
	ns "FILE"
	returns "int"
	doc [[!
<summary>
```
Returns number of possible values of the componentId argument of GET_FORCED_COMPONENT.  
```
</summary>
	]]

native "GET_SHOP_PED_QUERY_COMPONENT"
    hash "0x249E310B2D920699"
	jhash (0xC0718904)
	arguments {
		int "componentId",
		intPtr "outComponent",
	}
	ns "FILE"
	returns "void"
	doc [[!
	]]

native "_GET_NUM_PROPS_FROM_OUTFIT"
    hash "0x9BDF59818B1E38C1"
	jhash (0x594E862C)
	arguments {
		int "character",
		int "p1",
		int "p2",
		BOOL "p3",
		int "p4",
		int "componentId",
	}
	ns "FILE"
	returns "int"
	doc [[!
<summary>
```
character is 0 for Michael, 1 for Franklin, 2 for Trevor, 3 for freemode male, and 4 for freemode female.  
componentId is between 0 and 11 and corresponds to the usual component slots.  
p1 could be the outfit number; unsure.  
p2 is usually -1; unknown function.  
p3 appears to be a boolean flag; unknown function.  
p4 is usually -1; unknown function.  
```
</summary>
	]]

native "GET_SHOP_PED_QUERY_PROP"
    hash "0xDE44A00999B2837D"
	jhash (0x1D3C1466)
	arguments {
		Any "p0",
		AnyPtr "p1",
	}
	ns "FILE"
	returns "void"
	doc [[!
	]]

native "GET_SHOP_PED_OUTFIT_LOCATE"
    hash "0x073CA26B079F956E"
	jhash (0x2798F56F)
	arguments {
		Any "p0",
	}
	alias "0x073CA26B079F956E"
	ns "FILE"
	returns "Any"
	doc [[!
	]]

native "GET_VARIANT_COMPONENT"
    hash "0x6E11F282F11863B6"
	jhash (0xE4FF7103)
	arguments {
		Hash "componentHash",
		int "componentId",
		AnyPtr "p2",
		AnyPtr "p3",
		AnyPtr "p4",
	}
	ns "FILE"
	returns "void"
	doc [[!
	]]

native "GET_SHOP_PED_QUERY_OUTFIT"
    hash "0x6D793F03A631FE56"
	jhash (0x2F8013A1)
	arguments {
		Any "p0",
		AnyPtr "outfit",
	}
	ns "FILE"
	returns "void"
	doc [[!
<summary>
```
struct Outfit_s  
{  
	int mask, torso, pants, parachute, shoes, misc1, tops1, armour, crew, tops2, hat, glasses, earpiece;  
	int maskTexture, torsoTexture, pantsTexture, parachuteTexture, shoesTexture, misc1Texture, tops1Texture,   
		armourTexture, crewTexture, tops2Texture, hatTexture, glassesTexture, earpieceTexture;  
};  
```
</summary>
	]]

native "INIT_SHOP_PED_PROP"
    hash "0xEB0A2B758F7B850F"
	jhash (0xF5659E50)
	arguments {
		intPtr "outProp",
	}
	ns "FILE"
	returns "void"
	doc [[!
	]]

native "_GET_TATTOO_COLLECTION_DATA"
    hash "0xFF56381874F82086"
	jhash (0x2E9D628C)
	arguments {
		int "characterType",
		int "decorationIndex",
		AnyPtr "outComponent",
	}
	alias "0xFF56381874F82086"
	ns "FILE"
	returns "BOOL"
	doc [[!
<summary>
Character types:

```
0 = Michael, 
1 = Franklin, 
2 = Trevor, 
3 = MPMale, 
4 = MPFemale
```

```csharp
enum TattooZoneData  
{  
    ZONE_TORSO = 0,  
    ZONE_HEAD = 1,  
    ZONE_LEFT_ARM = 2,  
    ZONE_RIGHT_ARM = 3,  
    ZONE_LEFT_LEG = 4,  
    ZONE_RIGHT_LEG = 5,  
    ZONE_UNKNOWN = 6,
    ZONE_NONE = 7,  
};

struct outComponent
{
    // these vars are suffixed with 4 bytes of padding each.
    uint unk;
    int unk2;
    uint tattooCollectionHash;
    uint tattooNameHash;
    int unk3;
    TattooZoneData zoneId;
    uint unk4;
    uint unk5;
    // maybe more, not sure exactly, decompiled scripts are very vague around this part.
}
```
</summary>
<param name="characterType">Character types 0 = Michael, 1 = Franklin, 2 = Trevor, 3 = MPMale, 4 = MPFemale.</param>
<param name="decorationIndex">Tattoo index, value between 0 and GetNumDecorations(characterType).</param>
<param name="outComponent">The referenced struct.</param>
<returns>A bool indicating that the tattoo data could be fetched(?)</returns>
	]]

native "IS_DLC_VEHICLE_MOD"
    hash "0x0564B9FF9631B82C"
	jhash (0x35BCA844)
	arguments {
		Any "modData",
	}
	alias "0x0564B9FF9631B82C"
	ns "FILE"
	returns "BOOL"
	doc [[!
<summary>
```
Use _GET_VEHICLE_MOD_DATA for modData  
```
</summary>
	]]

native "0x341DE7ED1D2A1BFD"
    hash "0x341DE7ED1D2A1BFD"
	jhash (0x8E2C7FD5)
	arguments {
		Hash "componentHash",
		Hash "drawableSlotHash",
		int "componentId",
	}
	ns "FILE"
	returns "BOOL"
	doc [[!
<summary>
```
6,000+ calls from scripts, all with either 0 or 1 for p2, that's a boolean in my book  
---  
 ^ The last one is the componentId  
iVar8 = dlc1::get_hash_name_for_component(iParam0, 8, ped::get_ped_drawable_variation(iParam0, 8), ped::get_ped_texture_variation(iParam0, 8));  
	if (dlc1::_0x341DE7ED1D2A1BFD(iVar8, 240476421, 8))  
```
</summary>
	]]

native "INIT_SHOP_PED_COMPONENT"
    hash "0x1E8C308FD312C036"
	jhash (0xB818C7FC)
	arguments {
		intPtr "outComponent",
	}
	ns "FILE"
	returns "void"
	doc [[!
	]]

native "_IS_DLC_DATA_EMPTY"
    hash "0xD4D7B033C3AA243C"
	jhash (0x06396058)
	arguments {
		AnyPtr "dlcData",
	}
	alias "_IS_OUTFIT_EMPTY"
	ns "FILE"
	returns "BOOL"
	doc [[!
	]]

native "0x50F457823CE6EB5F"
    hash "0x50F457823CE6EB5F"
	jhash (0xC937FF3D)
	arguments {
		int "p0",
		int "p1",
		int "p2",
		int "p3",
	}
	ns "FILE"
	returns "int"
	doc [[!
	]]

native "0x017568A8182D98A6"
    hash "0x017568A8182D98A6"
	arguments {
		Any "p0",
	}
	ns "FILE"
	returns "Any"
	doc [[!
	]]

native "0xA9F9C2E0FDE11CBB"
    hash "0xA9F9C2E0FDE11CBB"
	jhash (0x6641A864)
	arguments {
		Any "p0",
		Any "p1",
		AnyPtr "p2",
	}
	ns "FILE"
	returns "BOOL"
	doc [[!
	]]

native "0x5D5CAFF661DDF6FC"
    hash "0x5D5CAFF661DDF6FC"
	arguments {
		Any "p0",
		AnyPtr "p1",
	}
	ns "FILE"
	returns "void"
	doc [[!
	]]

native "0xC17AD0E5752BECDA"
    hash "0xC17AD0E5752BECDA"
	jhash (0x159751B4)
	arguments {
		Hash "componentHash",
	}
	ns "FILE"
	returns "int"
	doc [[!
	]]

native "0xC098810437312FFF"
    hash "0xC098810437312FFF"
	jhash (0x59352658)
	arguments {
		int "modData",
	}
	ns "FILE"
	returns "int"
	doc [[!
<summary>
```
Use _GET_VEHICLE_MOD_DATA for modData  
Appears to be a GET_DLC_VEHICLE_MOD_* native.  
```
</summary>
	]]

native "0xE1CA84EBF72E691D"
    hash "0xE1CA84EBF72E691D"
	arguments {
		Any "p0",
		Any "p1",
		AnyPtr "p2",
		AnyPtr "p3",
		AnyPtr "p4",
	}
	ns "FILE"
	returns "void"
	doc [[!
	]]

native "0xF3FBE2D50A6A8C28"
    hash "0xF3FBE2D50A6A8C28"
	jhash (0x1ECD23E7)
	arguments {
		int "character",
		BOOL "p1",
	}
	ns "FILE"
	returns "int"
	doc [[!
<summary>
```
characters  
0: Michael  
1: Franklin  
2: Trevor  
3: MPMale  
4: MPFemale  
```
</summary>
	]]

native "0xD40AAC51E8E4C663"
    hash "0xD40AAC51E8E4C663"
	arguments {
		Hash "propHash",
	}
	ns "FILES"
	returns "int"
	doc [[!
<summary>
Decompiled scripts have this listed as `FILES::_GET_NUM_DLC_PED_PROPS_UNK`, but that seems wrong.

Has something to do with ped (dlc) helmet props.

This native returns 1/true when the player helmet has a visor (there is another prop index for the same helmet with closed/opened visor variant) that can be toggled, 0/false if there's no alternative version with a visor for this helmet prop.

So something like `_DOES_HELMET_HASH_HAVE_A_VISOR`, anyone that knows the joaat hash?

Decompiled scripts handle this as an int. But the result is always 0 or 1 (after testing every prop hash on freemode peds). So might actually be a bool?

```
iVar16 = PED::GET_PED_PROP_INDEX(PLAYER::PLAYER_PED_ID(), 0);
iVar17 = PED::GET_PED_PROP_TEXTURE_INDEX(PLAYER::PLAYER_PED_ID(), 0);
iVar18 = FILES::GET_HASH_NAME_FOR_PROP(PLAYER::PLAYER_PED_ID(), 0, iVar16, iVar17);
if (FILES::_GET_NUM_DLC_PED_PROPS_UNK(iVar18) > 0) // _0xD40AAC51E8E4C663
{
    HUD::BEGIN_TEXT_COMMAND_DISPLAY_HELP("VISOR_TOGGLE");
    HUD::END_TEXT_COMMAND_DISPLAY_HELP(0, 0, true, 6000);
    iVar15++;
    func_12660(7668, iVar15, -1, 1);
    MISC::SET_BIT(&(Global_2512581.f_1710), 24);
}
```
</summary>
<param name="propHash">Ped helmet prop hash</param>
<returns>This native returns 1 when the player helmet has a visor (there is another prop index for the same helmet with closed/opened visor variant) that can be toggled. 0 if there's no alternative version with a visor for this helmet prop.</returns>
	]]

native "0xD81B7F27BC773E66"
    hash "0xD81B7F27BC773E66"
	arguments {
		Any "p0",
		Any "p1",
		Any "p2",
		Any "p3",
		Any "p4",
	}
	ns "FILES"
	returns "void"
	doc [[!
	]]

native "ADD_EXPLOSION"
    hash "0xE3AD2BDBAEE269AC"
	jhash (0x10AF5258)
	arguments {
		float "x",
		float "y",
		float "z",
		int "explosionType",
		float "damageScale",
		BOOL "isAudible",
		BOOL "isInvisible",
		float "cameraShake",
	}
	ns "FIRE"
	returns "void"
	doc [[!
<summary>
```
BOOL isAudible = If explosion makes a sound.  
BOOL isInvisible = If the explosion is invisible or not.  
this native is missing a new argument: noDamage  
nodamage = false: damage || nodamage = true: no damage  
enum ExplosionTypes  
{  
	EXPLOSION_GRENADE,  
	EXPLOSION_GRENADELAUNCHER,  
	EXPLOSION_STICKYBOMB,  
	EXPLOSION_MOLOTOV,  
	EXPLOSION_ROCKET,  
	EXPLOSION_TANKSHELL,  
	EXPLOSION_HI_OCTANE,  
	EXPLOSION_CAR,  
	EXPLOSION_PLANE,  
	EXPLOSION_PETROL_PUMP,  
	EXPLOSION_BIKE,  
	EXPLOSION_DIR_STEAM,  
	EXPLOSION_DIR_FLAME,  
	EXPLOSION_DIR_WATER_HYDRANT,  
	EXPLOSION_DIR_GAS_CANISTER,  
	EXPLOSION_BOAT,  
	EXPLOSION_SHIP_DESTROY,  
	EXPLOSION_TRUCK,  
	EXPLOSION_BULLET,  
	EXPLOSION_SMOKEGRENADELAUNCHER,  
	EXPLOSION_SMOKEGRENADE,  
	EXPLOSION_BZGAS,  
	EXPLOSION_FLARE,  
	EXPLOSION_GAS_CANISTER,  
	EXPLOSION_EXTINGUISHER,  
	EXPLOSION_PROGRAMMABLEAR,  
	EXPLOSION_TRAIN,  
	EXPLOSION_BARREL,  
	EXPLOSION_PROPANE,  
	EXPLOSION_BLIMP,  
	EXPLOSION_DIR_FLAME_EXPLODE,  
	EXPLOSION_TANKER,  
	EXPLOSION_PLANE_ROCKET,  
	EXPLOSION_VEHICLE_BULLET,  
	EXPLOSION_GAS_TANK,  
	EXPLOSION_BIRD_CRAP  
};  
```
</summary>
	]]

native "ADD_EXPLOSION_WITH_USER_VFX"
    hash "0x36DD3FE58B5E5212"
	jhash (0xCF358946)
	arguments {
		float "x",
		float "y",
		float "z",
		int "explosionType",
		Hash "explosionFx",
		float "damageScale",
		BOOL "isAudible",
		BOOL "isInvisible",
		float "cameraShake",
	}
	alias "_ADD_SPECFX_EXPLOSION"
	ns "FIRE"
	returns "void"
	doc [[!
<summary>
```

```
</summary>
	]]

native "ADD_OWNED_EXPLOSION"
    hash "0x172AA1B624FA1013"
	jhash (0x27EE0D67)
	arguments {
		Ped "ped",
		float "x",
		float "y",
		float "z",
		int "explosionType",
		float "damageScale",
		BOOL "isAudible",
		BOOL "isInvisible",
		float "cameraShake",
	}
	ns "FIRE"
	returns "void"
	doc [[!
<summary>
```
enum ExplosionTypes  
{  
	EXPLOSION_GRENADE,  
	EXPLOSION_GRENADELAUNCHER,  
	EXPLOSION_STICKYBOMB,  
	EXPLOSION_MOLOTOV,  
	EXPLOSION_ROCKET,  
	EXPLOSION_TANKSHELL,  
	EXPLOSION_HI_OCTANE,  
	EXPLOSION_CAR,  
	EXPLOSION_PLANE,  
	EXPLOSION_PETROL_PUMP,  
	EXPLOSION_BIKE,  
	EXPLOSION_DIR_STEAM,  
	EXPLOSION_DIR_FLAME,  
	EXPLOSION_DIR_WATER_HYDRANT,  
	EXPLOSION_DIR_GAS_CANISTER,  
	EXPLOSION_BOAT,  
	EXPLOSION_SHIP_DESTROY,  
	EXPLOSION_TRUCK,  
	EXPLOSION_BULLET,  
	EXPLOSION_SMOKEGRENADELAUNCHER,  
	EXPLOSION_SMOKEGRENADE,  
	EXPLOSION_BZGAS,  
	EXPLOSION_FLARE,  
	EXPLOSION_GAS_CANISTER,  
	EXPLOSION_EXTINGUISHER,  
	EXPLOSION_PROGRAMMABLEAR,  
	EXPLOSION_TRAIN,  
	EXPLOSION_BARREL,  
	EXPLOSION_PROPANE,  
	EXPLOSION_BLIMP,  
	EXPLOSION_DIR_FLAME_EXPLODE,  
	EXPLOSION_TANKER,  
	EXPLOSION_PLANE_ROCKET,  
	EXPLOSION_VEHICLE_BULLET,  
	EXPLOSION_GAS_TANK,  
	EXPLOSION_BIRD_CRAP  
};  
BOOL isAudible = If explosion makes a sound.  
BOOL isInvisible = If the explosion is invisible or not.  
```
</summary>
	]]

native "GET_CLOSEST_FIRE_POS"
    hash "0x352A9F6BCF90081F"
	jhash (0xC4977B47)
	arguments {
		Vector3Ptr "outPosition",
		float "x",
		float "y",
		float "z",
	}
	ns "FIRE"
	returns "BOOL"
	doc [[!
<summary>
```
Returns TRUE if it found something. FALSE if not.  
```
</summary>
	]]

native "GET_NUMBER_OF_FIRES_IN_RANGE"
    hash "0x50CAD495A460B305"
	jhash (0x654D93B7)
	arguments {
		float "x",
		float "y",
		float "z",
		float "radius",
	}
	ns "FIRE"
	returns "int"
	doc [[!
	]]

native "_GET_PED_INSIDE_EXPLOSION_AREA"
    hash "0x14BA4BA137AF6CEC"
	jhash (0xAEC0D176)
	arguments {
		int "explosionType",
		float "x1",
		float "y1",
		float "z1",
		float "x2",
		float "y2",
		float "z2",
		float "radius",
	}
	ns "FIRE"
	returns "Entity"
	doc [[!
<summary>
```
Returns a handle to the first entity within the a circle spawned inside the 2 points from a radius. It could return a ped or an entity, but the scripts expect a ped, but still check if it's a ped.  
```
</summary>
	]]

native "IS_ENTITY_ON_FIRE"
    hash "0x28D3FED7190D3A0B"
	jhash (0x8C73E64F)
	arguments {
		Entity "entity",
	}
	ns "FIRE"
	returns "BOOL"
	doc [[!
	]]

native "IS_EXPLOSION_IN_ANGLED_AREA"
    hash "0xA079A6C51525DC4B"
	jhash (0x0128FED9)
	arguments {
		int "explosionType",
		float "x1",
		float "y1",
		float "z1",
		float "x2",
		float "y2",
		float "z2",
		float "angle",
	}
	ns "FIRE"
	returns "BOOL"
	doc [[!
	]]

native "IS_EXPLOSION_IN_AREA"
    hash "0x2E2EBA0EE7CED0E0"
	jhash (0xFB40075B)
	arguments {
		int "explosionType",
		float "x1",
		float "y1",
		float "z1",
		float "x2",
		float "y2",
		float "z2",
	}
	ns "FIRE"
	returns "BOOL"
	doc [[!
	]]

native "IS_EXPLOSION_IN_SPHERE"
    hash "0xAB0F816885B0E483"
	jhash (0xD455A7F3)
	arguments {
		int "explosionType",
		float "x",
		float "y",
		float "z",
		float "radius",
	}
	ns "FIRE"
	returns "BOOL"
	doc [[!
	]]

native "0x6070104B699B2EF4"
    hash "0x6070104B699B2EF4"
	arguments {
		Any "p0",
		Any "p1",
		Any "p2",
		Any "p3",
		Any "p4",
		Any "p5",
		Any "p6",
	}
	ns "FIRE"
	returns "Any"
	doc [[!
<summary>
```
Console Hash: 0x37C388DB  
```
</summary>
	]]

native "REMOVE_SCRIPT_FIRE"
    hash "0x7FF548385680673F"
	jhash (0x6B21FE26)
	arguments {
		int "fireHandle",
	}
	ns "FIRE"
	returns "void"
	doc [[!
	]]

native "START_ENTITY_FIRE"
    hash "0xF6A9D9708F6F23DF"
	jhash (0x8928428E)
	arguments {
		Entity "entity",
	}
	ns "FIRE"
	returns "Any"
	doc [[!
	]]

native "START_SCRIPT_FIRE"
    hash "0x6B83617E04503888"
	jhash (0xE7529357)
	arguments {
		float "X",
		float "Y",
		float "Z",
		int "maxChildren",
		BOOL "isGasFire",
	}
	ns "FIRE"
	returns "int"
	doc [[!
<summary>
```
Starts a fire:  
xyz: Location of fire  
maxChildren: The max amount of times a fire can spread to other objects. Must be 25 or less, or the function will do nothing.  
isGasFire: Whether or not the fire is powered by gasoline.  
```
</summary>
	]]

native "STOP_ENTITY_FIRE"
    hash "0x7F0DD2EBBB651AFF"
	jhash (0xCE8C9066)
	arguments {
		Entity "entity",
	}
	ns "FIRE"
	returns "void"
	doc [[!
	]]

native "STOP_FIRE_IN_RANGE"
    hash "0x056A8A219B8E829F"
	jhash (0x725C7205)
	arguments {
		float "x",
		float "y",
		float "z",
		float "radius",
	}
	ns "FIRE"
	returns "void"
	doc [[!
<summary>
```
This doesn't stop fire nor the fire propagation in a loop... for some reasons.  
```
</summary>
	]]

native "_ADD_CLAN_DECAL_TO_VEHICLE"
    hash "0x428BDCB9DA58DA53"
	jhash (0x12077738)
	arguments {
		Vehicle "vehicle",
		Ped "ped",
		int "boneIndex",
		float "x1",
		float "x2",
		float "x3",
		float "y1",
		float "y2",
		float "y3",
		float "z1",
		float "z2",
		float "z3",
		float "scale",
		Any "p13",
		int "alpha",
	}
	ns "GRAPHICS"
	returns "BOOL"
	doc [[!
<summary>
```
Now has 15 parameters, previous declaration:  
BOOL _0x428BDCB9DA58DA53(Any p0, Any p1, Any p2, float p3, float p4, float p5, float p6, float p7, float p8, float p9, float p10, float p11, float p12, Any p13)  
boneIndex is always chassis_dummy in the scripts. The x/y/z params are location relative to the chassis bone. They are usually rotations and measurements. Haven't reversed which are what yet.  
Scale is how big the decal will be.  
p13 is always 0.  
For alpha, 200 seems to match what the game is doing, I think. I don't have access to the new scripts to see what this parameter is, but based on guessing this seems (kind of) accurate.  
```
</summary>
	]]

native "ADD_DECAL"
    hash "0xB302244A1839BDAD"
	jhash (0xEAD0C412)
	arguments {
		int "decalType",
		float "posX",
		float "posY",
		float "posZ",
		float "p4",
		float "p5",
		float "p6",
		float "p7",
		float "p8",
		float "p9",
		float "width",
		float "height",
		float "rCoef",
		float "gCoef",
		float "bCoef",
		float "opacity",
		float "timeout",
		BOOL "p17",
		BOOL "p18",
		BOOL "p19",
	}
	ns "GRAPHICS"
	returns "Object"
	doc [[!
<summary>
```
decal types:  
public enum DecalTypes  
{  
    splatters_blood = 1010,  
    splatters_blood_dir = 1015,  
    splatters_blood_mist = 1017,  
    splatters_mud = 1020,  
    splatters_paint = 1030,  
    splatters_water = 1040,  
    splatters_water_hydrant = 1050,  
    splatters_blood2 = 1110,  
    weapImpact_metal = 4010,  
    weapImpact_concrete = 4020,  
    weapImpact_mattress = 4030,  
    weapImpact_mud = 4032,  
    weapImpact_wood = 4050,  
    weapImpact_sand = 4053,  
    weapImpact_cardboard = 4040,  
    weapImpact_melee_glass = 4100,  
    weapImpact_glass_blood = 4102,  
    weapImpact_glass_blood2 = 4104,  
    weapImpact_shotgun_paper = 4200,  
    weapImpact_shotgun_mattress,  
    weapImpact_shotgun_metal,  
    weapImpact_shotgun_wood,  
    weapImpact_shotgun_dirt,  
    weapImpact_shotgun_tvscreen,  
    weapImpact_shotgun_tvscreen2,  
    weapImpact_shotgun_tvscreen3,  
    weapImpact_melee_concrete = 4310,  
    weapImpact_melee_wood = 4312,  
    weapImpact_melee_metal = 4314,  
    burn1 = 4421,  
    burn2,  
    burn3,  
    burn4,  
    burn5,  
    bang_concrete_bang = 5000,  
    bang_concrete_bang2,  
    bang_bullet_bang,  
    bang_bullet_bang2 = 5004,  
    bang_glass = 5031,  
    bang_glass2,  
    solidPool_water = 9000,  
    solidPool_blood,  
    solidPool_oil,  
    solidPool_petrol,  
    solidPool_mud,  
    porousPool_water,  
    porousPool_blood,  
    porousPool_oil,  
    porousPool_petrol,  
    porousPool_mud,  
    porousPool_water_ped_drip,  
    liquidTrail_water = 9050  
}  
```
</summary>
	]]

native "_ADD_DECAL_TO_MARKER"
    hash "0x8A35C742130C6080"
	jhash (0x335695CF)
	arguments {
		int "decalType",
		charPtr "textureDict",
		charPtr "textureName",
	}
	alias "0x8A35C742130C6080"
	ns "GRAPHICS"
	returns "void"
	doc [[!
<summary>
```
REQUEST_STREAMED_TEXTURE_DICT("MPOnMissMarkers", false);  
*uParam0.f_809 = add_decal(9120, vParam1, vVar4, vVar7, 2f, 2f, to_float(iVar0) / 255f, to_float(iVar1) / 255f, to_float(iVar2) / 255f, 1f, -1f, 1, 0, 0);  
_0x8A35C742130C6080(9120, "MPOnMissMarkers", "Capture_The_Flag_Base_Icon");  
```
</summary>
	]]

native "ADD_ENTITY_ICON"
    hash "0x9CD43EEE12BF4DD0"
	jhash (0xF3027D21)
	arguments {
		Entity "entity",
		charPtr "icon",
	}
	ns "GRAPHICS"
	returns "Any"
	doc [[!
<summary>
```
Example:  
GRAPHICS::ADD_ENTITY_ICON(a_0, "MP_Arrow");  
I tried this and nothing happened...  
```
</summary>
	]]

native "ADD_PETROL_DECAL"
    hash "0x4F5212C7AD880DF8"
	jhash (0x1259DF42)
	arguments {
		float "x",
		float "y",
		float "z",
		float "groundLvl",
		float "width",
		float "transparency",
	}
	ns "GRAPHICS"
	returns "Any"
	doc [[!
	]]

native "ATTACH_TV_AUDIO_TO_ENTITY"
    hash "0x845BAD77CC770633"
	jhash (0x784944DB)
	arguments {
		Entity "entity",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
<summary>
```
Might be more appropriate in AUDIO?  
```
</summary>
	]]

native "BEGIN_SCALEFORM_MOVIE_METHOD"
    hash "0xF6E48914C7A8694E"
	jhash (0x215ABBE8)
	arguments {
		int "scaleform",
		charPtr "functionName",
	}
	alias "_PUSH_SCALEFORM_MOVIE_FUNCTION"
	ns "GRAPHICS"
	returns "BOOL"
	doc [[!
<summary>
```
Push a function from the Scaleform onto the stack  
```
</summary>
	]]

native "BEGIN_SCALEFORM_MOVIE_METHOD_ON_FRONTEND"
    hash "0xAB58C27C2E6123C6"
	jhash (0xF6015178)
	arguments {
		charPtr "functionName",
	}
	alias "0xAB58C27C2E6123C6"
	alias "_PUSH_SCALEFORM_MOVIE_FUNCTION_N"
	alias "_BEGIN_SCALEFORM_MOVIE_METHOD_N"
	ns "GRAPHICS"
	returns "BOOL"
	doc [[!
<summary>
Starts frontend (pause menu) scaleform movie methods.
This can be used when you want to make custom frontend menus, and customize things like images or text in the menus etc.

Use [`BEGIN_SCALEFORM_MOVIE_METHOD_ON_FRONTEND_HEADER`](#_0xB9449845F73F5E9C) for header scaleform functions.
</summary>
<param name="functionName">The function name of the scaleform to call.</param>
	]]

native "_BEGIN_SCALEFORM_MOVIE_METHOD_HUD_COMPONENT"
    hash "0x98C494FD5BDFBFD5"
	jhash (0x5D66CE1E)
	arguments {
		int "hudComponent",
		charPtr "functionName",
	}
	alias "_PUSH_SCALEFORM_MOVIE_FUNCTION_FROM_HUD_COMPONENT"
	ns "GRAPHICS"
	returns "BOOL"
	doc [[!
<summary>
```
Pushes a function from the Hud component Scaleform onto the stack. Same behavior as GRAPHICS::_PUSH_SCALEFORM_MOVIE_FUNCTION, just a hud component id instead of a Scaleform.  
Known components:  
19   
20   
This native requires more research - all information can be found inside of 'hud.gfx'. Using a decompiler, the different components are located under "scripts\__Packages\com\rockstargames\gtav\hud\hudComponents" and "scripts\__Packages\com\rockstargames\gtav\Multiplayer".  
```
</summary>
	]]

native "BEGIN_TEXT_COMMAND_SCALEFORM_STRING"
    hash "0x80338406F3475E55"
	jhash (0x3AC9CB55)
	arguments {
		charPtr "componentType",
	}
	alias "_BEGIN_TEXT_COMPONENT"
	ns "GRAPHICS"
	returns "void"
	doc [[!
<summary>
```
Previously called _BEGIN_TEXT_COMPONENT  
Called prior to adding a text component to the UI. After doing so, GRAPHICS::END_TEXT_COMMAND_SCALEFORM_STRING is called.  
Examples:  
GRAPHICS::BEGIN_TEXT_COMMAND_SCALEFORM_STRING("NUMBER");  
UI::ADD_TEXT_COMPONENT_INTEGER(GAMEPLAY::ABSI(a_1));  
GRAPHICS::END_TEXT_COMMAND_SCALEFORM_STRING();  
GRAPHICS::BEGIN_TEXT_COMMAND_SCALEFORM_STRING("STRING");  
UI::_ADD_TEXT_COMPONENT_STRING(a_2);  
GRAPHICS::END_TEXT_COMMAND_SCALEFORM_STRING();  
GRAPHICS::BEGIN_TEXT_COMMAND_SCALEFORM_STRING("STRTNM2");  
UI::_0x17299B63C7683A2B(v_3);  
UI::_0x17299B63C7683A2B(v_4);  
GRAPHICS::END_TEXT_COMMAND_SCALEFORM_STRING();  
GRAPHICS::BEGIN_TEXT_COMMAND_SCALEFORM_STRING("STRTNM1");  
UI::_0x17299B63C7683A2B(v_3);  
GRAPHICS::END_TEXT_COMMAND_SCALEFORM_STRING();  
```
</summary>
	]]

native "BEGIN_SCALEFORM_MOVIE_METHOD_ON_FRONTEND_HEADER"
    hash "0xB9449845F73F5E9C"
	jhash (0x5E219B67)
	arguments {
		charPtr "functionName",
	}
	alias "0xB9449845F73F5E9C"
	alias "_BEGIN_SCALEFORM_MOVIE_METHOD_V"
	ns "GRAPHICS"
	returns "BOOL"
	doc [[!
<summary>
Starts frontend (pause menu) scaleform movie methods for header options.

Use [`BEGIN_SCALEFORM_MOVIE_METHOD_ON_FRONTEND`](#_0xAB58C27C2E6123C6) to customize the content inside the frontend menus.
</summary>
<param name="functionName">Scaleform function name.</param>
	]]

native "_CALL_SCALEFORM_MOVIE_FUNCTION_FLOAT_PARAMS"
    hash "0xD0837058AE2E4BEE"
	jhash (0x557EDA1D)
	arguments {
		int "scaleform",
		charPtr "functionName",
		float "param1",
		float "param2",
		float "param3",
		float "param4",
		float "param5",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
<summary>
```
Calls the Scaleform function and passes the parameters as floats.  
The number of parameters passed to the function varies, so the end of the parameter list is represented by -1.0.  
```
</summary>
	]]

native "_CALL_SCALEFORM_MOVIE_FUNCTION_MIXED_PARAMS"
    hash "0xEF662D8D57E290B1"
	jhash (0x6EAF56DE)
	arguments {
		int "scaleform",
		charPtr "functionName",
		float "floatParam1",
		float "floatParam2",
		float "floatParam3",
		float "floatParam4",
		float "floatParam5",
		charPtr "stringParam1",
		charPtr "stringParam2",
		charPtr "stringParam3",
		charPtr "stringParam4",
		charPtr "stringParam5",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
<summary>
```
Calls the Scaleform function and passes both float and string parameters (in their respective order).  
The number of parameters passed to the function varies, so the end of the float parameters is represented by -1.0, and the end of the string parameters is represented by 0 (NULL).  
NOTE: The order of parameters in the function prototype is important! All float parameters must come first, followed by the string parameters.  
Examples:  
// function MY_FUNCTION(floatParam1, floatParam2, stringParam)  
GRAPHICS::_CALL_SCALEFORM_MOVIE_FUNCTION_MIXED_PARAMS(scaleform, "MY_FUNCTION", 10.0, 20.0, -1.0, -1.0, -1.0, "String param", 0, 0, 0, 0);  
// function MY_FUNCTION_2(floatParam, stringParam1, stringParam2)  
GRAPHICS::_CALL_SCALEFORM_MOVIE_FUNCTION_MIXED_PARAMS(scaleform, "MY_FUNCTION_2", 10.0, -1.0, -1.0, -1.0, -1.0, "String param #1", "String param #2", 0, 0, 0);  
```
</summary>
	]]

native "CALL_SCALEFORM_MOVIE_METHOD"
    hash "0xFBD96D87AC96D533"
	jhash (0x7AB77B57)
	arguments {
		int "scaleform",
		charPtr "method",
	}
	alias "_CALL_SCALEFORM_MOVIE_FUNCTION_VOID"
	ns "GRAPHICS"
	returns "void"
	doc [[!
<summary>
```
Calls the Scaleform function.  
```
</summary>
	]]

native "_CALL_SCALEFORM_MOVIE_FUNCTION_STRING_PARAMS"
    hash "0x51BC1ED3CC44E8F7"
	jhash (0x91A7FCEB)
	arguments {
		int "scaleform",
		charPtr "functionName",
		charPtr "param1",
		charPtr "param2",
		charPtr "param3",
		charPtr "param4",
		charPtr "param5",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
<summary>
```
Calls the Scaleform function and passes the parameters as strings.  
The number of parameters passed to the function varies, so the end of the parameter list is represented by 0 (NULL).  
```
</summary>
	]]

native "CLEAR_DRAW_ORIGIN"
    hash "0xFF0B610F6BE0D7AF"
	jhash (0xDD76B263)
	ns "GRAPHICS"
	returns "void"
	doc [[!
<summary>
```
Resets the screen's draw-origin which was changed by the function GRAPHICS::SET_DRAW_ORIGIN(...) back to x=0,y=0.  
See GRAPHICS::SET_DRAW_ORIGIN(...) for further information.  
```
</summary>
	]]

native "_CLEAR_EXTRA_TIMECYCLE_MODIFIER"
    hash "0x92CCC17A7A2285DA"
	jhash (0x6776720A)
	alias "0x92CCC17A7A2285DA"
	ns "GRAPHICS"
	returns "void"
	doc [[!
<summary>
Clears the secondary timecycle modifier usually set with [`SetExtraTimecycleModifier`](#_0X3B2FD68DB5F8331C)
</summary>
	]]

native "CREATE_CHECKPOINT"
    hash "0x0134F0835AB6BFCB"
	jhash (0xF541B690)
	arguments {
		int "type",
		float "posX1",
		float "posY1",
		float "posZ1",
		float "posX2",
		float "posY2",
		float "posZ2",
		float "radius",
		int "red",
		int "green",
		int "blue",
		int "alpha",
		int "reserved",
	}
	ns "GRAPHICS"
	returns "int"
	doc [[!
<summary>
```
Creates a checkpoint. Returns the handle of the checkpoint.  
20/03/17 : Attention, checkpoints are already handled by the game itself, so you must not loop it like markers.  
Parameters:  
* type - The type of checkpoint to create. See below for a list of checkpoint types.  
* pos1 - The position of the checkpoint.  
* pos2 - The position of the next checkpoint to point to.  
* radius - The radius of the checkpoint.  
* color - The color of the checkpoint.  
* reserved - Special parameter, see below for details. Usually set to 0 in the scripts.  
Checkpoint types:  
0-4---------Cylinder: 1 arrow, 2 arrow, 3 arrows, CycleArrow, Checker  
5-9---------Cylinder: 1 arrow, 2 arrow, 3 arrows, CycleArrow, Checker  
10-14-------Ring: 1 arrow, 2 arrow, 3 arrows, CycleArrow, Checker  
15-19-------1 arrow, 2 arrow, 3 arrows, CycleArrow, Checker        
20-24-------Cylinder: 1 arrow, 2 arrow, 3 arrows, CycleArrow, Checker   
25-29-------Cylinder: 1 arrow, 2 arrow, 3 arrows, CycleArrow, Checker      
30-34-------Cylinder: 1 arrow, 2 arrow, 3 arrows, CycleArrow, Checker   
35-38-------Ring: Airplane Up, Left, Right, UpsideDown  
39----------?  
40----------Ring: just a ring  
41----------?  
42-44-------Cylinder w/ number (uses 'reserved' parameter)  
45-47-------Cylinder no arrow or number  
If using type 42-44, reserved sets number / number and shape to display  
0-99------------Just numbers (0-99)  
100-109-----------------Arrow (0-9)  
110-119------------Two arrows (0-9)  
120-129----------Three arrows (0-9)  
130-139----------------Circle (0-9)  
140-149------------CycleArrow (0-9)  
150-159----------------Circle (0-9)  
160-169----Circle  w/ pointer (0-9)  
170-179-------Perforated ring (0-9)  
180-189----------------Sphere (0-9)  
```
</summary>
	]]

native "CLEAR_TIMECYCLE_MODIFIER"
    hash "0x0F07E7745A236711"
	jhash (0x8D8DF8EE)
	ns "GRAPHICS"
	returns "void"
	doc [[!
	]]

native "DELETE_CHECKPOINT"
    hash "0xF5ED37F54CD4D52E"
	jhash (0xB66CF3CA)
	arguments {
		int "checkpoint",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
	]]

native "CREATE_TRACKED_POINT"
    hash "0xE2C9439ED45DEA60"
	jhash (0x3129C31A)
	ns "GRAPHICS"
	returns "int"
	doc [[!
<summary>
```
Creates a tracked point, useful for checking the visibility of a 3D point on screen.  
```
</summary>
	]]

native "DISABLE_VEHICLE_DISTANTLIGHTS"
    hash "0xC9F98AC1884E73A2"
	jhash (0x7CFAE36F)
	arguments {
		BOOL "toggle",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
	]]

native "_DOES_VEHICLE_HAVE_DECAL"
    hash "0x060D935D3981A275"
	jhash (0x6D58F73B)
	arguments {
		Vehicle "vehicle",
		Any "p1",
	}
	alias "_HAS_VEHICLE_GOT_DECAL"
	ns "GRAPHICS"
	returns "BOOL"
	doc [[!
<summary>
```
This function is called before ADD_CLAN_DECAL_TO_VEHICLE to see if it needs to run. IDK if it's for clan decal or not, but the 2nd parameter might be decal index? It's always passed 0. Not sure what this function really does. But it does return 0 if the clan tag is not on, and 1 if it is.  
```
</summary>
	]]

native "DESTROY_TRACKED_POINT"
    hash "0xB25DC90BAD56CA42"
	jhash (0x14AC675F)
	arguments {
		int "point",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
	]]

native "DOES_PARTICLE_FX_LOOPED_EXIST"
    hash "0x74AFEF0D2E1E409B"
	jhash (0xCBF91D2A)
	arguments {
		int "ptfxHandle",
	}
	ns "GRAPHICS"
	returns "BOOL"
	doc [[!
	]]

native "DRAW_DEBUG_BOX"
    hash "0x083A2CA4F2E573BD"
	jhash (0x8524A848)
	arguments {
		float "x1",
		float "y1",
		float "z1",
		float "x2",
		float "y2",
		float "z2",
		int "red",
		int "green",
		int "blue",
		int "alpha",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
<summary>
```
NOTE: Debugging functions are not present in the retail version of the game.  
```
</summary>
	]]

native "DRAW_BOX"
    hash "0xD3A9971CADAC7252"
	jhash (0xCD4D9DD5)
	arguments {
		float "x1",
		float "y1",
		float "z1",
		float "x2",
		float "y2",
		float "z2",
		int "red",
		int "green",
		int "blue",
		int "alpha",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
<summary>
```
x,y,z = start pos  
x2,y2,z2 = end pos  
Draw's a 3D Box between the two x,y,z coords.  
--------------  
Keep in mind that the edges of the box do only align to the worlds base-vectors. Therefore something like rotation cannot be applied. That means this function is pretty much useless, unless you want a static unicolor box somewhere.  
I recommend using a predefined function to call this.  
[VB.NET]  
Public Sub DrawBox(a As Vector3, b As Vector3, col As Color)  
    [Function].Call(Hash.DRAW_BOX,a.X, a.Y, a.Z,b.X, b.Y, b.Z,col.R, col.G, col.B, col.A)  
End Sub  
[C#]  
public void DrawBox(Vector3 a, Vector3 b, Color col)  
{  
    Function.Call(Hash.DRAW_BOX,a.X, a.Y, a.Z,b.X, b.Y, b.Z,col.R, col.G, col.B, col.A);  
}  
```
</summary>
	]]

native "DRAW_DEBUG_CROSS"
    hash "0x73B1189623049839"
	jhash (0xB6DF3709)
	arguments {
		float "x",
		float "y",
		float "z",
		float "size",
		int "red",
		int "green",
		int "blue",
		int "alpha",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
<summary>
```
NOTE: Debugging functions are not present in the retail version of the game.  
```
</summary>
	]]

native "DRAW_DEBUG_LINE"
    hash "0x7FDFADE676AA3CB0"
	jhash (0xABF783AB)
	arguments {
		float "x1",
		float "y1",
		float "z1",
		float "x2",
		float "y2",
		float "z2",
		int "red",
		int "green",
		int "blue",
		int "alpha",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
<summary>
```
NOTE: Debugging functions are not present in the retail version of the game.  
```
</summary>
	]]

native "DRAW_DEBUG_LINE_WITH_TWO_COLOURS"
    hash "0xD8B9A8AC5608FF94"
	jhash (0xE8BFF632)
	arguments {
		float "x1",
		float "y1",
		float "z1",
		float "x2",
		float "y2",
		float "z2",
		int "r1",
		int "g1",
		int "b1",
		int "r2",
		int "g2",
		int "b2",
		int "alpha1",
		int "alpha2",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
<summary>
```
NOTE: Debugging functions are not present in the retail version of the game.  
```
</summary>
	]]

native "DRAW_DEBUG_SPHERE"
    hash "0xAAD68E1AB39DA632"
	jhash (0x304D0EEF)
	arguments {
		float "x",
		float "y",
		float "z",
		float "radius",
		int "red",
		int "green",
		int "blue",
		int "alpha",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
<summary>
```
NOTE: Debugging functions are not present in the retail version of the game.  
```
</summary>
	]]

native "DRAW_DEBUG_TEXT"
    hash "0x3903E216620488E8"
	jhash (0x269B006F)
	arguments {
		charPtr "text",
		float "x",
		float "y",
		float "z",
		int "red",
		int "green",
		int "blue",
		int "alpha",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
<summary>
```
NOTE: Debugging functions are not present in the retail version of the game.  
```
</summary>
	]]

native "DRAW_DEBUG_TEXT_2D"
    hash "0xA3BB2E9555C05A8F"
	jhash (0x528B973B)
	arguments {
		charPtr "text",
		float "x",
		float "y",
		float "z",
		int "red",
		int "green",
		int "blue",
		int "alpha",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
<summary>
```
NOTE: Debugging functions are not present in the retail version of the game.  
```
</summary>
	]]

native "_DRAW_INTERACTIVE_SPRITE"
    hash "0x2BC54A8188768488"
	arguments {
		charPtr "textureDict",
		charPtr "textureName",
		float "screenX",
		float "screenY",
		float "width",
		float "height",
		float "heading",
		int "red",
		int "green",
		int "blue",
		int "alpha",
	}
	alias "0x2BC54A8188768488"
	ns "GRAPHICS"
	returns "void"
	doc [[!
<summary>
Similar to [\_DRAW_SPRITE](#_0xE7FFAE5EBF23D890), but seems to be some kind of "interactive" sprite, at least used by render targets.
These seem to be the only dicts ever requested by this native:

```
prop_screen_biker_laptop
Prop_Screen_GR_Disruption
Prop_Screen_TaleOfUs
prop_screen_nightclub
Prop_Screen_IE_Adhawk
prop_screen_sm_free_trade_shipping
prop_screen_hacker_truck
MPDesktop
Prop_Screen_Nightclub
And a few others
```
</summary>
<param name="textureDict">Name of texture dictionary to load texture from</param>
<param name="textureName">Name of texture to load from texture dictionary</param>
<param name="screenX">Screen X</param>
<param name="screenY">Screen Y</param>
<param name="width">Scale X</param>
<param name="height">Scale Y</param>
<param name="heading">Texture rotation in degrees (default = 0.0) positive is clockwise, measured in degrees</param>
<param name="red">Color</param>
<param name="green">Color</param>
<param name="blue">Color</param>
<param name="alpha">Opacity level</param>
	]]

native "DRAW_LIGHT_WITH_RANGE"
    hash "0xF2A1B2771A01DBD4"
	jhash (0x6A396E9A)
	arguments {
		float "posX",
		float "posY",
		float "posZ",
		int "colorR",
		int "colorG",
		int "colorB",
		float "range",
		float "intensity",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
	]]

native "_DRAW_LIGHT_WITH_RANGE_AND_SHADOW"
    hash "0xF49E9A9716A04595"
	arguments {
		float "x",
		float "y",
		float "z",
		int "r",
		int "g",
		int "b",
		float "range",
		float "intensity",
		float "shadow",
	}
	alias "_DRAW_LIGHT_WITH_RANGE_WITH_SHADOW"
	ns "GRAPHICS"
	returns "void"
	doc [[!
	]]

native "DRAW_LINE"
    hash "0x6B7256074AE34680"
	jhash (0xB3426BCC)
	arguments {
		float "x1",
		float "y1",
		float "z1",
		float "x2",
		float "y2",
		float "z2",
		int "red",
		int "green",
		int "blue",
		int "alpha",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
<summary>
```
Draws a depth-tested line from one point to another.  
----------------  
x1, y1, z1 : Coordinates for the first point  
x2, y2, z2 : Coordinates for the second point  
r, g, b, alpha : Color with RGBA-Values  
I recommend using a predefined function to call this.  
[VB.NET]  
Public Sub DrawLine(from As Vector3, [to] As Vector3, col As Color)  
    [Function].Call(Hash.DRAW_LINE, from.X, from.Y, from.Z, [to].X, [to].Y, [to].Z, col.R, col.G, col.B, col.A)  
End Sub  
[C#]  
public void DrawLine(Vector3 from, Vector3 to, Color col)  
{  
    Function.Call(Hash.DRAW_LINE, from.X, from.Y, from.Z, to.X, to.Y, to.Z, col.R, col.G, col.B, col.A);  
}  
```
</summary>
	]]

native "DRAW_POLY"
    hash "0xAC26716048436851"
	jhash (0xABD19253)
	arguments {
		float "x1",
		float "y1",
		float "z1",
		float "x2",
		float "y2",
		float "z2",
		float "x3",
		float "y3",
		float "z3",
		int "red",
		int "green",
		int "blue",
		int "alpha",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
<summary>
```
x/y/z - Location of a vertex (in world coords), presumably.  
----------------  
x1, y1, z1     : Coordinates for the first point  
x2, y2, z2     : Coordinates for the second point  
x3, y3, z3     : Coordinates for the third point  
r, g, b, alpha : Color with RGBA-Values  
Keep in mind that only one side of the drawn triangle is visible: It's the side, in which the vector-product of the vectors heads to: (b-a)x(c-a) Or (b-a)x(c-b).  
But be aware: The function seems to work somehow differently. I have trouble having them drawn in rotated orientation. Try it yourself and if you somehow succeed, please edit this and post your solution.  
I recommend using a predefined function to call this.  
[VB.NET]  
Public Sub DrawPoly(a As Vector3, b As Vector3, c As Vector3, col As Color)  
    [Function].Call(Hash.DRAW_POLY, a.X, a.Y, a.Z, b.X, b.Y, b.Z, c.X, c.Y, c.Z, col.R, col.G, col.B, col.A)  
End Sub  
[C#]  
public void DrawPoly(Vector3 a, Vector3 b, Vector3 c, Color col)  
{  
    Function.Call(Hash.DRAW_POLY, a.X, a.Y, a.Z, b.X, b.Y, b.Z, c.X, c.Y, c.Z, col.R, col.G, col.B, col.A);  
}  
BTW: Intersecting triangles are not supported: They overlap in the order they were called.  
```
</summary>
	]]

native "DRAW_MARKER"
    hash "0x28477EC23D892089"
	jhash (0x48D84A02)
	arguments {
		int "type",
		float "posX",
		float "posY",
		float "posZ",
		float "dirX",
		float "dirY",
		float "dirZ",
		float "rotX",
		float "rotY",
		float "rotZ",
		float "scaleX",
		float "scaleY",
		float "scaleZ",
		int "red",
		int "green",
		int "blue",
		int "alpha",
		BOOL "bobUpAndDown",
		BOOL "faceCamera",
		int "p19",
		BOOL "rotate",
		charPtr "textureDict",
		charPtr "textureName",
		BOOL "drawOnEnts",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
<summary>
Draws a marker with the specified appearance at the target location. This has to be called every frame, e.g. in a `Wait(0)` loop.

There's a [list of markers](https://docs.fivem.net/game-references/markers/) on the FiveM documentation site.
</summary>
<param name="type">The marker type to draw.</param>
<param name="posX">The X coordinate to draw the marker at.</param>
<param name="posY">The Y coordinate to draw the marker at.</param>
<param name="posZ">The Z coordinate to draw the marker at.</param>
<param name="dirX">The X component of the direction vector for the marker, or 0.0 to use rotX/Y/Z.</param>
<param name="dirY">The Y component of the direction vector for the marker, or 0.0 to use rotX/Y/Z.</param>
<param name="dirZ">The Z component of the direction vector for the marker, or 0.0 to use rotX/Y/Z.</param>
<param name="rotX">The X rotation for the marker. Only used if the direction vector is 0.0.</param>
<param name="rotY">The Y rotation for the marker. Only used if the direction vector is 0.0.</param>
<param name="rotZ">The Z rotation for the marker. Only used if the direction vector is 0.0.</param>
<param name="scaleX">The scale for the marker on the X axis.</param>
<param name="scaleY">The scale for the marker on the Y axis.</param>
<param name="scaleZ">The scale for the marker on the Z axis.</param>
<param name="red">The red component of the marker color, on a scale from 0-255.</param>
<param name="green">The green component of the marker color, on a scale from 0-255.</param>
<param name="blue">The blue component of the marker color, on a scale from 0-255.</param>
<param name="alpha">The alpha component of the marker color, on a scale from 0-255.</param>
<param name="bobUpAndDown">Whether or not the marker should slowly animate up/down.</param>
<param name="faceCamera">Whether the marker should be a 'billboard', as in, should constantly face the camera.</param>
<param name="p19">Typically set to `2`. Does not seem to matter directly.</param>
<param name="rotate">Rotations only apply to the heading.</param>
<param name="textureDict">A texture dictionary to draw the marker with, or NULL. Example: 'GolfPutting'</param>
<param name="textureName">A texture name in `textureDict` to draw the marker with, or NULL. Example: 'PuttingMarker'</param>
<param name="drawOnEnts">Whether or not the marker should draw on intersecting entities.</param>
	]]

native "DRAW_RECT"
    hash "0x3A618A217E5154F0"
	jhash (0xDD2BFC77)
	arguments {
		float "x",
		float "y",
		float "width",
		float "height",
		int "r",
		int "g",
		int "b",
		int "a",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
<summary>
```
Draws a rectangle on the screen.  
-x: The relative X point of the center of the rectangle. (0.0-1.0, 0.0 is the left edge of the screen, 1.0 is the right edge of the screen)  
-y: The relative Y point of the center of the rectangle. (0.0-1.0, 0.0 is the top edge of the screen, 1.0 is the bottom edge of the screen)  
-width: The relative width of the rectangle. (0.0-1.0, 1.0 means the whole screen width)  
-height: The relative height of the rectangle. (0.0-1.0, 1.0 means the whole screen height)  
-R: Red part of the color. (0-255)  
-G: Green part of the color. (0-255)  
-B: Blue part of the color. (0-255)  
-A: Alpha part of the color. (0-255, 0 means totally transparent, 255 means totally opaque)  
The total number of rectangles to be drawn in one frame is apparently limited to 399.  
```
</summary>
	]]

native "DRAW_SCALEFORM_MOVIE"
    hash "0x54972ADAF0294A93"
	jhash (0x48DA6A58)
	arguments {
		int "scaleformHandle",
		float "x",
		float "y",
		float "width",
		float "height",
		int "red",
		int "green",
		int "blue",
		int "alpha",
		int "unk",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
<summary>
```
GTA V Scaleforms Decompiled  
pastebin.com/mmNdjX2k  
```
</summary>
	]]

native "DRAW_SCALEFORM_MOVIE_FULLSCREEN"
    hash "0x0DF606929C105BE1"
	jhash (0x7B48E696)
	arguments {
		int "scaleform",
		int "red",
		int "green",
		int "blue",
		int "alpha",
		int "unk",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
<summary>
```
unk is not used so no need  
```
</summary>
	]]

native "DRAW_SCALEFORM_MOVIE_3D"
    hash "0x87D51D72255D4E78"
	jhash (0xC4F63A89)
	arguments {
		int "scaleform",
		float "posX",
		float "posY",
		float "posZ",
		float "rotX",
		float "rotY",
		float "rotZ",
		float "p7",
		float "sharpness",
		float "p9",
		float "scaleX",
		float "scaleY",
		float "scaleZ",
		Any "p13",
	}
	alias "0x87D51D72255D4E78"
	ns "GRAPHICS"
	returns "void"
	doc [[!
<summary>
```
sharpness goes from 0.0 to 1.0  
```
</summary>
	]]

native "DRAW_SCALEFORM_MOVIE_FULLSCREEN_MASKED"
    hash "0xCF537FDE4FBD4CE5"
	jhash (0x9C59FC06)
	arguments {
		int "scaleform1",
		int "scaleform2",
		int "red",
		int "green",
		int "blue",
		int "alpha",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
	]]

native "_DRAW_SCALEFORM_MOVIE_3D_NON_ADDITIVE"
    hash "0x1CE592FDC749D6F5"
	jhash (0x899933C8)
	arguments {
		int "scaleform",
		float "posX",
		float "posY",
		float "posZ",
		float "rotX",
		float "rotY",
		float "rotZ",
		float "p7",
		float "p8",
		float "p9",
		float "scaleX",
		float "scaleY",
		float "scaleZ",
		Any "p13",
	}
	alias "0x1CE592FDC749D6F5"
	ns "GRAPHICS"
	returns "void"
	doc [[!
<summary>
```
what the heck does this one do differently from the one above?  
```
</summary>
	]]

native "_DRAW_SHOWROOM"
    hash "0x98C4FE6EC34154CA"
	jhash (0x9A0E3BFE)
	arguments {
		charPtr "p0",
		Ped "ped",
		int "p2",
		float "posX",
		float "posY",
		float "posZ",
	}
	alias "0x98C4FE6EC34154CA"
	ns "GRAPHICS"
	returns "BOOL"
	doc [[!
<summary>
```
It's called after 0xD3A10FC7FD8D98CD and 0xF1CEA8A4198D8E9A  
p0 was always "CELEBRATION_WINNER"  
```
</summary>
	]]

native "DRAW_SPOT_LIGHT"
    hash "0xD0F64B265C8C8B33"
	jhash (0xBDBC410C)
	arguments {
		float "posX",
		float "posY",
		float "posZ",
		float "dirX",
		float "dirY",
		float "dirZ",
		int "colorR",
		int "colorG",
		int "colorB",
		float "distance",
		float "brightness",
		float "hardness",
		float "radius",
		float "falloff",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
<summary>
```
Parameters:  
* pos - coordinate where the spotlight is located  
* dir - the direction vector the spotlight should aim at from its current position  
* r,g,b - color of the spotlight  
* distance - the maximum distance the light can reach  
* brightness - the brightness of the light  
* roundness - "smoothness" of the circle edge  
* radius - the radius size of the spotlight  
* falloff - the falloff size of the light's edge (example: www.i.imgur.com/DemAWeO.jpg)  
Example in C# (spotlight aims at the closest vehicle):  
Vector3 myPos = Game.Player.Character.Position;  
Vehicle nearest = World.GetClosestVehicle(myPos , 1000f);  
Vector3 destinationCoords = nearest.Position;  
Vector3 dirVector = destinationCoords - myPos;  
dirVector.Normalize();  
Function.Call(Hash.DRAW_SPOT_LIGHT, pos.X, pos.Y, pos.Z, dirVector.X, dirVector.Y, dirVector.Z, 255, 255, 255, 100.0f, 1f, 0.0f, 13.0f, 1f);  
```
</summary>
	]]

native "_DRAW_SPOT_LIGHT_WITH_SHADOW"
    hash "0x5BCA583A583194DB"
	jhash (0x32BF9598)
	arguments {
		float "posX",
		float "posY",
		float "posZ",
		float "dirX",
		float "dirY",
		float "dirZ",
		int "colorR",
		int "colorG",
		int "colorB",
		float "distance",
		float "brightness",
		float "roundness",
		float "radius",
		float "falloff",
		int "shadowId",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
<summary>
```
shadowId: each call to this native in the same tick should have a different value passed to this parameter, if two or more calls have the same values, only the first one will render its shadow properly  
```
</summary>
	]]

native "DRAW_SPRITE"
    hash "0xE7FFAE5EBF23D890"
	jhash (0x1FEC16B0)
	arguments {
		charPtr "textureDict",
		charPtr "textureName",
		float "screenX",
		float "screenY",
		float "width",
		float "height",
		float "heading",
		int "red",
		int "green",
		int "blue",
		int "alpha",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
<summary>
```
Draws a 2D sprite on the screen.  
Parameters:  
textureDict - Name of texture dictionary to load texture from (e.g. "CommonMenu", "MPWeaponsCommon", etc.)  
textureName - Name of texture to load from texture dictionary (e.g. "last_team_standing_icon", "tennis_icon", etc.)  
screenX/Y - Screen offset (0.5 = center)  
scaleX/Y - Texture scaling. Negative values can be used to flip the texture on that axis. (0.5 = half)  
heading - Texture rotation in degrees (default = 0.0) positive is clockwise, measured in degrees  
red,green,blue - Sprite color (default = 255/255/255)  
alpha - opacity level  
```
</summary>
	]]

native "DRAW_TV_CHANNEL"
    hash "0xFDDC2B4ED3C69DF0"
	jhash (0x8129EF89)
	arguments {
		float "xPos",
		float "yPos",
		float "xScale",
		float "yScale",
		float "rotation",
		int "red",
		int "green",
		int "blue",
		int "alpha",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
<summary>
```
All calls to this native are preceded by calls to GRAPHICS::_0x61BB1D9B3A95D802 and GRAPHICS::_0xC6372ECD45D73BCD, respectively.  
"act_cinema.ysc", line 1483:  
UI::SET_HUD_COMPONENT_POSITION(15, 0.0, -0.0375);  
UI::SET_TEXT_RENDER_ID(l_AE);  
GRAPHICS::_0x61BB1D9B3A95D802(4);  
GRAPHICS::_0xC6372ECD45D73BCD(1);  
if (GRAPHICS::_0x0AD973CA1E077B60(${movie_arthouse})) {  
    GRAPHICS::DRAW_TV_CHANNEL(0.5, 0.5, 0.7375, 1.0, 0.0, 255, 255, 255, 255);  
} else {   
    GRAPHICS::DRAW_TV_CHANNEL(0.5, 0.5, 1.0, 1.0, 0.0, 255, 255, 255, 255);  
}  
"am_mp_property_int.ysc", line 102545:  
if (ENTITY::DOES_ENTITY_EXIST(a_2._f3)) {  
    if (UI::IS_NAMED_RENDERTARGET_LINKED(ENTITY::GET_ENTITY_MODEL(a_2._f3))) {  
        UI::SET_TEXT_RENDER_ID(a_2._f1);  
        GRAPHICS::_0x61BB1D9B3A95D802(4);  
        GRAPHICS::_0xC6372ECD45D73BCD(1);  
        GRAPHICS::DRAW_TV_CHANNEL(0.5, 0.5, 1.0, 1.0, 0.0, 255, 255, 255, 255);  
        if (GRAPHICS::GET_TV_CHANNEL() == -1) {  
            sub_a8fa5(a_2, 1);  
        } else {   
            sub_a8fa5(a_2, 1);  
            GRAPHICS::ATTACH_TV_AUDIO_TO_ENTITY(a_2._f3);  
        }  
        UI::SET_TEXT_RENDER_ID(UI::GET_DEFAULT_SCRIPT_RENDERTARGET_RENDER_ID());  
    }  
}  
```
</summary>
	]]

native "ENABLE_ALIEN_BLOOD_VFX"
    hash "0x9DCE1F0F78260875"
	jhash (0xCE8B8748)
	arguments {
		BOOL "Toggle",
	}
	alias "0x9DCE1F0F78260875"
	ns "GRAPHICS"
	returns "void"
	doc [[!
	]]

native "ENABLE_CLOWN_BLOOD_VFX"
    hash "0xD821490579791273"
	jhash (0xC61C75E9)
	arguments {
		BOOL "toggle",
	}
	alias "SET_CAMERA_ENDTIME"
	ns "GRAPHICS"
	returns "void"
	doc [[!
<summary>
```
Creates cartoon effect when Michel smokes the weed  
```
</summary>
	]]

native "END_SCALEFORM_MOVIE_METHOD"
    hash "0xC6796A8FFA375E53"
	jhash (0x02DBF2D7)
	alias "_POP_SCALEFORM_MOVIE_FUNCTION_VOID"
	ns "GRAPHICS"
	returns "void"
	doc [[!
<summary>
```
Pops and calls the Scaleform function on the stack  
```
</summary>
	]]

native "ENABLE_MOVIE_SUBTITLES"
    hash "0x873FA65C778AD970"
	jhash (0xC2DEBA3D)
	arguments {
		BOOL "toggle",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
	]]

native "_END_SCALEFORM_MOVIE_METHOD_RETURN"
    hash "0xC50AA39A577AF886"
	jhash (0x2F38B526)
	alias "_POP_SCALEFORM_MOVIE_FUNCTION"
	ns "GRAPHICS"
	returns "int"
	doc [[!
<summary>
```
Pops and calls the Scaleform movie on the stack. Returns data from the function (not sure if this is a string).  
```
</summary>
	]]

native "END_TEXT_COMMAND_SCALEFORM_STRING"
    hash "0x362E2D3FE93A9959"
	jhash (0x386CE0B8)
	alias "_END_TEXT_COMPONENT"
	ns "GRAPHICS"
	returns "void"
	doc [[!
<summary>
```
Previously called _END_TEXT_COMPONENT  
```
</summary>
	]]

native "_END_TEXT_COMMAND_SCALEFORM_STRING_2"
    hash "0xAE4E8157D9ECF087"
	jhash (0x2E80DB52)
	alias "0xAE4E8157D9ECF087"
	ns "GRAPHICS"
	returns "void"
	doc [[!
	]]

native "FADE_DECALS_IN_RANGE"
    hash "0xD77EDADB0420E6E0"
	jhash (0xF81E884A)
	arguments {
		Any "p0",
		Any "p1",
		Any "p2",
		Any "p3",
		Any "p4",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
<summary>
```
Fades nearby decals within the range specified  
```
</summary>
	]]

native "_ENTITY_DESCRIPTION_TEXT"
    hash "0xDEADC0DEDEADC0DE"
	arguments {
		Entity "entity",
	}
	alias "0xDEADC0DEDEADC0DE"
	ns "GRAPHICS"
	returns "void"
	doc [[!
<summary>
```
Only found twice in decompiled scripts. Something to do with an entity/object?  
On a side note, it's very interesting how the hash for this native is "DEADC0DE" - this is usually used as padding for initializing a buffer of some sort. I wonder if this native is actually "dead"?  
"carmod_shop.ysc", line 9520:  
if (ENTITY::DOES_ENTITY_EXIST(l_324._f6)) {  
    GRAPHICS::_0xDEADC0DEDEADC0DE(l_324._f6);  
}  
"fm_mission_controller.ysc", line 189641:  
if (GAMEPLAY::IS_BIT_SET(g_1870E1._f7B64[a_0/*104*/]._f25, 28)) {  
    GRAPHICS::_0xDEADC0DEDEADC0DE(NETWORK::NET_TO_OBJ(l_4064._f26A._f87[a_0/*1*/]));  
    if (!GAMEPLAY::IS_BIT_SET(g_1870E1._f7B64[a_0/*104*/]._f25, 31)) {  
        if (!ENTITY::IS_ENTITY_DEAD(v_7)) {  
            AUDIO::PLAY_SOUND_FROM_ENTITY(-1, "EMP_Vehicle_Hum", v_7, "DLC_HEIST_BIOLAB_DELIVER_EMP_SOUNDS", 0, 0);  
            GAMEPLAY::SET_BIT(&g_1870E1._f7B64[a_0/*104*/]._f25, 31);  
        }  
    }  
}  
Console Hash: 0xC12AC47A  
----------  
It's most likely named UPDATE_* (like UPDATE_ENTITY_SHIT_OR_SOMETHING).  
```
</summary>
	]]

native "_GET_ACTIVE_SCREEN_RESOLUTION"
    hash "0x873C9F3104101DD3"
	arguments {
		intPtr "x",
		intPtr "y",
	}
	alias "_GET_SCREEN_ACTIVE_RESOLUTION"
	ns "GRAPHICS"
	returns "void"
	doc [[!
<summary>
```
Returns current screen resolution.  
```
</summary>
	]]

native "_GET_ASPECT_RATIO"
    hash "0xF1307EF624A80D87"
	arguments {
		BOOL "b",
	}
	alias "_GET_SCREEN_ASPECT_RATIO"
	ns "GRAPHICS"
	returns "float"
	doc [[!
	]]

native "GET_DECAL_WASH_LEVEL"
    hash "0x323F647679A09103"
	jhash (0x054448EF)
	arguments {
		int "decal",
	}
	ns "GRAPHICS"
	returns "float"
	doc [[!
	]]

native "_GET_EXTRA_TIMECYCLE_MODIFIER_INDEX"
    hash "0xBB0527EC6341496D"
	ns "GRAPHICS"
	returns "int"
	doc [[!
<summary>
See [`GetTimecycleModifierIndex`](#_0xFDF3D97C674AFB66) for use, works the same just for the secondary timecycle modifier.
</summary>
<returns>An integer representing the Timecycle modifier</returns>
	]]

native "GET_IS_HIDEF"
    hash "0x84ED31191CC5D2C9"
	jhash (0x1C340359)
	ns "GRAPHICS"
	returns "BOOL"
	doc [[!
<summary>
```
false = Any resolution < 1280x720  
true = Any resolution >= 1280x720  
```
</summary>
	]]

native "GET_IS_WIDESCREEN"
    hash "0x30CF4BDA4FCB1905"
	jhash (0xEC717AEF)
	ns "GRAPHICS"
	returns "BOOL"
	doc [[!
<summary>
```
Setting Aspect Ratio Manually in game will return:  
false - for Narrow format Aspect Ratios (3:2, 4:3, 5:4, etc. )  
true - for Wide format Aspect Ratios (5:3, 16:9, 16:10, etc. )  
Setting Aspect Ratio to "Auto" in game will return "false" or "true" based on the actual set Resolution Ratio.  
```
</summary>
	]]

native "GET_MAXIMUM_NUMBER_OF_PHOTOS"
    hash "0x34D23450F028B0BF"
	jhash (0x727AA63F)
	ns "GRAPHICS"
	returns "int"
	doc [[!
<summary>
```
This function is hard-coded to always return 0.  
Limit is 96, see _GET_MAXIMUM_NUMBER_OF_PHOTOS_2 (0xDC54A7AF8B3A14EF).  
```
</summary>
	]]

native "_GET_MAXIMUM_NUMBER_OF_PHOTOS_2"
    hash "0xDC54A7AF8B3A14EF"
	jhash (0x239272BD)
	alias "0xDC54A7AF8B3A14EF"
	ns "GRAPHICS"
	returns "int"
	doc [[!
<summary>
```
This is the "actual" GET_MAXIMUM_NUMBER_OF_PHOTOS native. Always returns 96.  
```
</summary>
	]]

native "_GET_NUMBER_OF_PHOTOS"
    hash "0x473151EBC762C6DA"
	jhash (0x21DBF0C9)
	alias "0x473151EBC762C6DA"
	ns "GRAPHICS"
	returns "int"
	doc [[!
	]]

native "GET_SAFE_ZONE_SIZE"
    hash "0xBAF107B6BB2C97F0"
	jhash (0x3F0D1A6F)
	ns "GRAPHICS"
	returns "float"
	doc [[!
<summary>
```
Gets the scale of safe zone. if the safe zone size scale is max, it will return 1.0.  
```
</summary>
	]]

native "GET_SCALEFORM_MOVIE_METHOD_RETURN_VALUE_INT"
    hash "0x2DE7EFA66B906036"
	jhash (0x2CFB0E6D)
	arguments {
		int "method_return",
	}
	alias "0x2DE7EFA66B906036"
	alias "_GET_SCALEFORM_MOVIE_FUNCTION_RETURN_INT"
	ns "GRAPHICS"
	returns "int"
	doc [[!
<summary>
Used to get a return value from a scaleform function.
Returns an int in the same way `GET_SCALEFORM_MOVIE_METHOD_RETURN_VALUE_STRING` returns a string.

Old description:

```
Needs a bit more research, but it seems to return an int.  
Testing with the scaleform "HACKING_PC" it seems to return an int depending on the clicked App/Program ID  
"agency_heist3b.ysc", line 71836:  
if (CONTROLS::IS_CONTROL_JUST_PRESSED(2, 201) || CONTROLS::IS_CONTROL_JUST_PRESSED(2, 237)) {  
    GRAPHICS::BEGIN_SCALEFORM_MOVIE_METHOD(l_46, "SET_INPUT_EVENT_SELECT");  
    l_45 = GRAPHICS::_END_SCALEFORM_MOVIE_METHOD_RETURN();  
}  
if (GRAPHICS::IS_SCALEFORM_MOVIE_METHOD_RETURN_VALUE_READY(l_45)) {  
    v_13 = GRAPHICS::GET_SCALEFORM_MOVIE_METHOD_RETURN_VALUE_INT(l_45);  
    if (v_13 == 6) {  
        sub_73269(a_0);  
    }  
}  
```
</summary>
<param name="method_return">The return value of this native: `EndScaleformMovieMethodReturn`</param>
<returns>Returns an int in the same way `GET_SCALEFORM_MOVIE_METHOD_RETURN_VALUE_STRING` returns a string.</returns>
	]]

native "GET_SCALEFORM_MOVIE_METHOD_RETURN_VALUE_STRING"
    hash "0xE1E258829A885245"
	jhash (0x516862EB)
	arguments {
		int "method_return",
	}
	alias "SITTING_TV"
	alias "_GET_SCALEFORM_MOVIE_FUNCTION_RETURN_STRING"
	ns "GRAPHICS"
	returns "charPtr"
	doc [[!
<summary>
Used to get a return value from a scaleform function.
Returns a string in the same way GET_SCALEFORM_MOVIE_METHOD_RETURN_VALUE_INT returns an int.
</summary>
<param name="method_return">The return value of this native: `EndScaleformMovieMethodReturn`</param>
<returns>Returns a string in the same way `GET_SCALEFORM_MOVIE_METHOD_RETURN_VALUE_INT` returns an int.</returns>
	]]

native "GET_SCREEN_COORD_FROM_WORLD_COORD"
    hash "0x34E82F05DF2974F5"
	jhash (0x1F950E4B)
	arguments {
		float "worldX",
		float "worldY",
		float "worldZ",
		floatPtr "screenX",
		floatPtr "screenY",
	}
	alias "_WORLD3D_TO_SCREEN2D"
	ns "GRAPHICS"
	returns "BOOL"
	doc [[!
<summary>
```
Convert a world coordinate into its relative screen coordinate.  (WorldToScreen)  
Returns a boolean; whether or not the operation was successful. It will return false if the coordinates given are not visible to the rendering camera.  
For .NET users...  
VB:  
Public Shared Function World3DToScreen2d(pos as vector3) As Vector2  
        Dim x2dp, y2dp As New Native.OutputArgument  
        Native.Function.Call(Of Boolean)(Native.Hash.GET_SCREEN_COORD_FROM_WORLD_COORD , pos.x, pos.y, pos.z, x2dp, y2dp)  
        Return New Vector2(x2dp.GetResult(Of Single), y2dp.GetResult(Of Single))  
    End Function  
C#:  
Vector2 World3DToScreen2d(Vector3 pos)  
    {  
        var x2dp = new OutputArgument();  
        var y2dp = new OutputArgument();  
        Function.Call<bool>(Hash.GET_SCREEN_COORD_FROM_WORLD_COORD , pos.X, pos.Y, pos.Z, x2dp, y2dp);  
        return new Vector2(x2dp.GetResult<float>(), y2dp.GetResult<float>());  
    }  
//USE VERY SMALL VALUES FOR THE SCALE OF RECTS/TEXT because it is dramatically larger on screen than in 3D, e.g '0.05' small.  
Used to be called _WORLD3D_TO_SCREEN2D  
I thought we lost you from the scene forever. It does seem however that calling SET_DRAW_ORIGIN then your natives, then ending it. Seems to work better for certain things such as keeping boxes around people for a predator missile e.g.  
```
</summary>
	]]

native "_GET_SCREEN_EFFECT_IS_ACTIVE"
    hash "0x36AD3E690DA5ACEB"
	jhash (0x089D5921)
	arguments {
		charPtr "effectName",
	}
	ns "GRAPHICS"
	returns "BOOL"
	doc [[!
<summary>
```
Returns whether the specified screen effect is active.  
See the effects list in _START_SCREEN_EFFECT  
Example and list of screen FX: www.pastebin.com/dafBAjs0  
```
</summary>
	]]

native "GET_SCREEN_RESOLUTION"
    hash "0x888D57E407E63624"
	jhash (0x29F3572F)
	arguments {
		intPtr "x",
		intPtr "y",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
<summary>
```
int screenresx,screenresy;  
GET_SCREEN_RESOLUTION(&screenresx,&screenresy);  
Hardcoded to always return 1280 x 720  
```
</summary>
	]]

native "_GET_SCRIPT_GFX_POSITION"
    hash "0x6DD8F5AA635EB4B2"
	arguments {
		float "x",
		float "y",
		floatPtr "calculatedX",
		floatPtr "calculatedY",
	}
	alias "0x6DD8F5AA635EB4B2"
	ns "GRAPHICS"
	returns "void"
	doc [[!
<summary>
Calculates the effective X/Y fractions when applying the values set by `SET_SCRIPT_GFX_ALIGN` and
`SET_SCRIPT_GFX_ALIGN_PARAMS`.
</summary>
<param name="x">The input X coordinate.</param>
<param name="y">The input Y coordinate.</param>
<param name="calculatedX">A pointer to the calculated X value.</param>
<param name="calculatedY">A pointer to the calculated Y value.</param>
	]]

native "GET_TIMECYCLE_MODIFIER_INDEX"
    hash "0xFDF3D97C674AFB66"
	jhash (0x594FEEC4)
	ns "GRAPHICS"
	returns "int"
	doc [[!
<summary>
```
Only use for this in the PC scripts is:  
if (GRAPHICS::GET_TIMECYCLE_MODIFIER_INDEX() != -1)  
For a full list, see here: pastebin.com/cnk7FTF2  
can someone update this pastebin???  
```
</summary>
	]]

native "GET_TEXTURE_RESOLUTION"
    hash "0x35736EE65BD00C11"
	jhash (0x096DAA4D)
	arguments {
		charPtr "textureDict",
		charPtr "textureName",
	}
	ns "GRAPHICS"
	returns "Vector3"
	doc [[!
<summary>
```
Returns the texture resolution of the passed texture dict+name.  
Note: Most texture resolutions are doubled compared to the console version of the game.  
```
</summary>
	]]

native "GET_TV_CHANNEL"
    hash "0xFC1E275A90D39995"
	jhash (0x6B96145A)
	ns "GRAPHICS"
	returns "int"
	doc [[!
	]]

native "GET_TV_VOLUME"
    hash "0x2170813D3DD8661B"
	jhash (0x39555CF0)
	ns "GRAPHICS"
	returns "float"
	doc [[!
	]]

native "_HAS_HUD_SCALEFORM_LOADED"
    hash "0xDF6E5987D2B4D140"
	jhash (0x79B43255)
	arguments {
		int "hudComponent",
	}
	ns "GRAPHICS"
	returns "BOOL"
	doc [[!
<summary>
```
Check to see if hud component Scaleform has loaded?  
```
</summary>
	]]

native "_HAS_NAMED_SCALEFORM_MOVIE_LOADED"
    hash "0x0C1C5D756FB5F337"
	arguments {
		charPtr "scaleformName",
	}
	alias "0x0C1C5D756FB5F337"
	ns "GRAPHICS"
	returns "BOOL"
	doc [[!
<summary>
```
Pretty sure it's the real name (not 100% sure so I added the _ prefix); can someone else confirm it?  
Only values used in the scripts are:  
"heist_mp"  
"heistmap_mp"  
"instructional_buttons"  
"heist_pre"  
```
</summary>
	]]

native "HAS_SCALEFORM_CONTAINER_MOVIE_LOADED_INTO_PARENT"
    hash "0x8217150E1217EBFD"
	jhash (0x1DFE8D8A)
	arguments {
		int "scaleformHandle",
	}
	ns "GRAPHICS"
	returns "BOOL"
	doc [[!
	]]

native "HAS_SCALEFORM_MOVIE_LOADED"
    hash "0x85F01B8D5B90570E"
	jhash (0xDDFB6448)
	arguments {
		int "scaleformHandle",
	}
	ns "GRAPHICS"
	returns "BOOL"
	doc [[!
	]]

native "HAS_STREAMED_TEXTURE_DICT_LOADED"
    hash "0x0145F696AAAAD2E4"
	jhash (0x3F436EEF)
	arguments {
		charPtr "textureDict",
	}
	ns "GRAPHICS"
	returns "BOOL"
	doc [[!
	]]

native "IS_DECAL_ALIVE"
    hash "0xC694D74949CAFD0C"
	jhash (0xCDD4A61A)
	arguments {
		Object "decal",
	}
	ns "GRAPHICS"
	returns "BOOL"
	doc [[!
	]]

native "_IS_NIGHTVISION_ACTIVE"
    hash "0x2202A3F42C8E5F79"
	jhash (0x62619061)
	alias "_IS_NIGHTVISION_INACTIVE"
	ns "GRAPHICS"
	returns "BOOL"
	doc [[!
<summary>
```
Gets whether or not NIGHTVISION is Active.  
Note:  When nightvision is actually active, this native will return TRUE!  
```
</summary>
	]]

native "IS_PARTICLE_FX_DELAYED_BLINK"
    hash "0x5CCABFFCA31DDE33"
	jhash (0xEA432A94)
	ns "GRAPHICS"
	returns "float"
	doc [[!
	]]

native "IS_SCALEFORM_MOVIE_METHOD_RETURN_VALUE_READY"
    hash "0x768FF8961BA904D6"
	jhash (0x5CD7C3C0)
	arguments {
		int "method_return",
	}
	alias "0x768FF8961BA904D6"
	alias "_GET_SCALEFORM_MOVIE_FUNCTION_RETURN_BOOL"
	ns "GRAPHICS"
	returns "BOOL"
	doc [[!
<summary>
Returns true if the return value of a scaleform function is ready to be collected (using `GET_SCALEFORM_MOVIE_METHOD_RETURN_VALUE_STRING` or `GET_SCALEFORM_MOVIE_METHOD_RETURN_VALUE_INT`).

Old description/example:

```
Seems to take data that is returned from "_POP_SCALEFORM_MOVIE_FUNCTION" and checks to see if it's not null/empty.  
"agency_heist3b.ysc", line 71836:  
if (CONTROLS::IS_CONTROL_JUST_PRESSED(2, 201) || CONTROLS::IS_CONTROL_JUST_PRESSED(2, 237)) {  
    GRAPHICS::BEGIN_SCALEFORM_MOVIE_METHOD(l_46, "SET_INPUT_EVENT_SELECT");  
    l_45 = GRAPHICS::_END_SCALEFORM_MOVIE_METHOD_RETURN();  
}  
if (GRAPHICS::IS_SCALEFORM_MOVIE_METHOD_RETURN_VALUE_READY(l_45)) {  
    v_13 = GRAPHICS::GET_SCALEFORM_MOVIE_METHOD_RETURN_VALUE_INT(l_45);  
    if (v_13 == 6) {  
        sub_73269(a_0);  
    }  
}  
```
</summary>
<param name="method_return">The return value of this native: `EndScaleformMovieMethodReturn`</param>
<returns>Returns true if the return value of a scaleform function is ready to be collected</returns>
	]]

native "_IS_SEETHROUGH_ACTIVE"
    hash "0x44B80ABAB9D80BD3"
	jhash (0x1FE547F2)
	ns "GRAPHICS"
	returns "BOOL"
	doc [[!
<summary>
```
Returns whether or not SEETHROUGH is active.  
```
</summary>
	]]

native "LOAD_MOVIE_MESH_SET"
    hash "0xB66064452270E8F1"
	jhash (0x9627905C)
	arguments {
		charPtr "movieMeshSetName",
	}
	ns "GRAPHICS"
	returns "int"
	doc [[!
	]]

native "IS_TRACKED_POINT_VISIBLE"
    hash "0xC45CCDAAC9221CA8"
	jhash (0x0BFC4F64)
	arguments {
		int "point",
	}
	ns "GRAPHICS"
	returns "BOOL"
	doc [[!
	]]

native "_LOAD_TV_CHANNEL"
    hash "0x0AD973CA1E077B60"
	jhash (0x4D1EB0FB)
	arguments {
		Hash "tvChannel",
	}
	alias "0x0AD973CA1E077B60"
	ns "GRAPHICS"
	returns "BOOL"
	doc [[!
	]]

native "MOVE_VEHICLE_DECALS"
    hash "0x84C8D7C2D30D3280"
	jhash (0xCE9E6CF2)
	arguments {
		Any "p0",
		Any "p1",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
	]]

native "_LOAD_TV_CHANNEL_SEQUENCE"
    hash "0xF7B38B8305F1FE8B"
	jhash (0xB262DE67)
	arguments {
		int "TV_Channel",
		charPtr "VideoSequence",
		BOOL "Restart",
	}
	alias "0xF7B38B8305F1FE8B"
	ns "GRAPHICS"
	returns "void"
	doc [[!
<summary>
```
Loads specified video sequence into the TV Channel  
TV_Channel ranges from 0-2  
VideoSequence can be any of the following:  
"PL_STD_CNT" CNT Standard Channel  
"PL_STD_WZL" Weazel Standard Channel  
"PL_LO_CNT"   
"PL_LO_WZL"   
"PL_SP_WORKOUT"  
"PL_SP_INV" - Jay Norris Assassination Mission Fail   
"PL_SP_INV_EXP" - Jay Norris Assassination Mission Success  
"PL_LO_RS" - Righteous Slaughter Ad  
"PL_LO_RS_CUTSCENE" - Righteous Slaughter Cut-scene  
"PL_SP_PLSH1_INTRO"   
"PL_LES1_FAME_OR_SHAME"  
"PL_STD_WZL_FOS_EP2"  
"PL_MP_WEAZEL" - Weazel Logo on loop  
"PL_MP_CCTV" - Generic CCTV loop  
Restart   
0=video sequence continues as normal  
1=sequence restarts from beginning every time that channel is selected  
```
</summary>
	]]

native "0x0218BA067D249DEA"
    hash "0x0218BA067D249DEA"
	ns "GRAPHICS"
	returns "void"
	doc [[!
	]]

native "0x02369D5C8A51FDCF"
    hash "0x02369D5C8A51FDCF"
	jhash (0xFDF6D8DA)
	arguments {
		BOOL "p0",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
	]]

native "0x02AC28F3A01FA04A"
    hash "0x02AC28F3A01FA04A"
	jhash (0xB19B2764)
	arguments {
		float "p0",
	}
	ns "GRAPHICS"
	returns "Any"
	doc [[!
	]]

native "0x03300B57FCAC6DDB"
    hash "0x03300B57FCAC6DDB"
	jhash (0x60F72371)
	arguments {
		BOOL "p0",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
	]]

native "0x06F761EA47C1D3ED"
    hash "0x06F761EA47C1D3ED"
	jhash (0x0D830DC7)
	arguments {
		BOOL "p0",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
	]]

native "0x03FC694AE06C5A20"
    hash "0x03FC694AE06C5A20"
	jhash (0x48F16186)
	ns "GRAPHICS"
	returns "void"
	doc [[!
	]]

native "0x0A123435A26C36CD"
    hash "0x0A123435A26C36CD"
	jhash (0xCCCA6855)
	ns "GRAPHICS"
	returns "void"
	doc [[!
	]]

native "0x0A46AF8A78DC5E0A"
    hash "0x0A46AF8A78DC5E0A"
	jhash (0x9E553002)
	ns "GRAPHICS"
	returns "void"
	doc [[!
	]]

native "0x0C0C4E81E1AC60A0"
    hash "0x0C0C4E81E1AC60A0"
	jhash (0xEC5D0317)
	ns "GRAPHICS"
	returns "int"
	doc [[!
<summary>
```
Dr. Underscore (1/6/18):  
Seems to return a value 0-2.  
```
</summary>
	]]

native "0x0AE73D8DF3A762B2"
    hash "0x0AE73D8DF3A762B2"
	jhash (0x342FA2B4)
	arguments {
		BOOL "p0",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
	]]

native "0x0C8FAC83902A62DF"
    hash "0x0C8FAC83902A62DF"
	arguments {
		Any "p0",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
	]]

native "0x0D6CA79EEEBD8CA3"
    hash "0x0D6CA79EEEBD8CA3"
	jhash (0x65376C9B)
	ns "GRAPHICS"
	returns "int"
	doc [[!
<summary>
```
Dr. Underscore (1/6/18):  
Seems to return a value 0-2.  
```
</summary>
	]]

native "0x1072F115DAB0717E"
    hash "0x1072F115DAB0717E"
	jhash (0xE9F2B68F)
	arguments {
		BOOL "p0",
		BOOL "p1",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
	]]

native "0x0E4299C549F0D1F1"
    hash "0x0E4299C549F0D1F1"
	jhash (0x9BABCBA4)
	arguments {
		BOOL "p0",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
	]]

native "0x1086127B3A63505E"
    hash "0x1086127B3A63505E"
	arguments {
		Any "p0",
		Any "p1",
		Any "p2",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
	]]

native "0x12995F2E53FFA601"
    hash "0x12995F2E53FFA601"
	jhash (0x804F444C)
	arguments {
		int "p0",
		int "p1",
		int "p2",
		int "p3",
		int "p4",
		int "p5",
		int "p6",
		int "p7",
		int "p8",
		int "p9",
		int "p10",
		int "p11",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
<summary>
```
Only used in the golf and golf_mp script  
```
</summary>
	]]

native "0x108BE26959A9D9BB"
    hash "0x108BE26959A9D9BB"
	jhash (0x24A7A7F6)
	arguments {
		BOOL "p0",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
	]]

native "0x14FC5833464340A8"
    hash "0x14FC5833464340A8"
	ns "GRAPHICS"
	returns "void"
	doc [[!
	]]

native "0x1600FD8CF72EBC12"
    hash "0x1600FD8CF72EBC12"
	jhash (0xD87CC710)
	arguments {
		float "p0",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
	]]

native "0x15E33297C3E8DC60"
    hash "0x15E33297C3E8DC60"
	jhash (0x805BAB08)
	arguments {
		Any "p0",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
	]]

native "0x1612C45F9E3E0D44"
    hash "0x1612C45F9E3E0D44"
	ns "GRAPHICS"
	returns "void"
	doc [[!
	]]

native "0x1636D7FC127B10D2"
    hash "0x1636D7FC127B10D2"
	arguments {
		Any "p0",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
	]]

native "0x1670F8D05056F257"
    hash "0x1670F8D05056F257"
	jhash (0x226B08EA)
	arguments {
		Any "p0",
	}
	ns "GRAPHICS"
	returns "int"
	doc [[!
<summary>
```
Dr. Underscore (1/6/18):  
Seems to return a value 0-2.  
```
</summary>
	]]

native "0x19E50EB6E33E1D28"
    hash "0x19E50EB6E33E1D28"
	arguments {
		Any "p0",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
	]]

native "0x1A8E2C8B9CF4549C"
    hash "0x1A8E2C8B9CF4549C"
	jhash (0xE8F538B5)
	arguments {
		AnyPtr "p0",
		AnyPtr "p1",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
	]]

native "0x1BBC135A4D25EDDE"
    hash "0x1BBC135A4D25EDDE"
	arguments {
		BOOL "p0",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
<summary>
```
Dr. Underscore (1/6/18):  
Only one instance across all scripts. (maintransition)  
May not be a bool, it could be one of these 0-2 values that are returned just about 500 god damn times.  
```
</summary>
	]]

native "0x1CBA05AE7BD7EE05"
    hash "0x1CBA05AE7BD7EE05"
	jhash (0x56345F6B)
	arguments {
		float "p0",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
	]]

native "0x1C4FC5752BCD8E48"
    hash "0x1C4FC5752BCD8E48"
	jhash (0x3B637AA7)
	arguments {
		float "x",
		float "y",
		float "z",
		float "p3",
		float "rotation",
		float "p5",
		float "width",
		float "height",
		float "p8",
		float "scale",
		float "glowIntensity",
		float "normalHeight",
		float "heightDiff",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
<summary>
This native is used along with these two natives: [`0xa356990e161c9e65`](https://runtime.fivem.net/doc/reference.html#_0xA356990E161C9E65) and [`0x5ce62918f8d703c7`](https://runtime.fivem.net/doc/reference.html#_0x5CE62918F8D703C7). 

This native configures the location, size, rotation, normal height, and the difference ratio between min, normal and max.

All those natives combined they will output something like this: <https://i.imgur.com/TC6cku6.png>
</summary>
<param name="x">Grid center x coord.</param>
<param name="y">Grid center y coord.</param>
<param name="z">Grid center z coord.</param>
<param name="p3">Not sure, but seems to be the amount of lines top/bottom there are in the grid. -1.0 works best.</param>
<param name="rotation">Grid rotation (keep between 0.0 and 1.0).</param>
<param name="p5">Offset top/bottom (? not sure about this one, seems weird).</param>
<param name="width">Grid width (usually 15.0).</param>
<param name="height">Grid height (usually 15.0).</param>
<param name="p8">Not sure, but seems to be the amount of lines left/right there are in the grid. -1.0 works best.</param>
<param name="scale">Zoom / scale (higher values = smaller (more) squares) (lower values = bigger (less) squares).</param>
<param name="glowIntensity">glow intensity / opacity (40.0 is fine for daylight, 15.0 is fine for night time).</param>
<param name="normalHeight">The z coord for 'normal' height (white grid lines level).</param>
<param name="heightDiff">This is the height difference/margin used for line color changes. 0.2 works fine (normalHeight + 0.2 = yellow, normalHeight - 0.2 = red).</param>
	]]

native "0x1DD2139A9A20DCE8"
    hash "0x1DD2139A9A20DCE8"
	jhash (0xBA9AD458)
	ns "GRAPHICS"
	returns "BOOL"
	doc [[!
	]]

native "0x2201C576FACAEBE8"
    hash "0x2201C576FACAEBE8"
	jhash (0x78C4DCBE)
	arguments {
		Any "p0",
		charPtr "p1",
		Any "p2",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
<summary>
```
SET_TV_???  
```
</summary>
	]]

native "0x23BA6B0C2AD7B0D3"
    hash "0x23BA6B0C2AD7B0D3"
	jhash (0xC44C2F44)
	arguments {
		BOOL "toggle",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
<summary>
```
Dr. Underscore (1/6/18):  
Found only in all creator scripts. (fm_capture_creator, fm_deathmatch_creator, fm_lts_creator, fm_mission_controller, fm_race_creator)  
Used in-between DRAW_* calls (DRAW_POLY specifically).  
```
</summary>
	]]

native "0x2485D34E50A22E84"
    hash "0x2485D34E50A22E84"
	jhash (0x72BA8A14)
	arguments {
		float "p0",
		float "p1",
		float "p2",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
	]]

native "0x22A249A53034450A"
    hash "0x22A249A53034450A"
	jhash (0x932FDB81)
	arguments {
		BOOL "p0",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
	]]

native "0x27CB772218215325"
    hash "0x27CB772218215325"
	ns "GRAPHICS"
	returns "void"
	doc [[!
	]]

native "0x259BA6D4E6F808F1"
    hash "0x259BA6D4E6F808F1"
	arguments {
		Any "p0",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
	]]

native "0x27E32866E9A5C416"
    hash "0x27E32866E9A5C416"
	arguments {
		float "p0",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
	]]

native "0x25FC3E33A31AD0C9"
    hash "0x25FC3E33A31AD0C9"
	arguments {
		BOOL "p0",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
	]]

native "0x27FEB5254759CDE3"
    hash "0x27FEB5254759CDE3"
	jhash (0xD63FCB3E)
	arguments {
		charPtr "textureDict",
		BOOL "p1",
	}
	ns "GRAPHICS"
	returns "BOOL"
	doc [[!
	]]

native "0x27CFB1B1E078CB2D"
    hash "0x27CFB1B1E078CB2D"
	jhash (0xC2703B88)
	ns "GRAPHICS"
	returns "void"
	doc [[!
	]]

native "0x2A893980E96B659A"
    hash "0x2A893980E96B659A"
	jhash (0x199FABF0)
	arguments {
		BOOL "p0",
	}
	ns "GRAPHICS"
	returns "BOOL"
	doc [[!
<summary>
```
2 matches across 2 scripts. Only showed in appcamera & appmedia. Both were 0.  
Dr. Underscore (1/6/18):  
I've found a reference in maintransition with 1, plus in appcamera and appmedia.  
Takes and returns a bool.  
```
</summary>
	]]

native "0x2C42340F916C5930"
    hash "0x2C42340F916C5930"
	arguments {
		Any "p0",
	}
	ns "GRAPHICS"
	returns "Any"
	doc [[!
	]]

native "0x2F09F7976C512404"
    hash "0x2F09F7976C512404"
	jhash (0x242C6A04)
	arguments {
		float "xCoord",
		float "yCoord",
		float "zCoord",
		float "p3",
	}
	ns "GRAPHICS"
	returns "BOOL"
	doc [[!
<summary>
```
only documented. to be continued...  
```
</summary>
	]]

native "0x29280002282F1928"
    hash "0x29280002282F1928"
	arguments {
		Any "p0",
		Any "p1",
		Any "p2",
		Any "p3",
		Any "p4",
		Any "p5",
		Any "p6",
		Any "p7",
		Any "p8",
		Any "p9",
		Any "p10",
		Any "p11",
		Any "p12",
		Any "p13",
		Any "p14",
		Any "p15",
		Any "p16",
		Any "p17",
		Any "p18",
		Any "p19",
		Any "p20",
		Any "p21",
		Any "p22",
		Any "p23",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
	]]

native "0x2A2A52824DB96700"
    hash "0x2A2A52824DB96700"
	jhash (0x0F486429)
	arguments {
		AnyPtr "p0",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
	]]

native "0x312342E1A4874F3F"
    hash "0x312342E1A4874F3F"
	jhash (0xD9653728)
	arguments {
		float "p0",
		float "p1",
		float "p2",
		float "p3",
		float "p4",
		float "p5",
		float "p6",
		float "p7",
		BOOL "p8",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
<summary>
```
p8 seems to always be false.  
```
</summary>
	]]

native "0x346EF3ECAAAB149E"
    hash "0x346EF3ECAAAB149E"
	jhash (0x88EAF398)
	ns "GRAPHICS"
	returns "void"
	doc [[!
	]]

native "0x2B40A97646381508"
    hash "0x2B40A97646381508"
	arguments {
		Any "p0",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
	]]

native "0x3669F1B198DCAA4F"
    hash "0x3669F1B198DCAA4F"
	jhash (0x0DCC0B8B)
	ns "GRAPHICS"
	returns "void"
	doc [[!
	]]

native "0x302C91AB2D477F7E"
    hash "0x302C91AB2D477F7E"
	ns "GRAPHICS"
	returns "void"
	doc [[!
	]]

native "0x36F6626459D91457"
    hash "0x36F6626459D91457"
	jhash (0xC07C64C9)
	arguments {
		float "p0",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
	]]

native "0x32F34FF7F617643B"
    hash "0x32F34FF7F617643B"
	arguments {
		Any "p0",
		Any "p1",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
	]]

native "0x3DEC726C25A11BAC"
    hash "0x3DEC726C25A11BAC"
	jhash (0x3B15D33C)
	arguments {
		int "p0",
	}
	ns "GRAPHICS"
	returns "BOOL"
	doc [[!
<summary>
```
1 match in 1 script. cellphone_controller.  
p0 is -1 in scripts.  
Dr. Underscore (1/6/18):  
I have two uses in two scripts; and it's called with -1 in maintransition, not cellphone_controller. Are you using x360 scripts, or an older version of PC scripts?  
Also returns bool.  
```
</summary>
	]]

native "0x459FD2C8D0AB78BC"
    hash "0x459FD2C8D0AB78BC"
	jhash (0x03C44E4B)
	ns "GRAPHICS"
	returns "Any"
	doc [[!
	]]

native "0x35FB78DC42B7BD21"
    hash "0x35FB78DC42B7BD21"
	ns "GRAPHICS"
	returns "Any"
	doc [[!
	]]

native "0x4862437A486F91B0"
    hash "0x4862437A486F91B0"
	jhash (0x56C1E488)
	arguments {
		charPtr "p0",
		AnyPtr "p1",
		AnyPtr "p2",
		BOOL "p3",
	}
	ns "GRAPHICS"
	returns "BOOL"
	doc [[!
<summary>
```
Dr. Underscore (1/6/18):  
Possibly some unknown structures.  
```
</summary>
	]]

native "0x393BD2275CEB7793"
    hash "0x393BD2275CEB7793"
	ns "GRAPHICS"
	returns "Any"
	doc [[!
	]]

native "0x44621483FF966526"
    hash "0x44621483FF966526"
	arguments {
		Any "p0",
		Any "p1",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
	]]

native "0x4B5CFC83122DF602"
    hash "0x4B5CFC83122DF602"
	jhash (0xA706E84D)
	ns "GRAPHICS"
	returns "void"
	doc [[!
	]]

native "0x46D1A61A21F566FC"
    hash "0x46D1A61A21F566FC"
	jhash (0x2056A015)
	arguments {
		float "p0",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
	]]

native "0x54E22EA2C1956A8D"
    hash "0x54E22EA2C1956A8D"
	arguments {
		float "p0",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
	]]

native "0x4AF92ACD3141D96C"
    hash "0x4AF92ACD3141D96C"
	jhash (0xC9EF81ED)
	ns "GRAPHICS"
	returns "void"
	doc [[!
	]]

native "0x5B0316762AFD4A64"
    hash "0x5B0316762AFD4A64"
	jhash (0xA9DC8558)
	ns "GRAPHICS"
	returns "int"
	doc [[!
<summary>
```
Dr. Underscore (1/6/18):  
Seems to return a value 0-2.  
```
</summary>
	]]

native "0x5DEBD9C4DC995692"
    hash "0x5DEBD9C4DC995692"
	ns "GRAPHICS"
	returns "void"
	doc [[!
	]]

native "0x5CE62918F8D703C7"
    hash "0x5CE62918F8D703C7"
	jhash (0xDF552973)
	arguments {
		int "lowR",
		int "lowG",
		int "lowB",
		int "lowAlpha",
		int "R",
		int "G",
		int "B",
		int "Alpha",
		int "highR",
		int "highG",
		int "highB",
		int "highAlpha",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
<summary>
This native is used along with these two natives: [`0xa356990e161c9e65`](https://runtime.fivem.net/doc/reference.html#_0xA356990E161C9E65) and [`0x1c4fc5752bcd8e48`](https://runtime.fivem.net/doc/reference.html#_0x1C4FC5752BCD8E48). 
This native sets the colors for the golf putting grid. the 'min...' values are for the lower areas that the grid covers, the 'max...' values are for the higher areas that the grid covers, all remaining values are for the 'normal' ground height.
All those natives combined they will output something like this: <https://i.imgur.com/TC6cku6.png>

Old description:
Only called in golf and golf_mp  
parameters used are  
GRAPHICS::\_0x5CE62918F8D703C7(255, 0, 0, 64, 255, 255, 255, 5, 255, 255, 0, 64);
</summary>
<param name="lowR">red value for the lower level</param>
<param name="lowG">green value for the lower level</param>
<param name="lowB">blue value for the lower level</param>
<param name="lowAlpha">alpha value for the lower level</param>
<param name="R">red value for the normal level</param>
<param name="G">green value for the normal level</param>
<param name="B">blue value for the normal level</param>
<param name="Alpha">alpha value for the normal level</param>
<param name="highR">red value for the upper level</param>
<param name="highG">green value for the upper level</param>
<param name="highB">blue value for the upper level</param>
<param name="highAlpha">alpha value for the upper level</param>
	]]

native "0x5E657EF1099EDD65"
    hash "0x5E657EF1099EDD65"
	jhash (0x91A081A1)
	arguments {
		int "p0",
	}
	ns "GRAPHICS"
	returns "BOOL"
	doc [[!
	]]

native "0x5DBF05DB5926D089"
    hash "0x5DBF05DB5926D089"
	arguments {
		Any "p0",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
	]]

native "0x5F0F3F56635809EF"
    hash "0x5F0F3F56635809EF"
	jhash (0x13D4ABC0)
	arguments {
		float "p0",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
	]]

native "0x5E9DAF5A20F15908"
    hash "0x5E9DAF5A20F15908"
	jhash (0xD2157428)
	arguments {
		float "p0",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
	]]

native "0x61F95E5BB3E0A8C6"
    hash "0x61F95E5BB3E0A8C6"
	arguments {
		Any "p0",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
<summary>
**This native does absolutely nothing, just a nullsub**
</summary>
	]]

native "0x65E7E78842E74CDB"
    hash "0x65E7E78842E74CDB"
	arguments {
		Any "p0",
	}
	ns "GRAPHICS"
	returns "Any"
	doc [[!
	]]

native "0x615D3925E87A3B26"
    hash "0x615D3925E87A3B26"
	jhash (0x1E3A3126)
	arguments {
		int "checkpoint",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
<summary>
```
Unknown. Called after creating a checkpoint (type: 51) in the creators.  
```
</summary>
	]]

native "0x649C97D52332341A"
    hash "0x649C97D52332341A"
	arguments {
		Any "p0",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
	]]

native "0x6A12D88881435DCA"
    hash "0x6A12D88881435DCA"
	jhash (0x108F36CC)
	ns "GRAPHICS"
	returns "void"
	doc [[!
	]]

native "0x6A51F78772175A51"
    hash "0x6A51F78772175A51"
	arguments {
		Any "p0",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
	]]

native "0x6D955F6A9E0295B1"
    hash "0x6D955F6A9E0295B1"
	arguments {
		Any "p0",
		Any "p1",
		Any "p2",
		Any "p3",
		Any "p4",
		Any "p5",
		Any "p6",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
	]]

native "0x6DDBF9DFFC4AC080"
    hash "0x6DDBF9DFFC4AC080"
	jhash (0x9F470BE3)
	arguments {
		BOOL "p0",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
	]]

native "0x74C180030FDE4B69"
    hash "0x74C180030FDE4B69"
	jhash (0x796DE696)
	arguments {
		BOOL "p0",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
	]]

native "0x736D7AA1B750856B"
    hash "0x736D7AA1B750856B"
	arguments {
		Any "p0",
		Any "p1",
		Any "p2",
		Any "p3",
		Any "p4",
		Any "p5",
		Any "p6",
		Any "p7",
		Any "p8",
		Any "p9",
		Any "p10",
		Any "p11",
		Any "p12",
		Any "p13",
		Any "p14",
		Any "p15",
		Any "p16",
		Any "p17",
		Any "p18",
		Any "p19",
		Any "p20",
		Any "p21",
		Any "p22",
		Any "p23",
		Any "p24",
		Any "p25",
		Any "p26",
		Any "p27",
		Any "p28",
		Any "p29",
		Any "p30",
		Any "p31",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
	]]

native "0x799017F9E3B10112"
    hash "0x799017F9E3B10112"
	arguments {
		float "x",
		float "y",
		float "z",
		float "radius",
		int "r",
		int "g",
		int "b",
		float "opacity",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
<summary>
Draws the sphere typically seen in the GTA:O freemode event, Penned In. Example: [Image](https://images.illusivetea.me/6654p9.png)
</summary>
<param name="x">X co-ordinate of the sphere</param>
<param name="y">Y co-ordinate of the sphere</param>
<param name="z">Z co-ordinate of the sphere</param>
<param name="radius">Size of the sphere</param>
<param name="r">Color</param>
<param name="g">Color</param>
<param name="b">Color</param>
<param name="opacity">Opacity from `0.0`-`1.0`</param>
	]]

native "0x759650634F07B6B4"
    hash "0x759650634F07B6B4"
	jhash (0x25D569EB)
	arguments {
		int "p0",
	}
	ns "GRAPHICS"
	returns "BOOL"
	doc [[!
	]]

native "0x7AC24EAB6D74118D"
    hash "0x7AC24EAB6D74118D"
	jhash (0xB2410EAB)
	arguments {
		BOOL "p0",
	}
	ns "GRAPHICS"
	returns "BOOL"
	doc [[!
	]]

native "0x7A42B2E236E71415"
    hash "0x7A42B2E236E71415"
	jhash (0x431AA036)
	ns "GRAPHICS"
	returns "void"
	doc [[!
	]]

native "0x7B226C785A52A0A9"
    hash "0x7B226C785A52A0A9"
	jhash (0x926B8734)
	ns "GRAPHICS"
	returns "Any"
	doc [[!
	]]

native "0x814AF7DCAACC597B"
    hash "0x814AF7DCAACC597B"
	arguments {
		Any "p0",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
	]]

native "0x7FA5D82B8F58EC06"
    hash "0x7FA5D82B8F58EC06"
	jhash (0x1F3CADB0)
	ns "GRAPHICS"
	returns "BOOL"
	doc [[!
	]]

native "0x82ACC484FFA3B05F"
    hash "0x82ACC484FFA3B05F"
	arguments {
		Any "p0",
	}
	ns "GRAPHICS"
	returns "Any"
	doc [[!
	]]

native "0x851CD923176EBA7C"
    hash "0x851CD923176EBA7C"
	jhash (0xDCBA251B)
	ns "GRAPHICS"
	returns "void"
	doc [[!
	]]

native "0x8CDE909A0370BB3A"
    hash "0x8CDE909A0370BB3A"
	arguments {
		BOOL "p0",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
<summary>
```
console hash: 0x19EC0001  
```
</summary>
	]]

native "0x90A78ECAA4E78453"
    hash "0x90A78ECAA4E78453"
	jhash (0xADBBA287)
	ns "GRAPHICS"
	returns "int"
	doc [[!
<summary>
```
Dr. Underscore (1/6/18):  
Seems to return a value 0-2.  
```
</summary>
	]]

native "0x949F397A288B28B3"
    hash "0x949F397A288B28B3"
	arguments {
		float "p0",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
	]]

native "0x95EB5E34F821BABE"
    hash "0x95EB5E34F821BABE"
	arguments {
		Any "p0",
		Any "p1",
		Any "p2",
	}
	ns "GRAPHICS"
	returns "Any"
	doc [[!
	]]

native "0x967278682CB6967A"
    hash "0x967278682CB6967A"
	jhash (0xBAEC6ADD)
	arguments {
		Any "p0",
		Any "p1",
		Any "p2",
		Any "p3",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
	]]

native "0x9641588DAB93B4B5"
    hash "0x9641588DAB93B4B5"
	arguments {
		Any "p0",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
	]]

native "0x99AC7F0D8B9C893D"
    hash "0x99AC7F0D8B9C893D"
	jhash (0xE3938B0B)
	arguments {
		float "p0",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
	]]

native "0x98EDF76A7271E4F2"
    hash "0x98EDF76A7271E4F2"
	ns "GRAPHICS"
	returns "void"
	doc [[!
	]]

native "0x9B079E5221D984D3"
    hash "0x9B079E5221D984D3"
	arguments {
		BOOL "p0",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
	]]

native "0x9B6E70C5CEEF4EEB"
    hash "0x9B6E70C5CEEF4EEB"
	jhash (0x9D5D9B38)
	arguments {
		Any "p0",
	}
	ns "GRAPHICS"
	returns "Any"
	doc [[!
	]]

native "0x9D75795B9DC6EBBF"
    hash "0x9D75795B9DC6EBBF"
	arguments {
		Any "p0",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
	]]

native "0x9CFDD90B2B844BF7"
    hash "0x9CFDD90B2B844BF7"
	jhash (0x4EA70FB4)
	arguments {
		float "p0",
		float "p1",
		float "p2",
		float "p3",
		float "p4",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
<summary>
```
Only appeared in Golf & Golf_mp. Parameters were all ptrs  
```
</summary>
	]]

native "0xA44FF770DFBC5DAE"
    hash "0xA44FF770DFBC5DAE"
	ns "GRAPHICS"
	returns "void"
	doc [[!
	]]

native "0xA356990E161C9E65"
    hash "0xA356990E161C9E65"
	jhash (0xA1CB6C94)
	arguments {
		BOOL "toggle",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
<summary>
This native enables/disables the gold putting grid display (<https://i.imgur.com/TC6cku6.png>).
This requires these two natives to be called as well to configure the grid: [`0x1c4fc5752bcd8e48`](https://runtime.fivem.net/doc/reference.html#_0x1C4FC5752BCD8E48) and [`0x5ce62918f8d703c7`](https://runtime.fivem.net/doc/reference.html#_0x5CE62918F8D703C7).
</summary>
<param name="toggle">Enables or disables the golf putting grid display.</param>
	]]

native "0xA46B73FAA3460AE1"
    hash "0xA46B73FAA3460AE1"
	arguments {
		BOOL "p0",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
	]]

native "0xA4664972A9B8F8BA"
    hash "0xA4664972A9B8F8BA"
	jhash (0xECD470F0)
	arguments {
		Any "p0",
	}
	ns "GRAPHICS"
	returns "int"
	doc [[!
	]]

native "0xA4819F5E23E2FFAD"
    hash "0xA4819F5E23E2FFAD"
	jhash (0xA08B46AD)
	ns "GRAPHICS"
	returns "Any"
	doc [[!
	]]

native "0xA51C4B86B71652AE"
    hash "0xA51C4B86B71652AE"
	jhash (0x5D3BFFC9)
	arguments {
		BOOL "p0",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
	]]

native "0xA78DE25577300BA1"
    hash "0xA78DE25577300BA1"
	arguments {
		Any "p0",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
	]]

native "0xA67C35C56EB1BD9D"
    hash "0xA67C35C56EB1BD9D"
	jhash (0x47B0C137)
	ns "GRAPHICS"
	returns "BOOL"
	doc [[!
<summary>
```
Dr. Underscore (1/6/18):  
Only one instances in two scripts. (cellphone_controller, maintransition)  
```
</summary>
	]]

native "0xB11D94BC55F41932"
    hash "0xB11D94BC55F41932"
	jhash (0xDE10BA1F)
	arguments {
		charPtr "p0",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
<summary>
```
Has something to do with player switch.  
Only possible values:  
- "CSM_ST_BOX3x3"  
```
</summary>
	]]

native "0xAE51BC858F32BA66"
    hash "0xAE51BC858F32BA66"
	arguments {
		Any "p0",
		float "p1",
		float "p2",
		float "p3",
		float "p4",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
	]]

native "0xB1BB03742917A5D6"
    hash "0xB1BB03742917A5D6"
	jhash (0x3BB12B75)
	arguments {
		int "type",
		float "xPos",
		float "yPos",
		float "zPos",
		float "p4",
		int "red",
		int "green",
		int "blue",
		int "alpha",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
<summary>
```
12 matches across 4 scripts. All 4 scripts were job creators.  
type ranged from 0 - 2.  
p4 was always 0.2f. Likely scale.  
assuming p5 - p8 is RGBA, the graphic is always yellow (255, 255, 0, 255).  
Tested but noticed nothing.  
```
</summary>
	]]

native "0xB3C641F3630BF6DA"
    hash "0xB3C641F3630BF6DA"
	jhash (0xF6B837F0)
	arguments {
		float "p0",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
	]]

native "0xB2EBE8CBC58B90E9"
    hash "0xB2EBE8CBC58B90E9"
	ns "GRAPHICS"
	returns "Any"
	doc [[!
	]]

native "0xB7ED70C49521A61D"
    hash "0xB7ED70C49521A61D"
	jhash (0x7B786555)
	arguments {
		int "decalType",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
<summary>
```
GRAPHICS::_0xB7ED70C49521A61D(9123);  
GRAPHICS::SET_STREAMED_TEXTURE_DICT_AS_NO_LONGER_NEEDED("MPMissMarkers256");  
```
</summary>
	]]

native "0xB569F41F3E7E83A4"
    hash "0xB569F41F3E7E83A4"
	arguments {
		Any "p0",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
	]]

native "0xBA3D65906822BED5"
    hash "0xBA3D65906822BED5"
	jhash (0x513D444B)
	arguments {
		BOOL "p0",
		BOOL "p1",
		float "p2",
		float "p3",
		float "p4",
		float "p5",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
<summary>
```
Every p2 - p5 occurrence was 0f.  
```
</summary>
	]]

native "0xBA0127DA25FD54C9"
    hash "0xBA0127DA25FD54C9"
	arguments {
		Any "p0",
		Any "p1",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
	]]

native "0xBB90E12CAC1DAB25"
    hash "0xBB90E12CAC1DAB25"
	arguments {
		float "p0",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
	]]

native "0xBA3D194057C79A7B"
    hash "0xBA3D194057C79A7B"
	arguments {
		Any "p0",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
	]]

native "0xBCEDB009461DA156"
    hash "0xBCEDB009461DA156"
	jhash (0x5AB94128)
	ns "GRAPHICS"
	returns "Any"
	doc [[!
	]]

native "0xBBF327DED94E4DEB"
    hash "0xBBF327DED94E4DEB"
	jhash (0x85BA15A4)
	arguments {
		charPtr "p0",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
	]]

native "0xBE197EAA669238F4"
    hash "0xBE197EAA669238F4"
	arguments {
		Any "p0",
		Any "p1",
		Any "p2",
		Any "p3",
	}
	ns "GRAPHICS"
	returns "Any"
	doc [[!
<summary>
```
This function is hard-coded to always return 0.  
```
</summary>
	]]

native "0xBDEB86F4D5809204"
    hash "0xBDEB86F4D5809204"
	jhash (0x9559BB38)
	arguments {
		float "p0",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
	]]

native "0xBF59707B3E5ED531"
    hash "0xBF59707B3E5ED531"
	jhash (0x554BA16E)
	arguments {
		charPtr "p0",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
<summary>
```
Something to do with timecycles.  
```
</summary>
	]]

native "0xBEB3D46BB7F043C0"
    hash "0xBEB3D46BB7F043C0"
	jhash (0xCBE7068F)
	arguments {
		Any "p0",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
	]]

native "0xC35A6D07C93802B2"
    hash "0xC35A6D07C93802B2"
	ns "GRAPHICS"
	returns "void"
	doc [[!
	]]

native "0xC9B18B4619F48F7B"
    hash "0xC9B18B4619F48F7B"
	jhash (0x93628786)
	arguments {
		float "p0",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
	]]

native "0xC0416B061F2B7E5E"
    hash "0xC0416B061F2B7E5E"
	jhash (0x1A1A72EF)
	arguments {
		BOOL "p0",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
	]]

native "0xCA4AE345A153D573"
    hash "0xCA4AE345A153D573"
	arguments {
		BOOL "p0",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
	]]

native "0xC5C8F970D4EDFF71"
    hash "0xC5C8F970D4EDFF71"
	arguments {
		Any "p0",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
	]]

native "0xCB82A0BF0E3E3265"
    hash "0xCB82A0BF0E3E3265"
	jhash (0xCFCDC518)
	arguments {
		int "p0",
	}
	ns "GRAPHICS"
	returns "int"
	doc [[!
	]]

native "0xCA465D9CC0D231BA"
    hash "0xCA465D9CC0D231BA"
	arguments {
		Any "p0",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
	]]

native "0xD1C7CB175E012964"
    hash "0xD1C7CB175E012964"
	jhash (0xE9183D3A)
	arguments {
		int "scaleformHandle",
	}
	ns "GRAPHICS"
	returns "BOOL"
	doc [[!
	]]

native "0xD1C55B110E4DF534"
    hash "0xD1C55B110E4DF534"
	jhash (0xD99EC000)
	arguments {
		Any "p0",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
<summary>
```
SET_TV_???  
```
</summary>
	]]

native "0xD2300034310557E4"
    hash "0xD2300034310557E4"
	jhash (0x667046A8)
	arguments {
		Vehicle "vehicle",
		Any "p1",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
	]]

native "0xD39D13C9FEBF0511"
    hash "0xD39D13C9FEBF0511"
	jhash (0x4A124267)
	arguments {
		BOOL "p0",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
	]]

native "0xD2209BE128B5418C"
    hash "0xD2209BE128B5418C"
	arguments {
		charPtr "graphicsName",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
<summary>
```
"SwitchHUDFranklinOut",  
"SwitchHUDMichaelOut",  
"SwitchHUDOut",  
"SwitchHUDTrevorOut",  
"SwitchOpenFranklinOut",  
"SwitchOpenMichaelIn",  
"SwitchOpenNeutral"  
```
</summary>
	]]

native "0xD7021272EB0A451E"
    hash "0xD7021272EB0A451E"
	arguments {
		charPtr "p0",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
<summary>
```
Only one match in the scripts:  
GRAPHICS::_D7021272EB0A451E("int_carrier_hanger");  
```
</summary>
	]]

native "0xD2936CAB8B58FCBD"
    hash "0xD2936CAB8B58FCBD"
	arguments {
		Any "p0",
		BOOL "p1",
		float "p2",
		float "p3",
		float "p4",
		float "p5",
		BOOL "p6",
		float "p7",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
	]]

native "0xD801CC02177FA3F1"
    hash "0xD801CC02177FA3F1"
	jhash (0x9CBA682A)
	ns "GRAPHICS"
	returns "void"
	doc [[!
<summary>
```
4 matches across 2 scripts.  
appcamera:  
called after UI::HIDE_HUD_AND_RADAR_THIS_FRAME() and before GRAPHICS::0x108F36CC();  
cellphone_controller:  
called after GRAPHICS::0xE9F2B68F(0, 0) and before GRAPHICS::0x108F36CC();  
```
</summary>
	]]

native "0xD9454B5752C857DC"
    hash "0xD9454B5752C857DC"
	jhash (0xEAB6417C)
	ns "GRAPHICS"
	returns "void"
	doc [[!
	]]

native "0xD3A10FC7FD8D98CD"
    hash "0xD3A10FC7FD8D98CD"
	jhash (0xE40A0F1A)
	ns "GRAPHICS"
	returns "BOOL"
	doc [[!
	]]

native "0xDC459CFA0CCE245B"
    hash "0xDC459CFA0CCE245B"
	jhash (0x7E946E87)
	arguments {
		BOOL "p0",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
	]]

native "0xD7D0B00177485411"
    hash "0xD7D0B00177485411"
	jhash (0x654F0287)
	arguments {
		Any "p0",
		float "p1",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
	]]

native "0xDE81239437E8C5A8"
    hash "0xDE81239437E8C5A8"
	jhash (0xDB7AECDA)
	ns "GRAPHICS"
	returns "void"
	doc [[!
	]]

native "0xD80A80346A45D761"
    hash "0xD80A80346A45D761"
	arguments {
		Any "p0",
	}
	ns "GRAPHICS"
	returns "Any"
	doc [[!
	]]

native "0xE2892E7E55D7073A"
    hash "0xE2892E7E55D7073A"
	jhash (0x455F1084)
	arguments {
		float "p0",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
	]]

native "0xDBAA5EC848BA2D46"
    hash "0xDBAA5EC848BA2D46"
	jhash (0xBB1A1294)
	arguments {
		Any "p0",
		Any "p1",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
	]]

native "0xE3E2C1B4C59DBC77"
    hash "0xE3E2C1B4C59DBC77"
	jhash (0xD8CC7221)
	arguments {
		int "unk",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
<summary>
```
Sets an unknown value related to timecycles.  
```
</summary>
	]]

native "0xE63D7C6EECECB66B"
    hash "0xE63D7C6EECECB66B"
	jhash (0xD34A6CBA)
	arguments {
		BOOL "p0",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
	]]

native "0xE1C8709406F2C41C"
    hash "0xE1C8709406F2C41C"
	jhash (0x0113EAE4)
	ns "GRAPHICS"
	returns "void"
	doc [[!
	]]

native "0xE35B38A27E8E7179"
    hash "0xE35B38A27E8E7179"
	arguments {
		Any "p0",
	}
	ns "GRAPHICS"
	returns "Any"
	doc [[!
	]]

native "0xE791DF1F73ED2C8B"
    hash "0xE791DF1F73ED2C8B"
	jhash (0x9D84554C)
	arguments {
		Any "p0",
	}
	ns "GRAPHICS"
	returns "Any"
	doc [[!
<summary>
```
This function is hard-coded to always return 0.  
```
</summary>
	]]

native "0xE59343E9E96529E7"
    hash "0xE59343E9E96529E7"
	jhash (0xD906A3A9)
	ns "GRAPHICS"
	returns "Any"
	doc [[!
	]]

native "0xE82728F0DE75D13A"
    hash "0xE82728F0DE75D13A"
	arguments {
		Any "p0",
		Any "p1",
		Any "p2",
		Any "p3",
		Any "p4",
		Any "p5",
		Any "p6",
		Any "p7",
		Any "p8",
		Any "p9",
		Any "p10",
		Any "p11",
		Any "p12",
		Any "p13",
		Any "p14",
		Any "p15",
		Any "p16",
		Any "p17",
		Any "p18",
		Any "p19",
		Any "p20",
		Any "p21",
		Any "p22",
		Any "p23",
		Any "p24",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
	]]

native "0xE6A9F00D4240B519"
    hash "0xE6A9F00D4240B519"
	arguments {
		Any "p0",
		Any "p1",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
	]]

native "0xEB3DAC2C86001E5E"
    hash "0xEB3DAC2C86001E5E"
	ns "GRAPHICS"
	returns "BOOL"
	doc [[!
	]]

native "0xEC52C631A1831C03"
    hash "0xEC52C631A1831C03"
	jhash (0x83A9811D)
	arguments {
		int "p0",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
<summary>
```
_push_scaleform_movie_function(iLocal_117, "SET_TEXT");  
if (bParam0)  
{  
	_0xEC52C631A1831C03(2);  
}  
else  
{  
	_0xEC52C631A1831C03(1);  
}  
_pop_scaleform_movie_function_void();  
```
</summary>
	]]

native "0xEF398BEEE4EF45F9"
    hash "0xEF398BEEE4EF45F9"
	arguments {
		BOOL "p0",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
	]]

native "0xEC72C258667BE5EA"
    hash "0xEC72C258667BE5EA"
	jhash (0x9C106AD9)
	arguments {
		Any "p0",
	}
	ns "GRAPHICS"
	returns "Any"
	doc [[!
<summary>
```
This function is hard-coded to always return 0.  
```
</summary>
	]]

native "0xEFABC7722293DA7C"
    hash "0xEFABC7722293DA7C"
	ns "GRAPHICS"
	returns "void"
	doc [[!
	]]

native "0xEFB55E7C25D3B3BE"
    hash "0xEFB55E7C25D3B3BE"
	jhash (0xE29EE145)
	ns "GRAPHICS"
	returns "void"
	doc [[!
	]]

native "0xEFD97FF47B745B8D"
    hash "0xEFD97FF47B745B8D"
	arguments {
		Any "p0",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
	]]

native "0xF1CEA8A4198D8E9A"
    hash "0xF1CEA8A4198D8E9A"
	jhash (0x2E7D9B98)
	arguments {
		charPtr "p0",
	}
	ns "GRAPHICS"
	returns "BOOL"
	doc [[!
	]]

native "0xF44A5456AC3F4F97"
    hash "0xF44A5456AC3F4F97"
	jhash (0x03D87600)
	arguments {
		Any "p0",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
<summary>
```
Another function related to "HUD scaleforms"  
```
</summary>
	]]

native "0xF51D36185993515D"
    hash "0xF51D36185993515D"
	jhash (0x20EABD0F)
	arguments {
		int "checkpoint",
		float "posX",
		float "posY",
		float "posZ",
		float "unkX",
		float "unkY",
		float "unkZ",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
<summary>
```
This does not move an existing checkpoint... so wtf.  
```
</summary>
	]]

native "0xF78B803082D4386F"
    hash "0xF78B803082D4386F"
	arguments {
		float "p0",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
	]]

native "0xF5BED327CEA362B1"
    hash "0xF5BED327CEA362B1"
	jhash (0x596B900D)
	arguments {
		BOOL "p0",
	}
	ns "GRAPHICS"
	returns "int"
	doc [[!
<summary>
```
3 matches across 3 scripts. First 2 were 0, 3rd was 1. Possibly a bool.  
appcamera, appmedia, and cellphone_controller.  
```
</summary>
	]]

native "0xFE26117A5841B2FF"
    hash "0xFE26117A5841B2FF"
	jhash (0x4F4D76E8)
	arguments {
		Vehicle "vehicle",
		Any "p1",
	}
	ns "GRAPHICS"
	returns "int"
	doc [[!
	]]

native "0xFF5992E1C9E65D05"
    hash "0xFF5992E1C9E65D05"
	arguments {
		Any "p0",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
	]]

native "0xFEBFBFDFB66039DE"
    hash "0xFEBFBFDFB66039DE"
	arguments {
		Any "p0",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
	]]

native "POP_TIMECYCLE_MODIFIER"
    hash "0x3C8938D7D872211E"
	jhash (0x79D7D235)
	ns "GRAPHICS"
	returns "void"
	doc [[!
	]]

native "_PUSH_SCALEFORM_MOVIE_METHOD_PARAMETER_STRING"
    hash "0xBA7148484BD90365"
	jhash (0x4DAAD55B)
	arguments {
		charPtr "value",
	}
	alias "_PUSH_SCALEFORM_MOVIE_FUNCTION_PARAMETER_STRING"
	ns "GRAPHICS"
	returns "void"
	doc [[!
	]]

native "_PUSH_SCALEFORM_MOVIE_METHOD_PARAMETER_BUTTON_NAME"
    hash "0xE83A3E3557A56640"
	jhash (0xCCBF0334)
	arguments {
		charPtr "button",
	}
	alias "0xE83A3E3557A56640"
	ns "GRAPHICS"
	returns "void"
	doc [[!
<summary>
```
This method is the equivalent to PUSH_SCALEFORM_MOVIE_FUNCTION_PARAMETER_STRING when using it to add a new button (like "INSTRUCTIONAL_BUTTONS").  
When switching with a controller, the icons update and become the controller's icons.  
```
</summary>
	]]

native "PUSH_TIMECYCLE_MODIFIER"
    hash "0x58F735290861E6B4"
	jhash (0x7E082045)
	ns "GRAPHICS"
	returns "void"
	doc [[!
	]]

native "_PUSH_SCALEFORM_MOVIE_METHOD_PARAMETER_STRING_2"
    hash "0x77FE3402004CD1B0"
	arguments {
		charPtr "value",
	}
	alias "0x77FE3402004CD1B0"
	ns "GRAPHICS"
	returns "void"
	doc [[!
<summary>
GRAPHICS::\_0x77FE3402004CD1B0(HUD::\_GET_LABEL_TEXT("YACHT_GSY"));
GRAPHICS::\_0x77FE3402004CD1B0(PLAYER::GET_PLAYER_NAME(PLAYER::PLAYER_ID()));

Both \_0xBA7148484BD90365 / \_0x77FE3402004CD1B0 works, but \_0x77FE3402004CD1B0 is usually used for "name" (organisation, players..).
</summary>
	]]

native "RELEASE_MOVIE_MESH_SET"
    hash "0xEB119AA014E89183"
	jhash (0x4FA5501D)
	arguments {
		int "movieMeshSet",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
	]]

native "REMOVE_DECAL"
    hash "0xED3F346429CCD659"
	jhash (0xA4363188)
	arguments {
		Object "decal",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
	]]

native "REMOVE_DECALS_FROM_OBJECT_FACING"
    hash "0xA6F6F70FDC6D144C"
	jhash (0xF4999A55)
	arguments {
		Object "obj",
		float "x",
		float "y",
		float "z",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
	]]

native "REMOVE_DECALS_FROM_OBJECT"
    hash "0xCCF71CBDDF5B6CB9"
	jhash (0x8B67DCA7)
	arguments {
		Object "obj",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
	]]

native "REMOVE_DECALS_IN_RANGE"
    hash "0x5D6B2D4830A67C62"
	jhash (0x06A619A0)
	arguments {
		float "x",
		float "y",
		float "z",
		float "range",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
<summary>
```
Removes all decals in range from a position, it includes the bullet holes, blood pools, petrol...  
```
</summary>
	]]

native "REMOVE_DECALS_FROM_VEHICLE"
    hash "0xE91F1B65F2B48D57"
	jhash (0x831D06CA)
	arguments {
		Vehicle "vehicle",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
	]]

native "REMOVE_PARTICLE_FX_FROM_ENTITY"
    hash "0xB8FEAEEBCC127425"
	jhash (0xCEDE52E9)
	arguments {
		Entity "entity",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
	]]

native "_REQUEST_HUD_SCALEFORM"
    hash "0x9304881D6F6537EA"
	jhash (0x7AF85862)
	arguments {
		int "hudComponent",
	}
	alias "0x9304881D6F6537EA"
	ns "GRAPHICS"
	returns "void"
	doc [[!
<summary>
```
http://gtaforums.com/topic/717612-v-scriptnative-documentation-and-research/?p=1068285912  
```
</summary>
	]]

native "REMOVE_PARTICLE_FX"
    hash "0xC401503DFE8D53CF"
	jhash (0x6BA48C7E)
	arguments {
		int "ptfxHandle",
		BOOL "p1",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
	]]

native "REQUEST_SCALEFORM_MOVIE"
    hash "0x11FE353CF9733E6F"
	jhash (0xC67E3DCB)
	arguments {
		charPtr "scaleformName",
	}
	ns "GRAPHICS"
	returns "int"
	doc [[!
<summary>
```
GTA V Scaleforms Decompiled  
pastebin.com/mmNdjX2k  
Gets a new native after almost every update.  
Update 1.0.393.2  
0x67D02A194A2FC2BD  
Update 1.0.463.1  
0xC97D787CE7726A2F  
Update 1.0.505.2  
0x36ECDA4DD9A3F08D  
Update 1.0.573.1  
0xE3C796DC28BC3254  
Update 1.0.678.1  
0x2F14983962462691  
```
</summary>
	]]

native "REMOVE_PARTICLE_FX_IN_RANGE"
    hash "0xDD19FA1C6D657305"
	jhash (0x7EB8F275)
	arguments {
		float "X",
		float "Y",
		float "Z",
		float "radius",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
	]]

native "REQUEST_SCALEFORM_MOVIE_INSTANCE"
    hash "0xC514489CFB8AF806"
	jhash (0x7CC8057D)
	arguments {
		charPtr "scaleformName",
	}
	ns "GRAPHICS"
	returns "int"
	doc [[!
<summary>
```
Also used by 0x67D02A194A2FC2BD  
```
</summary>
	]]

native "REQUEST_STREAMED_TEXTURE_DICT"
    hash "0xDFA2EF8E04127DD5"
	jhash (0x4C9B035F)
	arguments {
		charPtr "textureDict",
		BOOL "p1",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
<summary>
```
last param seems to be unused in disassembly  
```
</summary>
	]]

native "_REQUEST_SCALEFORM_MOVIE_INTERACTIVE"
    hash "0xBD06C611BB9048C2"
	arguments {
		charPtr "scaleformName",
	}
	alias "_REQUEST_SCALEFORM_MOVIE3"
	ns "GRAPHICS"
	returns "int"
	doc [[!
<summary>
```
Similar to REQUEST_SCALEFORM_MOVIE, but seems to be some kind of "interactive" scaleform movie?  
These seem to be the only scaleforms ever requested by this native:  
"breaking_news"  
"desktop_pc"  
"ECG_MONITOR"  
"Hacking_PC"  
"TEETH_PULLING"  
Note: Unless this hash is out-of-order, this native is next-gen only.  
```
</summary>
	]]

native "_RESET_PARTICLE_FX_ASSET_OLD_TO_NEW"
    hash "0x89C8553DD3274AAE"
	arguments {
		charPtr "name",
	}
	alias "0x89C8553DD3274AAE"
	ns "GRAPHICS"
	returns "void"
	doc [[!
<summary>
```
console hash: 0x9E8D8B72  
Resets the effect of _SET_PARTICLE_FX_ASSET_OLD_TO_NEW  
```
</summary>
	]]

native "_RESET_EXTRA_TIMECYCLE_MODIFIER_STRENGTH"
    hash "0x2BF72AD5B41AA739"
	alias "0x2BF72AD5B41AA739"
	ns "GRAPHICS"
	returns "void"
	doc [[!
<summary>
Resets the extra timecycle modifier strength normally set with [`SetExtraTimecycleModifierStrength`](#_0x2C328AF17210F009)
</summary>
	]]

native "RESET_SCRIPT_GFX_ALIGN"
    hash "0xE3A3DB414A373DAB"
	jhash (0x3FE33BD6)
	alias "0xE3A3DB414A373DAB"
	alias "_SCREEN_DRAW_POSITION_END"
	ns "GRAPHICS"
	returns "void"
	doc [[!
<summary>
This function resets the alignment set using `SET_SCRIPT_GFX_ALIGN` and `SET_SCRIPT_GFX_ALIGN_PARAMS` to the default
values ('I', 'I'; 0, 0, 0, 0). This should be used after having used the aforementioned functions in order to not affect
any other scripts attempting to draw.
</summary>
	]]

native "SCALEFORM_MOVIE_METHOD_ADD_PARAM_BOOL"
    hash "0xC58424BA936EB458"
	jhash (0x0D4AE8CB)
	arguments {
		BOOL "value",
	}
	alias "_PUSH_SCALEFORM_MOVIE_FUNCTION_PARAMETER_BOOL"
	alias "_PUSH_SCALEFORM_MOVIE_METHOD_PARAMETER_BOOL"
	ns "GRAPHICS"
	returns "void"
	doc [[!
<summary>
```
Pushes a boolean for the Scaleform function onto the stack.  
```
</summary>
	]]

native "_RETURN_TWO"
    hash "0x40AFB081F8ADD4EE"
	jhash (0x762E5C5F)
	arguments {
		Any "p0",
	}
	alias "0x40AFB081F8ADD4EE"
	ns "GRAPHICS"
	returns "int"
	doc [[!
<summary>
```
It returns two lol  
li r3, 2  
blr  
thats all it does.  
mov dword ptr [rax], 2  
Заебись функционал  
```
</summary>
	]]

native "SCALEFORM_MOVIE_METHOD_ADD_PARAM_INT"
    hash "0xC3D0841A0CC546A6"
	jhash (0x716777CB)
	arguments {
		int "value",
	}
	alias "_PUSH_SCALEFORM_MOVIE_FUNCTION_PARAMETER_INT"
	alias "_PUSH_SCALEFORM_MOVIE_METHOD_PARAMETER_INT"
	ns "GRAPHICS"
	returns "void"
	doc [[!
<summary>
```
Pushes an integer for the Scaleform function onto the stack.  
```
</summary>
	]]

native "SCALEFORM_MOVIE_METHOD_ADD_PARAM_FLOAT"
    hash "0xD69736AAE04DB51A"
	jhash (0x9A01FFDA)
	arguments {
		float "value",
	}
	alias "_PUSH_SCALEFORM_MOVIE_FUNCTION_PARAMETER_FLOAT"
	alias "_PUSH_SCALEFORM_MOVIE_METHOD_PARAMETER_FLOAT"
	ns "GRAPHICS"
	returns "void"
	doc [[!
<summary>
```
Pushes a float for the Scaleform function onto the stack.  
```
</summary>
	]]

native "SET_ARTIFICIAL_LIGHTS_STATE"
    hash "0x1268615ACE24D504"
	jhash (0xAA2A0EAF)
	arguments {
		BOOL "state",
	}
	alias "_SET_BLACKOUT"
	ns "GRAPHICS"
	returns "void"
	doc [[!
<summary>
Does not affect weapons, particles, fire/explosions, flashlights or the sun.

When set to true, all emissive textures (including ped components that have light effects), street lights, building lights, vehicle lights, etc will all be turned off.

Used in Humane Labs Heist for EMP.
</summary>
<param name="state">True turns off all artificial light sources in the map: buildings, street lights, car lights, etc. False turns them back on.</param>
	]]

native "SET_CHECKPOINT_CYLINDER_HEIGHT"
    hash "0x2707AAE9D9297D89"
	jhash (0xFF0F9B22)
	arguments {
		int "checkpoint",
		float "nearHeight",
		float "farHeight",
		float "radius",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
<summary>
```
Sets the cylinder height of the checkpoint.  
Parameters:  
* nearHeight - The height of the checkpoint when inside of the radius.  
* farHeight - The height of the checkpoint when outside of the radius.  
* radius - The radius of the checkpoint.  
```
</summary>
	]]

native "SET_CHECKPOINT_RGBA"
    hash "0x7167371E8AD747F7"
	jhash (0xEF9C8CB3)
	arguments {
		int "checkpoint",
		int "red",
		int "green",
		int "blue",
		int "alpha",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
<summary>
```
Sets the checkpoint color.  
```
</summary>
	]]

native "_SET_CHECKPOINT_ICON_RGBA"
    hash "0xB9EA40907C680580"
	jhash (0xA5456DBB)
	arguments {
		int "checkpoint",
		int "red",
		int "green",
		int "blue",
		int "alpha",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
<summary>
```
Sets the checkpoint icon color.  
```
</summary>
	]]

native "_SET_CHECKPOINT_SCALE"
    hash "0x4B5B4DA5D79F1943"
	jhash (0x80151CCF)
	arguments {
		int "checkpoint",
		float "p0",
	}
	alias "0x4B5B4DA5D79F1943"
	ns "GRAPHICS"
	returns "void"
	doc [[!
<summary>
```
p0 - Scale? Looks to be a normalized value (0.0 - 1.0)  
offroad_races.c4, line ~67407:  
a_3._f7 = GRAPHICS::CREATE_CHECKPOINT(v_D, v_A, a_4, a_7, v_E, v_F, v_10, sub_62b2(v_A, 220, 255), 0);  
UI::GET_HUD_COLOUR(134, &v_E, &v_F, &v_10, &v_11);  
GRAPHICS::_SET_CHECKPOINT_ICON_RGBA(a_3._f7, v_E, v_F, v_10, sub_62b2(v_A, 70, 210));  
GRAPHICS::_4B5B4DA5D79F1943(a_3._f7, 0.95);  
GRAPHICS::SET_CHECKPOINT_CYLINDER_HEIGHT(a_3._f7, 4.0, 4.0, 100.0);  
```
</summary>
	]]

native "SET_DEBUG_LINES_AND_SPHERES_DRAWING_ACTIVE"
    hash "0x175B6BFC15CDD0C5"
	jhash (0x1418CA37)
	arguments {
		BOOL "enabled",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
<summary>
```
NOTE: Debugging functions are not present in the retail version of the game.  
```
</summary>
	]]

native "SET_DRAW_ORIGIN"
    hash "0xAA0008F3BBB8F416"
	jhash (0xE10198D5)
	arguments {
		float "x",
		float "y",
		float "z",
		Any "p3",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
<summary>
```
Sets the on-screen drawing origin for draw-functions (which is normally x=0,y=0 in the upper left corner of the screen) to a world coordinate.  
From now on, the screen coordinate which displays the given world coordinate on the screen is seen as x=0,y=0.  
Example in C#:  
Vector3 boneCoord = somePed.GetBoneCoord(Bone.SKEL_Head);  
Function.Call(Hash.SET_DRAW_ORIGIN, boneCoord.X, boneCoord.Y, boneCoord.Z, 0);  
Function.Call(Hash.DRAW_SPRITE, "helicopterhud", "hud_corner", -0.01, -0.015, 0.013, 0.013, 0.0, 255, 0, 0, 200);  
Function.Call(Hash.DRAW_SPRITE, "helicopterhud", "hud_corner", 0.01, -0.015, 0.013, 0.013, 90.0, 255, 0, 0, 200);  
Function.Call(Hash.DRAW_SPRITE, "helicopterhud", "hud_corner", -0.01, 0.015, 0.013, 0.013, 270.0, 255, 0, 0, 200);  
Function.Call(Hash.DRAW_SPRITE, "helicopterhud", "hud_corner", 0.01, 0.015, 0.013, 0.013, 180.0, 255, 0, 0, 200);  
Function.Call(Hash.CLEAR_DRAW_ORIGIN);  
Result: www11.pic-upload.de/19.06.15/bkqohvil2uao.jpg  
If the pedestrian starts walking around now, the sprites are always around her head, no matter where the head is displayed on the screen.  
This function also effects the drawing of texts and other UI-elements.  
The effect can be reset by calling GRAPHICS::CLEAR_DRAW_ORIGIN().  
```
</summary>
	]]

native "SET_ENTITY_ICON_COLOR"
    hash "0x1D5F595CCAE2E238"
	jhash (0x6EE1E946)
	arguments {
		Entity "entity",
		int "red",
		int "green",
		int "blue",
		int "alpha",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
	]]

native "SET_ENTITY_ICON_VISIBILITY"
    hash "0xE0E8BEECCA96BA31"
	jhash (0xD1D2FD52)
	arguments {
		Entity "entity",
		BOOL "toggle",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
	]]

native "_SET_EXTRA_TIMECYCLE_MODIFIER"
    hash "0x5096FD9CCB49056D"
	jhash (0x908A335E)
	arguments {
		charPtr "modifierName",
	}
	alias "0x3B2FD68DB5F8331C"
	ns "GRAPHICS"
	returns "void"
	doc [[!
<summary>
Sets a secondary timecycle modifier.
</summary>
	]]

native "_SET_FAR_SHADOWS_SUPPRESSED"
    hash "0x80ECBC0C856D3B0B"
	jhash (0xFE903D0F)
	arguments {
		BOOL "toggle",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
<summary>
```
When this is set to ON, shadows only draw as you get nearer.  
When OFF, they draw from a further distance. (((BUT))) f*ck up nearer shadows quality.  
```
</summary>
	]]

native "_SET_EXTRA_TIMECYCLE_MODIFIER_STRENGTH"
    hash "0x2C328AF17210F009"
	arguments {
		float "strength",
	}
	alias "0x2C328AF17210F009"
	ns "GRAPHICS"
	returns "void"
	doc [[!
<summary>
The same as [`SetTimecycleModifierStrength`](#_0x82E7FFCD5B2326B3) but for the secondary tiemcycle modifier.
</summary>
<param name="strength">:</param>
	]]

native "_SET_FORCE_PED_FOOTSTEPS_TRACKS"
    hash "0xAEEDAD1420C65CC0"
	arguments {
		BOOL "toggle",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
<summary>
```
Forces footstep tracks on all surfaces.  
```
</summary>
	]]

native "SET_FLASH"
    hash "0x0AB84296FED9CFC6"
	jhash (0x7E55A1EE)
	arguments {
		float "p0",
		float "p1",
		float "fadeIn",
		float "duration",
		float "fadeOut",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
<summary>
```
Purpose of p0 and p1 unknown.  
```
</summary>
	]]

native "_SET_FROZEN_RENDERING_DISABLED"
    hash "0xDFC252D8A3E15AB7"
	jhash (0x30ADE541)
	arguments {
		BOOL "enabled",
	}
	alias "_ENABLE_GAMEPLAY_CAM"
	ns "GRAPHICS"
	returns "void"
	doc [[!
	]]

native "_SET_FORCE_VEHICLE_TRAILS"
    hash "0x4CC7F0FEA5283FE0"
	arguments {
		BOOL "toggle",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
<summary>
```
Forces vehicle trails on all surfaces.  
```
</summary>
	]]

native "SET_NIGHTVISION"
    hash "0x18F621F7A5B1F85D"
	jhash (0xD1E5565F)
	arguments {
		BOOL "toggle",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
<summary>
```
Enables Night Vision.  
Example:  
C#: Function.Call(Hash.SET_NIGHTVISION, true);  
C++: GRAPHICS::SET_NIGHTVISION(true);  
BOOL toggle:  
true = turns night vision on for your player.  
false = turns night vision off for your player.  
```
</summary>
	]]

native "SET_NOISEOVERIDE"
    hash "0xE787BF1C5CF823C9"
	jhash (0xD576F5DD)
	arguments {
		BOOL "toggle",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
	]]

native "SET_NOISINESSOVERIDE"
    hash "0xCB6A7C3BB17A0C67"
	jhash (0x046B62D9)
	arguments {
		float "value",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
	]]

native "_SET_PARTICLE_FX_ASSET_OLD_TO_NEW"
    hash "0xEA1E2D93F6F75ED9"
	arguments {
		charPtr "oldAsset",
		charPtr "newAsset",
	}
	alias "_SET_PTFX_ASSET_OLD_2_NEW"
	ns "GRAPHICS"
	returns "void"
	doc [[!
<summary>
```
console hash: 0xC92719A7  
```
</summary>
	]]

native "SET_PARTICLE_FX_BLOOD_SCALE"
    hash "0x5F6DF3D92271E8A1"
	jhash (0x18136DE0)
	arguments {
		BOOL "p0",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
<summary>
```
hash collision  
```
</summary>
	]]

native "SET_PARTICLE_FX_CAM_INSIDE_NONPLAYER_VEHICLE"
    hash "0xACEE6F360FC1F6B6"
	jhash (0x6B125A02)
	arguments {
		Any "p0",
		BOOL "p1",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
	]]

native "SET_PARTICLE_FX_CAM_INSIDE_VEHICLE"
    hash "0xEEC4047028426510"
	jhash (0x19EC0001)
	arguments {
		BOOL "p0",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
	]]

native "SET_PARTICLE_FX_LOOPED_ALPHA"
    hash "0x726845132380142E"
	jhash (0x5ED49BE1)
	arguments {
		int "ptfxHandle",
		float "alpha",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
	]]

native "SET_PARTICLE_FX_LOOPED_COLOUR"
    hash "0x7F8F65877F88783B"
	jhash (0x5219D530)
	arguments {
		int "ptfxHandle",
		float "r",
		float "g",
		float "b",
		BOOL "p4",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
<summary>
```
only works on some fx's  
p4 = 0  
```
</summary>
	]]

native "SET_PARTICLE_FX_LOOPED_EVOLUTION"
    hash "0x5F0C4B5B1C393BE2"
	jhash (0x1CBC1373)
	arguments {
		int "ptfxHandle",
		charPtr "propertyName",
		float "amount",
		BOOL "Id",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
<summary>
```
Should be named SET_PARTICLE_FX_LOOPED_PROPERTY. "Evolution" doesn't make much sense...  
--------  
p4 seems to be always 0.  
Usage:  
if (!GRAPHICS::DOES_PARTICLE_FX_LOOPED_EXIST(l_25C7)) {  
      l_25C7 = GRAPHICS::_DDE23F30CC5A0F03("scr_veh_plane_gen_damage", l_8B9, l_25C4, 0.0, 0.0, 0.0, ENTITY::_GET_ENTITY_BONE_INDEX(l_8B9, "exhaust"), 1.0, 0, 0, 0);  
      GRAPHICS::SET_PARTICLE_FX_LOOPED_EVOLUTION(l_25C7, "damage_smoke", 0.5, 0);  
      GRAPHICS::SET_PARTICLE_FX_LOOPED_EVOLUTION(l_25C7, "damage_fire", 0.2, 0);  
      }  
```
</summary>
	]]

native "SET_PARTICLE_FX_LOOPED_OFFSETS"
    hash "0xF7DDEBEC43483C43"
	jhash (0x641F7790)
	arguments {
		int "ptfxHandle",
		float "x",
		float "y",
		float "z",
		float "rotX",
		float "rotY",
		float "rotZ",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
	]]

native "_SET_PARTICLE_FX_LOOPED_RANGE"
    hash "0xDCB194B85EF7B541"
	jhash (0x233DE879)
	arguments {
		int "ptfxHandle",
		float "range",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
	]]

native "SET_PARTICLE_FX_LOOPED_SCALE"
    hash "0xB44250AAA456492D"
	jhash (0x099B8B49)
	arguments {
		int "ptfxHandle",
		float "scale",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
	]]

native "SET_PARTICLE_FX_NON_LOOPED_ALPHA"
    hash "0x77168D722C58B2FC"
	jhash (0x497EAFF2)
	arguments {
		float "alpha",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
<summary>
```
Usage example for C#:  
Function.Call(Hash.SET_PARTICLE_FX_NON_LOOPED_ALPHA, new InputArgument[] { 0.1f });  
		Note: the argument alpha ranges from 0.0f-1.0f !  
```
</summary>
	]]

native "SET_PARTICLE_FX_NON_LOOPED_COLOUR"
    hash "0x26143A59EF48B262"
	jhash (0x7B689E20)
	arguments {
		float "r",
		float "g",
		float "b",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
<summary>
```
only works on some fx's  
```
</summary>
	]]

native "SET_PARTICLE_FX_SHOOTOUT_BOAT"
    hash "0x96EF97DAEB89BEF5"
	jhash (0xD938DEE0)
	arguments {
		Any "p0",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
	]]

native "SET_SCALEFORM_MOVIE_AS_NO_LONGER_NEEDED"
    hash "0x1D132D614DD86811"
	jhash (0x5FED3BA1)
	arguments {
		intPtr "scaleformHandle",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
	]]

native "SET_SCALEFORM_MOVIE_TO_USE_SYSTEM_TIME"
    hash "0x6D8EB211944DCE08"
	jhash (0x18C9DE8D)
	arguments {
		int "scaleform",
		BOOL "toggle",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
	]]

native "SET_SCRIPT_GFX_ALIGN_PARAMS"
    hash "0xF5A2C681787E579D"
	jhash (0x76C641E4)
	arguments {
		float "x",
		float "y",
		float "w",
		float "h",
	}
	alias "0xF5A2C681787E579D"
	alias "_SCREEN_DRAW_POSITION_RATIO"
	ns "GRAPHICS"
	returns "void"
	doc [[!
<summary>
Sets the draw offset/calculated size for `SET_SCRIPT_GFX_ALIGN`. If using any alignment other than left/top, the game
expects the width/height to be configured using this native in order to get a proper starting position for the draw
command.
</summary>
<param name="x">The X offset for the item to be drawn.</param>
<param name="y">The Y offset for the item to be drawn.</param>
<param name="w">The width of the item to be drawn.</param>
<param name="h">The height of the item to be drawn.</param>
	]]

native "SET_SCRIPT_GFX_ALIGN"
    hash "0xB8A850F20A067EB6"
	jhash (0x228A2598)
	arguments {
		int "horizontalAlign",
		int "verticalAlign",
	}
	alias "_SET_SCREEN_DRAW_POSITION"
	alias "_SCREEN_DRAW_POSITION_BEGIN"
	ns "GRAPHICS"
	returns "void"
	doc [[!
<summary>
This function anchors script draws to a side of the safe zone. This needs to be called to make the interface
independent of the player's safe zone configuration.

These values are equivalent to `alignX` and `alignY` in `common:/data/ui/frontend.xml`, which can be used as a baseline
for default alignment.

Valid values for `horizontalAlign`, from original documentation:

-   **C (67)** - Center: DRAW_TEXT starts in the middle of the screen, while DRAW_RECT starts on the right; both move with
    the right side of the screen.
-   **L (76)** - Left: Anchors to the left side, DRAW_RECT starts on the left side of the screen, same as DRAW_TEXT when
    centered.
-   **R (82)** - Right: DRAW_TEXT starts on the left side (normal 0,0), while DRAW_RECT starts some short distance away
    from the right side of the screen, both move with the right side of the screen.

Valid values for `verticalAlign`, from original documentation:

-   **B (66)** - Bottom: DRAW_RECT starts about as far as the middle of the map from the bottom, while DRAW_TEXT is about
    rather centered.
-   **C (67)** - Center: It starts at a certain distance from the bottom, but the distance is fixed, the distance is
    different from 66.
-   **T (84)** - Top: Anchors to the top, DRAW_RECT starts on the top of the screen, DRAW_TEXT just below it.

Using any other value (including 0) will result in the safe zone not being taken into account for this draw. The
canonical value for this is 'I' (73).

For example, you can use `SET_SCRIPT_GFX_ALIGN(0, 84)` to only scale on the Y axis (to the top), but not change the X
axis.

To reset the value, use `RESET_SCRIPT_GFX_ALIGN`.
</summary>
<param name="horizontalAlign">The horizontal alignment. This can be 67 ('C'), 76 ('L'), or 82 ('R').</param>
<param name="verticalAlign">The vertical alignment. This can be 67 ('C'), 66 ('B'), or 84 ('T').</param>
	]]

native "SET_SCRIPT_GFX_DRAW_BEHIND_PAUSEMENU"
    hash "0xC6372ECD45D73BCD"
	jhash (0xF8FBCC25)
	arguments {
		BOOL "flag",
	}
	alias "0xC6372ECD45D73BCD"
	ns "GRAPHICS"
	returns "void"
	doc [[!
<summary>
Sets a flag defining whether or not script draw commands should continue being drawn behind the pause
menu. This is usually used for TV channels and other draw commands that are used with a world render target.
</summary>
<param name="flag">A boolean value.</param>
	]]

native "SET_SCRIPT_GFX_DRAW_ORDER"
    hash "0x61BB1D9B3A95D802"
	jhash (0xADF81D24)
	arguments {
		int "order",
	}
	alias "0x61BB1D9B3A95D802"
	alias "_SET_2D_LAYER"
	alias "_SET_UI_LAYER"
	ns "GRAPHICS"
	returns "void"
	doc [[!
<summary>
Sets the draw order for script draw commands.

Examples from decompiled scripts:  

```cpp
GRAPHICS::SET_SCRIPT_GFX_DRAW_ORDER(7);  
GRAPHICS::DRAW_RECT(0.5, 0.5, 3.0, 3.0, v_4, v_5, v_6, a_0._f172, 0);  
GRAPHICS::SET_SCRIPT_GFX_DRAW_ORDER(1);  
GRAPHICS::DRAW_RECT(0.5, 0.5, 1.5, 1.5, 0, 0, 0, 255, 0);  
```
</summary>
<param name="order">The intended draw order/layer.</param>
	]]

native "SET_SEETHROUGH"
    hash "0x7E08924259E08CE0"
	jhash (0x74D4995C)
	arguments {
		BOOL "toggle",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
<summary>
```
Toggles Heatvision on/off.  
```
</summary>
	]]

native "SET_STREAMED_TEXTURE_DICT_AS_NO_LONGER_NEEDED"
    hash "0xBE2CACCF5A8AA805"
	jhash (0xF07DDA38)
	arguments {
		charPtr "textureDict",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
	]]

native "SET_TIMECYCLE_MODIFIER"
    hash "0x2C933ABF17A1DF41"
	jhash (0xA81F3638)
	arguments {
		charPtr "modifierName",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
<summary>
```
Loads the specified timecycle modifier. Modifiers are defined separately in another file (e.g. "timecycle_mods_1.xml")  
Parameters:  
modifierName - The modifier to load (e.g. "V_FIB_IT3", "scanline_cam", etc.)  
For a full list, see here: pastebin.com/kVPwMemE  
```
</summary>
	]]

native "SET_TIMECYCLE_MODIFIER_STRENGTH"
    hash "0x82E7FFCD5B2326B3"
	jhash (0x458F4F45)
	arguments {
		float "strength",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
	]]

native "SET_TRANSITION_TIMECYCLE_MODIFIER"
    hash "0x3BCF567485E1971C"
	jhash (0xBB2BA72A)
	arguments {
		charPtr "modifierName",
		float "transition",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
<summary>
```
For a full list, see here: pastebin.com/kVPwMemE  
```
</summary>
	]]

native "SET_TRACKED_POINT_INFO"
    hash "0x164ECBB3CF750CB0"
	jhash (0x28689AA4)
	arguments {
		int "point",
		float "x",
		float "y",
		float "z",
		float "radius",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
	]]

native "SET_TV_AUDIO_FRONTEND"
    hash "0x113D2C5DC57E1774"
	jhash (0x2E0DFA35)
	arguments {
		BOOL "toggle",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
<summary>
```
Might be more appropriate in AUDIO?  
Rockstar made it like this.  
Probably changes tvs from being a 3d audio to being "global" audio  
```
</summary>
	]]

native "SET_TV_CHANNEL"
    hash "0xBAABBB23EB6E484E"
	jhash (0x41A8A627)
	arguments {
		int "channel",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
	]]

native "START_NETWORKED_PARTICLE_FX_LOOPED_ON_ENTITY"
    hash "0x6F60E89A7B64EE1D"
	jhash (0x110752B2)
	arguments {
		charPtr "effectName",
		Entity "entity",
		float "xOffset",
		float "yOffset",
		float "zOffset",
		float "xRot",
		float "yRot",
		float "zRot",
		float "scale",
		BOOL "xAxis",
		BOOL "yAxis",
		BOOL "zAxis",
	}
	alias "0x6F60E89A7B64EE1D"
	alias "_START_PARTICLE_FX_LOOPED_ON_ENTITY_2"
	ns "GRAPHICS"
	returns "int"
	doc [[!
<summary>
```
network fx  
```
</summary>
	]]

native "SET_TV_VOLUME"
    hash "0x2982BF73F66E9DDC"
	jhash (0xF3504F4D)
	arguments {
		float "volume",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
	]]

native "START_NETWORKED_PARTICLE_FX_NON_LOOPED_AT_COORD"
    hash "0xF56B8137DF10135D"
	jhash (0x633F8C48)
	arguments {
		charPtr "effectName",
		float "xPos",
		float "yPos",
		float "zPos",
		float "xRot",
		float "yRot",
		float "zRot",
		float "scale",
		BOOL "xAxis",
		BOOL "yAxis",
		BOOL "zAxis",
	}
	alias "_START_PARTICLE_FX_NON_LOOPED_AT_COORD_2"
	ns "GRAPHICS"
	returns "BOOL"
	doc [[!
<summary>
```
network fx  
```
</summary>
	]]

native "START_NETWORKED_PARTICLE_FX_LOOPED_ON_ENTITY_BONE"
    hash "0xDDE23F30CC5A0F03"
	jhash (0xF478EFCF)
	arguments {
		charPtr "effectName",
		Entity "entity",
		float "xOffset",
		float "yOffset",
		float "zOffset",
		float "xRot",
		float "yRot",
		float "zRot",
		int "boneIndex",
		float "scale",
		BOOL "xAxis",
		BOOL "yAxis",
		BOOL "zAxis",
	}
	alias "0xDDE23F30CC5A0F03"
	alias "_START_PARTICLE_FX_LOOPED_ON_ENTITY_BONE_2"
	ns "GRAPHICS"
	returns "int"
	doc [[!
<summary>
```
Console Hash: 0xF478EFCF  
network fx  
```
</summary>
	]]

native "START_NETWORKED_PARTICLE_FX_NON_LOOPED_ON_PED_BONE"
    hash "0xA41B6A43642AC2CF"
	jhash (0x161780C1)
	arguments {
		charPtr "effectName",
		Ped "ped",
		float "offsetX",
		float "offsetY",
		float "offsetZ",
		float "rotX",
		float "rotY",
		float "rotZ",
		int "boneIndex",
		float "scale",
		BOOL "axisX",
		BOOL "axisY",
		BOOL "axisZ",
	}
	alias "_START_PARTICLE_FX_NON_LOOPED_ON_PED_BONE_2"
	ns "GRAPHICS"
	returns "BOOL"
	doc [[!
<summary>
```
network fx  
```
</summary>
	]]

native "START_NETWORKED_PARTICLE_FX_NON_LOOPED_ON_ENTITY"
    hash "0xC95EB1DB6E92113D"
	jhash (0x469A2B4A)
	arguments {
		charPtr "effectName",
		Entity "entity",
		float "offsetX",
		float "offsetY",
		float "offsetZ",
		float "rotX",
		float "rotY",
		float "rotZ",
		float "scale",
		BOOL "axisX",
		BOOL "axisY",
		BOOL "axisZ",
	}
	alias "_START_PARTICLE_FX_NON_LOOPED_ON_ENTITY_2"
	ns "GRAPHICS"
	returns "BOOL"
	doc [[!
<summary>
```
network fx  
```
</summary>
	]]

native "START_PARTICLE_FX_LOOPED_ON_ENTITY"
    hash "0x1AE42C1660FD6517"
	jhash (0x0D06FF62)
	arguments {
		charPtr "effectName",
		Entity "entity",
		float "xOffset",
		float "yOffset",
		float "zOffset",
		float "xRot",
		float "yRot",
		float "zRot",
		float "scale",
		BOOL "xAxis",
		BOOL "yAxis",
		BOOL "zAxis",
	}
	ns "GRAPHICS"
	returns "int"
	doc [[!
<summary>
```
list: pastebin.com/N9unUFWY  
```
</summary>
	]]

native "START_PARTICLE_FX_LOOPED_AT_COORD"
    hash "0xE184F4F0DC5910E7"
	jhash (0xD348E3E6)
	arguments {
		charPtr "effectName",
		float "x",
		float "y",
		float "z",
		float "xRot",
		float "yRot",
		float "zRot",
		float "scale",
		BOOL "xAxis",
		BOOL "yAxis",
		BOOL "zAxis",
		BOOL "p11",
	}
	ns "GRAPHICS"
	returns "int"
	doc [[!
<summary>
```
GRAPHICS::START_PARTICLE_FX_LOOPED_AT_COORD("scr_fbi_falling_debris", 93.7743f, -749.4572f, 70.86904f, 0f, 0f, 0f, 0x3F800000, 0, 0, 0, 0)  
p11 seems to be always 0  
```
</summary>
	]]

native "START_PARTICLE_FX_LOOPED_ON_ENTITY_BONE"
    hash "0xC6EB449E33977F0B"
	jhash (0x23BF0F9B)
	arguments {
		charPtr "effectName",
		Entity "entity",
		float "xOffset",
		float "yOffset",
		float "zOffset",
		float "xRot",
		float "yRot",
		float "zRot",
		int "boneIndex",
		float "scale",
		BOOL "xAxis",
		BOOL "yAxis",
		BOOL "zAxis",
	}
	ns "GRAPHICS"
	returns "int"
	doc [[!
	]]

native "START_PARTICLE_FX_LOOPED_ON_PED_BONE"
    hash "0xF28DA9F38CD1787C"
	jhash (0xF8FC196F)
	arguments {
		charPtr "effectName",
		Ped "ped",
		float "xOffset",
		float "yOffset",
		float "zOffset",
		float "xRot",
		float "yRot",
		float "zRot",
		int "boneIndex",
		float "scale",
		BOOL "xAxis",
		BOOL "yAxis",
		BOOL "zAxis",
	}
	ns "GRAPHICS"
	returns "int"
	doc [[!
	]]

native "START_PARTICLE_FX_NON_LOOPED_ON_ENTITY"
    hash "0x0D53A3B8DA0809D2"
	jhash (0x9604DAD4)
	arguments {
		charPtr "effectName",
		Entity "entity",
		float "offsetX",
		float "offsetY",
		float "offsetZ",
		float "rotX",
		float "rotY",
		float "rotZ",
		float "scale",
		BOOL "axisX",
		BOOL "axisY",
		BOOL "axisZ",
	}
	ns "GRAPHICS"
	returns "BOOL"
	doc [[!
<summary>
```
Starts a particle effect on an entity for example your player.  
List: pastebin.com/N9unUFWY  
Example:  
C#:  
Function.Call(Hash.REQUEST_NAMED_PTFX_ASSET, "scr_rcbarry2");                     Function.Call(Hash._SET_PTFX_ASSET_NEXT_CALL, "scr_rcbarry2");                             Function.Call(Hash.START_PARTICLE_FX_NON_LOOPED_ON_ENTITY, "scr_clown_appears", Game.Player.Character, 0.0, 0.0, -0.5, 0.0, 0.0, 0.0, 1.0, false, false, false);  
Internally this calls the same function as GRAPHICS::START_PARTICLE_FX_NON_LOOPED_ON_PED_BONE  
however it uses -1 for the specified bone index, so it should be possible to start a non looped fx on an entity bone using that native  
```
</summary>
	]]

native "START_PARTICLE_FX_NON_LOOPED_AT_COORD"
    hash "0x25129531F77B9ED3"
	jhash (0xDD79D679)
	arguments {
		charPtr "effectName",
		float "xPos",
		float "yPos",
		float "zPos",
		float "xRot",
		float "yRot",
		float "zRot",
		float "scale",
		BOOL "xAxis",
		BOOL "yAxis",
		BOOL "zAxis",
	}
	ns "GRAPHICS"
	returns "int"
	doc [[!
<summary>
```
GRAPHICS::START_PARTICLE_FX_NON_LOOPED_AT_COORD("scr_paleto_roof_impact", -140.8576f, 6420.789f, 41.1391f, 0f, 0f, 267.3957f, 0x3F800000, 0, 0, 0);  
Axis - Invert Axis Flags  
list: pastebin.com/N9unUFWY  
-------------------------------------------------------------------  
C#  
Function.Call<int>(Hash.START_PARTICLE_FX_NON_LOOPED_AT_COORD, = you are calling this function.  
char *effectname = This is an in-game effect name, for e.g. "scr_fbi4_trucks_crash" is used to give the effects when truck crashes etc  
float x, y, z pos = this one is Simple, you just have to declare, where do you want this effect to take place at, so declare the ordinates  
float xrot, yrot, zrot = Again simple? just mention the value in case if you want the effect to rotate.  
float scale = is declare the scale of the effect, this may vary as per the effects for e.g 1.0f  
bool xaxis, yaxis, zaxis = To bool the axis values.  
example:  
Function.Call<int>(Hash.START_PARTICLE_FX_NON_LOOPED_AT_COORD, "scr_fbi4_trucks_crash", GTA.Game.Player.Character.Position.X, GTA.Game.Player.Character.Position.Y, GTA.Game.Player.Character.Position.Z + 4f, 0, 0, 0, 5.5f, 0, 0, 0);  
```
</summary>
	]]

native "_START_SCREEN_EFFECT"
    hash "0x2206BF9A37B7F724"
	jhash (0x1D980479)
	arguments {
		charPtr "effectName",
		int "duration",
		BOOL "looped",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
<summary>
```
playLength - is how long to play the effect for in milliseconds. If 0, it plays the default length  
if loop is true, the effect wont stop until you call _STOP_SCREEN_EFFECT on it. (only loopable effects)  
Example and list of screen FX: www.pastebin.com/dafBAjs0  
```
</summary>
	]]

native "START_PARTICLE_FX_NON_LOOPED_ON_PED_BONE"
    hash "0x0E7E72961BA18619"
	jhash (0x53DAEF4E)
	arguments {
		charPtr "effectName",
		Ped "ped",
		float "offsetX",
		float "offsetY",
		float "offsetZ",
		float "rotX",
		float "rotY",
		float "rotZ",
		int "boneIndex",
		float "scale",
		BOOL "axisX",
		BOOL "axisY",
		BOOL "axisZ",
	}
	ns "GRAPHICS"
	returns "BOOL"
	doc [[!
<summary>
```
GRAPHICS::START_PARTICLE_FX_NON_LOOPED_ON_PED_BONE("scr_sh_bong_smoke", PLAYER::PLAYER_PED_ID(), -0.025f, 0.13f, 0f, 0f, 0f, 0f, 31086, 0x3F800000, 0, 0, 0);  
Axis - Invert Axis Flags  
list: pastebin.com/N9unUFWY  
```
</summary>
	]]

native "_STOP_ALL_SCREEN_EFFECTS"
    hash "0xB4EDDC19532BFB85"
	jhash (0x4E6D875B)
	ns "GRAPHICS"
	returns "void"
	doc [[!
	]]

native "STOP_PARTICLE_FX_LOOPED"
    hash "0x8F75998877616996"
	jhash (0xD245455B)
	arguments {
		int "ptfxHandle",
		BOOL "p1",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
<summary>
```
p1 is always 0 in the native scripts  
```
</summary>
	]]

native "_STOP_SCREEN_EFFECT"
    hash "0x068E835A1D0DC0E3"
	jhash (0x06BB5CDA)
	arguments {
		charPtr "effectName",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
<summary>
```
Example and list of screen FX: www.pastebin.com/dafBAjs0  
```
</summary>
	]]

native "_TRANSITION_FROM_BLURRED"
    hash "0xEFACC8AEF94430D5"
	jhash (0x46617502)
	arguments {
		float "transitionTime",
	}
	ns "GRAPHICS"
	returns "BOOL"
	doc [[!
<summary>
```
time in ms to transition from fully blurred to normal  
```
</summary>
	]]

native "_TRANSITION_TO_BLURRED"
    hash "0xA328A24AAA6B7FDC"
	jhash (0x5604B890)
	arguments {
		float "transitionTime",
	}
	ns "GRAPHICS"
	returns "BOOL"
	doc [[!
<summary>
```
time in ms to transition to fully blurred screen  
```
</summary>
	]]

native "_USE_PARTICLE_FX_ASSET_NEXT_CALL"
    hash "0x6C38AF3693A69A91"
	jhash (0x9C720B61)
	arguments {
		charPtr "name",
	}
	alias "_SET_PTFX_ASSET_NEXT_CALL"
	ns "GRAPHICS"
	returns "void"
	doc [[!
<summary>
```
From the b678d decompiled scripts:  
GRAPHICS::_SET_PTFX_ASSET_NEXT_CALL("FM_Mission_Controler");  
GRAPHICS::_SET_PTFX_ASSET_NEXT_CALL("scr_apartment_mp");  
GRAPHICS::_SET_PTFX_ASSET_NEXT_CALL("scr_indep_fireworks");  
GRAPHICS::_SET_PTFX_ASSET_NEXT_CALL("scr_mp_cig_plane");  
GRAPHICS::_SET_PTFX_ASSET_NEXT_CALL("scr_mp_creator");  
GRAPHICS::_SET_PTFX_ASSET_NEXT_CALL("scr_ornate_heist");  
GRAPHICS::_SET_PTFX_ASSET_NEXT_CALL("scr_prison_break_heist_station");  
```
</summary>
	]]

native "WASH_DECALS_FROM_VEHICLE"
    hash "0x5B712761429DBC14"
	jhash (0x2929F11A)
	arguments {
		Vehicle "vehicle",
		float "p1",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
	]]

native "WASH_DECALS_IN_RANGE"
    hash "0x9C30613D50A6ADEF"
	jhash (0xDEECBC57)
	arguments {
		Any "p0",
		Any "p1",
		Any "p2",
		Any "p3",
		Any "p4",
	}
	ns "GRAPHICS"
	returns "void"
	doc [[!
	]]

native "CAP_INTERIOR"
    hash "0xD9175F941610DB54"
	jhash (0x34E735A6)
	arguments {
		int "interiorID",
		BOOL "toggle",
	}
	ns "INTERIOR"
	returns "void"
	doc [[!
<summary>
```
Does something similar to INTERIOR::DISABLE_INTERIOR  
```
</summary>
	]]

native "DISABLE_INTERIOR"
    hash "0x6170941419D7D8EC"
	jhash (0x093ADEA5)
	arguments {
		int "interiorID",
		BOOL "toggle",
	}
	ns "INTERIOR"
	returns "void"
	doc [[!
<summary>
```
Example:   
This removes the interior from the strip club and when trying to walk inside the player just falls:  
INTERIOR::DISABLE_INTERIOR(118018, true);  
```
</summary>
	]]

native "_DISABLE_INTERIOR_PROP"
    hash "0x420BD37289EEE162"
	jhash (0xDBA768A1)
	arguments {
		int "interiorID",
		charPtr "propName",
	}
	alias "0x420BD37289EEE162"
	ns "INTERIOR"
	returns "void"
	doc [[!
	]]

native "ADD_PICKUP_TO_INTERIOR_ROOM_BY_NAME"
    hash "0x3F6167F351168730"
	jhash (0xA2A73564)
	arguments {
		Pickup "pickup",
		charPtr "roomName",
	}
	ns "INTERIOR"
	returns "void"
	doc [[!
	]]

native "FORCE_ROOM_FOR_ENTITY"
    hash "0x52923C4710DD9907"
	jhash (0x10BD4435)
	arguments {
		Entity "entity",
		int "interiorID",
		Hash "roomHashKey",
	}
	ns "INTERIOR"
	returns "void"
	doc [[!
<summary>
```
Forces the particular room in an interior to load incase not teleporting into the portal.
```
</summary>
	]]

native "_ARE_COORDS_COLLIDING_WITH_EXTERIOR"
    hash "0xEEA5AC2EDA7C33E8"
	jhash (0x7762249C)
	arguments {
		float "x",
		float "y",
		float "z",
	}
	alias "0xEEA5AC2EDA7C33E8"
	ns "INTERIOR"
	returns "BOOL"
	doc [[!
<summary>
```
Returns true if the coords are colliding with the outdoors, and false if they collide with an interior.  
```
</summary>
	]]

native "GET_INTERIOR_AT_COORDS_WITH_TYPE"
    hash "0x05B7A89BD78797FC"
	jhash (0x96525B06)
	arguments {
		float "x",
		float "y",
		float "z",
		charPtr "interiorType",
	}
	alias "0x05B7A89BD78797FC"
	ns "INTERIOR"
	returns "int"
	doc [[!
<summary>
```
Returns the interior ID representing the requested interior at that location (if found?). The supplied interior string is not the same as the one used to load the interior.  
Use: INTERIOR::UNPIN_INTERIOR(INTERIOR::GET_INTERIOR_AT_COORDS_WITH_TYPE(x, y, z, interior))  
Interior types include: "V_Michael", "V_Franklins", "V_Franklinshouse", etc.. you can find them in the scripts.  
Not a very useful native as you could just use GET_INTERIOR_AT_COORDS instead and get the same result, without even having to specify the interior type.  
```
</summary>
	]]

native "CLEAR_ROOM_FOR_ENTITY"
    hash "0xB365FC0C4E27FFA7"
	jhash (0x7DDADB92)
	arguments {
		Entity "entity",
	}
	ns "INTERIOR"
	returns "void"
	doc [[!
	]]

native "GET_INTERIOR_FROM_COLLISION"
    hash "0xEC4CF9FCB29A4424"
	jhash (0x7ED33DC1)
	arguments {
		float "x",
		float "y",
		float "z",
	}
	ns "INTERIOR"
	returns "int"
	doc [[!
	]]

native "GET_INTERIOR_GROUP_ID"
    hash "0xE4A84ABF135EF91A"
	jhash (0x09D6376F)
	arguments {
		int "interiorID",
	}
	ns "INTERIOR"
	returns "int"
	doc [[!
<summary>
```
Returns the group ID of the specified interior. For example, regular interiors have group 0, subway interiors have group 1. There are a few other groups too.  
```
</summary>
	]]

native "_ENABLE_INTERIOR_PROP"
    hash "0x55E86AF2712B36A1"
	jhash (0xC80A5DDF)
	arguments {
		int "interiorID",
		charPtr "propName",
	}
	alias "0x55E86AF2712B36A1"
	ns "INTERIOR"
	returns "void"
	doc [[!
<summary>
```
More info: http://gtaforums.com/topic/836367-adding-props-to-interiors/  
```
</summary>
	]]

native "GET_OFFSET_FROM_INTERIOR_IN_WORLD_COORDS"
    hash "0x9E3B3E6D66F6E22F"
	jhash (0x7D8F26A1)
	arguments {
		int "interiorID",
		float "x",
		float "y",
		float "z",
	}
	ns "INTERIOR"
	returns "Vector3"
	doc [[!
	]]

native "GET_INTERIOR_AT_COORDS"
    hash "0xB0F7F8663821D9C3"
	jhash (0xA17FBF37)
	arguments {
		float "x",
		float "y",
		float "z",
	}
	ns "INTERIOR"
	returns "int"
	doc [[!
<summary>
```
Returns interior ID from specified coordinates. If coordinates are outside, then it returns 0.  
Example for VB.NET  
Dim interiorID As Integer = Native.Function.Call(Of Integer)(Hash.GET_INTERIOR_AT_COORDS, X, Y, Z)  
```
</summary>
	]]

native "_GET_ROOM_KEY_FROM_GAMEPLAY_CAM"
    hash "0xA6575914D2A0B450"
	jhash (0x4FF3D3F5)
	alias "0xA6575914D2A0B450"
	ns "INTERIOR"
	returns "Hash"
	doc [[!
<summary>
```
Returns the room hash key from the current gameplay cam.  
```
</summary>
	]]

native "GET_INTERIOR_FROM_ENTITY"
    hash "0x2107BA504071A6BB"
	jhash (0x5C644614)
	arguments {
		Entity "entity",
	}
	ns "INTERIOR"
	returns "int"
	doc [[!
<summary>
```
Returns the handle of the interior that the entity is in. Returns 0 if outside.  
```
</summary>
	]]

native "_HIDE_MAP_OBJECT_THIS_FRAME"
    hash "0xA97F257D0151A6AB"
	jhash (0x1F375B4C)
	arguments {
		Hash "mapObjectHash",
	}
	alias "0xA97F257D0151A6AB"
	ns "INTERIOR"
	returns "void"
	doc [[!
<summary>
```
This is the native that is used to hide the exterior of GTA Online apartment buildings when you are inside an apartment.  
More info: http://gtaforums.com/topic/836301-hiding-gta-online-apartment-exteriors/  
```
</summary>
	]]

native "IS_INTERIOR_CAPPED"
    hash "0x92BAC8ACF88CEC26"
	jhash (0x18B17C80)
	arguments {
		int "interiorID",
	}
	ns "INTERIOR"
	returns "BOOL"
	doc [[!
	]]

native "GET_KEY_FOR_ENTITY_IN_ROOM"
    hash "0x399685DB942336BC"
	jhash (0x91EA80EF)
	arguments {
		Entity "entity",
	}
	ns "INTERIOR"
	returns "Hash"
	doc [[!
<summary>
```
Seems to do the exact same as INTERIOR::GET_ROOM_KEY_FROM_ENTITY  
```
</summary>
	]]

native "GET_ROOM_KEY_FROM_ENTITY"
    hash "0x47C2A06D4F5F424B"
	jhash (0xE4ACF8C3)
	arguments {
		Entity "entity",
	}
	ns "INTERIOR"
	returns "Hash"
	doc [[!
<summary>
```
Gets the room hash key from the room that the specified entity is in. Each room in every interior has a unique key. Returns 0 if the entity is outside.  
```
</summary>
	]]

native "IS_INTERIOR_READY"
    hash "0x6726BDCCC1932F0E"
	jhash (0xE1EF6450)
	arguments {
		int "interiorID",
	}
	ns "INTERIOR"
	returns "BOOL"
	doc [[!
	]]

native "IS_INTERIOR_SCENE"
    hash "0xBC72B5D7A1CBD54D"
	jhash (0x55226C13)
	ns "INTERIOR"
	returns "BOOL"
	doc [[!
	]]

native "_LOAD_INTERIOR"
    hash "0x2CA429C029CCF247"
	jhash (0x3ADA414E)
	arguments {
		int "interiorID",
	}
	alias "0x2CA429C029CCF247"
	ns "INTERIOR"
	returns "void"
	doc [[!
<summary>
```
Load interior  
```
</summary>
	]]

native "IS_INTERIOR_DISABLED"
    hash "0xBC5115A5A939DD15"
	jhash (0x81F34C71)
	arguments {
		int "interiorID",
	}
	ns "INTERIOR"
	returns "BOOL"
	doc [[!
	]]

native "0x405DC2AEF6AF95B9"
    hash "0x405DC2AEF6AF95B9"
	jhash (0x0E9529CC)
	arguments {
		Hash "roomHashKey",
	}
	ns "INTERIOR"
	returns "void"
	doc [[!
<summary>
```
Usage: INTERIOR::_0x405DC2AEF6AF95B9(INTERIOR::GET_KEY_FOR_ENTITY_IN_ROOM(PLAYER::PLAYER_PED_ID()));  
```
</summary>
	]]

native "_IS_INTERIOR_PROP_ENABLED"
    hash "0x35F7DD45E8C0A16D"
	jhash (0x39A3CC6F)
	arguments {
		int "interiorID",
		charPtr "propName",
	}
	alias "0x35F7DD45E8C0A16D"
	ns "INTERIOR"
	returns "BOOL"
	doc [[!
	]]

native "0x4C2330E61D3DEB56"
    hash "0x4C2330E61D3DEB56"
	arguments {
		int "interiorID",
	}
	ns "INTERIOR"
	returns "Any"
	doc [[!
<summary>
```
Only used once in the entire game scripts, probably useless. Always returns 0.  
```
</summary>
	]]

native "IS_VALID_INTERIOR"
    hash "0x26B0E73D7EAAF4D3"
	jhash (0x39C0B635)
	arguments {
		int "interiorID",
	}
	ns "INTERIOR"
	returns "BOOL"
	doc [[!
<summary>
```
Return if interior is valid.  
```
</summary>
	]]

native "0x50C375537449F369"
    hash "0x50C375537449F369"
	arguments {
		Any "p0",
	}
	ns "INTERIOR"
	returns "void"
	doc [[!
	]]

native "0x23B59D8912F94246"
    hash "0x23B59D8912F94246"
	jhash (0x617DC75D)
	ns "INTERIOR"
	returns "void"
	doc [[!
	]]

native "0x82EBB79E258FA2B7"
    hash "0x82EBB79E258FA2B7"
	jhash (0xE645E162)
	arguments {
		Entity "entity",
		int "interiorID",
	}
	ns "INTERIOR"
	returns "void"
	doc [[!
	]]

native "0x483ACA1176CA93F1"
    hash "0x483ACA1176CA93F1"
	ns "INTERIOR"
	returns "void"
	doc [[!
	]]

native "0x9E6542F0CE8E70A3"
    hash "0x9E6542F0CE8E70A3"
	jhash (0x5EF9C5C2)
	arguments {
		BOOL "toggle",
	}
	ns "INTERIOR"
	returns "void"
	doc [[!
<summary>
```
Only found 4 times in Rockstar scripts.  
Clearly has something to do with Cutscenes.  
```
</summary>
	]]

native "REFRESH_INTERIOR"
    hash "0x41F37C3427C75AE0"
	jhash (0x9A29ACE6)
	arguments {
		int "interiorID",
	}
	ns "INTERIOR"
	returns "void"
	doc [[!
	]]

native "0x7241CCB7D020DB69"
    hash "0x7241CCB7D020DB69"
	arguments {
		Any "p0",
		Any "p1",
	}
	ns "INTERIOR"
	returns "void"
	doc [[!
	]]

native "_SET_INTERIOR_PROP_COLOR"
    hash "0xC1F1920BAF281317"
	arguments {
		int "interiorID",
		charPtr "propName",
		int "color",
	}
	ns "INTERIOR"
	returns "void"
	doc [[!
	]]

native "0x920D853F3E17F1DA"
    hash "0x920D853F3E17F1DA"
	jhash (0xD79803B5)
	arguments {
		int "interiorID",
		Hash "roomHashKey",
	}
	ns "INTERIOR"
	returns "void"
	doc [[!
	]]

native "0xAF348AFCB575A441"
    hash "0xAF348AFCB575A441"
	jhash (0x1F6B4B13)
	arguments {
		charPtr "roomName",
	}
	ns "INTERIOR"
	returns "void"
	doc [[!
<summary>
```
Exemple of use(carmod_shop.c4)  
INTERIOR::_AF348AFCB575A441("V_CarModRoom");  
```
</summary>
	]]

native "_UNK_GET_INTERIOR_AT_COORDS"
    hash "0xF0F77ADB9F67E79D"
	arguments {
		float "x",
		float "y",
		float "z",
		int "unk",
	}
	alias "0xF0F77ADB9F67E79D"
	ns "INTERIOR"
	returns "int"
	doc [[!
<summary>
```
Returns the interior ID at the given coords, but only if the unknown variable is set to 0, otherwise it will return 0.  
```
</summary>
	]]

native "UNPIN_INTERIOR"
    hash "0x261CCE7EED010641"
	jhash (0xFCFF792A)
	arguments {
		int "interiorID",
	}
	ns "INTERIOR"
	returns "void"
	doc [[!
<summary>
```
Does something similar to INTERIOR::DISABLE_INTERIOR.  
You don't fall through the floor but everything is invisible inside and looks the same as when INTERIOR::DISABLE_INTERIOR is used. Peds behaves normally inside.  
```
</summary>
	]]

native "ADD_TO_ITEMSET"
    hash "0xE3945201F14637DD"
	jhash (0x6B0FE61B)
	arguments {
		Any "p0",
		Any "p1",
	}
	ns "ITEMSET"
	returns "BOOL"
	doc [[!
	]]

native "CLEAN_ITEMSET"
    hash "0x41BC0D722FC04221"
	jhash (0x919A4858)
	arguments {
		Any "p0",
	}
	ns "ITEMSET"
	returns "void"
	doc [[!
	]]

native "CREATE_ITEMSET"
    hash "0x35AD299F50D91B24"
	jhash (0x0A113B2C)
	arguments {
		Vehicle "distri",
	}
	ns "ITEMSET"
	returns "Vehicle"
	doc [[!
	]]

native "GET_INDEXED_ITEM_IN_ITEMSET"
    hash "0x7A197E2521EE2BAB"
	jhash (0x3F712874)
	arguments {
		Any "p0",
		Any "p1",
	}
	ns "ITEMSET"
	returns "Any"
	doc [[!
	]]

native "DESTROY_ITEMSET"
    hash "0xDE18220B1C183EDA"
	jhash (0x83CE1A4C)
	arguments {
		Any "p0",
	}
	ns "ITEMSET"
	returns "void"
	doc [[!
	]]

native "IS_IN_ITEMSET"
    hash "0x2D0FC594D1E9C107"
	jhash (0x0D4B9730)
	arguments {
		Any "p0",
		Any "p1",
	}
	ns "ITEMSET"
	returns "BOOL"
	doc [[!
	]]

native "GET_ITEMSET_SIZE"
    hash "0xD9127E83ABF7C631"
	jhash (0x2B31F41A)
	arguments {
		ScrHandle "x",
	}
	ns "ITEMSET"
	returns "Any"
	doc [[!
	]]

native "REMOVE_FROM_ITEMSET"
    hash "0x25E68244B0177686"
	jhash (0xA9565228)
	arguments {
		Any "p0",
		Any "p1",
	}
	ns "ITEMSET"
	returns "void"
	doc [[!
	]]

native "IS_ITEMSET_VALID"
    hash "0xB1B1EA596344DFAB"
	jhash (0xD201FC29)
	arguments {
		Any "p0",
	}
	ns "ITEMSET"
	returns "BOOL"
	doc [[!
	]]

native "ABSF"
    hash "0x73D57CFFDD12C355"
	jhash (0xAF6F6E0B)
	arguments {
		float "value",
	}
	ns "MISC"
	returns "float"
	doc [[!
	]]

native "ABSI"
    hash "0xF0D31AD191A74F87"
	jhash (0xB44677C5)
	arguments {
		int "value",
	}
	ns "MISC"
	returns "int"
	doc [[!
	]]

native "ACOS"
    hash "0x1D08B970013C34B6"
	jhash (0xF4038776)
	arguments {
		float "p0",
	}
	ns "MISC"
	returns "float"
	doc [[!
<summary>
```
Returns arccos value of p0.  
```
</summary>
	]]

native "ADD_HOSPITAL_RESTART"
    hash "0x1F464EF988465A81"
	jhash (0x4F3E3104)
	arguments {
		float "x",
		float "y",
		float "z",
		float "p3",
		Any "p4",
	}
	ns "MISC"
	returns "int"
	doc [[!
<summary>
```
Returns the index of the newly created hospital spawn point.  
p3 might be radius?  
```
</summary>
	]]

native "ADD_POLICE_RESTART"
    hash "0x452736765B31FC4B"
	jhash (0xE96C29FE)
	arguments {
		float "p0",
		float "p1",
		float "p2",
		float "p3",
		Any "p4",
	}
	ns "MISC"
	returns "Any"
	doc [[!
	]]

native "ADD_STUNT_JUMP_ANGLED"
    hash "0xBBE5D803A5360CBF"
	jhash (0xB9B7E777)
	arguments {
		float "x1",
		float "y1",
		float "z1",
		float "x2",
		float "y2",
		float "z2",
		float "radius1",
		float "x3",
		float "y3",
		float "z3",
		float "x4",
		float "y4",
		float "z4",
		float "radius2",
		float "camX",
		float "camY",
		float "camZ",
		int "unk1",
		int "unk2",
		int "unk3",
	}
	ns "MISC"
	returns "int"
	doc [[!
<summary>
Creates a new stunt jump. 

The radius1 and radius2 might actually not be a radius at all, but that's what it seems to me testing them in-game. But they may be 'angle' floats instead, considering this native is named ADD_STUNT_JUMP\_**ANGLED**.

Info about the specific 'parameter sections':

**x1, y1, z1, x2, y2, z2 and radius1:**

First coordinates are for the jump entry area, and the radius that will be checked around that area. So if you're not exactly within the coordinates, but you are within the outter radius limit then it will still register as entering the stunt jump. Note as mentioned above, the radius is just a guess, I'm not really sure about it's exact purpose.

**x3, y3, z3, x4, y4, z4 and radius2:**

Next part is the landing area, again starting with the left bottom (nearest to the stunt jump entry zone) coordinate, and the second one being the top right furthest away part of the landing area. Followed by another (most likely) radius float, this is usually slightly larger than the entry zone 'radius' float value, just because you have quite a lot of places where you can land (I'm guessing).

**camX, camY and camZ:**

The final coordinate in this native is the Camera position. Rotation and zoom/FOV is managed by the game itself, you just need to provide the camera location.

**unk1, unk2 and unk3:**

Not sure what these are for, but they're always `150, 0, 0` in decompiled scripts.

Visualized example in-game:

![](https://d.fivem.dev/2019-03-15_18-24_c7802_846.png)

Here is a list of almost all of the stunt jumps from GTA V (taken from decompiled scripts): <https://pastebin.com/EW1jBPkY>
</summary>
<param name="x1">Entry zone bottom left corner x.</param>
<param name="y1">Entry zone bottom left corner y.</param>
<param name="z1">Entry zone bottom left corner z.</param>
<param name="x2">Entry zone top right corner x.</param>
<param name="y2">Entry zone top right corner y.</param>
<param name="z2">Entry zone top right corner z.</param>
<param name="radius1">Probably a "feather" radius for entry zone, you need to enter the jump within the min/max coordinates, or within this radius of those two coordinates.</param>
<param name="x3">Landing zone start corner coordinate x.</param>
<param name="y3">Landing zone start corner coordinate y.</param>
<param name="z3">Landing zone start corner coordinate z.</param>
<param name="x4">Landing zone end corner coordinate x.</param>
<param name="y4">Landing zone end corner coordinate y.</param>
<param name="z4">Landing zone end corner coordinate z.</param>
<param name="radius2">Probably a "feather" radius for landing zone, you need to land within the min/max coordinates, or within this radius of those two coordinates.</param>
<param name="camX">Stunt (cinematic) camera x position.</param>
<param name="camY">Stunt (cinematic) camera y position.</param>
<param name="camZ">Stunt (cinematic) camera z position.</param>
<param name="unk1">always 150</param>
<param name="unk2">always 0</param>
<param name="unk3">always 0</param>
<returns>The ID of the stuntjump that was created.</returns>
	]]

native "ADD_STUNT_JUMP"
    hash "0x1A992DA297A4630C"
	jhash (0xB630E5FF)
	arguments {
		float "x1",
		float "y1",
		float "z1",
		float "x2",
		float "y2",
		float "z2",
		float "x3",
		float "y3",
		float "z3",
		float "x4",
		float "y4",
		float "z4",
		float "camX",
		float "camY",
		float "camZ",
		int "unk1",
		int "unk2",
		int "unk3",
	}
	ns "MISC"
	returns "int"
	doc [[!
<summary>
See description of [`ADD_STUNT_JUMP_ANGLED`](#_0xBBE5D803A5360CBF) for detailed info. The only difference really is this one does not have the radius (or angle, not sure) floats parameters for entry and landing zones.
</summary>
<param name="x1">Jump entry left far bottom corner coordinate X.</param>
<param name="y1">Jump entry left far bottom corner coordinate Y.</param>
<param name="z1">Jump entry left far bottom corner coordinate Z.</param>
<param name="x2">Jump entry right near top corner coordinate X.</param>
<param name="y2">Jump entry right near top corner coordinate Y.</param>
<param name="z2">Jump entry right near top corner coordinate Z.</param>
<param name="x3">Landing zone end coordinate X.</param>
<param name="y3">Landing zone end coordinate Y.</param>
<param name="z3">Landing zone end coordinate Z.</param>
<param name="x4">Landing zone start coordinate X.</param>
<param name="y4">Landing zone start coordinate Y.</param>
<param name="z4">Landing zone start coordinate Z.</param>
<param name="camX">Stuntcam (cinematic) coordinate x.</param>
<param name="camY">Stuntcam (cinematic) coordinate y.</param>
<param name="camZ">Stuntcam (cinematic) coordinate z.</param>
<param name="unk1">Unknown, always 150.</param>
<param name="unk2">Unknown, always 0.</param>
<param name="unk3">Unknown, always 0.</param>
<returns>The ID of the stunt jump that was added.</returns>
	]]

native "ASIN"
    hash "0xC843060B5765DCE7"
	jhash (0x998E5CAD)
	arguments {
		float "p0",
	}
	ns "MISC"
	returns "float"
	doc [[!
<summary>
```
Returns arcsin value of p0.  
```
</summary>
	]]

native "BEGIN_REPLAY_STATS"
    hash "0xE0E500246FF73D66"
	jhash (0x17F4F44D)
	arguments {
		Any "p0",
		Any "p1",
	}
	ns "MISC"
	returns "void"
	doc [[!
	]]

native "ARE_STRINGS_EQUAL"
    hash "0x0C515FAB3FF9EA92"
	jhash (0x877C0BC5)
	arguments {
		charPtr "string1",
		charPtr "string2",
	}
	ns "MISC"
	returns "BOOL"
	doc [[!
<summary>
```
is this like strcmp??  
```
</summary>
	]]

native "CANCEL_STUNT_JUMP"
    hash "0xE6B7B0ACD4E4B75E"
	jhash (0xF43D9821)
	ns "MISC"
	returns "void"
	doc [[!
	]]

native "ATAN"
    hash "0xA9D1795CD5043663"
	jhash (0x7A03CC8E)
	arguments {
		float "p0",
	}
	ns "MISC"
	returns "float"
	doc [[!
<summary>
```
Returns arctan value of p0.  
```
</summary>
	]]

native "ATAN2"
    hash "0x8927CBF9D22261A4"
	jhash (0x2508AC81)
	arguments {
		float "p0",
		float "p1",
	}
	ns "MISC"
	returns "float"
	doc [[!
	]]

native "CLEAR_AREA"
    hash "0xA56F01F3765B93A0"
	jhash (0x854E9AB8)
	arguments {
		float "X",
		float "Y",
		float "Z",
		float "radius",
		BOOL "p4",
		BOOL "ignoreCopCars",
		BOOL "ignoreObjects",
		BOOL "p7",
	}
	ns "MISC"
	returns "void"
	doc [[!
<summary>
```
Example: CLEAR_AREA(0, 0, 0, 30, true, false, false, false);  
```
</summary>
	]]

native "_CLEAR_AREA_OF_EVERYTHING"
    hash "0x957838AAF91BD12D"
	jhash (0x20E4FFD9)
	arguments {
		float "x",
		float "y",
		float "z",
		float "radius",
		BOOL "p4",
		BOOL "p5",
		BOOL "p6",
		BOOL "p7",
	}
	alias "0x957838AAF91BD12D"
	ns "MISC"
	returns "void"
	doc [[!
<summary>
```
GAMEPLAY::_0x957838AAF91BD12D(x, y, z, radius, false, false, false, false); seem to make all objects go away, peds, vehicles etc. All booleans set to true doesn't seem to change anything.  
```
</summary>
	]]

native "CLEAR_ANGLED_AREA_OF_VEHICLES"
    hash "0x11DB3500F042A8AA"
	jhash (0xF11A3018)
	arguments {
		float "p0",
		float "p1",
		float "p2",
		float "p3",
		float "p4",
		float "p5",
		float "p6",
		BOOL "p7",
		BOOL "p8",
		BOOL "p9",
		BOOL "p10",
		BOOL "p11",
	}
	ns "MISC"
	returns "void"
	doc [[!
	]]

native "CLEAR_AREA_OF_PEDS"
    hash "0xBE31FD6CE464AC59"
	jhash (0x25BE7FA8)
	arguments {
		float "x",
		float "y",
		float "z",
		float "radius",
		int "flags",
	}
	ns "MISC"
	returns "void"
	doc [[!
<summary>
```
Example: 		CLEAR_AREA_OF_PEDS(0, 0, 0, 10000, 1);  
```
</summary>
	]]

native "CLEAR_AREA_OF_COPS"
    hash "0x04F8FC8FCF58F88D"
	jhash (0x95C53824)
	arguments {
		float "x",
		float "y",
		float "z",
		float "radius",
		int "flags",
	}
	ns "MISC"
	returns "void"
	doc [[!
	]]

native "CLEAR_AREA_OF_VEHICLES"
    hash "0x01C7B9B38428AEB6"
	jhash (0x63320F3C)
	arguments {
		float "x",
		float "y",
		float "z",
		float "radius",
		BOOL "p4",
		BOOL "p5",
		BOOL "p6",
		BOOL "p7",
		BOOL "p8",
	}
	ns "MISC"
	returns "void"
	doc [[!
<summary>
```
Example: 		CLEAR_AREA_OF_VEHICLES(0, 0, 0, 10000, false, false, false, false, false);  
```
</summary>
	]]

native "CLEAR_AREA_OF_OBJECTS"
    hash "0xDD9B9B385AAC7F5B"
	jhash (0xBB720FE7)
	arguments {
		float "x",
		float "y",
		float "z",
		float "radius",
		int "flags",
	}
	ns "MISC"
	returns "void"
	doc [[!
<summary>
```
I looked through the PC scripts that this site provides you with a link to find. It shows the last param mainly uses, (0, 2, 6, 16, and 17) so I am going to assume it is a type of flag.  
```
</summary>
	]]

native "CLEAR_BIT"
    hash "0xE80492A9AC099A93"
	jhash (0x8BC9E618)
	arguments {
		intPtr "address",
		int "offset",
	}
	ns "MISC"
	returns "void"
	doc [[!
<summary>
```
This sets bit [offset] of [address] to off.  
Example:  
GAMEPLAY::CLEAR_BIT(&bitAddress, 1);  
To check if this bit has been enabled:  
GAMEPLAY::IS_BIT_SET(bitAddress, 1); // will return 0 afterwards  
```
</summary>
	]]

native "CLEAR_AREA_OF_PROJECTILES"
    hash "0x0A1CB9094635D1A6"
	jhash (0x18DB5434)
	arguments {
		float "x",
		float "y",
		float "z",
		float "radius",
		BOOL "isNetworkGame",
	}
	ns "MISC"
	returns "void"
	doc [[!
	]]

native "CLEAR_REPLAY_STATS"
    hash "0x1B1AB132A16FDA55"
	jhash (0xC47DFF02)
	ns "MISC"
	returns "void"
	doc [[!
	]]

native "CLEAR_WEATHER_TYPE_PERSIST"
    hash "0xCCC39339BEF76CF5"
	jhash (0x6AB757D8)
	ns "MISC"
	returns "void"
	doc [[!
	]]

native "_CLEAR_CLOUD_HAT"
    hash "0x957E790EA1727B64"
	jhash (0x2D7787BC)
	ns "MISC"
	returns "void"
	doc [[!
	]]

native "CREATE_INCIDENT"
    hash "0x3F892CAF67444AE7"
	jhash (0xFC5FF7B3)
	arguments {
		int "incidentType",
		float "x",
		float "y",
		float "z",
		int "p5",
		float "radius",
		intPtr "outIncidentID",
	}
	ns "MISC"
	returns "BOOL"
	doc [[!
<summary>
```
enum IncidentTypes  
{  
    FireDepartment = 3,  
    Paramedics = 5,  
    Police = 7,  
    PedsInCavalcades = 11,   
    Merryweather = 14  
};  
As for the 'police' incident, it will call police cars to you, but unlike PedsInCavalcades & Merryweather they won't start shooting at you unless you shoot first or shoot at them. The top 2 however seem to cancel theirselves if there is noone dead around you or a fire. I only figured them out as I found out the 3rd param is definately the amountOfPeople and they called incident 3 in scripts with 4 people (which the firetruck has) and incident 5 with 2 people (which the ambulence has). The 4 param I cant say is radius, but for the pedsInCavalcades and Merryweather R* uses 0.0f and for the top 3 (Emergency Services) they use 3.0f.   
Side Note: It seems calling the pedsInCavalcades or Merryweather then removing it seems to break you from calling the EmergencyEvents and I also believe pedsInCavalcades. (The V cavalcades of course not IV).  
Side Note 2: I say it breaks as if you call this proper,  
if(CREATE_INCIDENT) etc it will return false if you do as I said above.  
=====================================================  
```
</summary>
	]]

native "CLEAR_OVERRIDE_WEATHER"
    hash "0x338D2E3477711050"
	jhash (0x7740EA4E)
	ns "MISC"
	returns "void"
	doc [[!
	]]

native "CREATE_INCIDENT_WITH_ENTITY"
    hash "0x05983472F0494E60"
	jhash (0xBBC35B03)
	arguments {
		int "incidentType",
		Ped "ped",
		int "amountOfPeople",
		float "radius",
		intPtr "outIncidentID",
	}
	ns "MISC"
	returns "BOOL"
	doc [[!
<summary>
```
p0 could be type (valueused in scripts: 14, 7, 5, 3, 11)  
p1 is a return from get_player_ped() in am_gang_call.c, but player_ped_id() in other (non am) scripts.  
p3 is usually 0f or 3f  
=====================================================  
enum IncidentTypes  
{  
    FireDepartment = 3,  
    Paramedics = 5,  
    Police = 7,  
    PedsInCavalcades = 11,   
    Merryweather = 14  
};  
As for the 'police' incident, it will call police cars to you, but unlike PedsInCavalcades & Merryweather they won't start shooting at you unless you shoot first or shoot at them. The top 2 however seem to cancel theirselves if there is noone dead around you or a fire. I only figured them out as I found out the 3rd param is definately the amountOfPeople and they called incident 3 in scripts with 4 people (which the firetruck has) and incident 5 with 2 people (which the ambulence has). The 4 param I cant say is radius, but for the pedsInCavalcades and Merryweather R* uses 0.0f and for the top 3 (Emergency Services) they use 3.0f.   
Side Note: It seems calling the pedsInCavalcades or Merryweather then removing it seems to break you from calling the EmergencyEvents and I also believe pedsInCavalcades. (The V cavalcades of course not IV).  
Side Note 2: I say it breaks as if you call this proper,  
if(CREATE_INCIDENT) etc it will return false if you do as I said above.  
=====================================================  
```
</summary>
	]]

native "COMPARE_STRINGS"
    hash "0x1E34710ECD4AB0EB"
	jhash (0xFE25A58F)
	arguments {
		charPtr "str1",
		charPtr "str2",
		BOOL "matchCase",
		int "maxLength",
	}
	ns "MISC"
	returns "int"
	doc [[!
<summary>
```
Compares two strings up to a specified number of characters.  
Parameters:  
str1 - String to be compared.  
str2 - String to be compared.  
matchCase - Comparison will be case-sensitive.  
maxLength - Maximum number of characters to compare. A value of -1 indicates an infinite length.  
Returns:  
A value indicating the relationship between the strings:  
<0 - The first non-matching character in 'str1' is less than the one in 'str2'. (e.g. 'A' < 'B', so result = -1)  
0 - The contents of both strings are equal.  
>0 - The first non-matching character in 'str1' is less than the one in 'str2'. (e.g. 'B' > 'A', so result = 1)  
Examples:  
GAMEPLAY::COMPARE_STRINGS("STRING", "string", false, -1); // 0; equal  
GAMEPLAY::COMPARE_STRINGS("TESTING", "test", false, 4); // 0; equal  
GAMEPLAY::COMPARE_STRINGS("R2D2", "R2xx", false, 2); // 0; equal  
GAMEPLAY::COMPARE_STRINGS("foo", "bar", false, -1); // 4; 'f' > 'b'  
GAMEPLAY::COMPARE_STRINGS("A", "A", true, 1); // 0; equal  
When comparing case-sensitive strings, lower-case characters are greater than upper-case characters:  
GAMEPLAY::COMPARE_STRINGS("A", "a", true, 1); // -1; 'A' < 'a'  
GAMEPLAY::COMPARE_STRINGS("a", "A", true, 1); // 1; 'a' > 'A'  
```
</summary>
	]]

native "DELETE_INCIDENT"
    hash "0x556C1AA270D5A207"
	jhash (0x212BD0DC)
	arguments {
		int "incidentId",
	}
	ns "MISC"
	returns "void"
	doc [[!
<summary>
```
Delete an incident with a given id.  
=======================================================  
Correction, I have change this to int, instead of int*  
as it doesn't use a pointer to the createdIncident.  
If you try it you will crash (or) freeze.  
=======================================================  
```
</summary>
	]]

native "DISABLE_HOSPITAL_RESTART"
    hash "0xC8535819C450EBA8"
	jhash (0x09F49C72)
	arguments {
		int "hospitalIndex",
		BOOL "toggle",
	}
	ns "MISC"
	returns "void"
	doc [[!
<summary>
```
The game by default has 5 hospital respawn points. Disabling them all will cause the player to respawn at the last position they were.  
Doesn't work....  
```
</summary>
	]]

native "_CREATE_LIGHTNING_THUNDER"
    hash "0xF6062E089251C898"
	jhash (0xDF38165E)
	ns "MISC"
	returns "void"
	doc [[!
<summary>
```
creates single lightning+thunder at random position  
```
</summary>
	]]

native "DISABLE_POLICE_RESTART"
    hash "0x23285DED6EBD7EA3"
	jhash (0x0A280324)
	arguments {
		int "policeIndex",
		BOOL "toggle",
	}
	ns "MISC"
	returns "void"
	doc [[!
<summary>
```
Disables the spawn point at the police house on the specified index.  
policeIndex: The police house index.  
toggle: true to enable the spawn point, false to disable.  
```
</summary>
	]]

native "DELETE_STUNT_JUMP"
    hash "0xDC518000E39DAE1F"
	jhash (0x840CB5DA)
	arguments {
		int "p0",
	}
	ns "MISC"
	returns "void"
	doc [[!
	]]

native "DISPLAY_ONSCREEN_KEYBOARD"
    hash "0x00DC833F2568DBF6"
	jhash (0xAD99F2CE)
	arguments {
		int "p0",
		charPtr "windowTitle",
		charPtr "p2",
		charPtr "defaultText",
		charPtr "defaultConcat1",
		charPtr "defaultConcat2",
		charPtr "defaultConcat3",
		int "maxInputLength",
	}
	ns "MISC"
	returns "void"
	doc [[!
<summary>
```
note, p0 is set to 6 for PC platform in at least 1 script, or to `unk::_get_ui_language_id() == 0` otherwise.  
NOTE: windowTitle uses text labels, and an invalid value will display nothing.  
Dr. Underscore: `UNK::_GET_UI_LANGUAGE_ID()` is now `UNK::_GET_CURRENT_LANGUAGE_ID()`  
www.gtaforums.com/topic/788343-vrel-script-hook-v/?p=1067380474  
windowTitle's  
-----------------  
CELL_EMAIL_BOD	=	"Enter your Eyefind message"  
CELL_EMAIL_BODE	=	"Message too long. Try again"  
CELL_EMAIL_BODF	=	"Forbidden message. Try again"  
CELL_EMAIL_SOD	=	"Enter your Eyefind subject"  
CELL_EMAIL_SODE	=	"Subject too long. Try again"  
CELL_EMAIL_SODF	=	"Forbidden text. Try again"  
CELL_EMASH_BOD	=	"Enter your Eyefind message"  
CELL_EMASH_BODE	=	"Message too long. Try again"  
CELL_EMASH_BODF	=	"Forbidden message. Try again"  
CELL_EMASH_SOD	=	"Enter your Eyefind subject"  
CELL_EMASH_SODE	=	"Subject too long. Try again"  
CELL_EMASH_SODF	=	"Forbidden Text. Try again"  
FMMC_KEY_TIP10	=	"Enter Synopsis"  
FMMC_KEY_TIP12	=	"Enter Custom Team Name"  
FMMC_KEY_TIP12F	=	"Forbidden Text. Try again"  
FMMC_KEY_TIP12N	=	"Custom Team Name"  
FMMC_KEY_TIP8	=	"Enter Message"  
FMMC_KEY_TIP8F	=	"Forbidden Text. Try again"  
FMMC_KEY_TIP8FS	=	"Invalid Message. Try again"  
FMMC_KEY_TIP8S	=	"Enter Message"  
FMMC_KEY_TIP9	=	"Enter Outfit Name"  
FMMC_KEY_TIP9F	=	"Invalid Outfit Name. Try again"  
FMMC_KEY_TIP9N	=	"Outfit Name"  
PM_NAME_CHALL	=	"Enter Challenge Name"  
```
</summary>
	]]

native "_DISABLE_AUTOMATIC_RESPAWN"
    hash "0x2C2B3493FBF51C71"
	jhash (0x296574AE)
	arguments {
		BOOL "disableRespawn",
	}
	ns "MISC"
	returns "void"
	doc [[!
	]]

native "DO_AUTO_SAVE"
    hash "0x50EEAAD86232EE55"
	jhash (0x54C44B1A)
	ns "MISC"
	returns "void"
	doc [[!
	]]

native "ENABLE_STUNT_JUMP_SET"
    hash "0xE369A5783B866016"
	jhash (0x9D1E7785)
	arguments {
		int "p0",
	}
	ns "MISC"
	returns "void"
	doc [[!
	]]

native "DISABLE_STUNT_JUMP_SET"
    hash "0xA5272EBEDD4747F6"
	jhash (0x644C9FA4)
	arguments {
		int "p0",
	}
	ns "MISC"
	returns "void"
	doc [[!
	]]

native "END_REPLAY_STATS"
    hash "0xA23E821FBDF8A5F2"
	jhash (0xCB570185)
	ns "MISC"
	returns "void"
	doc [[!
	]]

native "_DISPLAY_ONSCREEN_KEYBOARD_2"
    hash "0xCA78CFA0366592FE"
	jhash (0xD2688412)
	arguments {
		int "p0",
		charPtr "windowTitle",
		AnyPtr "p2",
		charPtr "defaultText",
		charPtr "defaultConcat1",
		charPtr "defaultConcat2",
		charPtr "defaultConcat3",
		charPtr "defaultConcat4",
		charPtr "defaultConcat5",
		charPtr "defaultConcat6",
		charPtr "defaultConcat7",
		int "maxInputLength",
	}
	alias "0xCA78CFA0366592FE"
	ns "MISC"
	returns "void"
	doc [[!
<summary>
```
only documented to be continued...  
```
</summary>
	]]

native "FIND_SPAWN_POINT_IN_DIRECTION"
    hash "0x6874E2190B0C1972"
	jhash (0x71AEFD77)
	arguments {
		float "x1",
		float "y1",
		float "z1",
		float "x2",
		float "y2",
		float "z2",
		float "distance",
		Vector3Ptr "spawnPoint",
	}
	ns "MISC"
	returns "BOOL"
	doc [[!
<summary>
```
Finds a position ahead of the player by predicting the players next actions.  
The positions match path finding node positions.  
When roads diverge, the position may rapidly change between two or more positions. This is due to the engine not being certain of which path the player will take.  
=======================================================  
I may sort this with alter research, but if someone  
already knows please tell what the difference in   
X2, Y2, Z2 is. I doubt it's rotation. Is it like   
checkpoints where X1, Y1, Z1 is your/a position and  
X2, Y2, Z2 is a given position ahead of that position?  
=======================================================  
```
</summary>
	]]

native "GET_ALLOCATED_STACK_SIZE"
    hash "0x8B3CA62B1EF19B62"
	jhash (0x4E9CA30A)
	ns "MISC"
	returns "int"
	doc [[!
	]]

native "ENABLE_DISPATCH_SERVICE"
    hash "0xDC0F817884CDD856"
	jhash (0x0B710A51)
	arguments {
		int "dispatchService",
		BOOL "toggle",
	}
	alias "0xDC0F817884CDD856"
	ns "MISC"
	returns "void"
	doc [[!
<summary>
```
Directly from R*:  
enum eDispatchType : UINT16  
{  
    DT_PoliceAutomobile = 1,  
    DT_PoliceHelicopter = 2,  
    DT_FireDepartment = 3,  
    DT_SwatAutomobile = 4,  
    DT_AmbulanceDepartment = 5,  
    DT_PoliceRiders = 6,  
    DT_PoliceVehicleRequest = 7,  
    DT_PoliceRoadBlock = 8,  
    DT_PoliceAutomobileWaitPulledOver = 9,  
    DT_PoliceAutomobileWaitCruising = 10,  
    DT_Gangs = 11,  
    DT_SwatHelicopter = 12,  
    DT_PoliceBoat = 13,  
    DT_ArmyVehicle = 14,  
    DT_BikerBackup = 15  
};  
By making toggle false it disables the dispatch.  
curious if this is what they used when you toggled on and off cops in a GTA IV freemode you hosted. Sad they got rid of the option to make a private session without cops.  
Also on x360 seems with or without neverWanted on, setting these to all false in SP of course doesn't seem to work. I would understand getting stars, but cops are still dispatched and combat you.  
```
</summary>
	]]

native "_GET_BENCHMARK_TIME"
    hash "0xE599A503B3837E1B"
	alias "0xE599A503B3837E1B"
	ns "MISC"
	returns "float"
	doc [[!
	]]

native "ENABLE_TENNIS_MODE"
    hash "0x28A04B411933F8A6"
	jhash (0x0BD3F9EC)
	arguments {
		Ped "ped",
		BOOL "toggle",
		BOOL "p2",
	}
	ns "MISC"
	returns "void"
	doc [[!
<summary>
```
Makes the ped jump around like they're in a tennis match  
```
</summary>
	]]

native "_GET_CLOUD_HAT_OPACITY"
    hash "0x20AC25E781AE4A84"
	alias "0x20AC25E781AE4A84"
	ns "MISC"
	returns "float"
	doc [[!
	]]

native "_FORCE_SOCIAL_CLUB_UPDATE"
    hash "0xEB6891F03362FB12"
	ns "MISC"
	returns "void"
	doc [[!
<summary>
```
Exits the game and downloads a fresh social club update on next restart.  
```
</summary>
	]]

native "GET_DISTANCE_BETWEEN_COORDS"
    hash "0xF1B760881820C952"
	jhash (0xF698765E)
	arguments {
		float "x1",
		float "y1",
		float "z1",
		float "x2",
		float "y2",
		float "z2",
		BOOL "useZ",
	}
	ns "MISC"
	returns "float"
	doc [[!
<summary>
Returns the distance between two three-dimensional points, optionally ignoring the Z values.

You'll most likely want to use your language's native vector functionality instead.
</summary>
<param name="x1">The X coordinate of the first point.</param>
<param name="y1">The Y coordinate of the first point.</param>
<param name="z1">The Z coordinate of the first point.</param>
<param name="x2">The X coordinate of the second point.</param>
<param name="y2">The Y coordinate of the second point.</param>
<param name="z2">The Z coordinate of the second point.</param>
<param name="useZ">Whether or not to use the Z coordinate.</param>
<returns>The distance between the passed points in units.</returns>
	]]

native "GET_ANGLE_BETWEEN_2D_VECTORS"
    hash "0x186FC4BE848E1C92"
	jhash (0xDBF75E58)
	arguments {
		float "x1",
		float "y1",
		float "x2",
		float "y2",
	}
	ns "MISC"
	returns "float"
	doc [[!
<summary>
```
Returns the degree of angle between (x1, y1) and (x2, y2) lines in 2D coordinate system.  
```
</summary>
	]]

native "GET_FRAME_COUNT"
    hash "0xFC8202EFC642E6F2"
	jhash (0xB477A015)
	ns "MISC"
	returns "int"
	doc [[!
	]]

native "GET_BITS_IN_RANGE"
    hash "0x53158863FCC0893A"
	jhash (0xCA03A1E5)
	arguments {
		int "var",
		int "rangeStart",
		int "rangeEnd",
	}
	ns "MISC"
	returns "int"
	doc [[!
	]]

native "_GET_FREE_STACK_SLOTS_COUNT"
    hash "0xFEAD16FC8F9DFC0F"
	jhash (0x11A178B8)
	arguments {
		int "threadId",
	}
	ns "MISC"
	returns "int"
	doc [[!
	]]

native "_GET_GLOBAL_CHAR_BUFFER"
    hash "0x24DA7D7667FD7B09"
	alias "0x24DA7D7667FD7B09"
	ns "MISC"
	returns "charPtr"
	doc [[!
<summary>
```
it returns a reference to an empty string, the same empty string that's used by 1687 internal gta functions.   if it was used in a script (and i cannot find an instance of it being used), it would be as the source for a StringCopy or somesuch.  
```
</summary>
	]]

native "GET_FAKE_WANTED_LEVEL"
    hash "0x4C9296CBCD1B971E"
	jhash (0x0022A430)
	alias "0x4C9296CBCD1B971E"
	ns "MISC"
	returns "int"
	doc [[!
	]]

native "GET_FRAME_TIME"
    hash "0x15C40837039FFAF7"
	jhash (0x96374262)
	ns "MISC"
	returns "float"
	doc [[!
	]]

native "_GET_GROUND_Z_COORD_WITH_OFFSETS"
    hash "0x8BDC7BFC57A81E76"
	jhash (0x64D91CED)
	arguments {
		float "x",
		float "y",
		float "z",
		floatPtr "groundZ",
		Vector3Ptr "offsets",
	}
	alias "0x8BDC7BFC57A81E76"
	ns "MISC"
	returns "BOOL"
	doc [[!
<summary>
```
only documented to be continued...  
```
</summary>
	]]

native "GET_GAME_TIMER"
    hash "0x9CD27B0045628463"
	jhash (0xA4EA0691)
	ns "MISC"
	returns "int"
	doc [[!
	]]

native "GET_GROUND_Z_FOR_3D_COORD"
    hash "0xC906A7DAB05C8D2B"
	jhash (0xA1BFD5E0)
	arguments {
		float "x",
		float "y",
		float "z",
		floatPtr "groundZ",
		BOOL "unk",
	}
	ns "MISC"
	returns "BOOL"
	doc [[!
<summary>
```
Gets the ground elevation at the specified position. Note that if the specified position is below ground level, the function will output zero!  
x: Position on the X-axis to get ground elevation at.  
y: Position on the Y-axis to get ground elevation at.  
z: Position on the Z-axis to get ground elevation at.  
groundZ: The ground elevation at the specified position.  
unk: Nearly always 0, very rarely 1 in the scripts.  
```
</summary>
	]]

native "GET_HASH_KEY"
    hash "0xD24D37CC275948CC"
	jhash (0x98EFF6F1)
	arguments {
		charPtr "string",
	}
	ns "MISC"
	returns "Hash"
	doc [[!
<summary>
Gets the (case-insensitive, lower-cased) hash value for the passed string. This uses the 'Jenkins one-at-a-time' hashing
algorithm.
</summary>
<param name="string">The string to hash.</param>
<returns>The hash of `string`.</returns>
	]]

native "GET_INDEX_OF_CURRENT_LEVEL"
    hash "0xCBAD6729F7B1F4FC"
	jhash (0x6F203C6E)
	ns "MISC"
	returns "int"
	doc [[!
	]]

native "GET_HEADING_FROM_VECTOR_2D"
    hash "0x2FFB6B224F4B2926"
	jhash (0xD209D52B)
	arguments {
		float "dx",
		float "dy",
	}
	ns "MISC"
	returns "float"
	doc [[!
<summary>
```
dx = x1   
dy = y1  
```
</summary>
	]]

native "_GET_IS_PROJECTILE_TYPE_IN_AREA"
    hash "0x8D7A43EC6A5FEA45"
	jhash (0x1A40454B)
	arguments {
		float "x1",
		float "y1",
		float "z1",
		float "x2",
		float "y2",
		float "z2",
		Hash "projHash",
		Vector3Ptr "projPos",
		BOOL "ownedByPlayer",
	}
	alias "0x8D7A43EC6A5FEA45"
	ns "MISC"
	returns "BOOL"
	doc [[!
<summary>
```
Dr. Underscore (1/6/18):  
Works exactly like IS_PROJECTILE_TYPE_IN_AREA, but it puts the position of the projectile in the vector.  
p8 is probably ownedByPlayer, but not known for sure. (see IS_PROJECTILE_IN_AREA for info)  
Unsure of the hash name, could someone confirm this?  
```
</summary>
	]]

native "GET_MODEL_DIMENSIONS"
    hash "0x03E8D3D5F549087A"
	jhash (0x91ABB8E0)
	arguments {
		Hash "modelHash",
		Vector3Ptr "minimum",
		Vector3Ptr "maximum",
	}
	ns "MISC"
	returns "void"
	doc [[!
<summary>
```
Gets the dimensions of a model.  
Calculate (maximum - minimum) to get the size, in which case, Y will be how long the model is.  
Vector3 GetDimensions(Hash model)  
{  
	Vector3 right, left;  
	GET_MODEL_DIMENSIONS(model, &right, &left);  
	return Vector3::Subtract(left, right);  
}  
Example from the scripts: GAMEPLAY::GET_MODEL_DIMENSIONS(ENTITY::GET_ENTITY_MODEL(PLAYER::PLAYER_PED_ID()), &v_1A, &v_17);  
```
</summary>
	]]

native "GET_MISSION_FLAG"
    hash "0xA33CDCCDA663159E"
	jhash (0x95115F97)
	ns "MISC"
	returns "BOOL"
	doc [[!
	]]

native "_GET_NUMBER_OF_DISPATCHED_UNITS_FOR_PLAYER"
    hash "0xEB4A0C2D56441717"
	jhash (0x3CE5BF6B)
	arguments {
		int "dispatchService",
	}
	alias "0xEB4A0C2D56441717"
	ns "MISC"
	returns "int"
	doc [[!
	]]

native "GET_NEXT_WEATHER_TYPE_HASH_NAME"
    hash "0x711327CD09C8F162"
	jhash (0x353E8056)
	alias "_GET_NEXT_WEATHER_TYPE"
	ns "MISC"
	returns "Hash"
	doc [[!
<summary>
```
Returns weather name hash  
```
</summary>
	]]

native "GET_PREV_WEATHER_TYPE_HASH_NAME"
    hash "0x564B884A05EC45A3"
	jhash (0xA8171E9E)
	alias "_GET_PREV_WEATHER_TYPE"
	ns "MISC"
	returns "Hash"
	doc [[!
<summary>
```
Returns current weather name hash  
```
</summary>
	]]

native "GET_ONSCREEN_KEYBOARD_RESULT"
    hash "0x8362B09B91893647"
	jhash (0x44828FB3)
	ns "MISC"
	returns "charPtr"
	doc [[!
<summary>
```
Returns NULL unless UPDATE_ONSCREEN_KEYBOARD() returns 1 in the same tick.  
```
</summary>
	]]

native "_GET_PROJECTILE_NEAR_PED"
    hash "0x82FDE6A57EE4EE44"
	jhash (0x507BC6F7)
	arguments {
		Ped "ped",
		Hash "projHash",
		float "radius",
		Vector3Ptr "projPos",
		EntityPtr "projEnt",
		BOOL "ownedByPlayer",
	}
	alias "0x82FDE6A57EE4EE44"
	ns "MISC"
	returns "BOOL"
	doc [[!
<summary>
```
only documented to be continued...  
Dr. Underscore (1/6/18):  
Exactly like _GET_PROJECTILE_NEAR_PED_COORDS (_0xDFB4138EEFED7B81), but it gives us the Entity that was found aswell.  
p6 is (most likely) ownedByPlayer. (see IS_PROJECTILE_IN_AREA for info)  
```
</summary>
	]]

native "GET_PROFILE_SETTING"
    hash "0xC488FF2356EA7791"
	jhash (0xD374BEBC)
	arguments {
		int "profileSetting",
	}
	ns "MISC"
	returns "int"
	doc [[!
<summary>
```
gtaforums.com/topic/799843-stats-profile-settings/  
```
</summary>
	]]

native "_GET_PROJECTILE_NEAR_PED_COORDS"
    hash "0xDFB4138EEFED7B81"
	jhash (0x6BDE5CE4)
	arguments {
		Ped "ped",
		Hash "projHash",
		float "radius",
		Vector3Ptr "projPos",
		BOOL "ownedByPlayer",
	}
	alias "0xDFB4138EEFED7B81"
	ns "MISC"
	returns "BOOL"
	doc [[!
<summary>
```
From a quick disassembly I can say that this has something to do with weapons.  
Added params according to what I could see in IDA.  
Dr. Underscore (1/6/18):  
Returns if any projectiles of projHash type are in a radius around this ped. If true, projPos is filled with the position of that entity.  
This native was only ever used with projectiles, but may not be limited to.  
p4 isn't an Entity*, it's actually a Vector3*, which outputs the position of the found entity.  
p5 is (most likely) ownedByPlayer. (see IS_PROJECTILE_IN_AREA for info)  
```
</summary>
	]]

native "GET_RAIN_LEVEL"
    hash "0x96695E368AD855F3"
	jhash (0xC9F67F28)
	ns "MISC"
	returns "AnyPtr"
	doc [[!
	]]

native "GET_RANDOM_EVENT_FLAG"
    hash "0xD2D57F1D764117B1"
	jhash (0x794CC92C)
	ns "MISC"
	returns "Any"
	doc [[!
	]]

native "GET_SNOW_LEVEL"
    hash "0xC5868A966E5BE3AE"
	jhash (0x1B09184F)
	ns "MISC"
	returns "Any"
	doc [[!
	]]

native "GET_RANDOM_FLOAT_IN_RANGE"
    hash "0x313CE5879CEB6FCD"
	jhash (0x0562C4D0)
	arguments {
		float "startRange",
		float "endRange",
	}
	ns "MISC"
	returns "float"
	doc [[!
	]]

native "GET_RANDOM_INT_IN_RANGE"
    hash "0xD53343AA4FB7DD28"
	jhash (0x4051115B)
	arguments {
		int "startRange",
		int "endRange",
	}
	ns "MISC"
	returns "int"
	doc [[!
<summary>
```
Another extremely useful native.  
You can use it simply like:  
if (GAMEPLAY::GET_RANDOM_INT_IN_RANGE(0, 2))  
```
</summary>
	]]

native "GET_WIND_SPEED"
    hash "0xA8CF1CC0AFCD3F12"
	jhash (0x098F0F3C)
	ns "MISC"
	returns "float"
	doc [[!
	]]

native "_GET_WEATHER_TYPE_TRANSITION"
    hash "0xF3BBE884A14BB413"
	jhash (0x9A5C1D56)
	arguments {
		HashPtr "weatherType1",
		HashPtr "weatherType2",
		floatPtr "percentWeather2",
	}
	ns "MISC"
	returns "void"
	doc [[!
<summary>
```
changed any --> hash  
progress_or_time --> percentWeather2, is not time but percent of the 2nd weather (0-1).  
weatherType1 is same as GAMEPLAY::GET_PREV_WEATHER_TYPE_HASH_NAME()  
and weatherType 2 GAMEPLAY::GET_NEXT_WEATHER_TYPE_HASH_NAME()  
-QuantFC  
```
</summary>
	]]

native "HAS_BULLET_IMPACTED_IN_AREA"
    hash "0x9870ACFB89A90995"
	jhash (0x902BC7D9)
	arguments {
		float "x",
		float "y",
		float "z",
		float "p3",
		BOOL "p4",
		BOOL "p5",
	}
	ns "MISC"
	returns "BOOL"
	doc [[!
<summary>
```
p3 - possibly radius?  
```
</summary>
	]]

native "_HAS_BUTTON_COMBINATION_JUST_BEEN_ENTERED"
    hash "0x071E2A839DE82D90"
	jhash (0xFF6191E1)
	arguments {
		Hash "hash",
		int "amount",
	}
	alias "0x071E2A839DE82D90"
	ns "MISC"
	returns "BOOL"
	doc [[!
<summary>
```
This native appears on the cheat_controller script and tracks a combination of buttons, which may be used to toggle cheats in-game. Credits to ThreeSocks for the info. The hash contains the combination, while the "amount" represents the amount of buttons used in a combination. The following page can be used to make a button combination: gta5offset.com/ts/hash/  
INT_SCORES_SCORTED was a hash collision  
```
</summary>
	]]

native "GET_WIND_DIRECTION"
    hash "0x1F400FEF721170DA"
	jhash (0x89499A0D)
	ns "MISC"
	returns "Vector3"
	doc [[!
	]]

native "HAS_BULLET_IMPACTED_IN_BOX"
    hash "0xDC8C5D7CFEAB8394"
	jhash (0x2C2618CC)
	arguments {
		float "p0",
		float "p1",
		float "p2",
		float "p3",
		float "p4",
		float "p5",
		BOOL "p6",
		BOOL "p7",
	}
	ns "MISC"
	returns "BOOL"
	doc [[!
	]]

native "_HAS_CHEAT_STRING_JUST_BEEN_ENTERED"
    hash "0x557E43C447E700A8"
	arguments {
		Hash "hash",
	}
	alias "0x557E43C447E700A8"
	ns "MISC"
	returns "BOOL"
	doc [[!
<summary>
```
Get inputted "Cheat code", for example:  
while (TRUE)  
{  
    if (GAMEPLAY::_557E43C447E700A8(${fugitive}))  
    {  
       // Do something.  
    }  
    SYSTEM::WAIT(0);  
}  
Calling this will also set the last saved string hash to zero.  
```
</summary>
	]]

native "IGNORE_NEXT_RESTART"
    hash "0x21FFB63D8C615361"
	jhash (0xDA13A4B6)
	arguments {
		BOOL "toggle",
	}
	ns "MISC"
	returns "void"
	doc [[!
	]]

native "IS_AREA_OCCUPIED"
    hash "0xA61B4DF533DCB56E"
	jhash (0xC013972F)
	arguments {
		float "p0",
		float "p1",
		float "p2",
		float "p3",
		float "p4",
		float "p5",
		BOOL "p6",
		BOOL "p7",
		BOOL "p8",
		BOOL "p9",
		BOOL "p10",
		Any "p11",
		BOOL "p12",
	}
	ns "MISC"
	returns "BOOL"
	doc [[!
	]]

native "IS_AUSSIE_VERSION"
    hash "0x9F1935CA1F724008"
	jhash (0x944BA1DC)
	ns "MISC"
	returns "BOOL"
	doc [[!
<summary>
```
if (GAMEPLAY::IS_AUSSIE_VERSION()) {  
sub_127a9(&l_31, 1024); // l_31 |= 1024  
l_129 = 3;  
sub_129d2("AUSSIE VERSION IS TRUE!?!?!"); // DEBUG  
		}  
		Used to block some of the prostitute stuff due to laws in Australia.  
```
</summary>
	]]

native "IS_BIT_SET"
    hash "0xA921AA820C25702F"
	jhash (0x902E26AC)
	arguments {
		int "address",
		int "offset",
	}
	ns "MISC"
	returns "BOOL"
	doc [[!
<summary>
```
Returns bit's boolean state from [offset] of [address].  
Example:  
GAMEPLAY::IS_BIT_SET(bitAddress, 1);  
To enable and disable bits, see:  
GAMEPLAY::SET_BIT(&bitAddress, 1);   // enable  
GAMEPLAY::CLEAR_BIT(&bitAddress, 1); // disable  
```
</summary>
	]]

native "IS_AUTO_SAVE_IN_PROGRESS"
    hash "0x69240733738C19A0"
	jhash (0x36F75399)
	ns "MISC"
	returns "BOOL"
	doc [[!
	]]

native "IS_BULLET_IN_AREA"
    hash "0x3F2023999AD51C1F"
	jhash (0xB54F46CA)
	arguments {
		float "p0",
		float "p1",
		float "p2",
		float "p3",
		BOOL "p4",
	}
	ns "MISC"
	returns "BOOL"
	doc [[!
	]]

native "IS_BULLET_IN_ANGLED_AREA"
    hash "0x1A8B5F3C01E2B477"
	jhash (0xE2DB58F7)
	arguments {
		float "p0",
		float "p1",
		float "p2",
		float "p3",
		float "p4",
		float "p5",
		float "p6",
		BOOL "p7",
	}
	ns "MISC"
	returns "BOOL"
	doc [[!
	]]

native "IS_BULLET_IN_BOX"
    hash "0xDE0F6D7450D37351"
	jhash (0xAB73ED26)
	arguments {
		float "p0",
		float "p1",
		float "p2",
		float "p3",
		float "p4",
		float "p5",
		BOOL "p6",
	}
	ns "MISC"
	returns "BOOL"
	doc [[!
	]]

native "IS_DURANGO_VERSION"
    hash "0x4D982ADB1978442D"
	jhash (0x46FB06A5)
	ns "MISC"
	returns "BOOL"
	doc [[!
<summary>
```
XBOX ONE  
MulleDK19: This function is hard-coded to always return 0.  
```
</summary>
	]]

native "IS_FRONTEND_FADING"
    hash "0x7EA2B6AF97ECA6ED"
	jhash (0x8FF6232C)
	ns "MISC"
	returns "BOOL"
	doc [[!
<summary>
```
This function is hard-coded to always return 0.  
```
</summary>
	]]

native "IS_MEMORY_CARD_IN_USE"
    hash "0x8A75CE2956274ADD"
	jhash (0x40CE4DFD)
	ns "MISC"
	returns "BOOL"
	doc [[!
	]]

native "IS_INCIDENT_VALID"
    hash "0xC8BC6461E629BEAA"
	jhash (0x31FD0BA4)
	arguments {
		int "incidentId",
	}
	ns "MISC"
	returns "BOOL"
	doc [[!
<summary>
```
=======================================================  
Correction, I have change this to int, instead of int*  
as it doesn't use a pointer to the createdIncident.  
If you try it you will crash (or) freeze.  
=======================================================  
```
</summary>
	]]

native "IS_MINIGAME_IN_PROGRESS"
    hash "0x2B4A15E44DE0F478"
	jhash (0x53A95E13)
	ns "MISC"
	returns "BOOL"
	doc [[!
	]]

native "IS_ORBIS_VERSION"
    hash "0xA72BC0B675B1519E"
	jhash (0x40282018)
	ns "MISC"
	returns "BOOL"
	doc [[!
<summary>
```
PS4  
MulleDK19: This function is hard-coded to always return 0.  
Force67: I patched return result and got this : i.imgur.com/hUn7zSj.jpg  
translate please?  
```
</summary>
	]]

native "IS_NEXT_WEATHER_TYPE"
    hash "0x2FAA3A30BEC0F25D"
	jhash (0x99CB167F)
	arguments {
		charPtr "weatherType",
	}
	ns "MISC"
	returns "BOOL"
	doc [[!
	]]

native "IS_PC_VERSION"
    hash "0x48AF36444B965238"
	jhash (0x4D5D9EE3)
	ns "MISC"
	returns "BOOL"
	doc [[!
<summary>
```
MulleDK19: This function is hard-coded to always return 1.  
```
</summary>
	]]

native "IS_POSITION_OCCUPIED"
    hash "0xADCDE75E1C60F32D"
	jhash (0x452E8D9E)
	arguments {
		float "x",
		float "y",
		float "z",
		float "range",
		BOOL "p4",
		BOOL "p5",
		BOOL "p6",
		BOOL "p7",
		BOOL "p8",
		Any "p9",
		BOOL "p10",
	}
	ns "MISC"
	returns "BOOL"
	doc [[!
	]]

native "IS_POINT_OBSCURED_BY_A_MISSION_ENTITY"
    hash "0xE54E209C35FFA18D"
	jhash (0xC161558D)
	arguments {
		float "p0",
		float "p1",
		float "p2",
		float "p3",
		float "p4",
		float "p5",
		Any "p6",
	}
	ns "MISC"
	returns "BOOL"
	doc [[!
	]]

native "IS_PREV_WEATHER_TYPE"
    hash "0x44F28F86433B10A9"
	jhash (0x250ADA61)
	arguments {
		charPtr "weatherType",
	}
	ns "MISC"
	returns "BOOL"
	doc [[!
	]]

native "IS_PROJECTILE_IN_AREA"
    hash "0x5270A8FBC098C3F8"
	jhash (0x78E1A557)
	arguments {
		float "x1",
		float "y1",
		float "z1",
		float "x2",
		float "y2",
		float "z2",
		BOOL "ownedByPlayer",
	}
	ns "MISC"
	returns "BOOL"
	doc [[!
<summary>
```
Determines whether there is a projectile within the specified coordinates. The coordinates form a rectangle.  
ownedByPlayer = only projectiles fired by the player will be detected.  
```
</summary>
	]]

native "IS_PROJECTILE_TYPE_IN_AREA"
    hash "0x2E0DC353342C4A6D"
	jhash (0x2B73BCF6)
	arguments {
		float "x1",
		float "y1",
		float "z1",
		float "x2",
		float "y2",
		float "z2",
		int "type",
		BOOL "p7",
	}
	ns "MISC"
	returns "BOOL"
	doc [[!
<summary>
```
Determines whether there is a projectile of a specific type within the specified coordinates. The coordinates form a rectangle.  
Note: This native hasn't been tested yet.  
```
</summary>
	]]

native "IS_PROJECTILE_TYPE_IN_ANGLED_AREA"
    hash "0xF0BC12401061DEA0"
	jhash (0xD1AE2681)
	arguments {
		float "p0",
		float "p1",
		float "p2",
		float "p3",
		float "p4",
		float "p5",
		float "p6",
		Any "p7",
		BOOL "p8",
	}
	ns "MISC"
	returns "BOOL"
	doc [[!
	]]

native "_IS_PROJECTILE_TYPE_IN_RADIUS"
    hash "0x34318593248C8FB2"
	jhash (0xBE81F1E2)
	arguments {
		float "x",
		float "y",
		float "z",
		Hash "projHash",
		float "radius",
		BOOL "ownedByPlayer",
	}
	alias "0x34318593248C8FB2"
	ns "MISC"
	returns "BOOL"
	doc [[!
<summary>
```
Dr. Underscore (1/6/18):  
Checks if the projectile is in the radius around that point.  
p6 is (most likely) ownedByPlayer. (see IS_PROJECTILE_IN_AREA for info)  
```
</summary>
	]]

native "IS_SNIPER_BULLET_IN_AREA"
    hash "0xFEFCF11B01287125"
	jhash (0x0483715C)
	arguments {
		float "x1",
		float "y1",
		float "z1",
		float "x2",
		float "y2",
		float "z2",
	}
	ns "MISC"
	returns "BOOL"
	doc [[!
<summary>
```
Determines whether there is a sniper bullet within the specified coordinates. The coordinates form a rectangle.  
```
</summary>
	]]

native "IS_STRING_NULL"
    hash "0xF22B6C47C6EAB066"
	jhash (0x8E71E00F)
	arguments {
		charPtr "string",
	}
	ns "MISC"
	returns "BOOL"
	doc [[!
	]]

native "IS_PS3_VERSION"
    hash "0xCCA1072C29D096C2"
	jhash (0x4C0D5303)
	ns "MISC"
	returns "BOOL"
	doc [[!
<summary>
```
MulleDK19: This function is hard-coded to always return 0.  
```
</summary>
	]]

native "IS_SNIPER_INVERTED"
    hash "0x61A23B7EDA9BDA24"
	jhash (0x5C3BF51B)
	ns "MISC"
	returns "BOOL"
	doc [[!
<summary>
```
This function is hard-coded to always return 0.  
```
</summary>
	]]

native "IS_STUNT_JUMP_IN_PROGRESS"
    hash "0x7A3F19700A4D0525"
	jhash (0xF477D0B1)
	ns "MISC"
	returns "BOOL"
	doc [[!
	]]

native "IS_STUNT_JUMP_MESSAGE_SHOWING"
    hash "0x2272B0A1343129F4"
	jhash (0x021636EE)
	alias "0x2272B0A1343129F4"
	ns "MISC"
	returns "BOOL"
	doc [[!
	]]

native "IS_STRING_NULL_OR_EMPTY"
    hash "0xCA042B6957743895"
	jhash (0x42E9F2CA)
	arguments {
		charPtr "string",
	}
	ns "MISC"
	returns "BOOL"
	doc [[!
	]]

native "IS_THIS_A_MINIGAME_SCRIPT"
    hash "0x7B30F65D7B710098"
	jhash (0x7605EF6F)
	ns "MISC"
	returns "BOOL"
	doc [[!
	]]

native "IS_TENNIS_MODE"
    hash "0x5D5479D115290C3F"
	jhash (0x04A947BA)
	arguments {
		Ped "ped",
	}
	ns "MISC"
	returns "BOOL"
	doc [[!
<summary>
```
Return whether tennis mode is active or not.  
```
</summary>
	]]

native "0x06462A961E94B67C"
    hash "0x06462A961E94B67C"
	jhash (0x5A45B11A)
	ns "MISC"
	returns "void"
	doc [[!
	]]

native "IS_XBOX360_VERSION"
    hash "0xF6201B4DAF662A9D"
	jhash (0x24005CC8)
	ns "MISC"
	returns "BOOL"
	doc [[!
<summary>
```
MulleDK19: This function is hard-coded to always return 0.  
```
</summary>
	]]

native "0x075F1D57402C93BA"
    hash "0x075F1D57402C93BA"
	jhash (0x2569C9A7)
	ns "MISC"
	returns "Any"
	doc [[!
	]]

native "0x02DEAAC8F8EA7FE7"
    hash "0x02DEAAC8F8EA7FE7"
	arguments {
		charPtr "p0",
	}
	ns "MISC"
	returns "void"
	doc [[!
<summary>
```
Found in the scripts:  
GAMEPLAY::_02DEAAC8F8EA7FE7("");  
```
</summary>
	]]

native "0x0CF97F497FE7D048"
    hash "0x0CF97F497FE7D048"
	arguments {
		Any "p0",
	}
	ns "MISC"
	returns "void"
	doc [[!
	]]

native "0x0A60017F841A54F2"
    hash "0x0A60017F841A54F2"
	jhash (0x2D33F15A)
	arguments {
		Any "p0",
		Any "p1",
		Any "p2",
		Any "p3",
	}
	ns "MISC"
	returns "void"
	doc [[!
	]]

native "0x1327E2FE9746BAEE"
    hash "0x1327E2FE9746BAEE"
	arguments {
		Any "p0",
	}
	ns "MISC"
	returns "BOOL"
	doc [[!
	]]

native "0x11B56FBBF7224868"
    hash "0x11B56FBBF7224868"
	jhash (0x8727A4C5)
	arguments {
		charPtr "p0",
	}
	ns "MISC"
	returns "void"
	doc [[!
<summary>
```
Found in the scripts:  
GAMEPLAY::_11B56FBBF7224868("CONTRAILS");  
```
</summary>
	]]

native "0x14832BF2ABA53FC5"
    hash "0x14832BF2ABA53FC5"
	ns "MISC"
	returns "Any"
	doc [[!
	]]

native "0x171BAFB3C60389F4"
    hash "0x171BAFB3C60389F4"
	arguments {
		Any "p0",
	}
	ns "MISC"
	returns "Any"
	doc [[!
	]]

native "0x19BFED045C647C49"
    hash "0x19BFED045C647C49"
	jhash (0x1A332D2D)
	arguments {
		Any "p0",
	}
	ns "MISC"
	returns "BOOL"
	doc [[!
	]]

native "0x17DF68D720AA77F8"
    hash "0x17DF68D720AA77F8"
	jhash (0x8501E727)
	arguments {
		Any "p0",
	}
	ns "MISC"
	returns "BOOL"
	doc [[!
	]]

native "0x1B2366C3F2A5C8DF"
    hash "0x1B2366C3F2A5C8DF"
	ns "MISC"
	returns "Any"
	doc [[!
	]]

native "0x1BB299305C3E8C13"
    hash "0x1BB299305C3E8C13"
	jhash (0xA27F4472)
	arguments {
		Any "p0",
		Any "p1",
		Any "p2",
		Any "p3",
	}
	ns "MISC"
	returns "void"
	doc [[!
	]]

native "0x1FF6BF9A63E5757F"
    hash "0x1FF6BF9A63E5757F"
	jhash (0xDF99925C)
	ns "MISC"
	returns "void"
	doc [[!
	]]

native "0x1EAE0A6E978894A2"
    hash "0x1EAE0A6E978894A2"
	jhash (0x8F60366E)
	arguments {
		int "p0",
		BOOL "p1",
	}
	ns "MISC"
	returns "void"
	doc [[!
<summary>
```
Unsure about the use of this native but here's an example:  
void sub_8709() {  
    GAMEPLAY::_1EAE0A6E978894A2(0, 1);  
    GAMEPLAY::_1EAE0A6E978894A2(1, 1);  
    GAMEPLAY::_1EAE0A6E978894A2(2, 1);  
    GAMEPLAY::_1EAE0A6E978894A2(3, 1);  
    GAMEPLAY::_1EAE0A6E978894A2(4, 1);  
    GAMEPLAY::_1EAE0A6E978894A2(5, 1);  
    GAMEPLAY::_1EAE0A6E978894A2(6, 1);  
    GAMEPLAY::_1EAE0A6E978894A2(7, 1);  
    GAMEPLAY::_1EAE0A6E978894A2(8, 1);  
}  
So it appears that p0 ranges from 0 to 8.  
ENABLE_DISPATCH_SERVICE, seems to have a similar layout.  
```
</summary>
	]]

native "0x2107A3773771186D"
    hash "0x2107A3773771186D"
	jhash (0x78350773)
	ns "MISC"
	returns "Any"
	doc [[!
	]]

native "0x213AEB2B90CBA7AC"
    hash "0x213AEB2B90CBA7AC"
	arguments {
		Any "p0",
		Any "p1",
		Any "p2",
	}
	ns "MISC"
	returns "void"
	doc [[!
	]]

native "0x21C235BC64831E5A"
    hash "0x21C235BC64831E5A"
	jhash (0xCAECF37E)
	arguments {
		float "p0",
		float "p1",
		float "p2",
		float "p3",
		float "p4",
		float "p5",
		float "p6",
		float "p7",
		float "p8",
		BOOL "p9",
	}
	ns "MISC"
	returns "Vector3"
	doc [[!
	]]

native "0x23227DF0B2115469"
    hash "0x23227DF0B2115469"
	ns "MISC"
	returns "void"
	doc [[!
<summary>
**This native does absolutely nothing, just a nullsub**
</summary>
	]]

native "0x2587A48BC88DFADF"
    hash "0x2587A48BC88DFADF"
	jhash (0xD9660339)
	arguments {
		BOOL "p0",
	}
	ns "MISC"
	returns "void"
	doc [[!
	]]

native "0x2B5E102E4A42F2BF"
    hash "0x2B5E102E4A42F2BF"
	jhash (0x144AAF22)
	ns "MISC"
	returns "Any"
	doc [[!
	]]

native "0x2B626A0150E4D449"
    hash "0x2B626A0150E4D449"
	jhash (0x710E5D1E)
	ns "MISC"
	returns "Any"
	doc [[!
	]]

native "0x2D4259F1FEB81DA9"
    hash "0x2D4259F1FEB81DA9"
	arguments {
		float "p0",
		float "p1",
		float "p2",
		float "p3",
	}
	ns "MISC"
	returns "Any"
	doc [[!
	]]

native "0x31125FD509D9043F"
    hash "0x31125FD509D9043F"
	arguments {
		AnyPtr "p0",
	}
	ns "MISC"
	returns "void"
	doc [[!
<summary>
**This native does absolutely nothing, just a nullsub**
</summary>
	]]

native "0x31727907B2C43C55"
    hash "0x31727907B2C43C55"
	jhash (0xD447439D)
	arguments {
		float "p0",
	}
	ns "MISC"
	returns "void"
	doc [[!
	]]

native "0x37DEB0AA183FB6D8"
    hash "0x37DEB0AA183FB6D8"
	ns "MISC"
	returns "void"
	doc [[!
	]]

native "0x32C7A7E8C43A1F80"
    hash "0x32C7A7E8C43A1F80"
	arguments {
		float "p0",
		float "p1",
		float "p2",
		float "p3",
		float "p4",
		float "p5",
		BOOL "p6",
		BOOL "p7",
	}
	ns "MISC"
	returns "Any"
	doc [[!
	]]

native "0x397BAA01068BAA96"
    hash "0x397BAA01068BAA96"
	jhash (0x39771F21)
	ns "MISC"
	returns "int"
	doc [[!
	]]

native "0x3BBBD13E5041A79E"
    hash "0x3BBBD13E5041A79E"
	ns "MISC"
	returns "Any"
	doc [[!
	]]

native "0x3ED1438C1F5C6612"
    hash "0x3ED1438C1F5C6612"
	jhash (0x3301EA47)
	arguments {
		int "p0",
	}
	ns "MISC"
	returns "void"
	doc [[!
<summary>
```
p0 was always 2 in R* scripts.  
Called before calling DISPLAY_ONSCREEN_KEYBOARD if the input needs to be saved.  
```
</summary>
	]]

native "0x405591EC8FD9096D"
    hash "0x405591EC8FD9096D"
	jhash (0x584E9C59)
	arguments {
		float "p0",
	}
	ns "MISC"
	returns "void"
	doc [[!
	]]

native "0x437138B6A830166A"
    hash "0x437138B6A830166A"
	ns "MISC"
	returns "void"
	doc [[!
	]]

native "0x438822C279B73B93"
    hash "0x438822C279B73B93"
	arguments {
		Any "p0",
	}
	ns "MISC"
	returns "void"
	doc [[!
	]]

native "0x44A0BDC559B35F6E"
    hash "0x44A0BDC559B35F6E"
	jhash (0x3589452B)
	ns "MISC"
	returns "Any"
	doc [[!
	]]

native "0x4750FC27570311EC"
    hash "0x4750FC27570311EC"
	ns "MISC"
	returns "Any"
	doc [[!
	]]

native "0x48F069265A0E4BEC"
    hash "0x48F069265A0E4BEC"
	jhash (0xF91B8C33)
	arguments {
		AnyPtr "p0",
		charPtr "name",
	}
	ns "MISC"
	returns "void"
	doc [[!
<summary>
```
Only found 3 times in decompiled scripts. Not a whole lot to go off of.  
GAMEPLAY::_48F069265A0E4BEC(a_0, "Movie_Name_For_This_Player");  
GAMEPLAY::_48F069265A0E4BEC(&a_0._fB, "Ringtone_For_This_Player");  
GAMEPLAY::_48F069265A0E4BEC(&a_0._f1EC4._f12[v_A/*6*/], &v_13); // where v_13 is "MPATMLOGSCRS0" thru "MPATMLOGSCRS15"  
```
</summary>
	]]

native "0x4DCDF92BF64236CD"
    hash "0x4DCDF92BF64236CD"
	arguments {
		charPtr "p0",
		charPtr "p1",
	}
	ns "MISC"
	returns "void"
	doc [[!
<summary>
**This native does absolutely nothing, just a nullsub**
</summary>
	]]

native "0x54F157E0336A3822"
    hash "0x54F157E0336A3822"
	jhash (0x49F977A9)
	arguments {
		Any "p0",
		charPtr "p1",
		float "p2",
	}
	ns "MISC"
	returns "void"
	doc [[!
<summary>
```
From the scripts:  
GAMEPLAY::_54F157E0336A3822(sub_aa49(a_0), "ForcedStopDirection", v_E);  
```
</summary>
	]]

native "0x5AA3BEFA29F03AD4"
    hash "0x5AA3BEFA29F03AD4"
	jhash (0x46B5A15C)
	ns "MISC"
	returns "Any"
	doc [[!
	]]

native "0x58A39BE597CE99CD"
    hash "0x58A39BE597CE99CD"
	ns "MISC"
	returns "void"
	doc [[!
	]]

native "0x5B1F2E327B6B6FE1"
    hash "0x5B1F2E327B6B6FE1"
	jhash (0x50C39926)
	ns "MISC"
	returns "Any"
	doc [[!
	]]

native "0x6216B116083A7CB4"
    hash "0x6216B116083A7CB4"
	jhash (0xFB1A9CDE)
	arguments {
		float "p0",
	}
	ns "MISC"
	returns "void"
	doc [[!
	]]

native "0x65D2EBB47E1CEC21"
    hash "0x65D2EBB47E1CEC21"
	arguments {
		BOOL "p0",
	}
	ns "MISC"
	returns "void"
	doc [[!
	]]

native "0x67F6413D3220E18D"
    hash "0x67F6413D3220E18D"
	jhash (0x42BF09B3)
	arguments {
		Any "p0",
		Any "p1",
		Any "p2",
		Any "p3",
		Any "p4",
		Any "p5",
		Any "p6",
		Any "p7",
		Any "p8",
	}
	ns "MISC"
	returns "Any"
	doc [[!
	]]

native "0x684A41975F077262"
    hash "0x684A41975F077262"
	ns "MISC"
	returns "BOOL"
	doc [[!
<summary>
```
example:  
if (GAMEPLAY::_684A41975F077262()) {  
       (a_0) = GAMEPLAY::_ABB2FA71C83A1B72();  
   } else {   
       (a_0) = -1;  
   }  
```
</summary>
	]]

native "0x693478ACBD7F18E7"
    hash "0x693478ACBD7F18E7"
	ns "MISC"
	returns "void"
	doc [[!
	]]

native "0x6856EC3D35C81EA4"
    hash "0x6856EC3D35C81EA4"
	ns "MISC"
	returns "int"
	doc [[!
	]]

native "0x69FE6DC87BD2A5E9"
    hash "0x69FE6DC87BD2A5E9"
	jhash (0x81216EE0)
	arguments {
		Any "p0",
	}
	ns "MISC"
	returns "void"
	doc [[!
	]]

native "0x6E04F06094C87047"
    hash "0x6E04F06094C87047"
	jhash (0xA8546914)
	ns "MISC"
	returns "Any"
	doc [[!
	]]

native "0x6F2135B6129620C1"
    hash "0x6F2135B6129620C1"
	jhash (0x8B2DE971)
	arguments {
		BOOL "p0",
	}
	ns "MISC"
	returns "void"
	doc [[!
	]]

native "0x6F7794F28C6B2535"
    hash "0x6F7794F28C6B2535"
	jhash (0xE2089749)
	arguments {
		AnyPtr "p0",
		charPtr "name",
	}
	ns "MISC"
	returns "void"
	doc [[!
<summary>
```
Seems to have the same functionality as REGISTER_TEXT_LABEL_TO_SAVE?  
GAMEPLAY::_6F7794F28C6B2535(&a_0._f1, "tlPlateText");  
GAMEPLAY::_6F7794F28C6B2535(&a_0._f1C, "tlPlateText_pending");  
GAMEPLAY::_6F7794F28C6B2535(&a_0._f10B, "tlCarAppPlateText");  
"tl" prefix sounds like "Text Label"  
```
</summary>
	]]

native "0x6FDDF453C0C756EC"
    hash "0x6FDDF453C0C756EC"
	jhash (0xC3C10FCC)
	ns "MISC"
	returns "BOOL"
	doc [[!
<summary>
```
- if (GAMEPLAY::_6FDDF453C0C756EC() || GAMEPLAY::IS_PC_VERSION()) {  
```
</summary>
	]]

native "0x72DE52178C291CB5"
    hash "0x72DE52178C291CB5"
	jhash (0xF62B3C48)
	ns "MISC"
	returns "Any"
	doc [[!
	]]

native "0x703CC7F60CBB2B57"
    hash "0x703CC7F60CBB2B57"
	arguments {
		Any "p0",
	}
	ns "MISC"
	returns "void"
	doc [[!
<summary>
**This native does absolutely nothing, just a nullsub**
</summary>
	]]

native "0x7EC6F9A478A6A512"
    hash "0x7EC6F9A478A6A512"
	ns "MISC"
	returns "void"
	doc [[!
	]]

native "0x7C9C0B1EEB1F9072"
    hash "0x7C9C0B1EEB1F9072"
	jhash (0x98C9138B)
	arguments {
		float "p0",
	}
	ns "MISC"
	returns "void"
	doc [[!
	]]

native "0x8098C8D6597AAE18"
    hash "0x8098C8D6597AAE18"
	jhash (0x22BE2423)
	arguments {
		Any "p0",
	}
	ns "MISC"
	returns "Any"
	doc [[!
	]]

native "0x7F8F6405F4777AF6"
    hash "0x7F8F6405F4777AF6"
	jhash (0x89459F0A)
	arguments {
		float "p0",
		float "p1",
		float "p2",
		float "p3",
		float "p4",
		float "p5",
		float "p6",
		float "p7",
		float "p8",
		BOOL "p9",
	}
	ns "MISC"
	returns "float"
	doc [[!
	]]

native "0x8951EB9C6906D3C8"
    hash "0x8951EB9C6906D3C8"
	ns "MISC"
	returns "void"
	doc [[!
<summary>
**This native does absolutely nothing, just a nullsub**
</summary>
	]]

native "0x8269816F6CFD40F8"
    hash "0x8269816F6CFD40F8"
	jhash (0x74E8FAD9)
	arguments {
		AnyPtr "p0",
		charPtr "name",
	}
	ns "MISC"
	returns "void"
	doc [[!
<summary>
```
Only found 2 times in decompiled scripts. Not a whole lot to go off of.  
GAMEPLAY::_8269816F6CFD40F8(&a_0._f1F5A._f6[0/*8*/], "TEMPSTAT_LABEL"); // gets saved in a struct called "g_SaveData_STRING_ScriptSaves"  
GAMEPLAY::_8269816F6CFD40F8(&a_0._f4B4[v_1A/*8*/], &v_5); // where v_5 is "Name0" thru "Name9", gets saved in a struct called "OUTFIT_Name"  
```
</summary>
	]]

native "0x8EF5573A1F801A5C"
    hash "0x8EF5573A1F801A5C"
	jhash (0x07FF553F)
	arguments {
		Any "p0",
		AnyPtr "p1",
		AnyPtr "p2",
	}
	ns "MISC"
	returns "BOOL"
	doc [[!
	]]

native "0x8D74E26F54B4E5C3"
    hash "0x8D74E26F54B4E5C3"
	jhash (0xE77199F7)
	arguments {
		charPtr "p0",
	}
	ns "MISC"
	returns "void"
	doc [[!
<summary>
```
GAMEPLAY::_8D74E26F54B4E5C3("");  
```
</summary>
	]]

native "0x918C7B2D2FF3928B"
    hash "0x918C7B2D2FF3928B"
	jhash (0xF557BAF9)
	arguments {
		float "p0",
		float "p1",
		float "p2",
		float "p3",
		float "p4",
		float "p5",
		float "p6",
	}
	ns "MISC"
	returns "Any"
	doc [[!
	]]

native "0x8FA9C42FC5D7C64B"
    hash "0x8FA9C42FC5D7C64B"
	jhash (0x0C8865DF)
	arguments {
		Any "p0",
		Any "p1",
		float "p2",
		float "p3",
		float "p4",
		BOOL "p5",
	}
	ns "MISC"
	returns "void"
	doc [[!
	]]

native "0x9689123E3F213AA5"
    hash "0x9689123E3F213AA5"
	ns "MISC"
	returns "BOOL"
	doc [[!
	]]

native "0x996DD1E1E02F1008"
    hash "0x996DD1E1E02F1008"
	jhash (0x006F9BA2)
	ns "MISC"
	returns "int"
	doc [[!
	]]

native "0x92790862E36C2ADA"
    hash "0x92790862E36C2ADA"
	ns "MISC"
	returns "void"
	doc [[!
<summary>
```
I can 100% confirm this is some kind of START_* native.  
Next character in the name is either C, D or E.  
Used only once in the scripts (benchmark.ysc).  
```
</summary>
	]]

native "0x97E7E2C04245115B"
    hash "0x97E7E2C04245115B"
	arguments {
		Any "p0",
	}
	ns "MISC"
	returns "void"
	doc [[!
<summary>
**This native does absolutely nothing, just a nullsub**
</summary>
	]]

native "0x9D8D44ADBBA61EF2"
    hash "0x9D8D44ADBBA61EF2"
	arguments {
		BOOL "p0",
	}
	ns "MISC"
	returns "void"
	doc [[!
	]]

native "0x9F5E6BB6B34540DA"
    hash "0x9F5E6BB6B34540DA"
	jhash (0x1C0CAE89)
	arguments {
		float "p0",
	}
	ns "MISC"
	returns "void"
	doc [[!
	]]

native "0x9B2BD3773123EA2F"
    hash "0x9B2BD3773123EA2F"
	jhash (0xE0F0684F)
	arguments {
		int "type",
		BOOL "toggle",
	}
	ns "MISC"
	returns "void"
	doc [[!
	]]

native "0x9E82F0F362881B29"
    hash "0x9E82F0F362881B29"
	arguments {
		Any "p0",
		Any "p1",
		Any "p2",
		Any "p3",
		Any "p4",
	}
	ns "MISC"
	returns "Any"
	doc [[!
	]]

native "0xA049A5BE0F04F2F8"
    hash "0xA049A5BE0F04F2F8"
	ns "MISC"
	returns "BOOL"
	doc [[!
	]]

native "0xA09F896CE912481F"
    hash "0xA09F896CE912481F"
	jhash (0x9EF0BC64)
	arguments {
		BOOL "p0",
	}
	ns "MISC"
	returns "int"
	doc [[!
	]]

native "0xA4A0065E39C9F25C"
    hash "0xA4A0065E39C9F25C"
	jhash (0xC4D71AB4)
	arguments {
		Any "p0",
		Any "p1",
		Any "p2",
		Any "p3",
	}
	ns "MISC"
	returns "Any"
	doc [[!
	]]

native "0xA735353C77334EA0"
    hash "0xA735353C77334EA0"
	arguments {
		AnyPtr "p0",
		AnyPtr "p1",
	}
	ns "MISC"
	returns "void"
	doc [[!
	]]

native "0xA74802FB8D0B7814"
    hash "0xA74802FB8D0B7814"
	jhash (0xC9FA6E07)
	arguments {
		charPtr "p0",
		float "p1",
	}
	ns "MISC"
	returns "void"
	doc [[!
<summary>
```
Called 4 times in the b617d scripts:  
GAMEPLAY::_A74802FB8D0B7814("CONTRAILS", 0);  
```
</summary>
	]]

native "0xA7A1127490312C36"
    hash "0xA7A1127490312C36"
	jhash (0x6926AB03)
	arguments {
		float "p0",
	}
	ns "MISC"
	returns "void"
	doc [[!
	]]

native "0xA8434F1DFF41D6E7"
    hash "0xA8434F1DFF41D6E7"
	jhash (0x5F3DDEC0)
	arguments {
		float "p0",
	}
	ns "MISC"
	returns "void"
	doc [[!
	]]

native "0xABB2FA71C83A1B72"
    hash "0xABB2FA71C83A1B72"
	ns "MISC"
	returns "Any"
	doc [[!
	]]

native "0xB08B85D860E7BA3C"
    hash "0xB08B85D860E7BA3C"
	jhash (0x0242D88E)
	arguments {
		Any "p0",
		Any "p1",
		Any "p2",
	}
	ns "MISC"
	returns "void"
	doc [[!
	]]

native "0xB129E447A2EDA4BF"
    hash "0xB129E447A2EDA4BF"
	jhash (0xFBDBE374)
	arguments {
		Any "p0",
		BOOL "p1",
	}
	ns "MISC"
	returns "void"
	doc [[!
	]]

native "0xB335F761606DB47C"
    hash "0xB335F761606DB47C"
	arguments {
		AnyPtr "p1",
		AnyPtr "p2",
		Any "p3",
		BOOL "p4",
	}
	ns "MISC"
	returns "BOOL"
	doc [[!
<summary>
```
This line found 48 times in the scripts:  
GAMEPLAY::_B335F761606DB47C(&v_4, &v_7, a_0, v_A);  
```
</summary>
	]]

native "0xB3CD58CCA6CDA852"
    hash "0xB3CD58CCA6CDA852"
	jhash (0x66C3C59C)
	ns "MISC"
	returns "void"
	doc [[!
	]]

native "0xB3E6360DDE733E82"
    hash "0xB3E6360DDE733E82"
	jhash (0x0DE40C28)
	arguments {
		float "p0",
	}
	ns "MISC"
	returns "void"
	doc [[!
	]]

native "0xB51B9AB9EF81868C"
    hash "0xB51B9AB9EF81868C"
	jhash (0x75B06B5A)
	arguments {
		BOOL "toggle",
	}
	ns "MISC"
	returns "void"
	doc [[!
	]]

native "0xB8721407EE9C3FF6"
    hash "0xB8721407EE9C3FF6"
	jhash (0x24A4E0B2)
	arguments {
		Any "p0",
		Any "p1",
		Any "p2",
	}
	ns "MISC"
	returns "void"
	doc [[!
	]]

native "0xB8F87EAD7533B176"
    hash "0xB8F87EAD7533B176"
	jhash (0x625181DC)
	arguments {
		float "p0",
	}
	ns "MISC"
	returns "void"
	doc [[!
	]]

native "0xB9854DFDE0D833D6"
    hash "0xB9854DFDE0D833D6"
	jhash (0x4671AC2E)
	arguments {
		float "p0",
	}
	ns "MISC"
	returns "void"
	doc [[!
	]]

native "0xC3C221ADDDE31A11"
    hash "0xC3C221ADDDE31A11"
	jhash (0x63A89684)
	arguments {
		float "p0",
	}
	ns "MISC"
	returns "void"
	doc [[!
	]]

native "0xBA4B8D83BDC75551"
    hash "0xBA4B8D83BDC75551"
	arguments {
		Any "p0",
	}
	ns "MISC"
	returns "void"
	doc [[!
<summary>
**This native does absolutely nothing, just a nullsub**
</summary>
	]]

native "0xC3EAD29AB273ECE8"
    hash "0xC3EAD29AB273ECE8"
	jhash (0xBEBBFDC8)
	arguments {
		float "p0",
	}
	ns "MISC"
	returns "void"
	doc [[!
	]]

native "0xC54A08C85AE4D410"
    hash "0xC54A08C85AE4D410"
	jhash (0xDA02F415)
	arguments {
		float "p0",
	}
	ns "MISC"
	returns "void"
	doc [[!
<summary>
```
This seems to edit the water wave, intensity around your current location.  
0.0f = Normal  
1.0f = So Calm and Smooth, a boat will stay still.  
3.0f = Really Intense.  
```
</summary>
	]]

native "0xC79AE21974B01FB2"
    hash "0xC79AE21974B01FB2"
	ns "MISC"
	returns "void"
	doc [[!
	]]

native "0xC7DB36C24634F52B"
    hash "0xC7DB36C24634F52B"
	ns "MISC"
	returns "void"
	doc [[!
	]]

native "0xD10282B6E3751BA0"
    hash "0xD10282B6E3751BA0"
	ns "MISC"
	returns "Any"
	doc [[!
	]]

native "0xD10F442036302D50"
    hash "0xD10F442036302D50"
	jhash (0x6F009E33)
	arguments {
		Any "p0",
		Any "p1",
		Any "p2",
	}
	ns "MISC"
	returns "void"
	doc [[!
	]]

native "0xD261BA3E7E998072"
    hash "0xD261BA3E7E998072"
	jhash (0x1F38102E)
	arguments {
		Any "p0",
		float "p1",
	}
	ns "MISC"
	returns "void"
	doc [[!
	]]

native "0xD642319C54AADEB6"
    hash "0xD642319C54AADEB6"
	jhash (0xC58250F1)
	ns "MISC"
	returns "Any"
	doc [[!
	]]

native "0xD9F692D349249528"
    hash "0xD9F692D349249528"
	jhash (0xE0C9307E)
	ns "MISC"
	returns "void"
	doc [[!
	]]

native "0xD79185689F8FD5DF"
    hash "0xD79185689F8FD5DF"
	jhash (0x3C806A2D)
	arguments {
		BOOL "p0",
	}
	ns "MISC"
	returns "void"
	doc [[!
	]]

native "0xDEA36202FC3382DF"
    hash "0xDEA36202FC3382DF"
	jhash (0x082BA6F2)
	arguments {
		BOOL "p0",
	}
	ns "MISC"
	returns "void"
	doc [[!
<summary>
```
Dr. Underscore (1/6/18):  
Most references of this native come from the creator scripts. (creator, fm_capture_creator, fm_deathmatch_creator, fm_lts_creator, fm_race_creator).  
Seems to have something to do with initializing/destroying creator shit.  
```
</summary>
	]]

native "0xDC9274A7EF6B2867"
    hash "0xDC9274A7EF6B2867"
	jhash (0xC7BD1AF0)
	ns "MISC"
	returns "Any"
	doc [[!
	]]

native "0xE266ED23311F24D4"
    hash "0xE266ED23311F24D4"
	jhash (0xC20A7D2B)
	arguments {
		Any "p0",
		AnyPtr "p1",
		AnyPtr "p2",
		float "p3",
		float "p4",
		BOOL "p5",
	}
	ns "MISC"
	returns "void"
	doc [[!
	]]

native "0xE3D969D2785FFB5E"
    hash "0xE3D969D2785FFB5E"
	ns "MISC"
	returns "void"
	doc [[!
<summary>
```
sets something to 1  
```
</summary>
	]]

native "0xE532EC1A63231B4F"
    hash "0xE532EC1A63231B4F"
	jhash (0xA0D8C749)
	arguments {
		Any "p0",
		Any "p1",
	}
	ns "MISC"
	returns "void"
	doc [[!
	]]

native "0xE574A662ACAEFBB1"
    hash "0xE574A662ACAEFBB1"
	ns "MISC"
	returns "void"
	doc [[!
	]]

native "0xE6869BECDD8F2403"
    hash "0xE6869BECDD8F2403"
	arguments {
		Any "p0",
		BOOL "p1",
	}
	ns "MISC"
	returns "void"
	doc [[!
	]]

native "0xE8B9C0EC9E183F35"
    hash "0xE8B9C0EC9E183F35"
	ns "MISC"
	returns "BOOL"
	doc [[!
	]]

native "0xE95B0C7D5BA3B96B"
    hash "0xE95B0C7D5BA3B96B"
	arguments {
		Any "p0",
	}
	ns "MISC"
	returns "BOOL"
	doc [[!
	]]

native "0xEA2F2061875EED90"
    hash "0xEA2F2061875EED90"
	ns "MISC"
	returns "Any"
	doc [[!
	]]

native "0xEB2104E905C6F2E9"
    hash "0xEB2104E905C6F2E9"
	ns "MISC"
	returns "Any"
	doc [[!
	]]

native "0xEB078CA2B5E82ADD"
    hash "0xEB078CA2B5E82ADD"
	arguments {
		Any "p0",
		Any "p1",
	}
	ns "MISC"
	returns "void"
	doc [[!
<summary>
**This native does absolutely nothing, just a nullsub**
</summary>
	]]

native "0xEBD3205A207939ED"
    hash "0xEBD3205A207939ED"
	arguments {
		AnyPtr "p0",
	}
	ns "MISC"
	returns "void"
	doc [[!
<summary>
**This native does absolutely nothing, just a nullsub**
</summary>
	]]

native "0xF2F6A2FA49278625"
    hash "0xF2F6A2FA49278625"
	jhash (0x87B92190)
	arguments {
		float "p0",
		float "p1",
		float "p2",
		float "p3",
		float "p4",
		float "p5",
		float "p6",
		float "p7",
		float "p8",
		AnyPtr "p9",
		AnyPtr "p10",
		AnyPtr "p11",
		AnyPtr "p12",
	}
	ns "MISC"
	returns "void"
	doc [[!
	]]

native "0xF56DFB7B61BE7276"
    hash "0xF56DFB7B61BE7276"
	jhash (0xC6CC812C)
	arguments {
		float "p0",
		float "p1",
		float "p2",
		float "p3",
		float "p4",
		float "p5",
		float "p6",
		float "p7",
		float "p8",
		float "p9",
		float "p10",
		float "p11",
		AnyPtr "p12",
	}
	ns "MISC"
	returns "BOOL"
	doc [[!
	]]

native "0xF751B16FB32ABC1D"
    hash "0xF751B16FB32ABC1D"
	jhash (0x5656D578)
	arguments {
		float "p0",
	}
	ns "MISC"
	returns "void"
	doc [[!
	]]

native "0xFAA457EF263E8763"
    hash "0xFAA457EF263E8763"
	jhash (0x6B4335DD)
	arguments {
		AnyPtr "p0",
		charPtr "name",
	}
	ns "MISC"
	returns "void"
	doc [[!
<summary>
```
Another unknown label type...  
GAMEPLAY::_FAA457EF263E8763(a_0, "Thumb_label");  
GAMEPLAY::_FAA457EF263E8763(&a_0._f10, "Photo_label");  
GAMEPLAY::_FAA457EF263E8763(a_0, "GXTlabel");  
GAMEPLAY::_FAA457EF263E8763(&a_0._f21, "StringComp");  
GAMEPLAY::_FAA457EF263E8763(&a_0._f43, "SecondStringComp");  
GAMEPLAY::_FAA457EF263E8763(&a_0._f53, "ThirdStringComp");  
GAMEPLAY::_FAA457EF263E8763(&a_0._f32, "SenderStringComp");  
GAMEPLAY::_FAA457EF263E8763(&a_0._f726[v_1A/*16*/], &v_20); // where v_20 is "LastJobTL_0_1" thru "LastJobTL_2_1", gets saved in a struct called "LAST_JobGamer_TL"  
GAMEPLAY::_FAA457EF263E8763(&a_0._f4B, "PAID_PLAYER");  
GAMEPLAY::_FAA457EF263E8763(&a_0._f5B, "RADIO_STATION");  
```
</summary>
	]]

native "0xFB00CA71DA386228"
    hash "0xFB00CA71DA386228"
	jhash (0x054EC103)
	ns "MISC"
	returns "void"
	doc [[!
	]]

native "0xFB80AB299D2EE1BD"
    hash "0xFB80AB299D2EE1BD"
	arguments {
		Any "p0",
	}
	ns "MISC"
	returns "void"
	doc [[!
	]]

native "NETWORK_SET_SCRIPT_IS_SAFE_FOR_NETWORK_GAME"
    hash "0x9243BAC96D64C050"
	jhash (0x878486CE)
	ns "MISC"
	returns "void"
	doc [[!
	]]

native "OVERRIDE_SAVE_HOUSE"
    hash "0x1162EA8AE9D24EEA"
	jhash (0x47436C12)
	arguments {
		BOOL "p0",
		float "p1",
		float "p2",
		float "p3",
		float "p4",
		BOOL "p5",
		float "p6",
		float "p7",
	}
	ns "MISC"
	returns "BOOL"
	doc [[!
	]]

native "POPULATE_NOW"
    hash "0x7472BB270D7B4F3E"
	jhash (0x72C20700)
	ns "MISC"
	returns "void"
	doc [[!
<summary>
```
spawns a few distant/out-of-sight peds, vehicles, animals etc each time it is called  
```
</summary>
	]]

native "REGISTER_BOOL_TO_SAVE"
    hash "0xC8F4131414C835A1"
	jhash (0x5417E0E0)
	arguments {
		AnyPtr "p0",
		charPtr "name",
	}
	ns "MISC"
	returns "void"
	doc [[!
	]]

native "REGISTER_ENUM_TO_SAVE"
    hash "0x10C2FA78D0E128A1"
	jhash (0x9B38374A)
	arguments {
		AnyPtr "p0",
		charPtr "name",
	}
	ns "MISC"
	returns "void"
	doc [[!
	]]

native "REGISTER_FLOAT_TO_SAVE"
    hash "0x7CAEC29ECB5DFEBB"
	jhash (0xDB06F7AD)
	arguments {
		AnyPtr "p0",
		charPtr "name",
	}
	ns "MISC"
	returns "void"
	doc [[!
	]]

native "REGISTER_INT_TO_SAVE"
    hash "0x34C9EE5986258415"
	jhash (0xB930956F)
	arguments {
		AnyPtr "p0",
		charPtr "name",
	}
	ns "MISC"
	returns "void"
	doc [[!
	]]

native "REGISTER_SAVE_HOUSE"
    hash "0xC0714D0A7EEECA54"
	jhash (0x39C1849A)
	arguments {
		float "p0",
		float "p1",
		float "p2",
		float "p3",
		AnyPtr "p4",
		Any "p5",
		Any "p6",
	}
	ns "MISC"
	returns "Any"
	doc [[!
	]]

native "REGISTER_TEXT_LABEL_TO_SAVE"
    hash "0xEDB1232C5BEAE62F"
	jhash (0x284352C4)
	arguments {
		AnyPtr "p0",
		charPtr "name",
	}
	ns "MISC"
	returns "void"
	doc [[!
	]]

native "_REMOVE_STEALTH_KILL"
    hash "0xA6A12939F16D85BE"
	jhash (0x42B484ED)
	arguments {
		Hash "hash",
		BOOL "p1",
	}
	alias "0xA6A12939F16D85BE"
	ns "MISC"
	returns "void"
	doc [[!
<summary>
```
Appears to remove stealth kill action from memory.  
------------------------------------  
I agree with the above statement.  
p1 is unknown, my best guess would be if false it marks the stealth kill for immediate deletion, or if true marks it for deletion later.  
```
</summary>
	]]

native "REMOVE_DISPATCH_SPAWN_BLOCKING_AREA"
    hash "0x264AC28B01B353A5"
	jhash (0xA8D2FB92)
	arguments {
		Any "p0",
	}
	ns "MISC"
	returns "void"
	doc [[!
	]]

native "RESET_DISPATCH_SPAWN_BLOCKING_AREAS"
    hash "0xAC7BFD5C1D83EA75"
	jhash (0x9A17F835)
	ns "MISC"
	returns "void"
	doc [[!
	]]

native "RESET_DISPATCH_IDEAL_SPAWN_DISTANCE"
    hash "0x77A84429DD9F0A15"
	jhash (0xDA65ECAA)
	ns "MISC"
	returns "void"
	doc [[!
	]]

native "SET_BIT"
    hash "0x933D6A9EEC1BACD0"
	jhash (0x4EFE7E6B)
	arguments {
		intPtr "address",
		int "offset",
	}
	ns "MISC"
	returns "void"
	doc [[!
<summary>
```
This sets bit [offset] of [address] to on.  
The offsets used are different bits to be toggled on and off, typically there is only one address used in a script.  
Example:  
GAMEPLAY::SET_BIT(&bitAddress, 1);  
To check if this bit has been enabled:  
GAMEPLAY::IS_BIT_SET(bitAddress, 1); // will return 1 afterwards  
Please note, this method may assign a value to [address] when used.  
```
</summary>
	]]

native "_RESET_LOCALPLAYER_STATE"
    hash "0xC0AA53F866B3134D"
	jhash (0x5D209F25)
	ns "MISC"
	returns "void"
	doc [[!
<summary>
```
Sets the localplayer playerinfo state back to playing (State 0)  
States are:  
-1: "Invalid"  
0: "Playing"  
1: "Died"  
2: "Arrested"  
3: "Failed Mission"  
4: "Left Game"  
5: "Respawn"  
6: "In MP Cutscene"  
```
</summary>
	]]

native "_SET_CLOUD_HAT_OPACITY"
    hash "0xF36199225D6D8C86"
	arguments {
		float "opacity",
	}
	alias "0xF36199225D6D8C86"
	ns "MISC"
	returns "void"
	doc [[!
	]]

native "SET_BITS_IN_RANGE"
    hash "0x8EF07E15701D61ED"
	jhash (0x32094719)
	arguments {
		intPtr "var",
		int "rangeStart",
		int "rangeEnd",
		int "p3",
	}
	ns "MISC"
	returns "void"
	doc [[!
	]]

native "SET_CREDITS_ACTIVE"
    hash "0xB938B7E6D3C0620C"
	jhash (0xEC2A0ECF)
	arguments {
		BOOL "toggle",
	}
	ns "MISC"
	returns "void"
	doc [[!
	]]

native "_SET_CLOUD_HAT_TRANSITION"
    hash "0xFC4842A34657BFCB"
	jhash (0xED88FC61)
	arguments {
		charPtr "type",
		float "transitionTime",
	}
	ns "MISC"
	returns "void"
	doc [[!
	]]

native "_SET_CUSTOM_RESPAWN_POSITION"
    hash "0x706B5EDCAA7FA663"
	arguments {
		float "x",
		float "y",
		float "z",
		float "heading",
	}
	alias "0x706B5EDCAA7FA663"
	ns "MISC"
	returns "void"
	doc [[!
<summary>
```
Specifies a custom respawn position to be used in conjunction with _SET_NEXT_RESPAWN_TO_CUSTOM  
```
</summary>
	]]

native "SET_DISPATCH_TIME_BETWEEN_SPAWN_ATTEMPTS"
    hash "0x44F7CBC1BEB3327D"
	jhash (0xABADB709)
	arguments {
		Any "p0",
		float "p1",
	}
	ns "MISC"
	returns "void"
	doc [[!
	]]

native "SET_DISPATCH_IDEAL_SPAWN_DISTANCE"
    hash "0x6FE601A64180D423"
	jhash (0x6283BE32)
	arguments {
		float "p0",
	}
	ns "MISC"
	returns "void"
	doc [[!
	]]

native "SET_EXPLOSIVE_MELEE_THIS_FRAME"
    hash "0xFF1BED81BFDC0FE0"
	jhash (0x96663D56)
	arguments {
		Player "player",
	}
	ns "MISC"
	returns "Any"
	doc [[!
	]]

native "SET_DISPATCH_TIME_BETWEEN_SPAWN_ATTEMPTS_MULTIPLIER"
    hash "0x48838ED9937A15D1"
	jhash (0x1C996BCD)
	arguments {
		Any "p0",
		float "p1",
	}
	ns "MISC"
	returns "void"
	doc [[!
	]]

native "SET_FADE_IN_AFTER_DEATH_ARREST"
    hash "0xDA66D2796BA33F12"
	jhash (0xACDE6985)
	arguments {
		BOOL "toggle",
	}
	ns "MISC"
	returns "void"
	doc [[!
<summary>
```
Sets whether the game should fade in after the player dies or is arrested.  
```
</summary>
	]]

native "SET_EXPLOSIVE_AMMO_THIS_FRAME"
    hash "0xA66C71C98D5F2CFB"
	jhash (0x2EAFA1D1)
	arguments {
		Player "player",
	}
	ns "MISC"
	returns "void"
	doc [[!
	]]

native "SET_FADE_OUT_AFTER_DEATH"
    hash "0x4A18E01DF2C87B86"
	jhash (0xC9F6F0BC)
	arguments {
		BOOL "toggle",
	}
	ns "MISC"
	returns "void"
	doc [[!
<summary>
```
Sets whether the game should fade out after the player dies.  
```
</summary>
	]]

native "SET_FADE_IN_AFTER_LOAD"
    hash "0xF3D78F59DFE18D79"
	jhash (0x6E00EB0B)
	arguments {
		BOOL "toggle",
	}
	ns "MISC"
	returns "void"
	doc [[!
	]]

native "SET_FADE_OUT_AFTER_ARREST"
    hash "0x1E0B4DC0D990A4E7"
	jhash (0xCB074B9D)
	arguments {
		BOOL "toggle",
	}
	ns "MISC"
	returns "void"
	doc [[!
<summary>
```
Sets whether the game should fade out after the player is arrested.  
```
</summary>
	]]

native "SET_FAKE_WANTED_LEVEL"
    hash "0x1454F2448DE30163"
	jhash (0x85B1C9FA)
	arguments {
		int "fakeWantedLevel",
	}
	ns "MISC"
	returns "void"
	doc [[!
<summary>
```
Sets a visually fake wanted level on the user interface. Used by Rockstar's scripts to "override" regular wanted levels and make custom ones while the real wanted level and multipliers are ignored.  
Max is 6. Also the mini-map gets the red & blue flashing effect.  
```
</summary>
	]]

native "SET_FIRE_AMMO_THIS_FRAME"
    hash "0x11879CDD803D30F4"
	jhash (0x7C18FC8A)
	arguments {
		Player "player",
	}
	ns "MISC"
	returns "Any"
	doc [[!
	]]

native "SET_GRAVITY_LEVEL"
    hash "0x740E14FAD5842351"
	jhash (0x2D833F4A)
	arguments {
		int "level",
	}
	ns "MISC"
	returns "void"
	doc [[!
<summary>
```
level can be from 0 to 3  
0: 9.8   
1: 2.4   
2: 0.1 - very low  
3: 0.0  
```
</summary>
	]]

native "SET_GAME_PAUSED"
    hash "0x577D1284D6873711"
	jhash (0x8230FF6C)
	arguments {
		BOOL "toggle",
	}
	ns "MISC"
	returns "void"
	doc [[!
<summary>
```
Make sure to call this from the correct thread if you're using multiple threads because all other threads except the one which is calling SET_GAME_PAUSED will be paused which means you will lose control and the game remains in paused mode until you exit GTA5.exe  
```
</summary>
	]]

native "SET_MINIGAME_IN_PROGRESS"
    hash "0x19E00D7322C6F85B"
	jhash (0x348B9046)
	arguments {
		BOOL "toggle",
	}
	ns "MISC"
	returns "void"
	doc [[!
	]]

native "_SET_NEXT_RESPAWN_TO_CUSTOM"
    hash "0xA2716D40842EAF79"
	alias "0xA2716D40842EAF79"
	ns "MISC"
	returns "void"
	doc [[!
<summary>
```
Sets the next spawn location to the position supplied to _SET_CUSTOM_RESPAWN_POSITION.  
```
</summary>
	]]

native "SET_MISSION_FLAG"
    hash "0xC4301E5121A0ED73"
	jhash (0x57592D52)
	arguments {
		BOOL "toggle",
	}
	ns "MISC"
	returns "void"
	doc [[!
<summary>
```
If true, the player can't save the game.   
If the parameter is true, sets the mission flag to true, if the parameter is false, the function does nothing at all.  
^ also, if the mission flag is already set, the function does nothing at all  
```
</summary>
	]]

native "SET_OVERRIDE_WEATHER"
    hash "0xA43D5C6FE51ADBEF"
	jhash (0xD9082BB5)
	arguments {
		charPtr "weatherType",
	}
	ns "MISC"
	returns "void"
	doc [[!
<summary>
```
Appears to have an optional bool parameter that is unused in the scripts.  
If you pass true, something will be set to zero.  
```
</summary>
	]]

native "SET_RANDOM_EVENT_FLAG"
    hash "0x971927086CFD2158"
	jhash (0xA77F31E8)
	arguments {
		Any "p0",
	}
	ns "MISC"
	returns "void"
	doc [[!
<summary>
```
If the parameter is true, sets the random event flag to true, if the parameter is false, the function does nothing at all.  
Does nothing if the mission flag is set.  
```
</summary>
	]]

native "_SET_RAIN_FX_INTENSITY"
    hash "0x643E26EA6E024D92"
	arguments {
		float "intensity",
	}
	ns "MISC"
	returns "void"
	doc [[!
<summary>
Controls rain, rain sounds and the creation of puddles.

With an `intensity` higher than `0.5f`, only the creation of puddles gets faster, rain and rain sound won't increase after that.

With an `intensity` of `0.0f` rain and rain sounds are disabled and there won't be any new puddles.

To use the rain intensity of the current weather, call this native with `-1f` as `intensity`.
</summary>
<param name="intensity">Strength of rain effects</param>
	]]

native "SET_RANDOM_SEED"
    hash "0x444D98F98C11F3EC"
	jhash (0xDB3FEB5C)
	arguments {
		int "time",
	}
	ns "MISC"
	returns "void"
	doc [[!
	]]

native "SET_SAVE_HOUSE"
    hash "0x4F548CABEAE553BC"
	jhash (0xC3240BB4)
	arguments {
		Any "p0",
		BOOL "p1",
		BOOL "p2",
	}
	ns "MISC"
	returns "void"
	doc [[!
	]]

native "SET_SUPER_JUMP_THIS_FRAME"
    hash "0x57FFF03E423A4C0B"
	jhash (0x86745EF3)
	arguments {
		Player "player",
	}
	ns "MISC"
	returns "int"
	doc [[!
	]]

native "SET_RANDOM_WEATHER_TYPE"
    hash "0x8B05F884CF7E8020"
	jhash (0xE7AA1BC9)
	ns "MISC"
	returns "void"
	doc [[!
	]]

native "SET_THIS_SCRIPT_CAN_REMOVE_BLIPS_CREATED_BY_ANY_SCRIPT"
    hash "0xB98236CAAECEF897"
	jhash (0xD06F1720)
	arguments {
		BOOL "toggle",
	}
	ns "MISC"
	returns "void"
	doc [[!
	]]

native "SET_SAVE_MENU_ACTIVE"
    hash "0xC9BF75D28165FF77"
	jhash (0xF5CCF164)
	arguments {
		BOOL "unk",
	}
	ns "MISC"
	returns "void"
	doc [[!
<summary>
```
The bool is not a toggle!!!  
```
</summary>
	]]

native "_SET_UNK_MAP_FLAG"
    hash "0xC5F0A8EBD3F361CE"
	jhash (0xE202879D)
	arguments {
		int "flag",
	}
	ns "MISC"
	returns "void"
	doc [[!
<summary>
```
Sets an unknown flag used by CScene in determining which entities from CMapData scene nodes to draw, similar to 9BAE5AD2508DF078.  
Documented by NTAuthority (http://fivem.net/).  
```
</summary>
	]]

native "SET_WEATHER_TYPE_NOW"
    hash "0x29B487C359E19889"
	jhash (0x361E9EAC)
	arguments {
		charPtr "weatherType",
	}
	ns "MISC"
	returns "void"
	doc [[!
<summary>
```
The following weatherTypes are used in the scripts:  
"CLEAR"  
"EXTRASUNNY"  
"CLOUDS"  
"OVERCAST"  
"RAIN"  
"CLEARING"  
"THUNDER"  
"SMOG"  
"FOGGY"  
"XMAS"  
"SNOWLIGHT"  
"BLIZZARD"  
```
</summary>
	]]

native "SET_THIS_SCRIPT_CAN_BE_PAUSED"
    hash "0xAA391C728106F7AF"
	jhash (0xA0C3CE29)
	arguments {
		BOOL "toggle",
	}
	ns "MISC"
	returns "void"
	doc [[!
	]]

native "_SET_WEATHER_TYPE_OVER_TIME"
    hash "0xFB5045B7C42B75BF"
	jhash (0x386F0D25)
	arguments {
		charPtr "weatherType",
		float "time",
	}
	ns "MISC"
	returns "void"
	doc [[!
	]]

native "SET_TIME_SCALE"
    hash "0x1D408577D440E81E"
	jhash (0xA7F84694)
	arguments {
		float "time",
	}
	ns "MISC"
	returns "void"
	doc [[!
<summary>
```
Maximum value is 1.  
At a value of 0 the game will still run at a minimum time scale.  
Slow Motion 1: 0.6  
Slow Motion 2: 0.4  
Slow Motion 3: 0.2  
```
</summary>
	]]

native "_SET_WEATHER_TYPE_TRANSITION"
    hash "0x578C752848ECFA0C"
	jhash (0x5CA74040)
	arguments {
		Hash "weatherType1",
		Hash "weatherType2",
		float "percentWeather2",
	}
	ns "MISC"
	returns "void"
	doc [[!
<summary>
```
Mixes two weather types. If percentWeather2 is set to 0.0f, then the weather will be entirely of weatherType1, if it is set to 1.0f it will be entirely of weatherType2. If it's set somewhere in between, there will be a mixture of weather behaviors. To test, try this in the RPH console, and change the float to different values between 0 and 1:  
execute "NativeFunction.Natives.x578C752848ECFA0C(Game.GetHashKey(""RAIN""), Game.GetHashKey(""SMOG""), 0.50f);  
Note that unlike most of the other weather natives, this native takes the hash of the weather name, not the plain string. These are the weather names and their hashes:  
CLEAR	0x36A83D84  
EXTRASUNNY	0x97AA0A79  
CLOUDS	0x30FDAF5C  
OVERCAST	0xBB898D2D  
RAIN	0x54A69840  
CLEARING	0x6DB1A50D  
THUNDER	0xB677829F  
SMOG	0x10DCF4B5  
FOGGY	0xAE737644  
XMAS	0xAAC9C895  
SNOWLIGHT	0x23FB812B  
BLIZZARD	0x27EA2814  
/* OLD INVALID INFO BELOW */  
Not tested. Based purely on disassembly. Instantly sets the weather to sourceWeather, then transitions to targetWeather over the specified transitionTime in seconds.  
If an invalid hash is specified for sourceWeather, the current weather type will be used.  
If an invalid hash is specified for targetWeather, the next weather type will be used.  
If an invalid hash is specified for both sourceWeather and targetWeather, the function just changes the transition time of the current transition.  
```
</summary>
	]]

native "SET_WEATHER_TYPE_NOW_PERSIST"
    hash "0xED712CA327900C8A"
	jhash (0xC869FE97)
	arguments {
		charPtr "weatherType",
	}
	ns "MISC"
	returns "void"
	doc [[!
<summary>
```
The following weatherTypes are used in the scripts:  
"CLEAR"  
"EXTRASUNNY"  
"CLOUDS"  
"OVERCAST"  
"RAIN"  
"CLEARING"  
"THUNDER"  
"SMOG"  
"FOGGY"  
"XMAS"  
"SNOWLIGHT"  
"BLIZZARD"  
```
</summary>
	]]

native "SET_WIND_SPEED"
    hash "0xEE09ECEDBABE47FC"
	jhash (0x45705F94)
	arguments {
		float "speed",
	}
	ns "MISC"
	returns "void"
	doc [[!
<summary>
```
Using this native will clamp the wind speed value to a range of 0.0- 12.0. Using SET_WIND sets the same value but without the restriction.  
```
</summary>
	]]

native "SHOOT_SINGLE_BULLET_BETWEEN_COORDS"
    hash "0x867654CBC7606F2C"
	jhash (0xCB7415AC)
	arguments {
		float "x1",
		float "y1",
		float "z1",
		float "x2",
		float "y2",
		float "z2",
		int "damage",
		BOOL "p7",
		Hash "weaponHash",
		Ped "ownerPed",
		BOOL "isAudible",
		BOOL "isInvisible",
		float "speed",
	}
	ns "MISC"
	returns "void"
	doc [[!
<summary>
```
this is what p7 does in disassembly  
__int8 var = 32;  
if (isInvisible)  
{  
   var = 16;  
}  
int v110 = var | 2 * p7;  
```
</summary>
	]]

native "SET_WEATHER_TYPE_PERSIST"
    hash "0x704983DF373B198F"
	jhash (0xC6C04C75)
	arguments {
		charPtr "weatherType",
	}
	ns "MISC"
	returns "void"
	doc [[!
<summary>
```
The following weatherTypes are used in the scripts:  
"CLEAR"  
"EXTRASUNNY"  
"CLOUDS"  
"OVERCAST"  
"RAIN"  
"CLEARING"  
"THUNDER"  
"SMOG"  
"FOGGY"  
"XMAS"  
"SNOWLIGHT"  
"BLIZZARD"  
```
</summary>
	]]

native "_SHOOT_SINGLE_BULLET_BETWEEN_COORDS_PRESET_PARAMS"
    hash "0xE3A7742E0B7A2F8B"
	jhash (0x52ACCB7B)
	arguments {
		float "x1",
		float "y1",
		float "z1",
		float "x2",
		float "y2",
		float "z2",
		int "damage",
		BOOL "p7",
		Hash "weaponHash",
		Ped "ownerPed",
		BOOL "isAudible",
		BOOL "isInvisible",
		float "speed",
		Entity "entity",
	}
	alias "0xE3A7742E0B7A2F8B"
	ns "MISC"
	returns "void"
	doc [[!
<summary>
```
entity - entity to ignore  
```
</summary>
	]]

native "SET_WIND"
    hash "0xAC3A74E8384A9919"
	jhash (0xC6294698)
	arguments {
		float "speed",
	}
	ns "MISC"
	returns "void"
	doc [[!
<summary>
```
Sets the the raw wind speed value.  
```
</summary>
	]]

native "SET_WIND_DIRECTION"
    hash "0xEB0F4468467B4528"
	jhash (0x381AEEE9)
	arguments {
		float "direction",
	}
	ns "MISC"
	returns "void"
	doc [[!
<summary>
```
This is NOT a heading. It's a FLOAT value from 0.0-7.0. Look at this image:  
i.imgur.com/FwVpGS6.png  
----------------------------  
This appears to be a heading, in radians (0-2*pi) -PNWParksFan  
```
</summary>
	]]

native "_SHOW_PED_IN_PAUSE_MENU"
    hash "0x4EBB7E87AA0DBED4"
	arguments {
		BOOL "toggle",
	}
	alias "0x4EBB7E87AA0DBED4"
	ns "MISC"
	returns "void"
	doc [[!
<summary>
```
If toggle is true, the ped's head is shown in the pause menu  
If toggle is false, the ped's head is not shown in the pause menu  
```
</summary>
	]]

native "_START_SAVE_ARRAY"
    hash "0x60FE567DF1B1AF9D"
	jhash (0x893A342C)
	arguments {
		AnyPtr "p0",
		int "p1",
		charPtr "arrayName",
	}
	ns "MISC"
	returns "void"
	doc [[!
<summary>
```
Second parameter might be length.  
```
</summary>
	]]

native "_SHOOT_SINGLE_BULLET_BETWEEN_COORDS_WITH_EXTRA_PARAMS"
    hash "0xBFE5756E7407064A"
	arguments {
		float "x1",
		float "y1",
		float "z1",
		float "x2",
		float "y2",
		float "z2",
		int "damage",
		BOOL "p7",
		Hash "weaponHash",
		Ped "ownerPed",
		BOOL "isAudible",
		BOOL "isInvisible",
		float "speed",
		Entity "entity",
		BOOL "p14",
		BOOL "p15",
		BOOL "p16",
		BOOL "p17",
	}
	alias "0xBFE5756E7407064A"
	ns "MISC"
	returns "void"
	doc [[!
<summary>
```
Since latest patches has 18 parameters.  
Console Hash: 0xCCDC33CC  
entity - entity to ignore  
```
</summary>
	]]

native "_START_SAVE_STRUCT"
    hash "0xBF737600CDDBEADD"
	jhash (0xFB45728E)
	arguments {
		AnyPtr "p0",
		int "p1",
		charPtr "structName",
	}
	ns "MISC"
	returns "void"
	doc [[!
<summary>
```
Second parameter might be length.  
```
</summary>
	]]

native "SHOULD_USE_METRIC_MEASUREMENTS"
    hash "0xD3D15555431AB793"
	jhash (0xBAF17315)
	alias "0xD3D15555431AB793"
	alias "_IS_GAME_USING_METRIC_MEASUREMENT_SYSTEM"
	ns "MISC"
	returns "BOOL"
	doc [[!
<summary>
Returns true if the game is using the metric measurement system, false if imperial is used.
This is what r\* uses for the different label types (either ones with miles in them or with km, as well as some other measurement related labels).
</summary>
<returns>Returns true if the game is using the metric measurement system, false if imperial is used.</returns>
	]]

native "STOP_SAVE_DATA"
    hash "0x74E20C9145FB66FD"
	jhash (0x3B1C07C8)
	ns "MISC"
	returns "void"
	doc [[!
	]]

native "START_SAVE_DATA"
    hash "0xA9575F812C6A7997"
	jhash (0x881A694D)
	arguments {
		AnyPtr "p0",
		Any "p1",
		BOOL "p2",
	}
	ns "MISC"
	returns "void"
	doc [[!
	]]

native "STOP_SAVE_STRUCT"
    hash "0xEB1774DF12BB9F12"
	jhash (0xC2624A28)
	ns "MISC"
	returns "void"
	doc [[!
	]]

native "STOP_SAVE_ARRAY"
    hash "0x04456F95153C6BE4"
	jhash (0x0CAD8217)
	ns "MISC"
	returns "void"
	doc [[!
	]]

native "TAN"
    hash "0x632106CC96E82E91"
	jhash (0xD320CE5E)
	arguments {
		float "p0",
	}
	ns "MISC"
	returns "float"
	doc [[!
<summary>
```
Returns tangent value of p0.  
```
</summary>
	]]

native "UPDATE_ONSCREEN_KEYBOARD"
    hash "0x0CF2B696BBF945AE"
	jhash (0x23D0A1CE)
	ns "MISC"
	returns "int"
	doc [[!
<summary>
```
Returns the current status of the onscreen keyboard, and updates the output.  
Status Codes:  
0 - User still editing  
1 - User has finished editing  
2 - User has canceled editing  
3 - Keyboard isn't active  
```
</summary>
	]]

native "STRING_TO_INT"
    hash "0x5A5F40FE637EB584"
	jhash (0x590A8160)
	arguments {
		charPtr "string",
		intPtr "outInteger",
	}
	ns "MISC"
	returns "BOOL"
	doc [[!
<summary>
```
Returns false if it's a null or empty string or if the string is too long. outInteger will be set to -999 in that case.  
If all checks have passed successfully, the return value will be set to whatever strtol(string, 0i64, 10); returns.  
```
</summary>
	]]

native "TERMINATE_ALL_SCRIPTS_WITH_THIS_NAME"
    hash "0x9DC711BC69C548DF"
	jhash (0x9F861FD4)
	arguments {
		charPtr "scriptName",
	}
	ns "MISC"
	returns "void"
	doc [[!
<summary>
```
For a full list, see here: pastebin.com/yLNWicUi  
```
</summary>
	]]

native "USING_MISSION_CREATOR"
    hash "0xF14878FC50BEC6EE"
	jhash (0x20AB0B6B)
	arguments {
		BOOL "toggle",
	}
	ns "MISC"
	returns "void"
	doc [[!
<summary>
```
Hash collision  
If this is a hash collision, it's a very lucky one. It does seem strangely named but it is used to toggle the mission creator mode.  
```
</summary>
	]]

native "_USE_FREEMODE_MAP_BEHAVIOR"
    hash "0x9BAE5AD2508DF078"
	jhash (0x721B2492)
	arguments {
		BOOL "toggle",
	}
	alias "_ENABLE_MP_DLC_MAPS"
	ns "MISC"
	returns "void"
	doc [[!
<summary>
```
Formerly known as _LOWER_MAP_PROP_DENSITY and wrongly due to idiots as _ENABLE_MP_DLC_MAPS.  
Sets the maximum prop density and changes a loading screen flag from 'loading story mode' to 'loading GTA Online'. Does not touch DLC map data at all.  
In fact, I doubt this changes the flag whatsoever, that's the OTHER native idiots use together with this that does so, this one only causes a loading screen to show as it reloads map data.  
------------------------  
While you're going on your rant about other "idiots" can you please supply the name of the "other native" for us "idiots" who'd like to actually learn about loading IPL's? Thank, you.  
```
</summary>
	]]

native "0x497420E022796B3F"
    hash "0x497420E022796B3F"
	ns "LOCALE"
	returns "Any"
	doc [[!
	]]

native "CAN_PHONE_BE_SEEN_ON_SCREEN"
    hash "0xC4E2813898C97A4B"
	jhash (0x5F978584)
	ns "MOBILE"
	returns "BOOL"
	doc [[!
<summary>
```
This one is weird and seems to return a TRUE state regardless of whether the phone is visible on screen or tucked away.  
I can confirm the above. This function is hard-coded to always return 1.  
```
</summary>
	]]

native "CELL_CAM_IS_CHAR_VISIBLE_NO_FACE_CHECK"
    hash "0x439E9BC95B7E7FBE"
	jhash (0xBEA88097)
	arguments {
		Entity "entity",
	}
	ns "MOBILE"
	returns "BOOL"
	doc [[!
<summary>
```
hash collision???  
```
</summary>
	]]

native "CELL_CAM_ACTIVATE"
    hash "0xFDE8F069C542D126"
	jhash (0x234C1AE9)
	arguments {
		BOOL "p0",
		BOOL "p1",
	}
	ns "MOBILE"
	returns "void"
	doc [[!
	]]

native "CREATE_MOBILE_PHONE"
    hash "0xA4E8E696C532FBC7"
	jhash (0x5BBC5E23)
	arguments {
		int "p3",
	}
	ns "MOBILE"
	returns "void"
	doc [[!
<summary>
```
Creates a mobile phone of the specified type.  
Possible phone types:  
0 - Default phone / Michael's phone  
1 - Trevor's phone  
2 - Franklin's phone  
4 - Prologue phone  
These values represent bit flags, so a value of '3' would toggle Trevor and Franklin's phones together, causing unexpected behavior and most likely crash the game.  
```
</summary>
	]]

native "_DISABLE_PHONE_THIS_FRAME"
    hash "0x015C49A93E3E086E"
	jhash (0x4479B304)
	arguments {
		BOOL "toggle",
	}
	alias "0x015C49A93E3E086E"
	ns "MOBILE"
	returns "void"
	doc [[!
<summary>
```
Disables the phone up-button, oddly enough.   
i.e.: When the phone is out, and this method is called with false as it's parameter, the phone will not be able to scroll up. However, when you use the down arrow key, it's functionality still, works on the phone.   
When the phone is not out, and this method is called with false as it's parameter, you will not be able to bring up the phone. Although the up arrow key still works for whatever functionality it's used for, just not for the phone.  
This can be used for creating menu's when trying to disable the phone from being used.   
You do not have to call the function again with false as a parameter, as soon as the function stops being called, the phone will again be usable.  
```
</summary>
	]]

native "DESTROY_MOBILE_PHONE"
    hash "0x3BC861DF703E5097"
	jhash (0x1A65037B)
	ns "MOBILE"
	returns "void"
	doc [[!
<summary>
```
Destroys the currently active mobile phone.  
```
</summary>
	]]

native "GET_MOBILE_PHONE_POSITION"
    hash "0x584FDFDA48805B86"
	jhash (0xB2E1E1A0)
	arguments {
		Vector3Ptr "position",
	}
	ns "MOBILE"
	returns "void"
	doc [[!
	]]

native "GET_MOBILE_PHONE_ROTATION"
    hash "0x1CEFB61F193070AE"
	jhash (0x17A29F23)
	arguments {
		Vector3Ptr "rotation",
		Vehicle "p1",
	}
	ns "MOBILE"
	returns "void"
	doc [[!
	]]

native "GET_MOBILE_PHONE_RENDER_ID"
    hash "0xB4A53E05F68B6FA1"
	jhash (0x88E4FECE)
	arguments {
		intPtr "renderId",
	}
	ns "MOBILE"
	returns "void"
	doc [[!
	]]

native "_MOVE_FINGER"
    hash "0x95C9E72F3D7DEC9B"
	arguments {
		int "direction",
	}
	ns "MOBILE"
	returns "void"
	doc [[!
<summary>
```
For move the finger of player, the value of int goes 1 at 5.  
```
</summary>
	]]

native "0x15E69E2802C24B8D"
    hash "0x15E69E2802C24B8D"
	arguments {
		float "p0",
	}
	ns "MOBILE"
	returns "void"
	doc [[!
	]]

native "0x1B0B4AEED5B9B41C"
    hash "0x1B0B4AEED5B9B41C"
	arguments {
		float "p0",
	}
	ns "MOBILE"
	returns "void"
	doc [[!
	]]

native "0x3117D84EFA60F77B"
    hash "0x3117D84EFA60F77B"
	arguments {
		float "p0",
	}
	ns "MOBILE"
	returns "void"
	doc [[!
	]]

native "0x466DA42C89865553"
    hash "0x466DA42C89865553"
	jhash (0x66DCD9D2)
	arguments {
		float "p0",
	}
	ns "MOBILE"
	returns "void"
	doc [[!
	]]

native "0x375A706A5C2FD084"
    hash "0x375A706A5C2FD084"
	arguments {
		Any "p0",
	}
	ns "MOBILE"
	returns "void"
	doc [[!
	]]

native "0xA2CCBE62CD4C91A4"
    hash "0xA2CCBE62CD4C91A4"
	jhash (0xC273BB4D)
	arguments {
		intPtr "toggle",
	}
	ns "MOBILE"
	returns "void"
	doc [[!
<summary>
```
Needs more research. If the "phone_cam12" filter is applied, this function is called with "TRUE"; otherwise, "FALSE".  
Example (XBOX 360):  
// check current filter selection  
if (GAMEPLAY::ARE_STRINGS_EQUAL(getElem(g_2471024, &l_17, 4), "phone_cam12") != 0)  
{  
    MOBILE::_0xC273BB4D(0); // FALSE  
}  
else  
{  
    MOBILE::_0xC273BB4D(1); // TRUE  
}  
```
</summary>
	]]

native "0x53F4892D18EC90A4"
    hash "0x53F4892D18EC90A4"
	arguments {
		float "p0",
	}
	ns "MOBILE"
	returns "void"
	doc [[!
	]]

native "0xAC2890471901861C"
    hash "0xAC2890471901861C"
	arguments {
		float "p0",
	}
	ns "MOBILE"
	returns "void"
	doc [[!
	]]

native "0xD6ADE981781FCA09"
    hash "0xD6ADE981781FCA09"
	arguments {
		float "p0",
	}
	ns "MOBILE"
	returns "void"
	doc [[!
	]]

native "0xF1E22DC13F5EEBAD"
    hash "0xF1E22DC13F5EEBAD"
	arguments {
		float "p0",
	}
	ns "MOBILE"
	returns "void"
	doc [[!
	]]

native "_NETWORK_SHOP_DOES_ITEM_EXIST"
    hash "0xBD4D7EAF8A30F637"
	arguments {
		charPtr "name",
	}
	alias "0xBD4D7EAF8A30F637"
	alias "_NETWORK_SHOP_IS_ITEM_UNLOCKED"
	ns "MOBILE"
	returns "BOOL"
	doc [[!
<summary>
```
Belongs in UNK3, non-hashed version of 0x247F0F73A182EA0B  
```
</summary>
	]]

native "SCRIPT_IS_MOVING_MOBILE_PHONE_OFFSCREEN"
    hash "0xF511F759238A5122"
	jhash (0x29828690)
	arguments {
		BOOL "toggle",
	}
	ns "MOBILE"
	returns "void"
	doc [[!
<summary>
```
If bool Toggle = true so the mobile is hide to screen.  
If bool Toggle = false so the mobile is show to screen.  
```
</summary>
	]]

native "_NETWORK_SHOP_DOES_ITEM_EXIST_HASH"
    hash "0x247F0F73A182EA0B"
	arguments {
		Hash "hash",
	}
	alias "0x247F0F73A182EA0B"
	alias "_NETWORK_SHOP_IS_ITEM_UNLOCKED_HASH"
	ns "MOBILE"
	returns "BOOL"
	doc [[!
<summary>
```
ex.:  
v_15 = sub_10cc8(VEHICLE::GET_VEHICLE_WHEEL_TYPE(a_2));  
if (!MOBILE::_247F0F73A182EA0B(v_15)) {  
    return 1;  
}  
Belongs in UNK3, hashed version of 0xBD4D7EAF8A30F637  
```
</summary>
	]]

native "SET_MOBILE_PHONE_POSITION"
    hash "0x693A5C6D6734085B"
	jhash (0x841800B3)
	arguments {
		float "posX",
		float "posY",
		float "posZ",
	}
	ns "MOBILE"
	returns "void"
	doc [[!
	]]

native "SET_MOBILE_PHONE_SCALE"
    hash "0xCBDD322A73D6D932"
	jhash (0x09BCF1BE)
	arguments {
		float "scale",
	}
	ns "MOBILE"
	returns "void"
	doc [[!
<summary>
```
The minimum/default is 500.0f. If you plan to make it bigger set it's position as well. Also this seems to need to be called in a loop as when you close the phone the scale is reset. If not in a loop you'd need to call it everytime before you re-open the phone.  
```
</summary>
	]]

native "SET_MOBILE_PHONE_ROTATION"
    hash "0xBB779C0CA917E865"
	jhash (0x209C28CF)
	arguments {
		float "rotX",
		float "rotY",
		float "rotZ",
		Any "p3",
	}
	ns "MOBILE"
	returns "void"
	doc [[!
<summary>
```
Last parameter is unknown and always zero.  
```
</summary>
	]]

native "_SET_PHONE_LEAN"
    hash "0x44E44169EF70138E"
	arguments {
		BOOL "Toggle",
	}
	ns "MOBILE"
	returns "void"
	doc [[!
<summary>
```
if the bool "Toggle" is "true" so the phone is lean.  
if the bool "Toggle" is "false" so the phone is not lean.  
```
</summary>
	]]

native "0x0395CB47B022E62C"
    hash "0x0395CB47B022E62C"
	arguments {
		AnyPtr "p0",
	}
	ns "NETSHOP"
	returns "BOOL"
	doc [[!
	]]

native "_GET_ONLINE_VERSION"
    hash "0xFCA9373EF340AC0A"
	alias "_GET_GAME_VERSION"
	ns "NETSHOP"
	returns "charPtr"
	doc [[!
<summary>
```
Online version is defined here: update\update.rpf\common\data\version.txt  
Example:  
[ONLINE_VERSION_NUMBER]  
1.33  
_GET_ONLINE_VERSION() will return "1.33"  
Belongs in NETWORK  
```
</summary>
	]]

native "0x0A6D923DFFC9BD89"
    hash "0x0A6D923DFFC9BD89"
	ns "NETSHOP"
	returns "Any"
	doc [[!
	]]

native "0x23789E777D14CE44"
    hash "0x23789E777D14CE44"
	ns "NETSHOP"
	returns "Any"
	doc [[!
	]]

native "0x170910093218C8B9"
    hash "0x170910093218C8B9"
	arguments {
		AnyPtr "p0",
	}
	ns "NETSHOP"
	returns "BOOL"
	doc [[!
	]]

native "0x357B152EF96C30B6"
    hash "0x357B152EF96C30B6"
	ns "NETSHOP"
	returns "Any"
	doc [[!
	]]

native "0x2B949A1E6AEC8F6A"
    hash "0x2B949A1E6AEC8F6A"
	ns "NETSHOP"
	returns "Any"
	doc [[!
	]]

native "0x35A1B3E1D1315CFA"
    hash "0x35A1B3E1D1315CFA"
	arguments {
		BOOL "p0",
		BOOL "p1",
	}
	ns "NETSHOP"
	returns "BOOL"
	doc [[!
	]]

native "0x51F1A8E48C3D2F6D"
    hash "0x51F1A8E48C3D2F6D"
	arguments {
		Any "p0",
		BOOL "p1",
		Any "p2",
	}
	ns "NETSHOP"
	returns "BOOL"
	doc [[!
	]]

native "0x350AA5EBC03D3BD2"
    hash "0x350AA5EBC03D3BD2"
	ns "NETSHOP"
	returns "Any"
	doc [[!
	]]

native "0x72EB7BA9B69BF6AB"
    hash "0x72EB7BA9B69BF6AB"
	ns "NETSHOP"
	returns "BOOL"
	doc [[!
	]]

native "0x3C4487461E9B0DCB"
    hash "0x3C4487461E9B0DCB"
	ns "NETSHOP"
	returns "Any"
	doc [[!
	]]

native "0x85F6C9ABA1DE2BCF"
    hash "0x85F6C9ABA1DE2BCF"
	ns "NETSHOP"
	returns "Any"
	doc [[!
	]]

native "0x613F125BA3BD2EB9"
    hash "0x613F125BA3BD2EB9"
	ns "NETSHOP"
	returns "Any"
	doc [[!
	]]

native "0xC13C38E47EA5DF31"
    hash "0xC13C38E47EA5DF31"
	arguments {
		AnyPtr "p0",
	}
	ns "NETSHOP"
	returns "BOOL"
	doc [[!
	]]

native "0x74A0FD0688F1EE45"
    hash "0x74A0FD0688F1EE45"
	arguments {
		int "p0",
	}
	ns "NETSHOP"
	returns "int"
	doc [[!
	]]

native "0xCF38DAFBB49EDE5E"
    hash "0xCF38DAFBB49EDE5E"
	arguments {
		AnyPtr "p0",
	}
	ns "NETSHOP"
	returns "BOOL"
	doc [[!
	]]

native "0x897433D292B44130"
    hash "0x897433D292B44130"
	arguments {
		AnyPtr "p0",
		AnyPtr "p1",
	}
	ns "NETSHOP"
	returns "BOOL"
	doc [[!
	]]

native "_NETWORK_SHOP_BASKET_ADD_ITEM"
    hash "0xF30980718C8ED876"
	arguments {
		AnyPtr "p0",
		Any "p1",
	}
	alias "0xF30980718C8ED876"
	ns "NETSHOP"
	returns "BOOL"
	doc [[!
<summary>
```
p0 is pointer to a script array  
```
</summary>
	]]

native "0xE3E5A7C64CA2C6ED"
    hash "0xE3E5A7C64CA2C6ED"
	ns "NETSHOP"
	returns "Any"
	doc [[!
	]]

native "_NETWORK_SHOP_BASKET_END"
    hash "0xA65568121DF2EA26"
	alias "0xA65568121DF2EA26"
	ns "NETSHOP"
	returns "BOOL"
	doc [[!
	]]

native "0xE547E9114277098F"
    hash "0xE547E9114277098F"
	ns "NETSHOP"
	returns "Any"
	doc [[!
	]]

native "_NETWORK_SHOP_BASKET_IS_FULL"
    hash "0x27F76CC6C55AD30E"
	alias "0x27F76CC6C55AD30E"
	ns "NETSHOP"
	returns "Any"
	doc [[!
	]]

native "_NETWORK_SHOP_BASKET_APPLY_SERVER_DATA"
    hash "0xE1A0450ED46A7812"
	arguments {
		Any "p0",
		AnyPtr "p1",
	}
	alias "0xE1A0450ED46A7812"
	ns "NETSHOP"
	returns "BOOL"
	doc [[!
<summary>
```
p0 => unk3::_network_shop_basket_apply_server_data(Global_2590199[iParam0 /*76*/], &uVar6); => script array  
```
</summary>
	]]

native "_NETWORK_SHOP_BEGIN_SERVICE"
    hash "0x3C5FD37B5499582E"
	arguments {
		intPtr "transactionID",
		Hash "p1",
		Hash "transactionHash",
		int "amount",
		Hash "p4",
		int "mode",
	}
	alias "0x3C5FD37B5499582E"
	ns "NETSHOP"
	returns "BOOL"
	doc [[!
<summary>
```
No longer works if you hook it as a stealth money method  
Modes------------------  
1: Wallet  
2: Bank  
4: Bank  
8: Wallet  
Only difference I noticed.  
```
</summary>
	]]

native "_NETWORK_SHOP_BASKET_START"
    hash "0x279F08B1A4B29B7E"
	arguments {
		AnyPtr "p0",
		int "p1",
		int "p2",
		int "p3",
	}
	ns "NETSHOP"
	returns "BOOL"
	doc [[!
	]]

native "_NETWORK_SHOP_CHECKOUT_START"
    hash "0x39BE7CEA8D9CC8E6"
	arguments {
		int "transactionID",
	}
	alias "0x39BE7CEA8D9CC8E6"
	ns "NETSHOP"
	returns "BOOL"
	doc [[!
	]]

native "_NETWORK_SHOP_CASH_TRANSFER_SET_TELEMETRY_NONCE_SEED"
    hash "0x498C1E05CE5F7877"
	alias "0x498C1E05CE5F7877"
	ns "NETSHOP"
	returns "BOOL"
	doc [[!
	]]

native "_NETWORK_SHOP_DELETE_SET_TELEMETRY_NONCE_SEED"
    hash "0x112CEF1615A1139F"
	alias "0x112CEF1615A1139F"
	ns "NETSHOP"
	returns "Any"
	doc [[!
	]]

native "_NETWORK_SHOP_GET_TRANSACTIONS_DISABLED"
    hash "0x810E8431C0614BF9"
	alias "0x810E8431C0614BF9"
	ns "NETSHOP"
	returns "BOOL"
	doc [[!
	]]

native "_NETWORK_SHOP_GET_PRICE"
    hash "0xC27009422FCCA88D"
	arguments {
		Hash "itemHash",
		Hash "hash2",
		BOOL "p2",
	}
	ns "NETSHOP"
	returns "int"
	doc [[!
<summary>
```
bool is always true in game scripts  
```
</summary>
	]]

native "_NETWORK_SHOP_SESSION_APPLY_RECEIVED_DATA"
    hash "0x2F41D51BA3BCD1F1"
	arguments {
		Any "p0",
	}
	alias "0x2F41D51BA3BCD1F1"
	ns "NETSHOP"
	returns "BOOL"
	doc [[!
	]]

native "_NETWORK_SHOP_GET_TRANSACTIONS_ENABLED_FOR_CHARACTER"
    hash "0xB24F0944DA203D9E"
	arguments {
		int "mpChar",
	}
	alias "0xB24F0944DA203D9E"
	ns "NETSHOP"
	returns "BOOL"
	doc [[!
	]]

native "_NETWORK_SHOP_START_SESSION"
    hash "0xA135AC892A58FC07"
	arguments {
		Any "p0",
	}
	alias "0xA135AC892A58FC07"
	ns "NETSHOP"
	returns "BOOL"
	doc [[!
	]]

native "_NETWORK_TRANSFER_BANK_TO_WALLET"
    hash "0xD47A2C1BA117471D"
	arguments {
		int "charStatInt",
		int "amount",
	}
	alias "0xD47A2C1BA117471D"
	ns "NETSHOP"
	returns "BOOL"
	doc [[!
<summary>
```
used in atm_trigger script.  
usage:  
int iVar0;STATS::STAT_GET_INT(GAMEPLAY::GET_HASH_KEY("mpply_last_mp_char"), &iVar0, -1);  
UNK3::_NETWORK_TRANSFER_WALLET_TO_BANK(iVar0, amount);  
used to deposit money into bank from wallet, shows up in transaction log.  
```
</summary>
	]]

native "_NETWORK_SHOP_SET_TELEMETRY_NONCE_SEED"
    hash "0x9507D4271988E1AE"
	arguments {
		Any "p0",
	}
	alias "0x9507D4271988E1AE"
	ns "NETSHOP"
	returns "BOOL"
	doc [[!
	]]

native "_NETWORK_SHOP_TERMINATE_SERVICE"
    hash "0xE2A99A9B524BEFFF"
	arguments {
		int "transactionID",
	}
	alias "0xE2A99A9B524BEFFF"
	alias "_NETWORK_SHOP_END_SERVICE"
	ns "NETSHOP"
	returns "BOOL"
	doc [[!
<summary>
```
Will cancel the transaction  
```
</summary>
	]]

native "_NETWORK_TRANSFER_WALLET_TO_BANK"
    hash "0xC2F7FE5309181C7D"
	arguments {
		int "charStatInt",
		int "amount",
	}
	alias "0xC2F7FE5309181C7D"
	ns "NETSHOP"
	returns "BOOL"
	doc [[!
<summary>
```
used in atm_trigger script.  
usage:  
int iVar0; STATS::STAT_GET_INT(GAMEPLAY::GET_HASH_KEY("mpply_last_mp_char"), &iVar0, -1);  
UNK3::_NETWORK_TRANSFER_BANK_TO_WALLET(iVar0, amount);  
used to withdraw money from bank into wallet, shows up in transaction log.  
```
</summary>
	]]

native "ACTIVATE_DAMAGE_TRACKER_ON_NETWORK_ID"
    hash "0xD45B1FFCCD52FF19"
	jhash (0x95D07BA5)
	arguments {
		int "netID",
		BOOL "p1",
	}
	ns "NETWORK"
	returns "void"
	doc [[!
	]]

native "_CAN_PLAY_ONLINE"
    hash "0x5F91D5D0B36AA310"
	jhash (0x97287D68)
	alias "_IS_PLAYER_BANNED"
	ns "NETWORK"
	returns "BOOL"
	doc [[!
<summary>
```
if(_CAN_PLAY_ONLINE() == 0) means the player is banned(Social Club or Rockstar)  
```
</summary>
	]]

native "BAD_SPORT_PLAYER_LEFT_DETECTED"
    hash "0xEC5E3AF5289DCA81"
	jhash (0x4C2C6B6A)
	arguments {
		intPtr "networkHandle",
		int "event",
		int "amountReceived",
	}
	alias "0xEC5E3AF5289DCA81"
	ns "NETWORK"
	returns "BOOL"
	doc [[!
	]]

native "CAN_REGISTER_MISSION_OBJECTS"
    hash "0x800DD4721A8B008B"
	jhash (0x7F85DFDE)
	arguments {
		int "amount",
	}
	ns "NETWORK"
	returns "BOOL"
	doc [[!
	]]

native "CAN_REGISTER_MISSION_ENTITIES"
    hash "0x69778E7564BADE6D"
	jhash (0x83794008)
	arguments {
		int "ped_amt",
		int "vehicle_amt",
		int "object_amt",
		int "pickup_amt",
	}
	ns "NETWORK"
	returns "BOOL"
	doc [[!
<summary>
```
if (CAN_REGISTER_MISSION_ENTITIES(20, 20, 20, 10))  
{  
}  
```
</summary>
	]]

native "CAN_REGISTER_MISSION_PEDS"
    hash "0xBCBF4FEF9FA5D781"
	jhash (0xCCAA5CE9)
	arguments {
		int "amount",
	}
	ns "NETWORK"
	returns "BOOL"
	doc [[!
	]]

native "_CAN_REGISTER_MISSION_PICKUPS"
    hash "0x0A49D1CB6E34AF72"
	arguments {
		int "p0",
	}
	ns "NETWORK"
	returns "BOOL"
	doc [[!
	]]

native "_DOWNLOAD_CHECK"
    hash "0x4F18196C8D38768D"
	jhash (0xC38E9DB0)
	alias "0x4F18196C8D38768D"
	ns "NETWORK"
	returns "void"
	doc [[!
<summary>
```
Downloads prod.cloud.rockstargames.com/titles/gta5/<platform>/check.json  
```
</summary>
	]]

native "CAN_REGISTER_MISSION_VEHICLES"
    hash "0x7277F1F2E085EE74"
	jhash (0x818B6830)
	arguments {
		int "amount",
	}
	ns "NETWORK"
	returns "BOOL"
	doc [[!
	]]

native "_FACEBOOK_DO_UNK_CHECK"
    hash "0xA75E2B6733DA5142"
	jhash (0x11E8B5CD)
	alias "0xA75E2B6733DA5142"
	ns "NETWORK"
	returns "BOOL"
	doc [[!
	]]

native "_FACEBOOK_IS_AVAILABLE"
    hash "0x43865688AE10F0D7"
	jhash (0x429AEAB3)
	alias "0x43865688AE10F0D7"
	ns "NETWORK"
	returns "BOOL"
	doc [[!
	]]

native "_FACEBOOK_IS_SENDING_DATA"
    hash "0x62B9FEC9A11F10EF"
	jhash (0x37A28C26)
	alias "0x62B9FEC9A11F10EF"
	ns "NETWORK"
	returns "BOOL"
	doc [[!
	]]

native "_FACEBOOK_SET_CREATE_CHARACTER_COMPLETE"
    hash "0xDC48473142545431"
	jhash (0x02DAD93F)
	alias "0xDC48473142545431"
	ns "NETWORK"
	returns "BOOL"
	doc [[!
<summary>
```
GTA Online character creation  
```
</summary>
	]]

native "_FACEBOOK_SET_MILESTONE_COMPLETE"
    hash "0x0AE1F1653B554AB9"
	jhash (0x2D947814)
	arguments {
		int "milestoneId",
	}
	alias "0x0AE1F1653B554AB9"
	ns "NETWORK"
	returns "BOOL"
	doc [[!
<summary>
```
milestoneId:  
0 = "percentcomplete"  
1 = "storycomplete"  
2 = "vehicles"  
3 = "properties"  
4 = "psych"  
5 = "mapreveal"  
6 = "prologue"  
```
</summary>
	]]

native "_FACEBOOK_SET_HEIST_COMPLETE"
    hash "0x098AB65B9ED9A9EC"
	jhash (0x30B51753)
	arguments {
		charPtr "heistName",
		int "cashEarned",
		int "xpEarned",
	}
	alias "0x098AB65B9ED9A9EC"
	ns "NETWORK"
	returns "BOOL"
	doc [[!
	]]

native "FILLOUT_PM_PLAYER_LIST_WITH_NAMES"
    hash "0x716B6DB9D1886106"
	jhash (0xB8DF604E)
	arguments {
		AnyPtr "p0",
		AnyPtr "p1",
		Any "p2",
		Any "p3",
	}
	ns "NETWORK"
	returns "BOOL"
	doc [[!
	]]

native "FADE_OUT_LOCAL_PLAYER"
    hash "0x416DBD4CD6ED8DD2"
	jhash (0x8FA7CEBD)
	arguments {
		BOOL "p0",
	}
	ns "NETWORK"
	returns "void"
	doc [[!
<summary>
```
Hardcoded to not work in SP.  
```
</summary>
	]]

native "GET_CLOUD_TIME_AS_INT"
    hash "0x9A73240B49945C76"
	jhash (0xF2FDF2E0)
	alias "0x9A73240B49945C76"
	ns "NETWORK"
	returns "int"
	doc [[!
<summary>
Returns POSIX timestamp.

Renamed from `_GET_POSIX_TIME` to `GET_CLOUD_TIME_AS_INT` because of conflicting native names ([`0xDA488F299A5B164E`](#_0xDA488F299A5B164E))
</summary>
<returns>An int representing the cloud time.</returns>
	]]

native "_GET_CONTENT_CATEGORY"
    hash "0xA7BAB11E7C9C6C5A"
	jhash (0x5E8A7559)
	arguments {
		int "p0",
	}
	alias "0xA7BAB11E7C9C6C5A"
	ns "NETWORK"
	returns "int"
	doc [[!
	]]

native "FILLOUT_PM_PLAYER_LIST"
    hash "0xCBBD7C4991B64809"
	jhash (0xCE40F423)
	arguments {
		intPtr "networkHandle",
		Any "p1",
		Any "p2",
	}
	ns "NETWORK"
	returns "BOOL"
	doc [[!
	]]

native "_GET_CONTENT_ID"
    hash "0x55AA95F481D694D2"
	jhash (0x331AEABF)
	arguments {
		Any "p0",
	}
	alias "0x55AA95F481D694D2"
	ns "NETWORK"
	returns "charPtr"
	doc [[!
<summary>
```
Return the mission id of a job.  
```
</summary>
	]]

native "_GET_CONTENT_DESCRIPTION_HASH"
    hash "0x7CF0448787B23758"
	jhash (0x91534C6E)
	arguments {
		Any "p0",
	}
	alias "0x7CF0448787B23758"
	ns "NETWORK"
	returns "int"
	doc [[!
	]]

native "GET_NETWORK_TIME"
    hash "0x7A5487FE9FAA6B48"
	jhash (0x998103C2)
	ns "NETWORK"
	returns "int"
	doc [[!
	]]

native "_GET_CONTENT_FILE_VERSION"
    hash "0x37025B27D9B658B1"
	jhash (0xFF7D44E6)
	arguments {
		Any "p0",
		Any "p1",
	}
	alias "0x37025B27D9B658B1"
	ns "NETWORK"
	returns "Any"
	doc [[!
	]]

native "_GET_NUM_MEMBERSHIP_DESC"
    hash "0x1F471B79ACC90BEF"
	jhash (0x807B3450)
	alias "0x1F471B79ACC90BEF"
	ns "NETWORK"
	returns "int"
	doc [[!
	]]

native "_GET_DATE_AND_TIME_FROM_UNIX_EPOCH"
    hash "0xAC97AF97FA68E5D5"
	jhash (0xBB7CCE49)
	arguments {
		int "unixEpoch",
		AnyPtr "timeStructure",
	}
	ns "NETWORK"
	returns "void"
	doc [[!
<summary>
```
Takes the specified time and writes it to the structure specified in the second argument.  
struct date_time  
{  
    alignas(8) int year;  
    alignas(8) int month;  
    alignas(8) int day;  
    alignas(8) int hour;  
    alignas(8) int minute;  
    alignas(8) int second;  
};  
```
</summary>
	]]

native "GET_NUM_RESERVED_MISSION_VEHICLES"
    hash "0xCF3A965906452031"
	jhash (0xA9A308F3)
	arguments {
		BOOL "p0",
	}
	ns "NETWORK"
	returns "int"
	doc [[!
<summary>
```
p0 appears to be for MP  
```
</summary>
	]]

native "GET_NUM_RESERVED_MISSION_OBJECTS"
    hash "0xAA81B5F10BC43AC2"
	jhash (0x16A80CD6)
	arguments {
		BOOL "p0",
	}
	ns "NETWORK"
	returns "int"
	doc [[!
<summary>
```
p0 appears to be for MP  
```
</summary>
	]]

native "GET_PLAYER_ADVANCED_MODIFIER_PRIVILEGES"
    hash "0xCD67AD041A394C9C"
	jhash (0x8F3137E6)
	arguments {
		int "p0",
	}
	alias "0xCD67AD041A394C9C"
	alias "_GET_CONTENT_USER_ID"
	ns "NETWORK"
	returns "charPtr"
	doc [[!
	]]

native "GET_NUM_RESERVED_MISSION_PEDS"
    hash "0x1F13D5AE5CB17E17"
	jhash (0x6C25975C)
	arguments {
		BOOL "p0",
	}
	ns "NETWORK"
	returns "int"
	doc [[!
<summary>
```
p0 appears to be for MP  
```
</summary>
	]]

native "GET_TIME_DIFFERENCE"
    hash "0xA2C6FC031D46FFF0"
	jhash (0x5666A837)
	arguments {
		int "timeA",
		int "timeB",
	}
	ns "NETWORK"
	returns "int"
	doc [[!
<summary>
```
Subtracts the second argument from the first.  
```
</summary>
	]]

native "GET_TIME_OFFSET"
    hash "0x017008CCDAD48503"
	jhash (0x2E079AE6)
	arguments {
		int "timeA",
		int "timeB",
	}
	ns "NETWORK"
	returns "int"
	doc [[!
<summary>
```
Adds the first argument to the second.  
```
</summary>
	]]

native "_GET_ROOT_CONTENT_ID"
    hash "0xC0173D6BFF4E0348"
	jhash (0x0E5E8E5C)
	arguments {
		Any "p0",
	}
	alias "0xC0173D6BFF4E0348"
	ns "NETWORK"
	returns "charPtr"
	doc [[!
<summary>
```
Return the root content id of a job.  
```
</summary>
	]]

native "GET_TIME_AS_STRING"
    hash "0x9E23B1777A927DAD"
	jhash (0x8218944E)
	arguments {
		int "time",
	}
	alias "_FORMAT_TIME"
	ns "NETWORK"
	returns "charPtr"
	doc [[!
<summary>
```
Previously named, '_FORMAT_TIME' for people who can't find it's uses in decompiled scripts.  
```
</summary>
	]]

native "_HAS_BG_SCRIPT_BEEN_DOWNLOADED"
    hash "0x8132C0EB8B2B3293"
	alias "0x8132C0EB8B2B3293"
	ns "NETWORK"
	returns "BOOL"
	doc [[!
<summary>
```
Console Hash  
```
</summary>
	]]

native "_HAS_TUNABLES_BEEN_DOWNLOADED"
    hash "0x0467C11ED88B7D28"
	alias "0x0467C11ED88B7D28"
	ns "NETWORK"
	returns "BOOL"
	doc [[!
<summary>
```
Console Hash  
```
</summary>
	]]

native "IS_DAMAGE_TRACKER_ACTIVE_ON_NETWORK_ID"
    hash "0x6E192E33AD436366"
	jhash (0x597063BA)
	arguments {
		int "netID",
	}
	ns "NETWORK"
	returns "BOOL"
	doc [[!
	]]

native "_GET_TUNABLES_CONTENT_MODIFIER_ID"
    hash "0x187382F8A3E0A6C3"
	jhash (0xA78571CA)
	arguments {
		Hash "contentHash",
	}
	alias "0x187382F8A3E0A6C3"
	ns "NETWORK"
	returns "int"
	doc [[!
<summary>
```
Return the content modifier id (the tunables context if you want) of a specific content.  
It takes the content hash (which is the mission id hash), and return the content modifier id, used as the tunables context.  
The mission id can be found on the Social club, for example, 'socialclub.rockstargames.com/games/gtav/jobs/job/A8M6Bz8MLEC5xngvDCzGwA'  
'A8M6Bz8MLEC5xngvDCzGwA' is the mission id, so the game hash this and use it as the parameter for this native.  
```
</summary>
	]]

native "HAS_NETWORK_TIME_STARTED"
    hash "0x46718ACEEDEAFC84"
	jhash (0x4538C4A2)
	alias "0x46718ACEEDEAFC84"
	ns "NETWORK"
	returns "BOOL"
	doc [[!
	]]

native "IS_PLAYER_IN_CUTSCENE"
    hash "0xE73092F4157CD126"
	jhash (0xE0A619BD)
	arguments {
		Player "player",
	}
	ns "NETWORK"
	returns "BOOL"
	doc [[!
	]]

native "IS_NETWORK_VEHICLE_BEEN_DAMAGED_BY_ANY_OBJECT"
    hash "0xDBD2056652689917"
	jhash (0xF1E84832)
	arguments {
		float "x",
		float "y",
		float "z",
	}
	ns "NETWORK"
	returns "BOOL"
	doc [[!
<summary>
```
hash collision.  
Definitely a hash collision, has something do to with your local player, not a vehicle  
```
</summary>
	]]

native "_IS_SOCIALCLUB_BANNED"
    hash "0xA0AD7E2AF5349F61"
	jhash (0xBDBB5948)
	ns "NETWORK"
	returns "BOOL"
	doc [[!
<summary>
```
if(_IS_SOCIALCLUB_BANNED() == 0) means the player is social club banned  
```
</summary>
	]]

native "IS_SPHERE_VISIBLE_TO_PLAYER"
    hash "0xDC3A310219E5DA62"
	jhash (0xE9FCFB32)
	arguments {
		Any "p0",
		float "p1",
		float "p2",
		float "p3",
		float "p4",
	}
	ns "NETWORK"
	returns "BOOL"
	doc [[!
	]]

native "_IS_ROCKSTAR_BANNED"
    hash "0x8020A73847E0CA7D"
	jhash (0xD3BBE42F)
	ns "NETWORK"
	returns "BOOL"
	doc [[!
<summary>
```
if(NETWORK::_IS_ROCKSTAR_BANNED() == 0) means the player is rockstar banned  
```
</summary>
	]]

native "IS_TIME_LESS_THAN"
    hash "0xCB2CF5148012C8D0"
	jhash (0x50EF8FC6)
	arguments {
		int "timeA",
		int "timeB",
	}
	alias "_SUBTRACT_B_FROM_A_AND_CHECK_IF_NEGATIVE"
	ns "NETWORK"
	returns "BOOL"
	doc [[!
<summary>
```
Subtracts the second argument from the first, then returns whether the result is negative.  
```
</summary>
	]]

native "IS_SPHERE_VISIBLE_TO_ANOTHER_MACHINE"
    hash "0xD82CF8E64C8729D8"
	jhash (0x23C5274E)
	arguments {
		float "p0",
		float "p1",
		float "p2",
		float "p3",
	}
	ns "NETWORK"
	returns "BOOL"
	doc [[!
	]]

native "0x01ABCE5E7CBDA196"
    hash "0x01ABCE5E7CBDA196"
	ns "NETWORK"
	returns "Any"
	doc [[!
	]]

native "IS_TIME_EQUAL_TO"
    hash "0xF5BC95857BD6D512"
	jhash (0x8B4D1C06)
	arguments {
		int "timeA",
		int "timeB",
	}
	alias "_ARE_INTEGERS_EQUAL"
	ns "NETWORK"
	returns "BOOL"
	doc [[!
<summary>
```
Returns true if the two times are equal; otherwise returns false.  
```
</summary>
	]]

native "0x02ADA21EA2F6918F"
    hash "0x02ADA21EA2F6918F"
	jhash (0x50296140)
	ns "NETWORK"
	returns "Any"
	doc [[!
	]]

native "0x0379DAF89BA09AA5"
    hash "0x0379DAF89BA09AA5"
	arguments {
		Any "p0",
		Any "p1",
	}
	ns "NETWORK"
	returns "void"
	doc [[!
	]]

native "IS_TIME_MORE_THAN"
    hash "0xDE350F8651E4346C"
	jhash (0xBBB6DF61)
	arguments {
		int "timeA",
		int "timeB",
	}
	alias "_SUBTRACT_A_FROM_B_AND_CHECK_IF_NEGATIVE"
	ns "NETWORK"
	returns "BOOL"
	doc [[!
<summary>
```
Subtracts the first argument from the second, then returns whether the result is negative.  
```
</summary>
	]]

native "0x02A8BEC6FD9AF660"
    hash "0x02A8BEC6FD9AF660"
	jhash (0xB5ABC4B4)
	arguments {
		AnyPtr "p0",
		Any "p1",
	}
	ns "NETWORK"
	returns "BOOL"
	doc [[!
	]]

native "0x07DD29D5E22763F1"
    hash "0x07DD29D5E22763F1"
	arguments {
		AnyPtr "p0",
	}
	ns "NETWORK"
	returns "BOOL"
	doc [[!
	]]

native "0x07EAB372C8841D99"
    hash "0x07EAB372C8841D99"
	arguments {
		Any "p0",
		Any "p1",
		Any "p2",
	}
	ns "NETWORK"
	returns "Any"
	doc [[!
	]]

native "0x041C7F2A6C9894E6"
    hash "0x041C7F2A6C9894E6"
	arguments {
		Any "p0",
		Any "p1",
		Any "p2",
	}
	ns "NETWORK"
	returns "Any"
	doc [[!
	]]

native "0x0AFCE529F69B21FF"
    hash "0x0AFCE529F69B21FF"
	jhash (0xC3A12135)
	ns "NETWORK"
	returns "Any"
	doc [[!
	]]

native "0x04918A41BC9B8157"
    hash "0x04918A41BC9B8157"
	arguments {
		Any "p0",
		Any "p1",
		Any "p2",
	}
	ns "NETWORK"
	returns "Any"
	doc [[!
	]]

native "0x0C978FDA19692C2C"
    hash "0x0C978FDA19692C2C"
	arguments {
		BOOL "p0",
		BOOL "p1",
	}
	ns "NETWORK"
	returns "void"
	doc [[!
<summary>
```
x360 Hash: 0x4AF0ADF5  
```
</summary>
	]]

native "0x0B203B4AFDE53A4F"
    hash "0x0B203B4AFDE53A4F"
	jhash (0x1856D008)
	arguments {
		AnyPtr "p0",
		AnyPtr "p1",
		BOOL "p2",
	}
	ns "NETWORK"
	returns "Any"
	doc [[!
	]]

native "0x0D77A82DC2D0DA59"
    hash "0x0D77A82DC2D0DA59"
	jhash (0x0808D4CC)
	arguments {
		AnyPtr "p0",
		AnyPtr "p1",
	}
	ns "NETWORK"
	returns "void"
	doc [[!
	]]

native "0x0DBD5D7E3C5BEC3B"
    hash "0x0DBD5D7E3C5BEC3B"
	ns "NETWORK"
	returns "Any"
	doc [[!
	]]

native "0x0C1F7D49C39D2289"
    hash "0x0C1F7D49C39D2289"
	jhash (0x744AC008)
	ns "NETWORK"
	returns "Any"
	doc [[!
	]]

native "0x0CD9AB83489430EA"
    hash "0x0CD9AB83489430EA"
	jhash (0x20527695)
	arguments {
		BOOL "p0",
	}
	ns "NETWORK"
	returns "int"
	doc [[!
	]]

native "0x0EDE326D47CD0F3E"
    hash "0x0EDE326D47CD0F3E"
	jhash (0xBEB7281A)
	arguments {
		Ped "ped",
		Player "player",
	}
	ns "NETWORK"
	returns "BOOL"
	doc [[!
	]]

native "0x10BD227A753B0D84"
    hash "0x10BD227A753B0D84"
	jhash (0x231CFD12)
	ns "NETWORK"
	returns "Any"
	doc [[!
	]]

native "0x0E4F77F7B9D74D84"
    hash "0x0E4F77F7B9D74D84"
	arguments {
		Any "p0",
	}
	ns "NETWORK"
	returns "void"
	doc [[!
	]]

native "0x1153FA02A659051C"
    hash "0x1153FA02A659051C"
	jhash (0x57F9BC83)
	ns "NETWORK"
	returns "void"
	doc [[!
	]]

native "0x1171A97A3D3981B6"
    hash "0x1171A97A3D3981B6"
	arguments {
		AnyPtr "p0",
		AnyPtr "p1",
		Any "p2",
		Any "p3",
	}
	ns "NETWORK"
	returns "BOOL"
	doc [[!
	]]

native "0x0FF2862B61A58AF9"
    hash "0x0FF2862B61A58AF9"
	jhash (0x1BCD3DDF)
	arguments {
		BOOL "p0",
	}
	ns "NETWORK"
	returns "void"
	doc [[!
<summary>
```
p0 is always false in scripts.  
```
</summary>
	]]

native "0x113E6E3E50E286B0"
    hash "0x113E6E3E50E286B0"
	jhash (0xD6E3D5EA)
	arguments {
		Any "p0",
	}
	ns "NETWORK"
	returns "void"
	doc [[!
	]]

native "0x13518FF1C6B28938"
    hash "0x13518FF1C6B28938"
	jhash (0x7963FA4D)
	arguments {
		Any "p0",
	}
	ns "NETWORK"
	returns "BOOL"
	doc [[!
	]]

native "0x1353F87E89946207"
    hash "0x1353F87E89946207"
	ns "NETWORK"
	returns "BOOL"
	doc [[!
<summary>
```
Returns some kind of banned state  
```
</summary>
	]]

native "0x120364DE2845DAF8"
    hash "0x120364DE2845DAF8"
	jhash (0xF30E5814)
	arguments {
		AnyPtr "p0",
		Any "p1",
	}
	ns "NETWORK"
	returns "Any"
	doc [[!
	]]

native "0x1398582B7F72B3ED"
    hash "0x1398582B7F72B3ED"
	arguments {
		Any "p0",
	}
	ns "NETWORK"
	returns "void"
	doc [[!
	]]

native "0x12B6281B6C6706C0"
    hash "0x12B6281B6C6706C0"
	jhash (0x603FA104)
	arguments {
		BOOL "p0",
	}
	ns "NETWORK"
	returns "int"
	doc [[!
	]]

native "0x140E6A44870A11CE"
    hash "0x140E6A44870A11CE"
	jhash (0x50507BED)
	ns "NETWORK"
	returns "void"
	doc [[!
	]]

native "0x135F9B7B7ADD2185"
    hash "0x135F9B7B7ADD2185"
	arguments {
		AnyPtr "p0",
	}
	ns "NETWORK"
	returns "BOOL"
	doc [[!
	]]

native "0x14922ED3E38761F0"
    hash "0x14922ED3E38761F0"
	jhash (0x8FA6EE0E)
	ns "NETWORK"
	returns "Any"
	doc [[!
	]]

native "0x13F1FCB111B820B0"
    hash "0x13F1FCB111B820B0"
	arguments {
		Any "p0",
	}
	ns "NETWORK"
	returns "void"
	doc [[!
	]]

native "0x152D90E4C1B4738A"
    hash "0x152D90E4C1B4738A"
	jhash (0x08243B79)
	arguments {
		AnyPtr "p0",
		AnyPtr "p1",
	}
	ns "NETWORK"
	returns "BOOL"
	doc [[!
	]]

native "0x144DA052257AE7D8"
    hash "0x144DA052257AE7D8"
	arguments {
		Any "p0",
	}
	ns "NETWORK"
	returns "void"
	doc [[!
	]]

native "0x1632BE0AC1E62876"
    hash "0x1632BE0AC1E62876"
	arguments {
		Any "p0",
		Any "p1",
	}
	ns "NETWORK"
	returns "void"
	doc [[!
	]]

native "0x158EC424F35EC469"
    hash "0x158EC424F35EC469"
	jhash (0xDED82A6E)
	arguments {
		charPtr "p0",
		BOOL "p1",
		charPtr "contentType",
	}
	ns "NETWORK"
	returns "BOOL"
	doc [[!
	]]

native "0x171DF6A0C07FB3DC"
    hash "0x171DF6A0C07FB3DC"
	jhash (0x84315226)
	arguments {
		Any "p0",
		Any "p1",
	}
	ns "NETWORK"
	returns "Any"
	doc [[!
	]]

native "0x162C23CA83ED0A62"
    hash "0x162C23CA83ED0A62"
	jhash (0xB3BBD241)
	arguments {
		Any "p0",
	}
	ns "NETWORK"
	returns "BOOL"
	doc [[!
	]]

native "0x17440AA15D1D3739"
    hash "0x17440AA15D1D3739"
	jhash (0x133FF2D5)
	ns "NETWORK"
	returns "void"
	doc [[!
	]]

native "0x17E0198B3882C2CB"
    hash "0x17E0198B3882C2CB"
	jhash (0x408A9436)
	ns "NETWORK"
	returns "void"
	doc [[!
	]]

native "0x17330EBF2F2124A8"
    hash "0x17330EBF2F2124A8"
	ns "NETWORK"
	returns "void"
	doc [[!
	]]

native "0x1888694923EF4591"
    hash "0x1888694923EF4591"
	ns "NETWORK"
	returns "void"
	doc [[!
	]]

native "0x1ACCFBA3D8DAB2EE"
    hash "0x1ACCFBA3D8DAB2EE"
	jhash (0x1E34953F)
	arguments {
		Any "p0",
		Any "p1",
	}
	ns "NETWORK"
	returns "Any"
	doc [[!
	]]

native "0x1950DAE9848A4739"
    hash "0x1950DAE9848A4739"
	arguments {
		Any "p0",
		Any "p1",
		Any "p2",
	}
	ns "NETWORK"
	returns "Any"
	doc [[!
	]]

native "0x1AD5B71586B94820"
    hash "0x1AD5B71586B94820"
	jhash (0xCEA55F4C)
	arguments {
		Player "p0",
		AnyPtr "p1",
		Any "p2",
	}
	ns "NETWORK"
	returns "BOOL"
	doc [[!
<summary>
```
unk_0xCEA55F4C(uVar3, "AM_ROLLERCOASTER", -1))  
Probably has to do with seeing if they are riding the roller coaster or ferris wheel  
NETWORK_IS_PLAYER_???  
```
</summary>
	]]

native "0x1D4DC17C38FEAFF0"
    hash "0x1D4DC17C38FEAFF0"
	jhash (0xED4A272F)
	ns "NETWORK"
	returns "Any"
	doc [[!
	]]

native "0x1B857666604B1A74"
    hash "0x1B857666604B1A74"
	arguments {
		BOOL "p0",
	}
	ns "NETWORK"
	returns "void"
	doc [[!
<summary>
```
Console Hash: 0x76A9FEB6  
```
</summary>
	]]

native "0x1D610EB0FEA716D9"
    hash "0x1D610EB0FEA716D9"
	arguments {
		Any "p0",
	}
	ns "NETWORK"
	returns "BOOL"
	doc [[!
	]]

native "0x1DE0F5F50D723CAA"
    hash "0x1DE0F5F50D723CAA"
	jhash (0xAD334B40)
	arguments {
		AnyPtr "p0",
		AnyPtr "p1",
		AnyPtr "p2",
	}
	ns "NETWORK"
	returns "BOOL"
	doc [[!
	]]

native "0x21D04D7BC538C146"
    hash "0x21D04D7BC538C146"
	arguments {
		Any "p0",
	}
	ns "NETWORK"
	returns "BOOL"
	doc [[!
	]]

native "0x1F8E00FB18239600"
    hash "0x1F8E00FB18239600"
	arguments {
		Any "p0",
	}
	ns "NETWORK"
	returns "void"
	doc [[!
	]]

native "0x237D5336A9A54108"
    hash "0x237D5336A9A54108"
	arguments {
		Any "p0",
	}
	ns "NETWORK"
	returns "BOOL"
	doc [[!
	]]

native "0x2302C0264EA58D31"
    hash "0x2302C0264EA58D31"
	jhash (0x8DCFE77D)
	ns "NETWORK"
	returns "void"
	doc [[!
	]]

native "0x24E4E51FC16305F9"
    hash "0x24E4E51FC16305F9"
	jhash (0x742075FE)
	ns "NETWORK"
	returns "Any"
	doc [[!
	]]

native "0x24409FC4C55CB22D"
    hash "0x24409FC4C55CB22D"
	jhash (0xA4302183)
	arguments {
		Any "p0",
	}
	ns "NETWORK"
	returns "Any"
	doc [[!
	]]

native "0x25D990F8E0E3F13C"
    hash "0x25D990F8E0E3F13C"
	ns "NETWORK"
	returns "void"
	doc [[!
	]]

native "0x25B99872D588A101"
    hash "0x25B99872D588A101"
	jhash (0x4C2C2B12)
	arguments {
		float "p0",
		float "p1",
		float "p2",
		float "p3",
		float "p4",
		float "p5",
	}
	ns "NETWORK"
	returns "Any"
	doc [[!
	]]

native "0x265559DA40B3F327"
    hash "0x265559DA40B3F327"
	arguments {
		Any "p0",
	}
	ns "NETWORK"
	returns "void"
	doc [[!
	]]

native "0x261E97AD7BCF3D40"
    hash "0x261E97AD7BCF3D40"
	jhash (0x7EF353E1)
	arguments {
		BOOL "p0",
	}
	ns "NETWORK"
	returns "void"
	doc [[!
	]]

native "0x265635150FB0D82E"
    hash "0x265635150FB0D82E"
	jhash (0xA7FA70AE)
	ns "NETWORK"
	returns "void"
	doc [[!
	]]

native "0x267C78C60E806B9A"
    hash "0x267C78C60E806B9A"
	jhash (0xBB2D33D3)
	arguments {
		Any "p0",
		BOOL "p1",
	}
	ns "NETWORK"
	returns "void"
	doc [[!
	]]

native "0x274A1519DFC1094F"
    hash "0x274A1519DFC1094F"
	jhash (0x980D45D7)
	arguments {
		AnyPtr "p0",
		BOOL "p1",
		AnyPtr "p2",
	}
	ns "NETWORK"
	returns "BOOL"
	doc [[!
	]]

native "0x26F07DD83A5F7F98"
    hash "0x26F07DD83A5F7F98"
	jhash (0x9A176B6E)
	ns "NETWORK"
	returns "Any"
	doc [[!
<summary>
```
spook.  
This function calls a function that gets another player stat, although implementation wasn't finished so it can only get your own stat.  
Stat value it calls: 0xFC58E972  
```
</summary>
	]]

native "0x283B6062A2C01E9B"
    hash "0x283B6062A2C01E9B"
	jhash (0x96E28FE2)
	ns "NETWORK"
	returns "void"
	doc [[!
	]]

native "0x299EF3C576773506"
    hash "0x299EF3C576773506"
	jhash (0x611E0BE2)
	ns "NETWORK"
	returns "Any"
	doc [[!
	]]

native "0x2A5E0621DD815A9A"
    hash "0x2A5E0621DD815A9A"
	arguments {
		Any "p0",
		Any "p1",
		Any "p2",
		Any "p3",
	}
	ns "NETWORK"
	returns "void"
	doc [[!
	]]

native "0x2A7776C709904AB0"
    hash "0x2A7776C709904AB0"
	jhash (0x1CF89DA5)
	arguments {
		Any "p0",
	}
	ns "NETWORK"
	returns "Any"
	doc [[!
	]]

native "0x2B1C623823DB0D9D"
    hash "0x2B1C623823DB0D9D"
	arguments {
		Any "p0",
		Any "p1",
		Any "p2",
		Any "p3",
		Any "p4",
		Any "p5",
		Any "p6",
	}
	ns "NETWORK"
	returns "Any"
	doc [[!
	]]

native "0x2B51EDBEFC301339"
    hash "0x2B51EDBEFC301339"
	jhash (0x8E952B12)
	arguments {
		int "p0",
		charPtr "p1",
	}
	ns "NETWORK"
	returns "BOOL"
	doc [[!
	]]

native "0x2CC848A861D01493"
    hash "0x2CC848A861D01493"
	jhash (0xBEB98840)
	ns "NETWORK"
	returns "Any"
	doc [[!
	]]

native "0x2BF66D2E7414F686"
    hash "0x2BF66D2E7414F686"
	jhash (0x9156EFC0)
	ns "NETWORK"
	returns "Any"
	doc [[!
	]]

native "0x2D5DC831176D0114"
    hash "0x2D5DC831176D0114"
	jhash (0xA69AE16C)
	arguments {
		Any "p0",
	}
	ns "NETWORK"
	returns "BOOL"
	doc [[!
	]]

native "0x2CE9D95E4051AECD"
    hash "0x2CE9D95E4051AECD"
	arguments {
		Any "p0",
	}
	ns "NETWORK"
	returns "void"
	doc [[!
	]]

native "0x2E0BF682CC778D49"
    hash "0x2E0BF682CC778D49"
	jhash (0xBFAA349B)
	arguments {
		Any "p0",
	}
	ns "NETWORK"
	returns "BOOL"
	doc [[!
	]]

native "0x2DA41ED6E1FCD7A5"
    hash "0x2DA41ED6E1FCD7A5"
	arguments {
		Any "p0",
		Any "p1",
	}
	ns "NETWORK"
	returns "Any"
	doc [[!
	]]

native "0x2EAC52B4019E2782"
    hash "0x2EAC52B4019E2782"
	jhash (0x25E2DBA9)
	ns "NETWORK"
	returns "Any"
	doc [[!
	]]

native "0x3054F114121C21EA"
    hash "0x3054F114121C21EA"
	jhash (0xA850DDE1)
	arguments {
		Any "p0",
	}
	ns "NETWORK"
	returns "BOOL"
	doc [[!
	]]

native "0x2E4C123D1C8A710E"
    hash "0x2E4C123D1C8A710E"
	arguments {
		Any "p0",
		Any "p1",
		Any "p2",
		Any "p3",
		Any "p4",
		Any "p5",
		Any "p6",
	}
	ns "NETWORK"
	returns "Any"
	doc [[!
	]]

native "0x2FC5650B0271CB57"
    hash "0x2FC5650B0271CB57"
	jhash (0xA812B6CB)
	ns "NETWORK"
	returns "Any"
	doc [[!
<summary>
```
NETWORK_IS_IN_???  
```
</summary>
	]]

native "0x3195F8DD0D531052"
    hash "0x3195F8DD0D531052"
	jhash (0x4C2C0D1F)
	arguments {
		Any "p0",
		Any "p1",
		AnyPtr "p2",
		AnyPtr "p3",
	}
	ns "NETWORK"
	returns "BOOL"
	doc [[!
	]]

native "0x32EBD154CB6B8B99"
    hash "0x32EBD154CB6B8B99"
	arguments {
		Any "p0",
		Any "p1",
		Any "p2",
	}
	ns "NETWORK"
	returns "void"
	doc [[!
	]]

native "0x308F96458B7087CC"
    hash "0x308F96458B7087CC"
	jhash (0x68C9AF69)
	arguments {
		AnyPtr "p0",
		Any "p1",
		Any "p2",
		Any "p3",
		AnyPtr "p4",
		BOOL "p5",
	}
	ns "NETWORK"
	returns "Any"
	doc [[!
	]]

native "0x33DE49EDF4DDE77A"
    hash "0x33DE49EDF4DDE77A"
	arguments {
		Any "p0",
	}
	ns "NETWORK"
	returns "Vector3"
	doc [[!
	]]

native "0x32DD916F3F7C9672"
    hash "0x32DD916F3F7C9672"
	jhash (0xA2C5BD9D)
	arguments {
		Any "p0",
	}
	ns "NETWORK"
	returns "Any"
	doc [[!
	]]

native "0x367EF5E2F439B4C6"
    hash "0x367EF5E2F439B4C6"
	jhash (0x53C9563C)
	arguments {
		int "p0",
	}
	ns "NETWORK"
	returns "void"
	doc [[!
	]]

native "0x35F0B98A8387274D"
    hash "0x35F0B98A8387274D"
	jhash (0xA003C40B)
	ns "NETWORK"
	returns "Any"
	doc [[!
	]]

native "0x37A4494483B9F5C9"
    hash "0x37A4494483B9F5C9"
	jhash (0xC901AA9F)
	ns "NETWORK"
	returns "Any"
	doc [[!
<summary>
```
NETWORK_IS_TRANSITION_???  
```
</summary>
	]]

native "0x36391F397731595D"
    hash "0x36391F397731595D"
	arguments {
		Any "p0",
	}
	ns "NETWORK"
	returns "Any"
	doc [[!
	]]

native "0x3855FB5EB2C5E8B2"
    hash "0x3855FB5EB2C5E8B2"
	arguments {
		Any "p0",
	}
	ns "NETWORK"
	returns "Any"
	doc [[!
	]]

native "0x3A17A27D75C74887"
    hash "0x3A17A27D75C74887"
	jhash (0x8E1D8F78)
	ns "NETWORK"
	returns "Any"
	doc [[!
	]]

native "0x37D5F739FD494675"
    hash "0x37D5F739FD494675"
	arguments {
		Any "p0",
	}
	ns "NETWORK"
	returns "int"
	doc [[!
<summary>
I've had this return the player's ped handle sometimes, but also other random entities.

Whatever p0 is, it's at least not synced to other players.
At least not all the time, some p0 values actually output the same entity, (different handle of course, but same entity).
But another p0 value may return an entity for player x, but not for player y (it'll just return -1 even if the entity exists on both clients).
</summary>
<param name="p0">unknown.</param>
<returns>Returns an entity handle or -1, value changes based on p0's value.</returns>
	]]

native "0x3A8B55FDA4C8DDEF"
    hash "0x3A8B55FDA4C8DDEF"
	arguments {
		Any "p0",
		Any "p1",
		Any "p2",
	}
	ns "NETWORK"
	returns "Any"
	doc [[!
	]]

native "0x3C5C1E2C2FF814B1"
    hash "0x3C5C1E2C2FF814B1"
	jhash (0xC9DDA85B)
	arguments {
		BOOL "p0",
	}
	ns "NETWORK"
	returns "void"
	doc [[!
	]]

native "0x39917E1B4CB0F911"
    hash "0x39917E1B4CB0F911"
	jhash (0xF60986FC)
	arguments {
		BOOL "p0",
	}
	ns "NETWORK"
	returns "void"
	doc [[!
	]]

native "0x3C891A251567DFCE"
    hash "0x3C891A251567DFCE"
	jhash (0x90700C7D)
	arguments {
		AnyPtr "p0",
	}
	ns "NETWORK"
	returns "Any"
	doc [[!
	]]

native "0x3A3D5568AF297CD5"
    hash "0x3A3D5568AF297CD5"
	jhash (0x9B9AFFF1)
	arguments {
		Any "p0",
	}
	ns "NETWORK"
	returns "BOOL"
	doc [[!
	]]

native "0x3B39236746714134"
    hash "0x3B39236746714134"
	jhash (0x5E1020CC)
	arguments {
		Any "p0",
	}
	ns "NETWORK"
	returns "Any"
	doc [[!
	]]

native "0x3F9990BF5F22759C"
    hash "0x3F9990BF5F22759C"
	arguments {
		AnyPtr "p0",
	}
	ns "NETWORK"
	returns "BOOL"
	doc [[!
	]]

native "0x3DBF2DF0AEB7D289"
    hash "0x3DBF2DF0AEB7D289"
	jhash (0xF5E3401C)
	arguments {
		Any "p0",
	}
	ns "NETWORK"
	returns "BOOL"
	doc [[!
	]]

native "0x3FA36981311FA4FF"
    hash "0x3FA36981311FA4FF"
	jhash (0x00AE4E17)
	arguments {
		int "netId",
		BOOL "state",
	}
	ns "NETWORK"
	returns "void"
	doc [[!
	]]

native "0x40F7E66472DF3E5C"
    hash "0x40F7E66472DF3E5C"
	jhash (0x70A2845C)
	arguments {
		Any "p0",
		Any "p1",
	}
	ns "NETWORK"
	returns "Any"
	doc [[!
	]]

native "0x3F52E880AAF6C8CA"
    hash "0x3F52E880AAF6C8CA"
	jhash (0xB3D9A67F)
	arguments {
		BOOL "p0",
	}
	ns "NETWORK"
	returns "void"
	doc [[!
	]]

native "0x407091CF6037118E"
    hash "0x407091CF6037118E"
	arguments {
		int "netID",
	}
	ns "NETWORK"
	returns "void"
	doc [[!
<summary>
```
Console Hash: 0x9F82917F  
```
</summary>
	]]

native "0x422D396F80A96547"
    hash "0x422D396F80A96547"
	jhash (0xC6EA802E)
	ns "NETWORK"
	returns "BOOL"
	doc [[!
	]]

native "0x4237E822315D8BA9"
    hash "0x4237E822315D8BA9"
	ns "NETWORK"
	returns "BOOL"
	doc [[!
	]]

native "0x419594E137637120"
    hash "0x419594E137637120"
	jhash (0x54058F5F)
	arguments {
		BOOL "p0",
		Any "p1",
		BOOL "p2",
	}
	ns "NETWORK"
	returns "void"
	doc [[!
	]]

native "0x422F32CC7E56ABAD"
    hash "0x422F32CC7E56ABAD"
	arguments {
		Any "p0",
	}
	ns "NETWORK"
	returns "BOOL"
	doc [[!
	]]

native "0x4348BFDA56023A2F"
    hash "0x4348BFDA56023A2F"
	arguments {
		Any "p0",
		Any "p1",
	}
	ns "NETWORK"
	returns "Any"
	doc [[!
	]]

native "0x42613035157E4208"
    hash "0x42613035157E4208"
	arguments {
		Any "p0",
	}
	ns "NETWORK"
	returns "void"
	doc [[!
	]]

native "0x444C4525ECE0A4B9"
    hash "0x444C4525ECE0A4B9"
	jhash (0xCC7DCE24)
	ns "NETWORK"
	returns "void"
	doc [[!
<summary>
```
sfink: related to: NETWORK_BAIL  
NETWORK_BAIL_TRANSITION  
NETWORK_JOIN_GROUP_ACTIVITY  
NETWORK_JOIN_TRANSITION  
NETWORK_LAUNCH_TRANSITION  
NETWORK_SESSION_HOST  
NETWORK_SESSION_HOST_CLOSED  
NETWORK_SESSION_HOST_FRIENDS_ONLY  
NETWORK_SESSION_HOST_SINGLE_PLAYER  
NETWORK_SESSION_VOICE_LEAVE  
```
</summary>
	]]

native "0x45A83257ED02D9BC"
    hash "0x45A83257ED02D9BC"
	ns "NETWORK"
	returns "void"
	doc [[!
	]]

native "0x44B37CDCAE765AAE"
    hash "0x44B37CDCAE765AAE"
	arguments {
		Any "p0",
		AnyPtr "p1",
	}
	ns "NETWORK"
	returns "BOOL"
	doc [[!
	]]

native "0x45E816772E93A9DB"
    hash "0x45E816772E93A9DB"
	jhash (0x8E664EFD)
	ns "NETWORK"
	returns "Any"
	doc [[!
	]]

native "0x472841A026D26D8B"
    hash "0x472841A026D26D8B"
	ns "NETWORK"
	returns "Any"
	doc [[!
	]]

native "0x4811BBAC21C5FCD5"
    hash "0x4811BBAC21C5FCD5"
	jhash (0xE5961511)
	arguments {
		Any "p0",
	}
	ns "NETWORK"
	returns "void"
	doc [[!
	]]

native "0x4A2D4E8BF4265B0F"
    hash "0x4A2D4E8BF4265B0F"
	jhash (0xC6D53AA0)
	arguments {
		Any "p0",
	}
	ns "NETWORK"
	returns "BOOL"
	doc [[!
	]]

native "0x4AD490AE1536933B"
    hash "0x4AD490AE1536933B"
	arguments {
		Any "p0",
		Any "p1",
	}
	ns "NETWORK"
	returns "Any"
	doc [[!
	]]

native "0x4BA166079D658ED4"
    hash "0x4BA166079D658ED4"
	arguments {
		Any "p0",
		Any "p1",
	}
	ns "NETWORK"
	returns "void"
	doc [[!
	]]

native "0x4C2A9FDC22377075"
    hash "0x4C2A9FDC22377075"
	ns "NETWORK"
	returns "void"
	doc [[!
	]]

native "0x4BA92A18502BCA61"
    hash "0x4BA92A18502BCA61"
	jhash (0x74D6B13C)
	arguments {
		Player "player",
		float "p1",
		float "p2",
		float "p3",
		float "p4",
		float "p5",
		float "p6",
		float "p7",
		float "p8",
		float "p9",
		float "p10",
		int "flags",
	}
	ns "NETWORK"
	returns "BOOL"
	doc [[!
<summary>
```
Seems to call GET_PAUSED_MAP_STREAMING_REQUEST lol wtf  
seg001:000000000158C324 sub_158C324:                            # DATA XREF: OPD:stru_1C29978o  
seg001:000000000158C324  
seg001:000000000158C324 .set arg_10,  0x10  
seg001:000000000158C324  
seg001:000000000158C324                 mflr      r0  
seg001:000000000158C328                 bl        sub_1803774  
seg001:000000000158C32C                 stdu      r1, -0x80(r1)  
seg001:000000000158C330                 std       r0, 0x80+arg_10(r1)  
seg001:000000000158C334                 mr        r31, r3  
seg001:000000000158C338                 lwz       r3, 8(r31)  
seg001:000000000158C33C                 addic     r4, r3, 4  
seg001:000000000158C340                 addic     r5, r3, 0x10  
seg001:000000000158C344                 addic     r7, r3, 0x20  
seg001:000000000158C348                 lwz       r6, 0(r3)  
seg001:000000000158C34C                 lfs       f1, 0x1C(r3)  
seg001:000000000158C350                 lwz       r8, 0x2C(r3)  
seg001:000000000158C354                 extsw     r3, r6  
seg001:000000000158C358                 extsw     r8, r8  
seg001:000000000158C35C                 bl        GET_PAUSED_MAP_STREAMING_REQUEST  
seg001:000000000158C360                 lwz       r4, 0(r31)  
seg001:000000000158C364                 stw       r3, 0(r4)  
seg001:000000000158C368                 addi      r1, r1, 0x80  
seg001:000000000158C36C                 b         loc_18037D8  
sorta makes sense though since the one above this native and GET_PAUSED_MAP_STREAMING_REQUEST are used together often in scripts  
```
</summary>
	]]

native "0x4C61B39930D045DA"
    hash "0x4C61B39930D045DA"
	jhash (0xBAF52DD8)
	arguments {
		Any "p0",
	}
	ns "NETWORK"
	returns "BOOL"
	doc [[!
	]]

native "0x4D02279C83BE69FE"
    hash "0x4D02279C83BE69FE"
	jhash (0xA7F3F82B)
	ns "NETWORK"
	returns "Any"
	doc [[!
	]]

native "0x4E548C0D7AE39FF9"
    hash "0x4E548C0D7AE39FF9"
	jhash (0x41A0FB02)
	arguments {
		Any "p0",
		Any "p1",
	}
	ns "NETWORK"
	returns "Any"
	doc [[!
	]]

native "0x4DF7CFFF471A7FB1"
    hash "0x4DF7CFFF471A7FB1"
	jhash (0xCB1CD6D3)
	arguments {
		Any "p0",
	}
	ns "NETWORK"
	returns "BOOL"
	doc [[!
	]]

native "0x524FF0AEFF9C3973"
    hash "0x524FF0AEFF9C3973"
	jhash (0xB72F086D)
	arguments {
		Any "p0",
	}
	ns "NETWORK"
	returns "void"
	doc [[!
	]]

native "0x5324A0E3E4CE3570"
    hash "0x5324A0E3E4CE3570"
	jhash (0x87D1E6BD)
	arguments {
		Any "p0",
		Any "p1",
		AnyPtr "p2",
		AnyPtr "p3",
	}
	ns "NETWORK"
	returns "BOOL"
	doc [[!
	]]

native "0x53C10C8BD774F2C9"
    hash "0x53C10C8BD774F2C9"
	ns "NETWORK"
	returns "Any"
	doc [[!
	]]

native "0x53AFD64C6758F2F9"
    hash "0x53AFD64C6758F2F9"
	ns "NETWORK"
	returns "Any"
	doc [[!
	]]

native "0x5626D9D6810730D5"
    hash "0x5626D9D6810730D5"
	ns "NETWORK"
	returns "Any"
	doc [[!
	]]

native "0x5539C3EBF104A53A"
    hash "0x5539C3EBF104A53A"
	jhash (0xAE396263)
	arguments {
		BOOL "p0",
	}
	ns "NETWORK"
	returns "void"
	doc [[!
	]]

native "0x584770794D758C18"
    hash "0x584770794D758C18"
	arguments {
		Any "p0",
		AnyPtr "p1",
	}
	ns "NETWORK"
	returns "BOOL"
	doc [[!
	]]

native "0x58CC181719256197"
    hash "0x58CC181719256197"
	arguments {
		Any "p0",
		Any "p1",
		Any "p2",
	}
	ns "NETWORK"
	returns "Any"
	doc [[!
<summary>
```
MulleDK19: This function is hard-coded to always return 0.  
```
</summary>
	]]

native "0x58C21165F6545892"
    hash "0x58C21165F6545892"
	jhash (0x365C50EE)
	arguments {
		charPtr "p0",
		charPtr "p1",
	}
	ns "NETWORK"
	returns "void"
	doc [[!
<summary>
```
Has a 3rd param (int) since patch [???].  
```
</summary>
	]]

native "0x593570C289A77688"
    hash "0x593570C289A77688"
	ns "NETWORK"
	returns "Any"
	doc [[!
	]]

native "0x59328EB08C5CEB2B"
    hash "0x59328EB08C5CEB2B"
	jhash (0x70F6D3AD)
	ns "NETWORK"
	returns "Any"
	doc [[!
	]]

native "0x595F028698072DD9"
    hash "0x595F028698072DD9"
	jhash (0xBB54AA3D)
	arguments {
		Any "p0",
		Any "p1",
		BOOL "p2",
	}
	ns "NETWORK"
	returns "BOOL"
	doc [[!
	]]

native "0x59D421683D31835A"
    hash "0x59D421683D31835A"
	arguments {
		Any "p0",
	}
	ns "NETWORK"
	returns "void"
	doc [[!
	]]

native "0x597F8DBA9B206FC7"
    hash "0x597F8DBA9B206FC7"
	jhash (0x410C61D1)
	ns "NETWORK"
	returns "Any"
	doc [[!
	]]

native "0x59DF79317F85A7E0"
    hash "0x59DF79317F85A7E0"
	ns "NETWORK"
	returns "Any"
	doc [[!
<summary>
```
may be 0x6CDAA7D2  
sfink: related to: NETWORK_BAIL  
NETWORK_BAIL_TRANSITION  
NETWORK_JOIN_GROUP_ACTIVITY  
NETWORK_JOIN_TRANSITION  
NETWORK_LAUNCH_TRANSITION  
NETWORK_SESSION_HOST  
NETWORK_SESSION_HOST_CLOSED  
NETWORK_SESSION_HOST_FRIENDS_ONLY  
NETWORK_SESSION_HOST_SINGLE_PLAYER  
NETWORK_SESSION_VOICE_LEAVE  
```
</summary>
	]]

native "0x5A0A3D1A186A5508"
    hash "0x5A0A3D1A186A5508"
	jhash (0x1F0DD8AF)
	ns "NETWORK"
	returns "Any"
	doc [[!
	]]

native "0x5A34CD9C3C5BEC44"
    hash "0x5A34CD9C3C5BEC44"
	jhash (0x346B506C)
	arguments {
		Any "p0",
	}
	ns "NETWORK"
	returns "BOOL"
	doc [[!
	]]

native "0x5A6AA44FF8E931E6"
    hash "0x5A6AA44FF8E931E6"
	ns "NETWORK"
	returns "BOOL"
	doc [[!
<summary>
```
NETWORK_IS_TRANSITION_???  
```
</summary>
	]]

native "0x5A6FFA2433E2F14C"
    hash "0x5A6FFA2433E2F14C"
	jhash (0xC62E77B3)
	arguments {
		Player "player",
		float "p1",
		float "p2",
		float "p3",
		float "p4",
		float "p5",
		float "p6",
		float "p7",
		int "flags",
	}
	ns "NETWORK"
	returns "BOOL"
	doc [[!
<summary>
```
One of the first things it does is get the players ped.  
Then it calls a function that is used in some tasks and ped based functions.  
```
</summary>
	]]

native "0x5AE17C6B0134B7F1"
    hash "0x5AE17C6B0134B7F1"
	jhash (0xC871E745)
	ns "NETWORK"
	returns "Any"
	doc [[!
	]]

native "0x5B8ED3DB018927B1"
    hash "0x5B8ED3DB018927B1"
	jhash (0x6EFC2FD0)
	arguments {
		Any "p0",
	}
	ns "NETWORK"
	returns "void"
	doc [[!
	]]

native "0x5C497525F803486B"
    hash "0x5C497525F803486B"
	ns "NETWORK"
	returns "void"
	doc [[!
<summary>
**This native does absolutely nothing, just a nullsub**
</summary>
	]]

native "0x5C707A667DF8B9FA"
    hash "0x5C707A667DF8B9FA"
	jhash (0x64235620)
	arguments {
		BOOL "p0",
		Any "p1",
	}
	ns "NETWORK"
	returns "void"
	doc [[!
	]]

native "0x5D10B3795F3FC886"
    hash "0x5D10B3795F3FC886"
	jhash (0x0B739F53)
	ns "NETWORK"
	returns "BOOL"
	doc [[!
	]]

native "0x5CAE833B0EE0C500"
    hash "0x5CAE833B0EE0C500"
	jhash (0x0D4F845D)
	arguments {
		Any "p0",
	}
	ns "NETWORK"
	returns "BOOL"
	doc [[!
	]]

native "0x5DC577201723960A"
    hash "0x5DC577201723960A"
	ns "NETWORK"
	returns "BOOL"
	doc [[!
<summary>
```
NETWORK_IS_TRANSITION_???  
```
</summary>
	]]

native "0x5E0165278F6339EE"
    hash "0x5E0165278F6339EE"
	jhash (0x1C4F9FDB)
	arguments {
		Any "p0",
	}
	ns "NETWORK"
	returns "Any"
	doc [[!
	]]

native "0x5E24341A7F92A74B"
    hash "0x5E24341A7F92A74B"
	jhash (0xE69E8D0D)
	ns "NETWORK"
	returns "Any"
	doc [[!
	]]

native "0x5E3AA4CA2B6FB0EE"
    hash "0x5E3AA4CA2B6FB0EE"
	jhash (0x7BBEA8CF)
	arguments {
		Any "p0",
	}
	ns "NETWORK"
	returns "void"
	doc [[!
	]]

native "0x5EA784D197556507"
    hash "0x5EA784D197556507"
	ns "NETWORK"
	returns "Any"
	doc [[!
	]]

native "0x5ECD378EE64450AB"
    hash "0x5ECD378EE64450AB"
	arguments {
		Any "p0",
	}
	ns "NETWORK"
	returns "void"
	doc [[!
	]]

native "0x600F8CB31C7AAB6E"
    hash "0x600F8CB31C7AAB6E"
	jhash (0x959E43A3)
	arguments {
		Any "p0",
	}
	ns "NETWORK"
	returns "void"
	doc [[!
	]]

native "0x606E4D3E3CCCF3EB"
    hash "0x606E4D3E3CCCF3EB"
	jhash (0x424C6E27)
	ns "NETWORK"
	returns "Any"
	doc [[!
	]]

native "0x617F49C2668E6155"
    hash "0x617F49C2668E6155"
	ns "NETWORK"
	returns "Any"
	doc [[!
	]]

native "0x60EDD13EB3AC1FF3"
    hash "0x60EDD13EB3AC1FF3"
	jhash (0x4DEBC227)
	ns "NETWORK"
	returns "Any"
	doc [[!
	]]

native "0x62A0296C1BB1CEB3"
    hash "0x62A0296C1BB1CEB3"
	jhash (0x0907A6BF)
	ns "NETWORK"
	returns "Any"
	doc [[!
	]]

native "0x61A885D3F7CFEE9A"
    hash "0x61A885D3F7CFEE9A"
	jhash (0xE13C1F7F)
	ns "NETWORK"
	returns "void"
	doc [[!
	]]

native "0x631DC5DFF4B110E3"
    hash "0x631DC5DFF4B110E3"
	arguments {
		Any "p0",
	}
	ns "NETWORK"
	returns "BOOL"
	doc [[!
	]]

native "0x638A3A81733086DB"
    hash "0x638A3A81733086DB"
	jhash (0xDB8B5D71)
	ns "NETWORK"
	returns "int"
	doc [[!
	]]

native "0x63B406D7884BFA95"
    hash "0x63B406D7884BFA95"
	jhash (0xF79FFF3C)
	ns "NETWORK"
	returns "Any"
	doc [[!
	]]

native "0x64D779659BC37B19"
    hash "0x64D779659BC37B19"
	arguments {
		Any "p0",
	}
	ns "NETWORK"
	returns "Vector3"
	doc [[!
	]]

native "0x64F62AFB081E260D"
    hash "0x64F62AFB081E260D"
	jhash (0xA71A1D2A)
	ns "NETWORK"
	returns "void"
	doc [[!
<summary>
```
this is lightly associated with the 2 above meaning it accesses a variable that them 2 access also  
```
</summary>
	]]

native "0x6512765E3BE78C50"
    hash "0x6512765E3BE78C50"
	ns "NETWORK"
	returns "Any"
	doc [[!
	]]

native "0x659CF2EF7F550C4F"
    hash "0x659CF2EF7F550C4F"
	ns "NETWORK"
	returns "Any"
	doc [[!
	]]

native "0x658500AE6D723A7E"
    hash "0x658500AE6D723A7E"
	arguments {
		Any "p0",
	}
	ns "NETWORK"
	returns "void"
	doc [[!
	]]

native "0x662635855957C411"
    hash "0x662635855957C411"
	jhash (0x4ACF110C)
	arguments {
		Any "p0",
	}
	ns "NETWORK"
	returns "Any"
	doc [[!
	]]

native "0x66B59CFFD78467AF"
    hash "0x66B59CFFD78467AF"
	jhash (0x0CA1167F)
	ns "NETWORK"
	returns "Any"
	doc [[!
	]]

native "0x66F010A4B031A331"
    hash "0x66F010A4B031A331"
	arguments {
		AnyPtr "p0",
	}
	ns "NETWORK"
	returns "void"
	doc [[!
	]]

native "0x678BB03C1A3BD51E"
    hash "0x678BB03C1A3BD51E"
	jhash (0x67E74842)
	arguments {
		Any "p0",
		Any "p1",
		Any "p2",
		AnyPtr "p3",
		AnyPtr "p4",
	}
	ns "NETWORK"
	returns "BOOL"
	doc [[!
	]]

native "0x67A5589628E0CFF6"
    hash "0x67A5589628E0CFF6"
	jhash (0x66EC713F)
	ns "NETWORK"
	returns "BOOL"
	doc [[!
	]]

native "0x67FC09BC554A75E5"
    hash "0x67FC09BC554A75E5"
	ns "NETWORK"
	returns "Any"
	doc [[!
<summary>
```
MulleDK19: This function is hard-coded to always return 0.  
```
</summary>
	]]

native "0x68103E2247887242"
    hash "0x68103E2247887242"
	jhash (0x0095DB71)
	ns "NETWORK"
	returns "void"
	doc [[!
	]]

native "0x692D58DF40657E8C"
    hash "0x692D58DF40657E8C"
	arguments {
		Any "p0",
		Any "p1",
		Any "p2",
		AnyPtr "p3",
		Any "p4",
		BOOL "p5",
	}
	ns "NETWORK"
	returns "BOOL"
	doc [[!
	]]

native "0x6A5D89D7769A40D8"
    hash "0x6A5D89D7769A40D8"
	jhash (0x4FFEFE43)
	arguments {
		BOOL "p0",
	}
	ns "NETWORK"
	returns "void"
	doc [[!
<summary>
```
Called in freemode related scripts but not freemode itself.  
```
</summary>
	]]

native "0x697F508861875B42"
    hash "0x697F508861875B42"
	arguments {
		Any "p0",
		Any "p1",
		Any "p2",
	}
	ns "NETWORK"
	returns "Any"
	doc [[!
	]]

native "0x6BFF5F84102DF80A"
    hash "0x6BFF5F84102DF80A"
	arguments {
		Any "p0",
	}
	ns "NETWORK"
	returns "void"
	doc [[!
<summary>
**This native does absolutely nothing, just a nullsub**
</summary>
	]]

native "0x6C34F1208B8923FD"
    hash "0x6C34F1208B8923FD"
	jhash (0x03287FD2)
	arguments {
		Any "p0",
	}
	ns "NETWORK"
	returns "Any"
	doc [[!
	]]

native "0x6CE50E47F5543D0C"
    hash "0x6CE50E47F5543D0C"
	ns "NETWORK"
	returns "void"
	doc [[!
	]]

native "0x6D4CB481FAC835E8"
    hash "0x6D4CB481FAC835E8"
	jhash (0x40CF0783)
	arguments {
		Any "p0",
		Any "p1",
		AnyPtr "p2",
		Any "p3",
	}
	ns "NETWORK"
	returns "BOOL"
	doc [[!
	]]

native "0x6F44CBF56D79FAC0"
    hash "0x6F44CBF56D79FAC0"
	jhash (0x16E53875)
	arguments {
		Any "p0",
		Any "p1",
	}
	ns "NETWORK"
	returns "Any"
	doc [[!
	]]

native "0x6F697A66CE78674E"
    hash "0x6F697A66CE78674E"
	jhash (0xC8CC9E75)
	arguments {
		int "team",
		BOOL "toggle",
	}
	ns "NETWORK"
	returns "void"
	doc [[!
	]]

native "0x6FB7BB3607D27FA2"
    hash "0x6FB7BB3607D27FA2"
	ns "NETWORK"
	returns "Any"
	doc [[!
<summary>
```
MulleDK19: This function is hard-coded to always return 0.  
```
</summary>
	]]

native "0x702BC4D605522539"
    hash "0x702BC4D605522539"
	jhash (0x913FD7D6)
	arguments {
		Any "p0",
	}
	ns "NETWORK"
	returns "void"
	doc [[!
	]]

native "0x703F12425ECA8BF5"
    hash "0x703F12425ECA8BF5"
	jhash (0xB9137BA7)
	arguments {
		Any "p0",
	}
	ns "NETWORK"
	returns "Any"
	doc [[!
	]]

native "0x70EA8DA57840F9BE"
    hash "0x70EA8DA57840F9BE"
	jhash (0x11DC0F27)
	arguments {
		Any "p0",
	}
	ns "NETWORK"
	returns "BOOL"
	doc [[!
	]]

native "0x71302EC70689052A"
    hash "0x71302EC70689052A"
	arguments {
		Any "p0",
	}
	ns "NETWORK"
	returns "Any"
	doc [[!
	]]

native "0x715135F4B82AC90D"
    hash "0x715135F4B82AC90D"
	jhash (0xCEAE5AFC)
	arguments {
		Entity "entity",
	}
	ns "NETWORK"
	returns "void"
	doc [[!
<summary>
```
Used in am_mp_property_ext and am_mp_property_int  
```
</summary>
	]]

native "0x71DC455F5CD1C2B1"
    hash "0x71DC455F5CD1C2B1"
	arguments {
		Any "p0",
	}
	ns "NETWORK"
	returns "Any"
	doc [[!
	]]

native "0x722F5D28B61C5EA8"
    hash "0x722F5D28B61C5EA8"
	jhash (0x44A58B0A)
	arguments {
		Any "p0",
	}
	ns "NETWORK"
	returns "Any"
	doc [[!
	]]

native "0x728C4CC7920CD102"
    hash "0x728C4CC7920CD102"
	jhash (0x4677C656)
	arguments {
		Any "p0",
	}
	ns "NETWORK"
	returns "Any"
	doc [[!
	]]

native "0x7242F8B741CE1086"
    hash "0x7242F8B741CE1086"
	arguments {
		Any "netId",
	}
	ns "NETWORK"
	returns "Any"
	doc [[!
<summary>
Probably a bool, returns true if the specified network id is controlled by someone else. 
If you have control over the entity corresponding to the netId then this will return false (0);
</summary>
<param name="netId">The network id for an object or entity.</param>
<returns>Probably a bool, returns 1 if you don't have control over the netId entity.</returns>
	]]

native "0x72D0706CD6CCDB58"
    hash "0x72D0706CD6CCDB58"
	jhash (0xCA7A0A49)
	ns "NETWORK"
	returns "void"
	doc [[!
	]]

native "0x72D918C99BCACC54"
    hash "0x72D918C99BCACC54"
	jhash (0x1F88819D)
	arguments {
		Any "p0",
	}
	ns "NETWORK"
	returns "BOOL"
	doc [[!
	]]

native "0x741A3D8380319A81"
    hash "0x741A3D8380319A81"
	jhash (0x331D9A27)
	ns "NETWORK"
	returns "void"
	doc [[!
	]]

native "0x74FB3E29E6D10FA9"
    hash "0x74FB3E29E6D10FA9"
	ns "NETWORK"
	returns "Any"
	doc [[!
<summary>
```
MulleDK19: This function is hard-coded to always return 0.  
```
</summary>
	]]

native "0x742B58F723233ED9"
    hash "0x742B58F723233ED9"
	jhash (0x5E832444)
	arguments {
		Any "p0",
	}
	ns "NETWORK"
	returns "Any"
	doc [[!
	]]

native "0x74698374C45701D2"
    hash "0x74698374C45701D2"
	jhash (0x70ED476A)
	ns "NETWORK"
	returns "Any"
	doc [[!
<summary>
```
NETWORK_IS_*  
```
</summary>
	]]

native "0x7543BB439F63792B"
    hash "0x7543BB439F63792B"
	jhash (0x54E79E9C)
	arguments {
		intPtr "clanDesc",
		int "bufferSize",
	}
	ns "NETWORK"
	returns "BOOL"
	doc [[!
<summary>
```
bufferSize is 35 in the scripts.  
```
</summary>
	]]

native "0x759299C5BB31D2A9"
    hash "0x759299C5BB31D2A9"
	jhash (0x771FE190)
	arguments {
		Any "p0",
		Any "p1",
	}
	ns "NETWORK"
	returns "Any"
	doc [[!
	]]

native "0x769951E2455E2EB5"
    hash "0x769951E2455E2EB5"
	jhash (0x81BD8D3B)
	ns "NETWORK"
	returns "Any"
	doc [[!
	]]

native "0x76BF03FADBF154F5"
    hash "0x76BF03FADBF154F5"
	ns "NETWORK"
	returns "AnyPtr"
	doc [[!
	]]

native "0x77758139EC9B66C7"
    hash "0x77758139EC9B66C7"
	arguments {
		BOOL "p0",
	}
	ns "NETWORK"
	returns "void"
	doc [[!
	]]

native "0x77FADDCBE3499DF7"
    hash "0x77FADDCBE3499DF7"
	jhash (0x8179C48A)
	arguments {
		Any "p0",
	}
	ns "NETWORK"
	returns "void"
	doc [[!
	]]

native "0x7808619F31FF22DB"
    hash "0x7808619F31FF22DB"
	ns "NETWORK"
	returns "Any"
	doc [[!
<summary>
```
MulleDK19: This function is hard-coded to always return 1.  
```
</summary>
	]]

native "0x78321BEA235FD8CD"
    hash "0x78321BEA235FD8CD"
	arguments {
		Any "p0",
		BOOL "p1",
	}
	ns "NETWORK"
	returns "BOOL"
	doc [[!
	]]

native "0x793FF272D5B365F4"
    hash "0x793FF272D5B365F4"
	jhash (0xF0211AC1)
	ns "NETWORK"
	returns "Any"
	doc [[!
	]]

native "0x7AC752103856FB20"
    hash "0x7AC752103856FB20"
	jhash (0xA639DCA2)
	arguments {
		BOOL "p0",
	}
	ns "NETWORK"
	returns "void"
	doc [[!
	]]

native "0x7D395EA61622E116"
    hash "0x7D395EA61622E116"
	jhash (0x5C05B7E1)
	arguments {
		BOOL "p0",
	}
	ns "NETWORK"
	returns "void"
	doc [[!
	]]

native "0x7DB53B37A2F211A0"
    hash "0x7DB53B37A2F211A0"
	jhash (0x053BB329)
	ns "NETWORK"
	returns "Any"
	doc [[!
	]]

native "0x7FCC39C46C3C03BD"
    hash "0x7FCC39C46C3C03BD"
	arguments {
		Any "p0",
	}
	ns "NETWORK"
	returns "BOOL"
	doc [[!
	]]

native "0x7EF7649B64D7FF10"
    hash "0x7EF7649B64D7FF10"
	arguments {
		Any "p0",
	}
	ns "NETWORK"
	returns "Any"
	doc [[!
	]]

native "0x7FD2990AF016795E"
    hash "0x7FD2990AF016795E"
	jhash (0x38FC2EEB)
	arguments {
		AnyPtr "p0",
		AnyPtr "p1",
		Any "p2",
		Any "p3",
		Any "p4",
	}
	ns "NETWORK"
	returns "Any"
	doc [[!
	]]

native "0x815F18AD865F057F"
    hash "0x815F18AD865F057F"
	arguments {
		Any "p0",
	}
	ns "NETWORK"
	returns "Any"
	doc [[!
	]]

native "0x82377B65E943F72D"
    hash "0x82377B65E943F72D"
	jhash (0xB802B671)
	arguments {
		Any "p0",
	}
	ns "NETWORK"
	returns "BOOL"
	doc [[!
<summary>
```
"GET_OBJ_ENTITY" seems highly unlikely.  
```
</summary>
	]]

native "0x83660B734994124D"
    hash "0x83660B734994124D"
	arguments {
		Any "p0",
		Any "p1",
		Any "p2",
	}
	ns "NETWORK"
	returns "Any"
	doc [[!
	]]

native "0x82A2B386716608F1"
    hash "0x82A2B386716608F1"
	ns "NETWORK"
	returns "Any"
	doc [[!
	]]

native "0x838DA0936A24ED4D"
    hash "0x838DA0936A24ED4D"
	arguments {
		Any "p0",
		Any "p1",
	}
	ns "NETWORK"
	returns "void"
	doc [[!
	]]

native "0x83FE8D7229593017"
    hash "0x83FE8D7229593017"
	ns "NETWORK"
	returns "void"
	doc [[!
	]]

native "0x83F28CE49FBBFFBA"
    hash "0x83F28CE49FBBFFBA"
	arguments {
		Any "p0",
		Any "p1",
		BOOL "p2",
	}
	ns "NETWORK"
	returns "BOOL"
	doc [[!
	]]

native "0x85A0EF54A500882C"
    hash "0x85A0EF54A500882C"
	jhash (0x42BD0780)
	arguments {
		AnyPtr "p0",
	}
	ns "NETWORK"
	returns "BOOL"
	doc [[!
	]]

native "0x855BC38818F6F684"
    hash "0x855BC38818F6F684"
	jhash (0x60AA4AA1)
	ns "NETWORK"
	returns "BOOL"
	doc [[!
	]]

native "0x87E5C46C187FE0AE"
    hash "0x87E5C46C187FE0AE"
	jhash (0x3276D9D3)
	arguments {
		Any "p0",
		Any "p1",
	}
	ns "NETWORK"
	returns "Any"
	doc [[!
	]]

native "0x86E0660E4F5C956D"
    hash "0x86E0660E4F5C956D"
	jhash (0x3F7EDBBD)
	ns "NETWORK"
	returns "void"
	doc [[!
	]]

native "0x883D79C4071E18B3"
    hash "0x883D79C4071E18B3"
	jhash (0xD32FA11F)
	ns "NETWORK"
	returns "Any"
	doc [[!
	]]

native "0x8806CEBFABD3CE05"
    hash "0x8806CEBFABD3CE05"
	jhash (0x7D593B4C)
	arguments {
		Any "p0",
	}
	ns "NETWORK"
	returns "BOOL"
	doc [[!
	]]

native "0x89023FBBF9200E9F"
    hash "0x89023FBBF9200E9F"
	jhash (0x98AA48E5)
	ns "NETWORK"
	returns "int"
	doc [[!
<summary>
```
Something to do with time, used in context:  
NETWORK::GET_TIME_DIFFERENCE(NETWORK::_89023FBBF9200E9F(), ... )  
sfink: returns the same value as NETWORK::GET_NETWORK_TIME in freemode.  
```
</summary>
	]]

native "0x8B0C2964BA471961"
    hash "0x8B0C2964BA471961"
	ns "NETWORK"
	returns "Any"
	doc [[!
<summary>
```
MulleDK19: This function is hard-coded to always return 0.  
```
</summary>
	]]

native "0x88B588B41FF7868E"
    hash "0x88B588B41FF7868E"
	ns "NETWORK"
	returns "Any"
	doc [[!
<summary>
```
MulleDK19: This function is hard-coded to always return 0.  
```
</summary>
	]]

native "0x8BD6C6DEA20E82C6"
    hash "0x8BD6C6DEA20E82C6"
	jhash (0x03225BA3)
	arguments {
		Any "p0",
	}
	ns "NETWORK"
	returns "Any"
	doc [[!
	]]

native "0x8B4FFC790CA131EF"
    hash "0x8B4FFC790CA131EF"
	arguments {
		Any "p0",
		Any "p1",
		Any "p2",
		Any "p3",
	}
	ns "NETWORK"
	returns "Any"
	doc [[!
	]]

native "0x919B3C98ED8292F9"
    hash "0x919B3C98ED8292F9"
	jhash (0xB0313590)
	arguments {
		Any "p0",
	}
	ns "NETWORK"
	returns "BOOL"
	doc [[!
	]]

native "0x8C8D2739BA44AF0F"
    hash "0x8C8D2739BA44AF0F"
	arguments {
		Any "p0",
	}
	ns "NETWORK"
	returns "BOOL"
	doc [[!
	]]

native "0x941E5306BCD7C2C7"
    hash "0x941E5306BCD7C2C7"
	jhash (0x3970B0DA)
	ns "NETWORK"
	returns "Any"
	doc [[!
	]]

native "0x8F5D1AD832AEB06C"
    hash "0x8F5D1AD832AEB06C"
	arguments {
		Any "p0",
	}
	ns "NETWORK"
	returns "Any"
	doc [[!
	]]

native "0x9465E683B12D3F6B"
    hash "0x9465E683B12D3F6B"
	jhash (0x273C6180)
	ns "NETWORK"
	returns "void"
	doc [[!
	]]

native "0x91B87C55093DE351"
    hash "0x91B87C55093DE351"
	ns "NETWORK"
	returns "Any"
	doc [[!
<summary>
```
bool?  
am_crate_drop.c  
<...>  
if (network::_network_are_ros_available())  
{  
	if (network::_0x91B87C55093DE351())  
<..>  
```
</summary>
	]]

native "0x94A8394D150B013A"
    hash "0x94A8394D150B013A"
	jhash (0x08029970)
	ns "NETWORK"
	returns "Any"
	doc [[!
<summary>
```
NETWORK_IS_*  
```
</summary>
	]]

native "0x966DD84FB6A46017"
    hash "0x966DD84FB6A46017"
	ns "NETWORK"
	returns "void"
	doc [[!
<summary>
**This native does absolutely nothing, just a nullsub**
</summary>
	]]

native "0x94538037EE44F5CF"
    hash "0x94538037EE44F5CF"
	jhash (0x6B97075B)
	arguments {
		BOOL "p0",
	}
	ns "NETWORK"
	returns "void"
	doc [[!
	]]

native "0x993CBE59D350D225"
    hash "0x993CBE59D350D225"
	jhash (0x0DEB3F5A)
	arguments {
		Any "p0",
	}
	ns "NETWORK"
	returns "BOOL"
	doc [[!
	]]

native "0x9614B71F8ADB982B"
    hash "0x9614B71F8ADB982B"
	ns "NETWORK"
	returns "Any"
	doc [[!
	]]

native "0x9D7AFCBF21C51712"
    hash "0x9D7AFCBF21C51712"
	arguments {
		BOOL "p0",
	}
	ns "NETWORK"
	returns "void"
	doc [[!
	]]

native "0x973D76AA760A6CB6"
    hash "0x973D76AA760A6CB6"
	jhash (0x0532DDD2)
	arguments {
		BOOL "p0",
	}
	ns "NETWORK"
	returns "void"
	doc [[!
	]]

native "0x9F6E2821885CAEE2"
    hash "0x9F6E2821885CAEE2"
	jhash (0xA6D8B798)
	arguments {
		Any "p0",
		Any "p1",
		Any "p2",
		AnyPtr "p3",
		AnyPtr "p4",
	}
	ns "NETWORK"
	returns "BOOL"
	doc [[!
	]]

native "0x9BF438815F5D96EA"
    hash "0x9BF438815F5D96EA"
	jhash (0xCBA7242F)
	arguments {
		Any "p0",
		Any "p1",
		AnyPtr "p2",
		Any "p3",
		Any "p4",
		Any "p5",
	}
	ns "NETWORK"
	returns "BOOL"
	doc [[!
<summary>
```
Gets some kind of data related to missions like the online player created races n stuff  
```
</summary>
	]]

native "0x9FEDF86898F100E9"
    hash "0x9FEDF86898F100E9"
	jhash (0x798D6C27)
	ns "NETWORK"
	returns "Any"
	doc [[!
	]]

native "0x9ECA15ADFE141431"
    hash "0x9ECA15ADFE141431"
	ns "NETWORK"
	returns "Any"
	doc [[!
<summary>
Disconnects you from the session, and starts loading single player, however you still remain connected to the server (only if you're the host, if you're not then you also (most likely) get disconnected from the server) and other players will not be able to join until you exit the game.

If you're already in SP then it'll re-load singleplayer.

You might need to DoScreenFadeIn and ShutdownLoadingScreen otherwise you probably won't end up loading into SP at all.

Somewhat related note: opening the pause menu after loading into this 'singleplayer' mode crashes the game.
</summary>
<returns>always seems to be 1</returns>
	]]

native "0xA12D3A5A3753CC23"
    hash "0xA12D3A5A3753CC23"
	ns "NETWORK"
	returns "Any"
	doc [[!
	]]

native "0xA0FA4EC6A05DA44E"
    hash "0xA0FA4EC6A05DA44E"
	ns "NETWORK"
	returns "Any"
	doc [[!
<summary>
```
MulleDK19: This function is hard-coded to always return 0.  
```
</summary>
	]]

native "0xA1E5E0204A6FCC70"
    hash "0xA1E5E0204A6FCC70"
	jhash (0x405ECA16)
	ns "NETWORK"
	returns "void"
	doc [[!
	]]

native "0xA2E9C1AB8A92E8CD"
    hash "0xA2E9C1AB8A92E8CD"
	arguments {
		BOOL "p0",
	}
	ns "NETWORK"
	returns "void"
	doc [[!
	]]

native "0xA134777FF7F33331"
    hash "0xA134777FF7F33331"
	jhash (0x88B13CDC)
	arguments {
		Any "p0",
		AnyPtr "p1",
	}
	ns "NETWORK"
	returns "BOOL"
	doc [[!
	]]

native "0xA306F470D1660581"
    hash "0xA306F470D1660581"
	ns "NETWORK"
	returns "Any"
	doc [[!
	]]

native "0xA2A707979FE754DC"
    hash "0xA2A707979FE754DC"
	arguments {
		Any "p0",
		Any "p1",
	}
	ns "NETWORK"
	returns "void"
	doc [[!
	]]

native "0xA72835064DD63E4C"
    hash "0xA72835064DD63E4C"
	jhash (0x6A036061)
	ns "NETWORK"
	returns "Any"
	doc [[!
	]]

native "0xA2F952104FC6DD4B"
    hash "0xA2F952104FC6DD4B"
	jhash (0x1FDC75DC)
	arguments {
		Any "p0",
	}
	ns "NETWORK"
	returns "BOOL"
	doc [[!
	]]

native "0xA7862BC5ED1DFD7E"
    hash "0xA7862BC5ED1DFD7E"
	jhash (0x37F5BD93)
	arguments {
		Any "p0",
		Any "p1",
		AnyPtr "p2",
		AnyPtr "p3",
	}
	ns "NETWORK"
	returns "BOOL"
	doc [[!
	]]

native "0xA699957E60D80214"
    hash "0xA699957E60D80214"
	jhash (0xFD261E30)
	arguments {
		Any "p0",
	}
	ns "NETWORK"
	returns "BOOL"
	doc [[!
	]]

native "0xA7E30DE9272B6D49"
    hash "0xA7E30DE9272B6D49"
	jhash (0x644141C5)
	arguments {
		Ped "ped",
		float "x",
		float "y",
		float "z",
		float "p4",
	}
	ns "NETWORK"
	returns "void"
	doc [[!
<summary>
```
NETWORK_OVERRIDE_???  
```
</summary>
	]]

native "0xA7C511FA1C5BDA38"
    hash "0xA7C511FA1C5BDA38"
	arguments {
		Any "p0",
		Any "p1",
	}
	ns "NETWORK"
	returns "void"
	doc [[!
	]]

native "0xA9240A96C74CCA13"
    hash "0xA9240A96C74CCA13"
	jhash (0x8F6754AE)
	arguments {
		Any "p0",
	}
	ns "NETWORK"
	returns "BOOL"
	doc [[!
	]]

native "0xA8ACB6459542A8C8"
    hash "0xA8ACB6459542A8C8"
	ns "NETWORK"
	returns "Any"
	doc [[!
	]]

native "0xAAA553E7DD28A457"
    hash "0xAAA553E7DD28A457"
	arguments {
		BOOL "p0",
	}
	ns "NETWORK"
	returns "void"
	doc [[!
<summary>
```
console hash: 0xFD0F7EDD  
```
</summary>
	]]

native "0xAA5FAFCD2C5F5E47"
    hash "0xAA5FAFCD2C5F5E47"
	ns "NETWORK"
	returns "Any"
	doc [[!
	]]

native "0xAEAB987727C5A8A4"
    hash "0xAEAB987727C5A8A4"
	jhash (0x9FEEAA9C)
	arguments {
		Any "p0",
	}
	ns "NETWORK"
	returns "BOOL"
	doc [[!
	]]

native "0xB07D3185E11657A5"
    hash "0xB07D3185E11657A5"
	jhash (0xEDA68956)
	arguments {
		Entity "p0",
	}
	ns "NETWORK"
	returns "BOOL"
	doc [[!
	]]

native "0xADB57E5B663CCA8B"
    hash "0xADB57E5B663CCA8B"
	jhash (0x92268BB5)
	arguments {
		Player "p0",
		floatPtr "p1",
		floatPtr "p2",
	}
	ns "NETWORK"
	returns "void"
	doc [[!
<summary>
```
gets 2 floats from the CNetGamePlayer of p0 and stores them in p1 and p2.  
Possibly waypoint?  
```
</summary>
	]]

native "0xAEEF48CDF5B6CE7C"
    hash "0xAEEF48CDF5B6CE7C"
	jhash (0x2D817A5E)
	arguments {
		Any "p0",
		Any "p1",
	}
	ns "NETWORK"
	returns "BOOL"
	doc [[!
	]]

native "0xB2092A1EAA7FD45F"
    hash "0xB2092A1EAA7FD45F"
	arguments {
		Any "p0",
	}
	ns "NETWORK"
	returns "Any"
	doc [[!
	]]

native "0xB13E88E655E5A3BC"
    hash "0xB13E88E655E5A3BC"
	jhash (0x36A5F2DA)
	ns "NETWORK"
	returns "void"
	doc [[!
	]]

native "0xB309EBEA797E001F"
    hash "0xB309EBEA797E001F"
	jhash (0x5C0AB2A9)
	arguments {
		Any "p0",
	}
	ns "NETWORK"
	returns "Any"
	doc [[!
	]]

native "0xB4271092CA7EDF48"
    hash "0xB4271092CA7EDF48"
	jhash (0x1AA3A0D5)
	arguments {
		Any "p0",
	}
	ns "NETWORK"
	returns "Any"
	doc [[!
	]]

native "0xB37E4E6A2388CA7B"
    hash "0xB37E4E6A2388CA7B"
	jhash (0x755A2B3E)
	ns "NETWORK"
	returns "Any"
	doc [[!
	]]

native "0xB5D3453C98456528"
    hash "0xB5D3453C98456528"
	ns "NETWORK"
	returns "Any"
	doc [[!
	]]

native "0xB57A49545BA53CE7"
    hash "0xB57A49545BA53CE7"
	arguments {
		AnyPtr "p0",
	}
	ns "NETWORK"
	returns "BOOL"
	doc [[!
	]]

native "0xB746D20B17F2A229"
    hash "0xB746D20B17F2A229"
	jhash (0x9567392B)
	arguments {
		AnyPtr "p0",
		AnyPtr "p1",
	}
	ns "NETWORK"
	returns "BOOL"
	doc [[!
	]]

native "0xB606E6CC59664972"
    hash "0xB606E6CC59664972"
	jhash (0x866D1B67)
	arguments {
		Any "p0",
	}
	ns "NETWORK"
	returns "void"
	doc [[!
<summary>
**This native does absolutely nothing, just a nullsub**
</summary>
	]]

native "0xBA7F0B77D80A4EB7"
    hash "0xBA7F0B77D80A4EB7"
	arguments {
		Any "p0",
		Any "p1",
	}
	ns "NETWORK"
	returns "void"
	doc [[!
	]]

native "0xB7C7F6AD6424304B"
    hash "0xB7C7F6AD6424304B"
	jhash (0x371BBA08)
	ns "NETWORK"
	returns "void"
	doc [[!
	]]

native "0xBA96394A0EECFA65"
    hash "0xBA96394A0EECFA65"
	jhash (0x0D35DD93)
	ns "NETWORK"
	returns "void"
	doc [[!
	]]

native "0xBA9775570DB788CF"
    hash "0xBA9775570DB788CF"
	jhash (0x358D1D77)
	ns "NETWORK"
	returns "Any"
	doc [[!
	]]

native "0xBBDF066252829606"
    hash "0xBBDF066252829606"
	jhash (0x72052DB3)
	arguments {
		Any "p0",
		BOOL "p1",
	}
	ns "NETWORK"
	returns "void"
	doc [[!
	]]

native "0xBAF6BABF9E7CCC13"
    hash "0xBAF6BABF9E7CCC13"
	jhash (0x744A9EA5)
	arguments {
		int "p0",
		AnyPtr "p1",
	}
	ns "NETWORK"
	returns "Any"
	doc [[!
	]]

native "0xBD545D44CCE70597"
    hash "0xBD545D44CCE70597"
	ns "NETWORK"
	returns "BOOL"
	doc [[!
<summary>
```
MulleDK19: This function is hard-coded to always return 1.  
```
</summary>
	]]

native "0xBD0BE0BFC927EAC1"
    hash "0xBD0BE0BFC927EAC1"
	ns "NETWORK"
	returns "void"
	doc [[!
	]]

native "0xBDB6F89C729CF388"
    hash "0xBDB6F89C729CF388"
	ns "NETWORK"
	returns "Any"
	doc [[!
	]]

native "0xBEC0816FF5ACBCDA"
    hash "0xBEC0816FF5ACBCDA"
	arguments {
		Any "p0",
		Any "p1",
	}
	ns "NETWORK"
	returns "void"
	doc [[!
	]]

native "0xBF09786A7FCAB582"
    hash "0xBF09786A7FCAB582"
	jhash (0xA5A0C695)
	arguments {
		Any "p0",
	}
	ns "NETWORK"
	returns "Any"
	doc [[!
	]]

native "0xBF22E0F32968E967"
    hash "0xBF22E0F32968E967"
	jhash (0x22E03AD0)
	arguments {
		Player "player",
		BOOL "p1",
	}
	ns "NETWORK"
	returns "void"
	doc [[!
<summary>
```
respawn player  
```
</summary>
	]]

native "0xC0D2AF00BCC234CA"
    hash "0xC0D2AF00BCC234CA"
	ns "NETWORK"
	returns "Any"
	doc [[!
	]]

native "0xC22912B1D85F26B1"
    hash "0xC22912B1D85F26B1"
	jhash (0x8570DD34)
	arguments {
		int "p0",
		intPtr "p1",
		Vector3Ptr "p2",
	}
	ns "NETWORK"
	returns "BOOL"
	doc [[!
<summary>
```
Seems to return time in vector3  
```
</summary>
	]]

native "0xC32EA7A2F6CA7557"
    hash "0xC32EA7A2F6CA7557"
	jhash (0x966C90FD)
	ns "NETWORK"
	returns "Any"
	doc [[!
	]]

native "0xC42DD763159F3461"
    hash "0xC42DD763159F3461"
	jhash (0xFBBAC350)
	ns "NETWORK"
	returns "Any"
	doc [[!
	]]

native "0xC3BFED92026A2AAD"
    hash "0xC3BFED92026A2AAD"
	arguments {
		Any "p0",
		Any "p1",
		Any "p2",
		Any "p3",
		Any "p4",
	}
	ns "NETWORK"
	returns "Any"
	doc [[!
	]]

native "0xC505036A35AFD01B"
    hash "0xC505036A35AFD01B"
	jhash (0xA100CC97)
	arguments {
		BOOL "p0",
	}
	ns "NETWORK"
	returns "void"
	doc [[!
	]]

native "0xC434133D9BA52777"
    hash "0xC434133D9BA52777"
	arguments {
		Any "p0",
		Any "p1",
	}
	ns "NETWORK"
	returns "Any"
	doc [[!
	]]

native "0xC571D0E77D8BBC29"
    hash "0xC571D0E77D8BBC29"
	ns "NETWORK"
	returns "Any"
	doc [[!
<summary>
```
NETWORK_IS_TRANSITION_???  
```
</summary>
	]]

native "0xC55A0B40FFB1ED23"
    hash "0xC55A0B40FFB1ED23"
	jhash (0x82146BE9)
	ns "NETWORK"
	returns "Any"
	doc [[!
	]]

native "0xC7ABAC5DE675EE3B"
    hash "0xC7ABAC5DE675EE3B"
	jhash (0x32A4EB22)
	ns "NETWORK"
	returns "Any"
	doc [[!
	]]

native "0xC64DED7EF0D2FE37"
    hash "0xC64DED7EF0D2FE37"
	jhash (0x2B7B57B3)
	arguments {
		AnyPtr "p0",
	}
	ns "NETWORK"
	returns "Any"
	doc [[!
	]]

native "0xC7BE335216B5EC7C"
    hash "0xC7BE335216B5EC7C"
	jhash (0x8687E285)
	ns "NETWORK"
	returns "Any"
	doc [[!
	]]

native "0xC7397A83F7A2A462"
    hash "0xC7397A83F7A2A462"
	arguments {
		AnyPtr "p0",
		Any "p1",
		BOOL "p2",
		AnyPtr "p3",
	}
	ns "NETWORK"
	returns "BOOL"
	doc [[!
	]]

native "0xC9B43A33D09CADA7"
    hash "0xC9B43A33D09CADA7"
	arguments {
		Any "p0",
	}
	ns "NETWORK"
	returns "void"
	doc [[!
	]]

native "0xCA94551B50B4932C"
    hash "0xCA94551B50B4932C"
	jhash (0x37877757)
	arguments {
		Any "p0",
	}
	ns "NETWORK"
	returns "Any"
	doc [[!
	]]

native "0xC87E740D9F3872CC"
    hash "0xC87E740D9F3872CC"
	jhash (0xC1487110)
	ns "NETWORK"
	returns "Any"
	doc [[!
	]]

native "0xCA575C391FEA25CC"
    hash "0xCA575C391FEA25CC"
	jhash (0xE797A4B6)
	arguments {
		Any "p0",
	}
	ns "NETWORK"
	returns "void"
	doc [[!
	]]

native "0xCCA4318E1AB03F1F"
    hash "0xCCA4318E1AB03F1F"
	arguments {
		AnyPtr "p0",
	}
	ns "NETWORK"
	returns "BOOL"
	doc [[!
	]]

native "0xCF61D4B4702EE9EB"
    hash "0xCF61D4B4702EE9EB"
	jhash (0xF4F13B06)
	ns "NETWORK"
	returns "int"
	doc [[!
	]]

native "0xCFD115B373C0DF63"
    hash "0xCFD115B373C0DF63"
	jhash (0xA19A238D)
	arguments {
		Any "p0",
		AnyPtr "p1",
	}
	ns "NETWORK"
	returns "void"
	doc [[!
	]]

native "0xCAE55F48D3D7875C"
    hash "0xCAE55F48D3D7875C"
	jhash (0x5BE529F7)
	arguments {
		Any "p0",
	}
	ns "NETWORK"
	returns "void"
	doc [[!
	]]

native "0xCB215C4B56A7FAE7"
    hash "0xCB215C4B56A7FAE7"
	jhash (0xD8FEC4F8)
	arguments {
		BOOL "p0",
	}
	ns "NETWORK"
	returns "int"
	doc [[!
	]]

native "0xCFEB46DCD7D8D5EB"
    hash "0xCFEB46DCD7D8D5EB"
	jhash (0x1A3EA6CD)
	arguments {
		BOOL "p0",
	}
	ns "NETWORK"
	returns "void"
	doc [[!
	]]

native "0xCD71A4ECAB22709E"
    hash "0xCD71A4ECAB22709E"
	jhash (0xBC54371B)
	arguments {
		Entity "entity",
	}
	ns "NETWORK"
	returns "void"
	doc [[!
	]]

native "0xD05D1A6C74DA3498"
    hash "0xD05D1A6C74DA3498"
	jhash (0x48CCC328)
	arguments {
		AnyPtr "p0",
		BOOL "p1",
		AnyPtr "p2",
	}
	ns "NETWORK"
	returns "BOOL"
	doc [[!
	]]

native "0xD313DE83394AF134"
    hash "0xD313DE83394AF134"
	jhash (0x3EA9D44C)
	ns "NETWORK"
	returns "Any"
	doc [[!
	]]

native "0xCFEB8AF24FC1D0BB"
    hash "0xCFEB8AF24FC1D0BB"
	arguments {
		BOOL "p0",
	}
	ns "NETWORK"
	returns "void"
	doc [[!
	]]

native "0xD39B3FFF8FFDD5BF"
    hash "0xD39B3FFF8FFDD5BF"
	jhash (0x51B2D848)
	arguments {
		Any "p0",
	}
	ns "NETWORK"
	returns "Any"
	doc [[!
	]]

native "0xD0A484CB2F829FBE"
    hash "0xD0A484CB2F829FBE"
	ns "NETWORK"
	returns "Any"
	doc [[!
<summary>
```
x360 Hash: 0xF637166E  
```
</summary>
	]]

native "0xD38C4A6D047C019D"
    hash "0xD38C4A6D047C019D"
	jhash (0x17CBC608)
	ns "NETWORK"
	returns "Any"
	doc [[!
	]]

native "0xD5A4B59980401588"
    hash "0xD5A4B59980401588"
	jhash (0x4609D596)
	arguments {
		Any "p0",
		Any "p1",
		AnyPtr "p2",
		AnyPtr "p3",
	}
	ns "NETWORK"
	returns "BOOL"
	doc [[!
	]]

native "0xD7B6C73CAD419BCF"
    hash "0xD7B6C73CAD419BCF"
	arguments {
		Any "p0",
	}
	ns "NETWORK"
	returns "void"
	doc [[!
	]]

native "0xD53ACDBEF24A46E8"
    hash "0xD53ACDBEF24A46E8"
	jhash (0x4908A514)
	ns "NETWORK"
	returns "Any"
	doc [[!
	]]

native "0xDEB2B99A1AF1A2A6"
    hash "0xDEB2B99A1AF1A2A6"
	arguments {
		Any "p0",
	}
	ns "NETWORK"
	returns "Any"
	doc [[!
	]]

native "0xD66C9E72B3CC4982"
    hash "0xD66C9E72B3CC4982"
	arguments {
		AnyPtr "p0",
		Any "p1",
	}
	ns "NETWORK"
	returns "int"
	doc [[!
	]]

native "0xE16AA70CE9BEEDC3"
    hash "0xE16AA70CE9BEEDC3"
	arguments {
		Any "p0",
	}
	ns "NETWORK"
	returns "Any"
	doc [[!
	]]

native "0xDFFA5BE8381C3314"
    hash "0xDFFA5BE8381C3314"
	ns "NETWORK"
	returns "Any"
	doc [[!
	]]

native "0xE64A3CA08DFA37A9"
    hash "0xE64A3CA08DFA37A9"
	jhash (0x69956127)
	arguments {
		Any "p0",
	}
	ns "NETWORK"
	returns "BOOL"
	doc [[!
	]]

native "0xE66C690248F11150"
    hash "0xE66C690248F11150"
	jhash (0x4818ACD0)
	arguments {
		Entity "p0",
		Any "p1",
	}
	ns "NETWORK"
	returns "void"
	doc [[!
	]]

native "0xE0A6138401BCB837"
    hash "0xE0A6138401BCB837"
	jhash (0x2DE69817)
	ns "NETWORK"
	returns "Any"
	doc [[!
	]]

native "0xE6717E652B8C8D8A"
    hash "0xE6717E652B8C8D8A"
	arguments {
		Any "p0",
		Any "p1",
	}
	ns "NETWORK"
	returns "void"
	doc [[!
	]]

native "0xEA14EEF5B7CD2C30"
    hash "0xEA14EEF5B7CD2C30"
	jhash (0xEEFC8A55)
	ns "NETWORK"
	returns "Any"
	doc [[!
	]]

native "0xEBEFC2E77084F599"
    hash "0xEBEFC2E77084F599"
	jhash (0xE0C28DB5)
	arguments {
		Any "p0",
		charPtr "p1",
		BOOL "p2",
	}
	ns "NETWORK"
	returns "void"
	doc [[!
<summary>
```
example from scripts:  
unk_0xE0C28DB5(0,Global_2398291.imm_726,1);  
that global is for ps3/xbox not pc  
no idea what this does does  
```
</summary>
	]]

native "0xE9B99B6853181409"
    hash "0xE9B99B6853181409"
	jhash (0x021D5A94)
	ns "NETWORK"
	returns "void"
	doc [[!
	]]

native "0xEBCAB9E5048434F4"
    hash "0xEBCAB9E5048434F4"
	ns "NETWORK"
	returns "Any"
	doc [[!
<summary>
```
MulleDK19: This function is hard-coded to always return 1.  
```
</summary>
	]]

native "0xEBF8284D8CADEB53"
    hash "0xEBF8284D8CADEB53"
	jhash (0x9773F36A)
	ns "NETWORK"
	returns "void"
	doc [[!
	]]

native "0xEDF7F927136C224B"
    hash "0xEDF7F927136C224B"
	jhash (0xCC2356E3)
	ns "NETWORK"
	returns "Any"
	doc [[!
	]]

native "0xEBFA8D50ADDC54C4"
    hash "0xEBFA8D50ADDC54C4"
	jhash (0xF50BC67A)
	arguments {
		Any "p0",
	}
	ns "NETWORK"
	returns "BOOL"
	doc [[!
	]]

native "0xF083835B70BA9BFE"
    hash "0xF083835B70BA9BFE"
	jhash (0xC47352E7)
	ns "NETWORK"
	returns "void"
	doc [[!
	]]

native "0xEF0912DDF7C4CB4B"
    hash "0xEF0912DDF7C4CB4B"
	jhash (0x132CA01E)
	ns "NETWORK"
	returns "BOOL"
	doc [[!
<summary>
```
dont know what this native does but im storing some documentation here  
_NETWORK_VOICE_CONNECT_TO_PLAYER  
_NETWORK_GET_GAMER_STATUS  
_NETWORK_HAS_TRANSITION_INVITE_BEEN_ACKED  
_NETWORK_SEND_PRESENCE_INVITE  
_NETWORK_SEND_PRESENCE_TRANSITION_INVITE  
_NETWORK_CHECK_DATA_MANAGER_SUCCEEDED_FOR_HANDLE  
_NETWORK_CHECK_DATA_MANAGER_FOR_HANDLE  
_NETWORK_CAN_COMMUNICATE_WITH_GAMER  
_NETWORK_CRC_HASH_CHECK_EVENT  
```
</summary>
	]]

native "0xF12E6CD06C73D69E"
    hash "0xF12E6CD06C73D69E"
	ns "NETWORK"
	returns "Any"
	doc [[!
	]]

native "0xF03755696450470C"
    hash "0xF03755696450470C"
	jhash (0x7F9B9052)
	ns "NETWORK"
	returns "void"
	doc [[!
	]]

native "0xF1EEA2DDA9FFA69D"
    hash "0xF1EEA2DDA9FFA69D"
	jhash (0x6CC062FC)
	arguments {
		Any "p0",
	}
	ns "NETWORK"
	returns "void"
	doc [[!
	]]

native "0xF1B84178F8674195"
    hash "0xF1B84178F8674195"
	jhash (0x41702C8A)
	arguments {
		Any "p0",
	}
	ns "NETWORK"
	returns "void"
	doc [[!
	]]

native "0xF2EAC213D5EA0623"
    hash "0xF2EAC213D5EA0623"
	jhash (0x965EA007)
	ns "NETWORK"
	returns "Any"
	doc [[!
	]]

native "0xF287F506767CC8A9"
    hash "0xF287F506767CC8A9"
	ns "NETWORK"
	returns "Any"
	doc [[!
	]]

native "0xF46A1E03E8755980"
    hash "0xF46A1E03E8755980"
	jhash (0xD33AFF79)
	arguments {
		BOOL "p0",
	}
	ns "NETWORK"
	returns "void"
	doc [[!
	]]

native "0xF45352426FF3A4F0"
    hash "0xF45352426FF3A4F0"
	jhash (0xF633805A)
	arguments {
		intPtr "clanDesc",
		int "bufferSize",
		intPtr "networkHandle",
	}
	ns "NETWORK"
	returns "void"
	doc [[!
<summary>
```
bufferSize is 35 in the scripts.  
```
</summary>
	]]

native "0xF49ABC20D8552257"
    hash "0xF49ABC20D8552257"
	jhash (0x454C7B67)
	arguments {
		Any "p0",
	}
	ns "NETWORK"
	returns "void"
	doc [[!
	]]

native "0xF53E48461B71EECB"
    hash "0xF53E48461B71EECB"
	jhash (0xB4668B23)
	arguments {
		Any "p0",
	}
	ns "NETWORK"
	returns "BOOL"
	doc [[!
	]]

native "0xF814FEC6A19FD6E0"
    hash "0xF814FEC6A19FD6E0"
	jhash (0x32B7A076)
	ns "NETWORK"
	returns "void"
	doc [[!
	]]

native "0xF6F4383B7C92F11A"
    hash "0xF6F4383B7C92F11A"
	arguments {
		Any "p0",
	}
	ns "NETWORK"
	returns "void"
	doc [[!
	]]

native "0xF98DDE0A8ED09323"
    hash "0xF98DDE0A8ED09323"
	jhash (0x213C6D36)
	arguments {
		BOOL "p0",
	}
	ns "NETWORK"
	returns "void"
	doc [[!
	]]

native "0xF9B83B77929D8863"
    hash "0xF9B83B77929D8863"
	jhash (0xBEDC4503)
	ns "NETWORK"
	returns "Any"
	doc [[!
	]]

native "0xFA2888E3833C8E96"
    hash "0xFA2888E3833C8E96"
	jhash (0x7F70C15A)
	ns "NETWORK"
	returns "void"
	doc [[!
	]]

native "0xF9E1CCAE8BA4C281"
    hash "0xF9E1CCAE8BA4C281"
	jhash (0x9EFBD5D1)
	arguments {
		Any "p0",
		Any "p1",
		AnyPtr "p2",
		AnyPtr "p3",
	}
	ns "NETWORK"
	returns "BOOL"
	doc [[!
	]]

native "0xFAE628F1E9ADB239"
    hash "0xFAE628F1E9ADB239"
	arguments {
		Any "p0",
		Any "p1",
		Any "p2",
	}
	ns "NETWORK"
	returns "void"
	doc [[!
	]]

native "0xFAFC23AEE23868DB"
    hash "0xFAFC23AEE23868DB"
	ns "NETWORK"
	returns "Any"
	doc [[!
	]]

native "0xFB1F9381E80FA13F"
    hash "0xFB1F9381E80FA13F"
	jhash (0x0679CE71)
	arguments {
		int "p0",
		AnyPtr "p1",
	}
	ns "NETWORK"
	returns "Any"
	doc [[!
<summary>
```
p0 is always 0. p1 is pointing to a global.  
```
</summary>
	]]

native "0xFB680D403909DC70"
    hash "0xFB680D403909DC70"
	jhash (0xFFB2ADA1)
	arguments {
		Any "p0",
		Any "p1",
	}
	ns "NETWORK"
	returns "void"
	doc [[!
	]]

native "0xFB8F2A6F3DF08CBE"
    hash "0xFB8F2A6F3DF08CBE"
	jhash (0x44BFB619)
	ns "NETWORK"
	returns "void"
	doc [[!
	]]

native "0xFBC5E768C7A77A6A"
    hash "0xFBC5E768C7A77A6A"
	jhash (0xCE569932)
	ns "NETWORK"
	returns "Any"
	doc [[!
	]]

native "0xFC18DB55AE19E046"
    hash "0xFC18DB55AE19E046"
	jhash (0xA7E36020)
	arguments {
		BOOL "p0",
	}
	ns "NETWORK"
	returns "void"
	doc [[!
	]]

native "0xFD75DABC0957BF33"
    hash "0xFD75DABC0957BF33"
	jhash (0x511E6F50)
	arguments {
		BOOL "p0",
	}
	ns "NETWORK"
	returns "void"
	doc [[!
	]]

native "0xFFE1E5B792D92B34"
    hash "0xFFE1E5B792D92B34"
	ns "NETWORK"
	returns "Any"
	doc [[!
<summary>
```
may be 0xBF21818E  
related to: NETWORK_BAIL  
NETWORK_BAIL_TRANSITION  
NETWORK_JOIN_GROUP_ACTIVITY  
NETWORK_JOIN_TRANSITION  
NETWORK_LAUNCH_TRANSITION  
NETWORK_SESSION_HOST  
NETWORK_SESSION_HOST_CLOSED  
NETWORK_SESSION_HOST_FRIENDS_ONLY  
NETWORK_SESSION_HOST_SINGLE_PLAYER  
NETWORK_SESSION_VOICE_LEAVE  
```
</summary>
	]]

native "0xFD8B834A8BA05048"
    hash "0xFD8B834A8BA05048"
	jhash (0xC6609191)
	ns "NETWORK"
	returns "Any"
	doc [[!
<summary>
```
NETWORK_IS_IN_???  
```
</summary>
	]]

native "NET_TO_ENT"
    hash "0xBFFEAB45A9A9094A"
	jhash (0x5E149683)
	arguments {
		int "netHandle",
	}
	ns "NETWORK"
	returns "Entity"
	doc [[!
<summary>
```
gets the entity id of a network id  
```
</summary>
	]]

native "NET_TO_OBJ"
    hash "0xD8515F5FEA14CB3F"
	jhash (0x27AA14D8)
	arguments {
		int "netHandle",
	}
	ns "NETWORK"
	returns "Object"
	doc [[!
<summary>
```
gets the object id of a network id  
```
</summary>
	]]

native "NET_TO_VEH"
    hash "0x367B936610BA360C"
	jhash (0x7E02FAEA)
	arguments {
		int "netHandle",
	}
	ns "NETWORK"
	returns "Vehicle"
	doc [[!
	]]

native "NET_TO_PED"
    hash "0xBDCD95FC216A8B3E"
	jhash (0x87717DD4)
	arguments {
		int "netHandle",
	}
	ns "NETWORK"
	returns "Ped"
	doc [[!
<summary>
```
gets the ped id of a network id  
```
</summary>
	]]

native "NETWORK_ACCESS_TUNABLE_BOOL"
    hash "0xAA6A47A573ABB75A"
	jhash (0x8A04E1FE)
	arguments {
		charPtr "tunableContext",
		charPtr "tunableName",
	}
	alias "0xAA6A47A573ABB75A"
	ns "NETWORK"
	returns "BOOL"
	doc [[!
<summary>
```
Some of the tunable contexts used in the PC scripts:  
- "BASE_GLOBALS"  
- "MP_GLOBAL"  
and some of the tunable names used in the PC scripts:  
- "XP_MULTIPLIER"  
- "CASH_MULTIPLIER"  
- "ARMOUR_REWARD_GIFT"  
- "TOGGLE_CREATORS_OFF"  
- "MULTIPLAYER_DISABLED"  
```
</summary>
	]]

native "NETWORK_ACCEPT_PRESENCE_INVITE"
    hash "0xFA91550DF9318B22"
	jhash (0xE5DA4CED)
	arguments {
		Any "p0",
	}
	ns "NETWORK"
	returns "BOOL"
	doc [[!
	]]

native "_NETWORK_ACCESS_TUNABLE_BOOL_HASH_FAIL_VAL"
    hash "0xC7420099936CE286"
	arguments {
		Hash "tunableContext",
		Hash "tunableName",
		BOOL "defaultValue",
	}
	alias "0xC7420099936CE286"
	ns "NETWORK"
	returns "BOOL"
	doc [[!
<summary>
```
Returns a default value if the tunable don't exist.  
Console Hash  
```
</summary>
	]]

native "_NETWORK_ACCESS_TUNABLE_BOOL_HASH"
    hash "0xEA16B69D93D71A45"
	arguments {
		Hash "tunableContext",
		Hash "tunableName",
	}
	alias "0xEA16B69D93D71A45"
	ns "NETWORK"
	returns "BOOL"
	doc [[!
<summary>
```
Console Hash - 0x18867C61 = NETWORK_ACCESS_TUNABLE_BOOL_HASH  
```
</summary>
	]]

native "_NETWORK_ACCESS_TUNABLE_FLOAT_HASH"
    hash "0x972BC203BBC4C4D5"
	arguments {
		Hash "tunableContext",
		Hash "tunableName",
		floatPtr "value",
	}
	alias "0x972BC203BBC4C4D5"
	ns "NETWORK"
	returns "BOOL"
	doc [[!
<summary>
```
Console Hash - 0x3972551F = NETWORK_ACCESS_TUNABLE_FLOAT_HASH  
```
</summary>
	]]

native "NETWORK_ACCESS_TUNABLE_FLOAT"
    hash "0xE5608CA7BC163A5F"
	jhash (0x41E8912A)
	arguments {
		charPtr "tunableContext",
		charPtr "tunableName",
		floatPtr "value",
	}
	alias "0xE5608CA7BC163A5F"
	ns "NETWORK"
	returns "BOOL"
	doc [[!
<summary>
```
Some of the tunable contexts used in the PC scripts:  
- "BASE_GLOBALS"  
- "MP_GLOBAL"  
- "MP_FM_RACES"  
- "MP_FM_RACES_CAR"  
- "MP_FM_RACES_SEA"  
- "MP_FM_RACES_CAR"  
- "MP_FM_RACES_AIR"  
- "MP_FM_BASEJUMP"  
- "MP_FM_RACES_CYCLE"  
- "MP_FM_RACES_BIKE"  
- "MP_FM_MISSIONS"  
- "MP_FM_CONTACT"  
- "MP_FM_RANDOM"  
- "MP_FM_VERSUS"  
- "MP_FM_LTS"  
- "MP_FM_CAPTURE"  
- "MP_FM_DM"  
- "MP_FM_SURVIVAL"  
- "MP_FM_GANG_ATTACK"  
- "MP_FM_BASEJUMP"  
- "MP_CNC_TEAM_COP"  
- "MP_CNC_TEAM_VAGOS"  
- "MP_CNC_TEAM_LOST"  
and some of the tunable names used in the PC scripts:  
- "XP_MULTIPLIER"  
- "CASH_MULTIPLIER"  
- "ARMOUR_REWARD_GIFT"  
- "TOGGLE_CREATORS_OFF"  
```
</summary>
	]]

native "_NETWORK_ACCESS_TUNABLE_INT_HASH"
    hash "0x40FCE03E50E8DBE8"
	arguments {
		Hash "tunableContext",
		Hash "tunableName",
		intPtr "value",
	}
	alias "0x40FCE03E50E8DBE8"
	ns "NETWORK"
	returns "BOOL"
	doc [[!
<summary>
```
Console Hash - 0xB2E83B75 = NETWORK_ACCESS_TUNABLE_INT_HASH  
```
</summary>
	]]

native "NETWORK_ACCESS_TUNABLE_INT"
    hash "0x8BE1146DFD5D4468"
	jhash (0xE4B3726A)
	arguments {
		charPtr "tunableContext",
		charPtr "tunableName",
		intPtr "value",
	}
	alias "0x8BE1146DFD5D4468"
	ns "NETWORK"
	returns "BOOL"
	doc [[!
<summary>
```
Some of the tunable contexts used in the PC scripts:  
- "MP_FM_RACES"  
- "MP_FM_RACES_CAR"  
- "MP_FM_RACES_SEA"  
- "MP_FM_RACES_CAR"  
- "MP_FM_RACES_AIR"  
- "MP_FM_BASEJUMP"  
- "MP_FM_RACES_CYCLE"  
- "MP_FM_RACES_BIKE"  
- "MP_FM_MISSIONS"  
- "MP_FM_CONTACT"  
- "MP_FM_RANDOM"  
- "MP_FM_VERSUS"  
- "MP_FM_LTS"  
- "MP_FM_CAPTURE"  
- "MP_FM_DM"  
- "MP_FM_SURVIVAL"  
- "MP_FM_GANG_ATTACK"  
- "MP_FM_BASEJUMP"  
- "BASE_GLOBALS"  
- "MP_GLOBAL"  
and some of the tunable names used in the PC scripts:  
- "XP_MULTIPLIER"  
- "CASH_MULTIPLIER"  
- "ARMOUR_REWARD_GIFT"  
- "TOGGLE_CREATORS_OFF"  
```
</summary>
	]]

native "_NETWORK_ADD_ENTITY_ANGLED_AREA"
    hash "0x376C6375BA60293A"
	arguments {
		float "p0",
		float "p1",
		float "p2",
		float "p3",
		float "p4",
		float "p5",
		float "p6",
	}
	alias "0x376C6375BA60293A"
	ns "NETWORK"
	returns "Any"
	doc [[!
<summary>
```
Console hash: 0xCD69BEA1  
```
</summary>
	]]

native "NETWORK_ACTION_FOLLOW_INVITE"
    hash "0xC88156EBB786F8D5"
	jhash (0xAB969F00)
	alias "0xC88156EBB786F8D5"
	ns "NETWORK"
	returns "Any"
	doc [[!
	]]

native "NETWORK_ADD_ENTITY_TO_SYNCHRONISED_SCENE"
    hash "0xF2404D68CBC855FA"
	jhash (0x10DD636C)
	arguments {
		Entity "entity",
		int "netScene",
		charPtr "animDict",
		charPtr "animName",
		float "speed",
		float "speedMulitiplier",
		int "flag",
	}
	ns "NETWORK"
	returns "void"
	doc [[!
	]]

native "NETWORK_ADD_ENTITY_AREA"
    hash "0x494C8FB299290269"
	jhash (0x51030E5B)
	arguments {
		float "p0",
		float "p1",
		float "p2",
		float "p3",
		float "p4",
		float "p5",
	}
	ns "NETWORK"
	returns "Any"
	doc [[!
	]]

native "NETWORK_ADD_FOLLOWERS"
    hash "0x236406F60CF216D6"
	jhash (0x0EC62629)
	arguments {
		intPtr "p0",
		int "p1",
	}
	alias "0x236406F60CF216D6"
	ns "NETWORK"
	returns "void"
	doc [[!
<summary>
```
..  
```
</summary>
	]]

native "NETWORK_ADD_FRIEND"
    hash "0x8E02D73914064223"
	jhash (0x20E5B3EE)
	arguments {
		intPtr "networkHandle",
		charPtr "message",
	}
	ns "NETWORK"
	returns "BOOL"
	doc [[!
	]]

native "NETWORK_ADD_PED_TO_SYNCHRONISED_SCENE"
    hash "0x742A637471BCECD9"
	jhash (0xB386713E)
	arguments {
		Ped "ped",
		int "netScene",
		charPtr "animDict",
		charPtr "animnName",
		float "speed",
		float "speedMultiplier",
		int "duration",
		int "flag",
		float "playbackRate",
		Any "p9",
	}
	ns "NETWORK"
	returns "void"
	doc [[!
	]]

native "NETWORK_AM_I_BLOCKED_BY_GAMER"
    hash "0x15337C7C268A27B2"
	jhash (0xD19B312C)
	arguments {
		AnyPtr "p0",
	}
	ns "NETWORK"
	returns "BOOL"
	doc [[!
	]]

native "NETWORK_AM_I_MUTED_BY_GAMER"
    hash "0xDF02A2C93F1F26DA"
	jhash (0x7685B333)
	arguments {
		AnyPtr "p0",
	}
	ns "NETWORK"
	returns "BOOL"
	doc [[!
	]]

native "NETWORK_AM_I_BLOCKED_BY_PLAYER"
    hash "0x87F395D957D4353D"
	jhash (0x953EF45E)
	arguments {
		Player "player",
	}
	ns "NETWORK"
	returns "BOOL"
	doc [[!
	]]

native "NETWORK_AM_I_MUTED_BY_PLAYER"
    hash "0x9D6981DFC91A8604"
	jhash (0xE128F2B0)
	arguments {
		Player "player",
	}
	ns "NETWORK"
	returns "BOOL"
	doc [[!
	]]

native "NETWORK_APPLY_TRANSITION_PARAMETER"
    hash "0x521638ADA1BA0D18"
	jhash (0xCEE79711)
	arguments {
		Any "p0",
		Any "p1",
	}
	alias "0x521638ADA1BA0D18"
	ns "NETWORK"
	returns "void"
	doc [[!
	]]

native "_NETWORK_ARE_ROS_AVAILABLE"
    hash "0x85443FF4C328F53B"
	jhash (0x3FB40673)
	alias "0x85443FF4C328F53B"
	ns "NETWORK"
	returns "BOOL"
	doc [[!
<summary>
```
Returns whether the Rockstar game services are available or not:  
SCLB_NO_ROS = The Rockstar game services are unavailable right now. Please try again later.  
ros.rockstargames.com  
```
</summary>
	]]

native "NETWORK_ARE_HANDLES_THE_SAME"
    hash "0x57DBA049E110F217"
	jhash (0x45975AE3)
	arguments {
		intPtr "netHandle1",
		intPtr "netHandle2",
	}
	ns "NETWORK"
	returns "BOOL"
	doc [[!
	]]

native "NETWORK_ARE_TRANSITION_DETAILS_VALID"
    hash "0x2615AA2A695930C1"
	jhash (0xCDEBCCE7)
	arguments {
		Any "p0",
	}
	alias "0x2615AA2A695930C1"
	ns "NETWORK"
	returns "BOOL"
	doc [[!
	]]

native "NETWORK_ATTACH_SYNCHRONISED_SCENE_TO_ENTITY"
    hash "0x478DCBD2A98B705A"
	jhash (0x3FE5B222)
	arguments {
		int "netScene",
		Entity "entity",
		int "bone",
	}
	ns "NETWORK"
	returns "void"
	doc [[!
	]]

native "NETWORK_BAIL_TRANSITION"
    hash "0xEAA572036990CD1B"
	jhash (0xB59D74CA)
	ns "NETWORK"
	returns "void"
	doc [[!
	]]

native "NETWORK_BAIL"
    hash "0x95914459A87EBA28"
	jhash (0x87D79A04)
	ns "NETWORK"
	returns "void"
	doc [[!
<summary>
```
This has arguments.. in PC scripts.  
```
</summary>
	]]

native "_NETWORK_BLOCK_INVITES_2"
    hash "0x4A9FDE3A5A6D0437"
	jhash (0x18F03AFD)
	arguments {
		BOOL "p0",
	}
	alias "0x4A9FDE3A5A6D0437"
	ns "NETWORK"
	returns "void"
	doc [[!
<summary>
**This native does absolutely nothing, just a nullsub**
</summary>
	]]

native "NETWORK_BLOCK_INVITES"
    hash "0x34F9E9049454A7A0"
	jhash (0xD156FD1A)
	arguments {
		BOOL "toggle",
	}
	ns "NETWORK"
	returns "void"
	doc [[!
	]]

native "NETWORK_CAN_ACCESS_MULTIPLAYER"
    hash "0xAF50DA1A3F8B1BA4"
	jhash (0xA520B982)
	arguments {
		intPtr "loadingState",
	}
	alias "0xAF50DA1A3F8B1BA4"
	ns "NETWORK"
	returns "BOOL"
	doc [[!
<summary>
```
11 - Need to download tunables.  
12 - Need to download background script.  
Returns 1 if the multiplayer is loaded, otherwhise 0.  
```
</summary>
	]]

native "_NETWORK_BLOCK_KICKED_PLAYERS"
    hash "0x6B07B9CE4D390375"
	jhash (0x0FCE995D)
	arguments {
		BOOL "p0",
	}
	alias "0x6B07B9CE4D390375"
	ns "NETWORK"
	returns "void"
	doc [[!
	]]

native "NETWORK_CAN_COMMUNICATE_WITH_GAMER"
    hash "0xA150A4F065806B1F"
	jhash (0xD05EB7F6)
	arguments {
		intPtr "player",
	}
	ns "NETWORK"
	returns "BOOL"
	doc [[!
	]]

native "NETWORK_CAN_ENTER_MULTIPLAYER"
    hash "0x7E782A910C362C25"
	jhash (0x4A23B9C9)
	ns "NETWORK"
	returns "BOOL"
	doc [[!
	]]

native "NETWORK_CAN_BAIL"
    hash "0x580CE4438479CC61"
	jhash (0x60E1FEDF)
	ns "NETWORK"
	returns "BOOL"
	doc [[!
	]]

native "_NETWORK_CAN_NETWORK_ID_BE_SEEN"
    hash "0xA1607996431332DF"
	jhash (0xEA5176C0)
	arguments {
		int "netId",
	}
	alias "0xA1607996431332DF"
	ns "NETWORK"
	returns "BOOL"
	doc [[!
	]]

native "NETWORK_CAN_SET_WAYPOINT"
    hash "0xC927EC229934AF60"
	jhash (0x009E68F3)
	ns "NETWORK"
	returns "BOOL"
	doc [[!
	]]

native "NETWORK_CAN_SESSION_END"
    hash "0x4EEBC3694E49C572"
	jhash (0xE1FCCDBA)
	ns "NETWORK"
	returns "BOOL"
	doc [[!
	]]

native "_NETWORK_CHAT_MUTE"
    hash "0x57B192B4D4AD23D5"
	jhash (0x2F98B405)
	arguments {
		BOOL "p0",
	}
	alias "0x57B192B4D4AD23D5"
	ns "NETWORK"
	returns "void"
	doc [[!
<summary>
```
this function is toggle when people report you and you get the auto mute message  
```
</summary>
	]]

native "_NETWORK_CLAN_ANIMATION"
    hash "0x729E3401F0430686"
	jhash (0xBDA90BAC)
	arguments {
		charPtr "animDict",
		charPtr "animName",
	}
	alias "0x729E3401F0430686"
	ns "NETWORK"
	returns "BOOL"
	doc [[!
<summary>
```
Only documented...  
```
</summary>
	]]

native "NETWORK_CHANGE_TRANSITION_SLOTS"
    hash "0xEEEDA5E6D7080987"
	jhash (0x1E5F6AEF)
	arguments {
		Any "p0",
		Any "p1",
	}
	alias "0xEEEDA5E6D7080987"
	ns "NETWORK"
	returns "void"
	doc [[!
	]]

native "NETWORK_CLAN_DOWNLOAD_MEMBERSHIP"
    hash "0xA989044E70010ABE"
	jhash (0x8E8CB520)
	arguments {
		intPtr "networkHandle",
	}
	ns "NETWORK"
	returns "BOOL"
	doc [[!
	]]

native "_NETWORK_CHECK_DATA_MANAGER_FOR_HANDLE"
    hash "0x796A87B3B68D1F3D"
	arguments {
		AnyPtr "p0",
	}
	alias "0x796A87B3B68D1F3D"
	ns "NETWORK"
	returns "BOOL"
	doc [[!
<summary>
```
console hash: 0x3624F054  
```
</summary>
	]]

native "NETWORK_CLAN_GET_MEMBERSHIP_COUNT"
    hash "0xAAB11F6C4ADBC2C1"
	jhash (0x25924010)
	arguments {
		intPtr "p0",
	}
	ns "NETWORK"
	returns "int"
	doc [[!
	]]

native "NETWORK_CLAN_GET_MEMBERSHIP_DESC"
    hash "0x48DE78AF2C8885B8"
	jhash (0x3369DD1F)
	arguments {
		intPtr "memberDesc",
		int "p1",
	}
	ns "NETWORK"
	returns "BOOL"
	doc [[!
<summary>
```
networkMembershipMgr memShip;  
int maxMemship = _GET_NUM_MEMBERSHIP_DESC();  
for (int i = 0; i < maxMemship; i++)  
{  
	NETWORK_CLAN_GET_MEMBERSHIP_DESC(&memShip.memHandle, i);  
}  
```
</summary>
	]]

native "NETWORK_CLAN_DOWNLOAD_MEMBERSHIP_PENDING"
    hash "0x5B9E023DC6EBEDC0"
	jhash (0x1FDB590F)
	arguments {
		AnyPtr "p0",
	}
	ns "NETWORK"
	returns "BOOL"
	doc [[!
	]]

native "NETWORK_CLAN_JOIN"
    hash "0x9FAAA4F4FC71F87F"
	jhash (0x79C916C5)
	arguments {
		int "clanDesc",
	}
	ns "NETWORK"
	returns "BOOL"
	doc [[!
	]]

native "NETWORK_CLAN_GET_MEMBERSHIP"
    hash "0xC8BC2011F67B3411"
	jhash (0xCDC4A590)
	arguments {
		intPtr "p0",
		intPtr "clanMembership",
		int "p2",
	}
	ns "NETWORK"
	returns "BOOL"
	doc [[!
<summary>
```
BOOL DEBUG_MEMBRESHIP(int Param)  
{  
	int membership;  
	networkHandleMgr handle;  
	NETWORK_HANDLE_FROM_PLAYER(iSelectedPlayer, &handle.netHandle, 13);  
	if (!_NETWORK_IS_CLAN_MEMBERSHIP_FINISHED_DOWNLOADING())  
	{  
		if (NETWORK_CLAN_REMOTE_MEMBERSHIPS_ARE_IN_CACHE(&Param))  
		{  
if (NETWORK_CLAN_GET_MEMBERSHIP_COUNT(&Param) > 0)  
{  
	if (NETWORK_CLAN_GET_MEMBERSHIP_VALID(&Param, 0))  
	{  
		if (NETWORK_CLAN_GET_MEMBERSHIP(&Param, &membership, -1))  
		{  
_0xF633805A(&membership, 35, &handle.netHandle);  
		}  
	}  
}  
		}  
	}  
	else  
	{  
		NETWORK_CLAN_DOWNLOAD_MEMBERSHIP(&handle.netHandle);  
	}  
}  
```
</summary>
	]]

native "NETWORK_CLAN_PLAYER_IS_ACTIVE"
    hash "0xB124B57F571D8F18"
	jhash (0xAB8319A3)
	arguments {
		intPtr "networkHandle",
	}
	ns "NETWORK"
	returns "BOOL"
	doc [[!
	]]

native "NETWORK_CLAN_GET_MEMBERSHIP_VALID"
    hash "0x48A59CF88D43DF0E"
	jhash (0x48914F6A)
	arguments {
		intPtr "p0",
		Any "p1",
	}
	ns "NETWORK"
	returns "BOOL"
	doc [[!
	]]

native "NETWORK_CLEAR_CLOCK_TIME_OVERRIDE"
    hash "0xD972DF67326F966E"
	jhash (0xC4AEAF49)
	alias "0xD972DF67326F966E"
	ns "NETWORK"
	returns "void"
	doc [[!
	]]

native "NETWORK_CLEAR_FOLLOW_INVITE"
    hash "0x439BFDE3CD0610F6"
	jhash (0x3242F952)
	alias "0x439BFDE3CD0610F6"
	ns "NETWORK"
	returns "Any"
	doc [[!
	]]

native "NETWORK_CLAN_PLAYER_GET_DESC"
    hash "0xEEE6EACBE8874FBA"
	jhash (0x6EE4A282)
	arguments {
		intPtr "clanDesc",
		int "bufferSize",
		intPtr "networkHandle",
	}
	ns "NETWORK"
	returns "BOOL"
	doc [[!
<summary>
```
bufferSize is 35 in the scripts.  
bufferSize is the elementCount of p0(desc), sizeof(p0) == 280 == p1*8 == 35 * 8, p2(netHandle) is obtained from NETWORK::NETWORK_HANDLE_FROM_PLAYER.  And no, I can't explain why 35 * sizeof(int) == 280 and not 140, but I'll get back to you on that.  
the answer is: because p0 an int64_t* / int64_t[35].  and FYI p2 is an int64_t[13]  
pastebin.com/cSZniHak  
```
</summary>
	]]

native "NETWORK_CLAN_REMOTE_MEMBERSHIPS_ARE_IN_CACHE"
    hash "0xBB6E6FEE99D866B2"
	jhash (0x40202867)
	arguments {
		intPtr "p0",
	}
	ns "NETWORK"
	returns "BOOL"
	doc [[!
	]]

native "NETWORK_CLEAR_PROPERTY_ID"
    hash "0xC2B82527CA77053E"
	jhash (0x38BC35C8)
	alias "0xC2B82527CA77053E"
	ns "NETWORK"
	returns "void"
	doc [[!
	]]

native "NETWORK_CLEAR_VOICE_CHANNEL"
    hash "0xE036A705F989E049"
	jhash (0x9ECF722A)
	alias "0xE036A705F989E049"
	ns "NETWORK"
	returns "void"
	doc [[!
	]]

native "NETWORK_CLEAR_FOLLOWERS"
    hash "0x058F43EC59A8631A"
	jhash (0x5E557307)
	alias "0x058F43EC59A8631A"
	ns "NETWORK"
	returns "void"
	doc [[!
	]]

native "NETWORK_CLOSE_TRANSITION_MATCHMAKING"
    hash "0x43F4DBA69710E01E"
	jhash (0x82D32D07)
	alias "0x43F4DBA69710E01E"
	ns "NETWORK"
	returns "void"
	doc [[!
	]]

native "NETWORK_CLEAR_FOUND_GAMERS"
    hash "0x6D14CCEE1B40381A"
	jhash (0x6AA9A154)
	ns "NETWORK"
	returns "void"
	doc [[!
	]]

native "_NETWORK_COPY_PED_BLEND_DATA"
    hash "0x99B72C7ABDE5C910"
	arguments {
		Ped "ped",
		Player "player",
	}
	alias "0x99B72C7ABDE5C910"
	ns "NETWORK"
	returns "BOOL"
	doc [[!
<summary>
```
console hash: 0x99F58A07  
Sadly I thought this copied their tattoos, but it just seems to copy their 'blend data'. E.G. skin tone/color, fat/skinny face, etc.  
```
</summary>
	]]

native "NETWORK_CLEAR_TRANSITION_CREATOR_HANDLE"
    hash "0xFB3272229A82C759"
	jhash (0x8BB336F7)
	ns "NETWORK"
	returns "void"
	doc [[!
	]]

native "NETWORK_DISABLE_INVINCIBLE_FLASHING"
    hash "0x9DD368BF06983221"
	jhash (0x8D27280E)
	arguments {
		int "player",
		BOOL "p1",
	}
	alias "0x9DD368BF06983221"
	ns "NETWORK"
	returns "void"
	doc [[!
<summary>
```
hash collision???  
I did this and I didn't see anything happening  
int pindex;  
for (int i = 0; i < 32; i++)  
{  
	if (NETWORK_IS_PARTICIPANT_ACTIVE(INT_TO_PARTICIPANTINDEX(i)))  
	{  
pindex = NETWORK_GET_PLAYER_INDEX(INT_TO_PARTICIPANTINDEX(i));  
NETWORK_DISABLE_INVINCIBLE_FLASHING(pindex, 1);  
	}  
}  
```
</summary>
	]]

native "_NETWORK_CONVERT_SYNCHRONISED_SCENE_TO_SYNCHRONIZED_SCENE"
    hash "0x02C40BF885C567B6"
	jhash (0x16AED87B)
	arguments {
		int "netScene",
	}
	alias "0x02C40BF885C567B6"
	alias "_NETWORK_UNLINK_NETWORKED_SYNCHRONISED_SCENE"
	ns "NETWORK"
	returns "int"
	doc [[!
<summary>
```
netScene to scene  
```
</summary>
	]]

native "NETWORK_DO_TRANSITION_QUICKMATCH"
    hash "0x71FB0EBCD4915D56"
	jhash (0x2FF65C0B)
	arguments {
		Any "p0",
		Any "p1",
		Any "p2",
		Any "p3",
	}
	alias "0x71FB0EBCD4915D56"
	ns "NETWORK"
	returns "BOOL"
	doc [[!
	]]

native "NETWORK_DO_TRANSITION_QUICKMATCH_WITH_GROUP"
    hash "0x9C4AB58491FDC98A"
	jhash (0x5CE60A11)
	arguments {
		Any "p0",
		Any "p1",
		Any "p2",
		Any "p3",
		AnyPtr "p4",
		Any "p5",
	}
	ns "NETWORK"
	returns "BOOL"
	doc [[!
	]]

native "NETWORK_CREATE_SYNCHRONISED_SCENE"
    hash "0x7CD6BC4C2BBDD526"
	jhash (0xB06FE3FE)
	arguments {
		float "x",
		float "y",
		float "z",
		float "xRot",
		float "yRot",
		float "zRot",
		int "p6",
		int "p7",
		int "p8",
		float "p9",
	}
	ns "NETWORK"
	returns "int"
	doc [[!
<summary>
```
returns netScene  
this native is missing 2 params  
float p10, float p11  
```
</summary>
	]]

native "NETWORK_DO_TRANSITION_TO_GAME"
    hash "0x3E9BB38102A589B0"
	jhash (0x1B2114D2)
	arguments {
		BOOL "p0",
		int "maxPlayers",
	}
	ns "NETWORK"
	returns "BOOL"
	doc [[!
	]]

native "NETWORK_DO_TRANSITION_QUICKMATCH_ASYNC"
    hash "0xA091A5E44F0072E5"
	jhash (0x47D61C99)
	arguments {
		Any "p0",
		Any "p1",
		Any "p2",
		Any "p3",
	}
	alias "0xA091A5E44F0072E5"
	ns "NETWORK"
	returns "BOOL"
	doc [[!
	]]

native "NETWORK_DO_TRANSITION_TO_NEW_GAME"
    hash "0x4665F51EFED00034"
	jhash (0x58AFBE63)
	arguments {
		BOOL "p0",
		int "maxPlayers",
		BOOL "p2",
	}
	ns "NETWORK"
	returns "BOOL"
	doc [[!
	]]

native "NETWORK_DO_TRANSITION_TO_FREEMODE"
    hash "0x3AAD8B2FCA1E289F"
	jhash (0xC7CB8ADF)
	arguments {
		AnyPtr "p0",
		Any "p1",
		BOOL "p2",
		int "players",
		BOOL "p4",
	}
	ns "NETWORK"
	returns "BOOL"
	doc [[!
<summary>
```
p2 is true 3/4 of the occurrences I found.  
'players' is the number of players for a session. On PS3/360 it's always 18. On PC it's 32.  
```
</summary>
	]]

native "NETWORK_DOES_ENTITY_EXIST_WITH_NETWORK_ID"
    hash "0x18A47D074708FD68"
	jhash (0x1E2E3177)
	arguments {
		Entity "entity",
	}
	ns "NETWORK"
	returns "BOOL"
	doc [[!
	]]

native "NETWORK_DO_TRANSITION_TO_NEW_FREEMODE"
    hash "0x9E80A5BA8109F974"
	jhash (0xAD13375E)
	arguments {
		AnyPtr "p0",
		AnyPtr "p1",
		int "players",
		BOOL "p3",
		BOOL "p4",
		BOOL "p5",
	}
	ns "NETWORK"
	returns "BOOL"
	doc [[!
	]]

native "_NETWORK_DOES_TUNABLE_EXIST_HASH"
    hash "0xE4E53E1419D81127"
	arguments {
		Hash "tunableContext",
		Hash "tunableName",
	}
	alias "0xE4E53E1419D81127"
	ns "NETWORK"
	returns "BOOL"
	doc [[!
<summary>
```
Console Hash - 0x25915CB9 = NETWORK_DOES_TUNABLE_EXIST_HASH  
```
</summary>
	]]

native "NETWORK_ENABLE_MOTION_DRUGGED"
    hash "0x0B0CC10720653F3B"
	jhash (0x9262744C)
	alias "0x0B0CC10720653F3B"
	ns "NETWORK"
	returns "Any"
	doc [[!
<summary>
```
Pretty sure this is a hash collision  
```
</summary>
	]]

native "NETWORK_DOES_NETWORK_ID_EXIST"
    hash "0x38CE16C96BD11344"
	jhash (0xB8D2C99E)
	arguments {
		int "netID",
	}
	ns "NETWORK"
	returns "BOOL"
	doc [[!
	]]

native "NETWORK_EXPLODE_VEHICLE"
    hash "0x301A42153C9AD707"
	jhash (0x0E1B38AE)
	arguments {
		Vehicle "vehicle",
		BOOL "isAudible",
		BOOL "isInvisible",
		BOOL "p3",
	}
	ns "NETWORK"
	returns "Any"
	doc [[!
<summary>
```
In the console script dumps, this is only referenced once.   
NETWORK::NETWORK_EXPLODE_VEHICLE(vehicle, 1, 0, 0);  
^^^^^ That must be PC script dumps? In X360 Script Dumps it is reference a few times with 2 differences in the parameters.  
Which as you see below is 1, 0, 0 + 1, 1, 0 + 1, 0, and a *param?  
am_plane_takedown.c   
network_explode_vehicle(net_to_veh(Local_40.imm_2), 1, 1, 0);  
armenian2.c   
network_explode_vehicle(Local_80[6 <2>], 1, 0, 0);  
fm_horde_controler.c  
network_explode_vehicle(net_to_veh(*uParam0), 1, 0, *uParam0);  
fm_mission_controller.c, has 6 hits so not going to list them.  
Side note, setting the first parameter to 0 seems to mute sound or so?  
Seems it's like ADD_EXPLOSION, etc. the first 2 params. The 3rd atm no need to worry since it always seems to be 0.  
```
</summary>
	]]

native "NETWORK_DOES_TUNABLE_EXIST"
    hash "0x85E5F8B9B898B20A"
	jhash (0x9FCE9C9A)
	arguments {
		charPtr "tunableContext",
		charPtr "tunableName",
	}
	ns "NETWORK"
	returns "BOOL"
	doc [[!
<summary>
```
Some of the tunable contexts used in the PC scripts:  
- "MP_FM_RACES"  
- "MP_FM_RACES_CAR"  
- "MP_FM_RACES_SEA"  
- "MP_FM_RACES_CAR"  
- "MP_FM_RACES_AIR"  
- "MP_FM_BASEJUMP"  
- "MP_FM_RACES_CYCLE"  
- "MP_FM_RACES_BIKE"  
- "MP_FM_MISSIONS"  
- "MP_FM_CONTACT"  
- "MP_FM_RANDOM"  
- "MP_FM_VERSUS"  
- "MP_FM_LTS"  
- "MP_FM_CAPTURE"  
- "MP_FM_DM"  
- "MP_FM_SURVIVAL"  
- "MP_FM_GANG_ATTACK"  
- "MP_FM_BASEJUMP"  
- "BASE_GLOBALS"  
- "MP_GLOBAL"  
and some of the tunable names used in the PC scripts:  
- "XP_MULTIPLIER"  
- "CASH_MULTIPLIER"  
- "ARMOUR_REWARD_GIFT"  
- "TOGGLE_CREATORS_OFF"  
```
</summary>
	]]

native "NETWORK_END_TUTORIAL_SESSION"
    hash "0xD0AFAFF5A51D72F7"
	jhash (0xBA57E53E)
	ns "NETWORK"
	returns "void"
	doc [[!
	]]

native "NETWORK_FADE_OUT_ENTITY"
    hash "0xDE564951F95E09ED"
	jhash (0x47EDEE56)
	arguments {
		Entity "entity",
		BOOL "normal",
		BOOL "slow",
	}
	ns "NETWORK"
	returns "void"
	doc [[!
<summary>
```
normal - transition like when your coming out of LSC  
slow - transition like when you walk into a mission  
```
</summary>
	]]

native "_NETWORK_FORCE_LOCAL_USE_OF_SYNCED_SCENE_CAMERA"
    hash "0xCF8BD3B0BD6D42D7"
	jhash (0xBFFE8B5C)
	arguments {
		int "netScene",
		charPtr "animDict",
		charPtr "animName",
	}
	alias "0xCF8BD3B0BD6D42D7"
	ns "NETWORK"
	returns "void"
	doc [[!
	]]

native "NETWORK_FADE_IN_ENTITY"
    hash "0x1F4ED342ACEFE62D"
	jhash (0x9B9FCD02)
	arguments {
		Entity "entity",
		BOOL "state",
	}
	ns "NETWORK"
	returns "void"
	doc [[!
<summary>
```
state - 0 does 5 fades  
state - 1 does 6 fades  
native is missing third argument, also boolean, setting to 1 made vehicle fade in slower, probably "slow" as per NETWORK_FADE_OUT_ENTITY  
```
</summary>
	]]

native "NETWORK_FIND_MATCHED_GAMERS"
    hash "0xF7B2CFDE5C9F700D"
	jhash (0xA13045D4)
	arguments {
		Any "p0",
		float "p1",
		float "p2",
		float "p3",
	}
	alias "0xF7B2CFDE5C9F700D"
	ns "NETWORK"
	returns "BOOL"
	doc [[!
	]]

native "NETWORK_GAMERTAG_FROM_HANDLE_PENDING"
    hash "0xB071E27958EF4CF0"
	jhash (0xF000828E)
	ns "NETWORK"
	returns "BOOL"
	doc [[!
	]]

native "NETWORK_GAMERTAG_FROM_HANDLE_START"
    hash "0x9F0C0A981D73FA56"
	jhash (0xEBA00C2A)
	arguments {
		intPtr "networkHandle",
	}
	ns "NETWORK"
	returns "BOOL"
	doc [[!
	]]

native "NETWORK_GAMER_HAS_HEADSET"
    hash "0xF2FD55CB574BCC55"
	jhash (0xD036DA4A)
	arguments {
		AnyPtr "p0",
	}
	ns "NETWORK"
	returns "BOOL"
	doc [[!
	]]

native "NETWORK_GAMERTAG_FROM_HANDLE_SUCCEEDED"
    hash "0xFD00798DBA7523DD"
	jhash (0x89C2B5EA)
	ns "NETWORK"
	returns "BOOL"
	doc [[!
	]]

native "NETWORK_GET_ACTIVITY_PLAYER_NUM"
    hash "0x73E2B500410DA5A2"
	jhash (0x31F951FD)
	arguments {
		BOOL "p0",
	}
	ns "NETWORK"
	returns "int"
	doc [[!
	]]

native "NETWORK_GET_CURRENTLY_SELECTED_GAMER_HANDLE_FROM_INVITE_MENU"
    hash "0x74881E6BCAE2327C"
	jhash (0x72BA00CE)
	arguments {
		AnyPtr "p0",
	}
	ns "NETWORK"
	returns "BOOL"
	doc [[!
	]]

native "NETWORK_GET_BACKGROUND_LOADING_RECIPIENTS"
    hash "0x97A770BEEF227E2B"
	jhash (0x1CFB3F51)
	arguments {
		Any "p0",
		Any "p1",
		AnyPtr "p2",
		AnyPtr "p3",
	}
	alias "0x97A770BEEF227E2B"
	ns "NETWORK"
	returns "BOOL"
	doc [[!
	]]

native "NETWORK_GET_DESTROYER_OF_NETWORK_ID"
    hash "0x7A1ADEEF01740A24"
	jhash (0x4FCA6436)
	arguments {
		int "netId",
		HashPtr "weaponHash",
	}
	ns "NETWORK"
	returns "int"
	doc [[!
	]]

native "_NETWORK_GET_DESROYER_OF_ENTITY"
    hash "0x4CACA84440FA26F6"
	jhash (0x28A45454)
	arguments {
		Any "p0",
		Any "p1",
		HashPtr "weaponHash",
	}
	alias "0x4CACA84440FA26F6"
	ns "NETWORK"
	returns "BOOL"
	doc [[!
	]]

native "NETWORK_GET_ENTITY_FROM_NETWORK_ID"
    hash "0xCE4E5D9B0A4FF560"
	jhash (0x5B912C3F)
	arguments {
		int "netId",
	}
	ns "NETWORK"
	returns "Entity"
	doc [[!
	]]

native "NETWORK_GET_ENTITY_IS_LOCAL"
    hash "0x0991549DE4D64762"
	jhash (0x813353ED)
	arguments {
		Entity "entity",
	}
	ns "NETWORK"
	returns "BOOL"
	doc [[!
	]]

native "NETWORK_GET_ENTITY_IS_NETWORKED"
    hash "0xC7827959479DCC78"
	jhash (0xD7F934F4)
	arguments {
		Entity "entity",
	}
	alias "0xC7827959479DCC78"
	ns "NETWORK"
	returns "BOOL"
	doc [[!
	]]

native "NETWORK_GET_ENTITY_KILLER_OF_PLAYER"
    hash "0x42B2DAA6B596F5F8"
	jhash (0xA7E7E04F)
	arguments {
		Player "player",
		HashPtr "weaponHash",
	}
	ns "NETWORK"
	returns "Entity"
	doc [[!
	]]

native "NETWORK_GET_FOUND_GAMER"
    hash "0x9DCFF2AFB68B3476"
	jhash (0xA08C9141)
	arguments {
		AnyPtr "p0",
		Any "p1",
	}
	ns "NETWORK"
	returns "BOOL"
	doc [[!
	]]

native "NETWORK_GET_FRIEND_COUNT"
    hash "0x203F1CFD823B27A4"
	jhash (0xA396ACDE)
	ns "NETWORK"
	returns "int"
	doc [[!
	]]

native "_NETWORK_GET_FRIEND_NAME_FROM_INDEX"
    hash "0x4164F227D052E293"
	arguments {
		int "friendIndex",
	}
	alias "_NETWORK_GET_FRIEND_NAME"
	ns "NETWORK"
	returns "charPtr"
	doc [[!
	]]

native "NETWORK_GET_FRIEND_NAME"
    hash "0xE11EBBB2A783FE8B"
	jhash (0x97420B6D)
	arguments {
		int "friendIndex",
	}
	ns "NETWORK"
	returns "charPtr"
	doc [[!
	]]

native "NETWORK_GET_GAMERTAG_FROM_HANDLE"
    hash "0x426141162EBE5CDB"
	jhash (0xA18A1B26)
	arguments {
		intPtr "networkHandle",
	}
	ns "NETWORK"
	returns "charPtr"
	doc [[!
	]]

native "NETWORK_GET_HOST_OF_SCRIPT"
    hash "0x1D6A14F1F9A736FC"
	jhash (0x9C95D0BB)
	arguments {
		charPtr "scriptName",
		int "p1",
		int "p2",
	}
	ns "NETWORK"
	returns "int"
	doc [[!
<summary>
```
scriptName examples:  
"freemode", "AM_CR_SecurityVan", ...  
Most of the time, these values are used:  
p1 = -1  
p2 = 0  
```
</summary>
	]]

native "NETWORK_GET_LOCAL_HANDLE"
    hash "0xE86051786B66CD8E"
	jhash (0x08023B16)
	arguments {
		intPtr "networkHandle",
		int "bufferSize",
	}
	ns "NETWORK"
	returns "void"
	doc [[!
<summary>
```
Retrieves the local player's NetworkHandle* and stores it in the given buffer.  
* Currently unknown struct  
```
</summary>
	]]

native "NETWORK_GET_HOST_OF_THIS_SCRIPT"
    hash "0xC7B4D79B01FA7A5C"
	jhash (0x89EA7B54)
	ns "NETWORK"
	returns "Any"
	doc [[!
	]]

native "NETWORK_GET_MAX_FRIENDS"
    hash "0xAFEBB0D5D8F687D2"
	jhash (0x048171BC)
	ns "NETWORK"
	returns "int"
	doc [[!
<summary>
```
On PC this is hardcoded to 250.  
```
</summary>
	]]

native "NETWORK_GET_NETWORK_ID_FROM_ENTITY"
    hash "0xA11700682F3AD45C"
	jhash (0x9E35DAB6)
	arguments {
		Entity "entity",
	}
	ns "NETWORK"
	returns "int"
	doc [[!
	]]

native "NETWORK_GET_NUM_FOUND_GAMERS"
    hash "0xA1B043EE79A916FB"
	jhash (0xF4B80C7E)
	ns "NETWORK"
	returns "int"
	doc [[!
	]]

native "NETWORK_GET_NUM_CONNECTED_PLAYERS"
    hash "0xA4A79DD2D9600654"
	jhash (0xF7952E62)
	ns "NETWORK"
	returns "int"
	doc [[!
<summary>
```
Returns the amount of players connected in the current session. Only works when connected to a session/server.  
```
</summary>
	]]

native "NETWORK_GET_NUM_PARTICIPANTS"
    hash "0x18D0456E86604654"
	jhash (0x3E25A3C5)
	ns "NETWORK"
	returns "int"
	doc [[!
	]]

native "NETWORK_GET_NUM_PRESENCE_INVITES"
    hash "0xCEFA968912D0F78D"
	jhash (0x3FDA00F3)
	alias "0xCEFA968912D0F78D"
	ns "NETWORK"
	returns "int"
	doc [[!
	]]

native "_NETWORK_GET_NUM_PARTICIPANTS_HOST"
    hash "0xA6C90FBC38E395EE"
	jhash (0xCCD8C02D)
	ns "NETWORK"
	returns "int"
	doc [[!
<summary>
```
Seems to always return 0, but it's used in quite a few loops.  
for (num3 = 0; num3 < NETWORK::0xCCD8C02D(); num3++)  
    {  
        if (NETWORK::NETWORK_IS_PARTICIPANT_ACTIVE(PLAYER::0x98F3B274(num3)) != 0)  
        {  
            var num5 = NETWORK::NETWORK_GET_PLAYER_INDEX(PLAYER::0x98F3B274(num3));  
```
</summary>
	]]

native "NETWORK_GET_NUM_SCRIPT_PARTICIPANTS"
    hash "0x3658E8CD94FC121A"
	jhash (0x8F7D9F46)
	arguments {
		AnyPtr "p0",
		Any "p1",
		Any "p2",
	}
	alias "0x3658E8CD94FC121A"
	ns "NETWORK"
	returns "int"
	doc [[!
	]]

native "_NETWORK_GET_PLAYER_COORDS"
    hash "0x125E6D638B8605D4"
	arguments {
		Player "player",
	}
	alias "0x125E6D638B8605D4"
	ns "NETWORK"
	returns "Vector3"
	doc [[!
<summary>
Returns the coordinates of another player.

Does not work if you enter your own player id as p0 (will return `(0.0, 0.0, 0.0)` in that case).
</summary>
<param name="player">The player id, MUST be another player.</param>
<returns>A Vector3 containing the coordinates of another player.</returns>
	]]

native "NETWORK_GET_PARTICIPANT_INDEX"
    hash "0x1B84DF6AF2A46938"
	jhash (0xC4D91094)
	arguments {
		int "index",
	}
	ns "NETWORK"
	returns "int"
	doc [[!
	]]

native "_NETWORK_GET_PLAYER_CREW_EMBLEM_TXD_NAME"
    hash "0x5835D9CD92E83184"
	jhash (0xBA672146)
	arguments {
		PlayerPtr "player",
		AnyPtr "p1",
	}
	alias "0x5835D9CD92E83184"
	ns "NETWORK"
	returns "BOOL"
	doc [[!
	]]

native "NETWORK_GET_PLAYER_INDEX"
    hash "0x24FB80D107371267"
	jhash (0xBE1C1506)
	arguments {
		Player "player",
	}
	ns "NETWORK"
	returns "int"
	doc [[!
	]]

native "NETWORK_GET_PLAYER_FROM_GAMER_HANDLE"
    hash "0xCE5F689CF5A0A49D"
	jhash (0x2E96EF1E)
	arguments {
		intPtr "networkHandle",
	}
	ns "NETWORK"
	returns "Player"
	doc [[!
	]]

native "NETWORK_GET_PLAYER_INDEX_FROM_PED"
    hash "0x6C0E2E0125610278"
	jhash (0x40DBF464)
	arguments {
		Ped "ped",
	}
	alias "0x6C0E2E0125610278"
	ns "NETWORK"
	returns "Player"
	doc [[!
<summary>
```
Returns the Player associated to a given Ped when in an online session.  
```
</summary>
	]]

native "NETWORK_GET_PLAYER_LOUDNESS"
    hash "0x21A1684A25C2867F"
	jhash (0xF2F67014)
	arguments {
		Any "p0",
	}
	ns "NETWORK"
	returns "float"
	doc [[!
	]]

native "NETWORK_GET_PRESENCE_INVITE_HANDLE"
    hash "0x38D5B0FEBB086F75"
	jhash (0xB2451429)
	arguments {
		Any "p0",
		AnyPtr "p1",
	}
	ns "NETWORK"
	returns "BOOL"
	doc [[!
	]]

native "NETWORK_GET_PRESENCE_INVITE_ID"
    hash "0xDFF09646E12EC386"
	jhash (0xD50DF46C)
	arguments {
		Any "p0",
	}
	alias "0xDFF09646E12EC386"
	ns "NETWORK"
	returns "Any"
	doc [[!
	]]

native "NETWORK_GET_PRESENCE_INVITE_INVITER"
    hash "0x4962CC4AA2F345B7"
	jhash (0x19EC65D9)
	arguments {
		Any "p0",
	}
	alias "0x4962CC4AA2F345B7"
	ns "NETWORK"
	returns "Any"
	doc [[!
	]]

native "NETWORK_GET_PRESENCE_INVITE_SESSION_ID"
    hash "0x26E1CD96B0903D60"
	jhash (0xC5E0C989)
	arguments {
		Any "p0",
	}
	alias "0x26E1CD96B0903D60"
	ns "NETWORK"
	returns "Any"
	doc [[!
	]]

native "NETWORK_GET_PRIMARY_CLAN_DATA_CANCEL"
    hash "0x042E4B70B93E6054"
	jhash (0x455DDF5C)
	alias "0x042E4B70B93E6054"
	ns "NETWORK"
	returns "void"
	doc [[!
	]]

native "NETWORK_GET_PRIMARY_CLAN_DATA_CLEAR"
    hash "0x9AA46BADAD0E27ED"
	jhash (0xE22445DA)
	alias "0x9AA46BADAD0E27ED"
	ns "NETWORK"
	returns "Any"
	doc [[!
	]]

native "NETWORK_GET_PRIMARY_CLAN_DATA_NEW"
    hash "0xC080FF658B2E41DA"
	jhash (0x9B8631EB)
	arguments {
		AnyPtr "p0",
		AnyPtr "p1",
	}
	ns "NETWORK"
	returns "BOOL"
	doc [[!
	]]

native "NETWORK_GET_PRIMARY_CLAN_DATA_PENDING"
    hash "0xB5074DB804E28CE7"
	jhash (0xA4EF02F3)
	alias "0xB5074DB804E28CE7"
	ns "NETWORK"
	returns "Any"
	doc [[!
	]]

native "NETWORK_GET_PRIMARY_CLAN_DATA_START"
    hash "0xCE86D8191B762107"
	jhash (0x89DB0EC7)
	arguments {
		AnyPtr "p0",
		Any "p1",
	}
	ns "NETWORK"
	returns "BOOL"
	doc [[!
	]]

native "NETWORK_GET_PRIMARY_CLAN_DATA_SUCCESS"
    hash "0x5B4F04F19376A0BA"
	jhash (0x068A054E)
	alias "0x5B4F04F19376A0BA"
	ns "NETWORK"
	returns "Any"
	doc [[!
	]]

native "NETWORK_GET_RANDOM_INT"
    hash "0x599E4FA1F87EB5FF"
	jhash (0x208DD848)
	alias "0x599E4FA1F87EB5FF"
	ns "NETWORK"
	returns "int"
	doc [[!
	]]

native "_NETWORK_GET_RANDOM_INT_IN_RANGE"
    hash "0xE30CF56F1EFA5F43"
	jhash (0xF9B6426D)
	arguments {
		int "rangeStart",
		int "rangeEnd",
	}
	alias "0xE30CF56F1EFA5F43"
	ns "NETWORK"
	returns "int"
	doc [[!
<summary>
```
Same as GAMEPLAY::GET_RANDOM_INT_IN_RANGE  
```
</summary>
	]]

native "NETWORK_GET_RESPAWN_RESULT"
    hash "0x371EA43692861CF1"
	jhash (0xDDFE9FBC)
	arguments {
		int "randomInt",
		Vector3Ptr "coordinates",
		floatPtr "heading",
	}
	ns "NETWORK"
	returns "void"
	doc [[!
<summary>
```
Based on scripts such as in freemode.c how they call their vars vVar and fVar the 2nd and 3rd param it a Vector3 and Float, but the first is based on get_random_int_in_range..  
```
</summary>
	]]

native "NETWORK_GET_SCRIPT_STATUS"
    hash "0x57D158647A6BFABF"
	jhash (0x2BE9235A)
	ns "NETWORK"
	returns "int"
	doc [[!
	]]

native "_NETWORK_GET_SERVER_TIME"
    hash "0x6D03BFBD643B2A02"
	jhash (0x74E8C53E)
	arguments {
		intPtr "hours",
		intPtr "minutes",
		intPtr "seconds",
	}
	alias "0x6D03BFBD643B2A02"
	ns "NETWORK"
	returns "void"
	doc [[!
	]]

native "NETWORK_GET_TALKER_PROXIMITY"
    hash "0x84F0F13120B4E098"
	jhash (0x19991ADD)
	ns "NETWORK"
	returns "Any"
	doc [[!
	]]

native "NETWORK_GET_THIS_SCRIPT_IS_NETWORK_SCRIPT"
    hash "0x2910669969E9535E"
	jhash (0xD9BF6549)
	ns "NETWORK"
	returns "BOOL"
	doc [[!
	]]

native "NETWORK_GET_TIMEOUT_TIME"
    hash "0x5ED0356A0CE3A34F"
	jhash (0xE1F86C6A)
	alias "0x5ED0356A0CE3A34F"
	ns "NETWORK"
	returns "int"
	doc [[!
<summary>
```
Returns the value of the tunable 0x9A82F2B. Usually 8000 iirc.  
```
</summary>
	]]

native "NETWORK_GET_TRANSITION_MEMBERS"
    hash "0x73B000F7FBC55829"
	jhash (0x31F19263)
	arguments {
		AnyPtr "p0",
		Any "p1",
	}
	ns "NETWORK"
	returns "Any"
	doc [[!
	]]

native "NETWORK_GET_TRANSITION_HOST"
    hash "0x65042B9774C4435E"
	jhash (0x73098D40)
	arguments {
		intPtr "networkHandle",
	}
	ns "NETWORK"
	returns "BOOL"
	doc [[!
	]]

native "NETWORK_HANDLE_FROM_MEMBER_ID"
    hash "0xA0FD21BED61E5C4C"
	jhash (0x9BFC9FE2)
	arguments {
		charPtr "memberId",
		intPtr "networkHandle",
		int "bufferSize",
	}
	ns "NETWORK"
	returns "void"
	doc [[!
<summary>
```
Returns a NetworkHandle* from the specified member ID and stores it in a given buffer.  
* Currently unknown struct  
```
</summary>
	]]

native "NETWORK_HANDLE_FROM_FRIEND"
    hash "0xD45CB817D7E177D2"
	jhash (0x3B0BB3A3)
	arguments {
		Player "friendIndex",
		intPtr "networkHandle",
		int "bufferSize",
	}
	ns "NETWORK"
	returns "void"
	doc [[!
	]]

native "NETWORK_HANDLE_FROM_USER_ID"
    hash "0xDCD51DD8F87AEC5C"
	jhash (0x74C2C1B7)
	arguments {
		charPtr "userId",
		intPtr "networkHandle",
		int "bufferSize",
	}
	ns "NETWORK"
	returns "void"
	doc [[!
<summary>
```
Returns a NetworkHandle* from the specified user ID and stores it in a given buffer.  
* Currently unknown struct  
```
</summary>
	]]

native "NETWORK_HANDLE_FROM_PLAYER"
    hash "0x388EB2B86C73B6B3"
	jhash (0xD3498917)
	arguments {
		Player "player",
		intPtr "networkHandle",
		int "bufferSize",
	}
	ns "NETWORK"
	returns "void"
	doc [[!
<summary>
```
Returns a handle to networkHandle* from the specified player handle and stores it in a given buffer.  
* Currently unknown struct  
Example:  
std::vector<UINT64> GetPlayerNetworkHandle(Player player) {  
    const int size = 13;  
    uint64_t *buffer = std::make_unique<uint64_t[]>(size).get();  
    NETWORK::NETWORK_HANDLE_FROM_PLAYER(player, reinterpret_cast<int *>(buffer), 13);  
    for (int i = 0; i < size; i++) {  
        Log::Msg("networkhandle[%i]: %llx", i, buffer[i]);  
    }  
    std::vector<UINT64> result(buffer, buffer + sizeof(buffer));  
    return result;  
}  
```
</summary>
	]]

native "NETWORK_HAS_CONTROL_OF_ENTITY"
    hash "0x01BF60A500E28887"
	jhash (0x005FD797)
	arguments {
		Entity "entity",
	}
	ns "NETWORK"
	returns "BOOL"
	doc [[!
	]]

native "NETWORK_HAS_CONTROL_OF_DOOR"
    hash "0xCB3C68ADB06195DF"
	jhash (0x136326EC)
	arguments {
		Hash "doorHash",
	}
	ns "NETWORK"
	returns "BOOL"
	doc [[!
	]]

native "_NETWORK_HAS_CONTROL_OF_PAVEMENT_STATS"
    hash "0xC01E93FAC20C3346"
	arguments {
		Hash "doorHash",
	}
	alias "0xC01E93FAC20C3346"
	ns "NETWORK"
	returns "BOOL"
	doc [[!
<summary>
```
console hash: 0xD14D9C07  
```
</summary>
	]]

native "NETWORK_HAS_CONTROL_OF_NETWORK_ID"
    hash "0x4D36070FE0215186"
	jhash (0x92E77D21)
	arguments {
		int "netId",
	}
	ns "NETWORK"
	returns "BOOL"
	doc [[!
	]]

native "NETWORK_HAS_FOLLOW_INVITE"
    hash "0x76D9B976C4C09FDE"
	jhash (0xE96CFE7D)
	alias "0x76D9B976C4C09FDE"
	ns "NETWORK"
	returns "BOOL"
	doc [[!
	]]

native "NETWORK_HAS_CONTROL_OF_PICKUP"
    hash "0x5BC9495F0B3B6FA6"
	jhash (0xF7784FC8)
	arguments {
		Pickup "pickup",
	}
	ns "NETWORK"
	returns "BOOL"
	doc [[!
	]]

native "NETWORK_HAS_HEADSET"
    hash "0xE870F9F1F7B4F1FA"
	jhash (0xA7DC5657)
	ns "NETWORK"
	returns "BOOL"
	doc [[!
	]]

native "NETWORK_HAS_INVITED_GAMER"
    hash "0x4D86CD31E8976ECE"
	jhash (0xEC651BC0)
	arguments {
		AnyPtr "p0",
	}
	ns "NETWORK"
	returns "BOOL"
	doc [[!
	]]

native "NETWORK_HAS_INVITED_GAMER_TO_TRANSITION"
    hash "0x7284A47B3540E6CF"
	jhash (0x4F41DF6B)
	arguments {
		AnyPtr "p0",
	}
	ns "NETWORK"
	returns "BOOL"
	doc [[!
	]]

native "NETWORK_HAS_PENDING_INVITE"
    hash "0xAC8C7B9B88C4A668"
	jhash (0x0C207D6E)
	ns "NETWORK"
	returns "BOOL"
	doc [[!
	]]

native "NETWORK_HAS_PLAYER_STARTED_TRANSITION"
    hash "0x9AC9CCBFA8C29795"
	jhash (0x4ABD1E59)
	arguments {
		Player "player",
	}
	ns "NETWORK"
	returns "BOOL"
	doc [[!
	]]

native "_NETWORK_HASH_FROM_GAMER_HANDLE"
    hash "0x58575AC3CF2CA8EC"
	arguments {
		intPtr "networkHandle",
	}
	alias "0x58575AC3CF2CA8EC"
	ns "NETWORK"
	returns "Hash"
	doc [[!
<summary>
```
console hash: 0x5AC9F04D = network_hash_from_gamer_handle  
```
</summary>
	]]

native "_NETWORK_HASH_FROM_PLAYER_HANDLE"
    hash "0xBC1D768F2F5D6C05"
	arguments {
		Player "player",
	}
	alias "0xBC1D768F2F5D6C05"
	ns "NETWORK"
	returns "Hash"
	doc [[!
<summary>
```
console hash: 0xF8D7AF3B = NETWORK_HASH_FROM_PLAYER_HANDLE  
```
</summary>
	]]

native "NETWORK_HAVE_ONLINE_PRIVILEGES"
    hash "0x25CB5A9F37BFD063"
	jhash (0xEF63BFDF)
	ns "NETWORK"
	returns "BOOL"
	doc [[!
	]]

native "NETWORK_HOST_TRANSITION"
    hash "0xA60BB5CE242BB254"
	jhash (0x146764FB)
	arguments {
		int "p0",
		int "p1",
		int "p2",
		int "p3",
		Any "p4",
		BOOL "p5",
		BOOL "p6",
		int "p7",
		Any "p8",
		int "p9",
	}
	ns "NETWORK"
	returns "BOOL"
	doc [[!
<summary>
From what I can tell it looks like it does the following:

Creates/hosts a new transition to another online session, using this in FiveM will result in other players being disconencted from the server/preventing them from joining. This is most likely because I entered the wrong session parameters since they're pretty much all unknown right now.

You also need to use `NetworkJoinTransition(Player player)` and `NetworkLaunchTransition()`.
</summary>
<param name="p0">Unknown int</param>
<param name="p1">Unknown int</param>
<param name="p2">Unknown int</param>
<param name="p3">Unknown int</param>
<param name="p4">Unknown always 0 in decompiled scripts</param>
<param name="p5">BOOL purpose unknown, both 0 and 1 are used in decompiled scripts.</param>
<param name="p6">BOOL purpose unknown, both 0 and 1 are used in decompiled scripts.</param>
<param name="p7">Unknown int, it's an int according to decompiled scripts, however the value is always 0 or 1.</param>
<param name="p8">Unknown int, it's an int according to decompiled scripts, however the value is always 0 or 1.</param>
<param name="p9">Unknown int, sometimes 0, but also 32768 or 16384 appear in decompiled scripst, maybe a flag of some sort?</param>
<returns>Probably a bool indicating if the transition was created.</returns>
	]]

native "NETWORK_INVITE_GAMERS"
    hash "0x9D80CD1D0E6327DE"
	jhash (0x52FB8074)
	arguments {
		AnyPtr "p0",
		Any "p1",
		AnyPtr "p2",
		AnyPtr "p3",
	}
	ns "NETWORK"
	returns "BOOL"
	doc [[!
<summary>
```
//nothing doin  
int Global_1837683 = GlobalVariable::Get(1837683);  
int Global_1837683_f_404 = GlobalVariable::Get(1837683 + 404);  
NETWORK_INVITE_GAMERS(&Global_1837683, Global_1837683_f_404, 0, 0);  
```
</summary>
	]]

native "NETWORK_INVITE_GAMERS_TO_TRANSITION"
    hash "0x4A595C32F77DFF76"
	jhash (0x5332E645)
	arguments {
		AnyPtr "p0",
		Any "p1",
	}
	ns "NETWORK"
	returns "BOOL"
	doc [[!
	]]

native "NETWORK_IS_ACTIVITY_SESSION"
    hash "0x05095437424397FA"
	jhash (0x577DAA8A)
	ns "NETWORK"
	returns "BOOL"
	doc [[!
	]]

native "NETWORK_IS_ACTIVITY_SPECTATOR"
    hash "0x12103B9E0C9F92FB"
	jhash (0xAF329720)
	ns "NETWORK"
	returns "Any"
	doc [[!
	]]

native "NETWORK_IS_ACTIVITY_SPECTATOR_FROM_HANDLE"
    hash "0x2763BBAA72A7BCB9"
	jhash (0x58F1DF7D)
	arguments {
		intPtr "networkHandle",
	}
	ns "NETWORK"
	returns "BOOL"
	doc [[!
	]]

native "NETWORK_IS_ADDING_FRIEND"
    hash "0x6EA101606F6E4D81"
	jhash (0xBB7EC8C4)
	ns "NETWORK"
	returns "BOOL"
	doc [[!
	]]

native "NETWORK_IS_CABLE_CONNECTED"
    hash "0xEFFB25453D8600F9"
	jhash (0x5C065D55)
	alias "0xEFFB25453D8600F9"
	ns "NETWORK"
	returns "BOOL"
	doc [[!
	]]

native "NETWORK_IS_CHATTING_IN_PLATFORM_PARTY"
    hash "0x8DE9945BCC9AEC52"
	jhash (0x51367B34)
	arguments {
		intPtr "networkHandle",
	}
	ns "NETWORK"
	returns "BOOL"
	doc [[!
<summary>
```
This would be nice to see if someone is in party chat, but 2 sad notes.  
1) It only becomes true if said person is speaking in that party at the time.  
2) It will never, become true unless you are in that party with said person.  
```
</summary>
	]]

native "_NETWORK_IS_CLAN_MEMBERSHIP_FINISHED_DOWNLOADING"
    hash "0xB3F64A6A91432477"
	jhash (0x83ED8E08)
	alias "0xB3F64A6A91432477"
	ns "NETWORK"
	returns "BOOL"
	doc [[!
	]]

native "NETWORK_IS_CLOCK_TIME_OVERRIDDEN"
    hash "0xD7C95D322FF57522"
	jhash (0x2465296D)
	alias "0xD7C95D322FF57522"
	ns "NETWORK"
	returns "BOOL"
	doc [[!
	]]

native "NETWORK_IS_CLOUD_AVAILABLE"
    hash "0x9A4CF4F48AD77302"
	jhash (0xC7FF5AFC)
	ns "NETWORK"
	returns "BOOL"
	doc [[!
	]]

native "NETWORK_IS_FINDING_GAMERS"
    hash "0xDDDF64C91BFCF0AA"
	jhash (0xA6DAA79F)
	ns "NETWORK"
	returns "BOOL"
	doc [[!
	]]

native "NETWORK_IS_FRIEND"
    hash "0x1A24A179F9B31654"
	jhash (0x2DA4C282)
	arguments {
		intPtr "networkHandle",
	}
	ns "NETWORK"
	returns "BOOL"
	doc [[!
	]]

native "NETWORK_IS_FRIEND_IN_MULTIPLAYER"
    hash "0x57005C18827F3A28"
	jhash (0x400BDDD9)
	arguments {
		charPtr "friendName",
	}
	ns "NETWORK"
	returns "BOOL"
	doc [[!
	]]

native "NETWORK_IS_FRIEND_IN_SAME_TITLE"
    hash "0x2EA9A3BEDF3F17B8"
	jhash (0xC54365C2)
	arguments {
		charPtr "friendName",
	}
	ns "NETWORK"
	returns "BOOL"
	doc [[!
<summary>
```
In scripts R* calls 'NETWORK_GET_FRIEND_NAME' in this param.  
```
</summary>
	]]

native "NETWORK_IS_FRIEND_INDEX_ONLINE"
    hash "0xBAD8F2A42B844821"
	jhash (0x94AE7172)
	arguments {
		int "friendIndex",
	}
	alias "0xBAD8F2A42B844821"
	ns "NETWORK"
	returns "BOOL"
	doc [[!
	]]

native "NETWORK_IS_FRIEND_ONLINE"
    hash "0x425A44533437B64D"
	jhash (0xE0A42430)
	arguments {
		charPtr "name",
	}
	ns "NETWORK"
	returns "BOOL"
	doc [[!
	]]

native "_NETWORK_IS_FRIEND_ONLINE_2"
    hash "0x87EB7A3FFCB314DB"
	arguments {
		intPtr "networkHandle",
	}
	alias "0x87EB7A3FFCB314DB"
	ns "NETWORK"
	returns "BOOL"
	doc [[!
	]]

native "NETWORK_IS_GAME_IN_PROGRESS"
    hash "0x10FAB35428CCC9D7"
	jhash (0x09B88E3E)
	ns "NETWORK"
	returns "BOOL"
	doc [[!
	]]

native "NETWORK_IS_GAMER_BLOCKED_BY_ME"
    hash "0xE944C4F5AF1B5883"
	jhash (0x3FDCC8D7)
	arguments {
		AnyPtr "p0",
	}
	ns "NETWORK"
	returns "BOOL"
	doc [[!
	]]

native "NETWORK_IS_GAMER_IN_MY_SESSION"
    hash "0x0F10B05DDF8D16E9"
	jhash (0x59127716)
	arguments {
		intPtr "networkHandle",
	}
	ns "NETWORK"
	returns "BOOL"
	doc [[!
	]]

native "NETWORK_IS_GAMER_MUTED_BY_ME"
    hash "0xCE60DE011B6C7978"
	jhash (0x001B4046)
	arguments {
		intPtr "p0",
	}
	ns "NETWORK"
	returns "BOOL"
	doc [[!
	]]

native "NETWORK_IS_GAMER_TALKING"
    hash "0x71C33B22606CD88A"
	jhash (0x99B58DBC)
	arguments {
		intPtr "p0",
	}
	ns "NETWORK"
	returns "BOOL"
	doc [[!
	]]

native "NETWORK_IS_HANDLE_VALID"
    hash "0x6F79B93B0A8E4133"
	jhash (0xF0996C6E)
	arguments {
		intPtr "networkHandle",
		int "bufferSize",
	}
	ns "NETWORK"
	returns "BOOL"
	doc [[!
	]]

native "NETWORK_IS_HOST_OF_THIS_SCRIPT"
    hash "0x83CD99A1E6061AB5"
	jhash (0x6970BA94)
	ns "NETWORK"
	returns "BOOL"
	doc [[!
	]]

native "NETWORK_IS_HOST"
    hash "0x8DB296B814EDDA07"
	jhash (0xE46AC10F)
	ns "NETWORK"
	returns "BOOL"
	doc [[!
<summary>
```
If you are host, returns true else returns false.  
anyone know how to use this to find correct host? is possible?  
go to a mission and it will set a host then search the host name using a program then find the pointer to the host name  
```
</summary>
	]]

native "NETWORK_IS_IN_MP_CUTSCENE"
    hash "0x6CC27C9FA2040220"
	jhash (0x4BB33316)
	ns "NETWORK"
	returns "BOOL"
	doc [[!
	]]

native "NETWORK_IS_IN_PARTY"
    hash "0x966C2BC2A7FE3F30"
	jhash (0xF9D7D67D)
	ns "NETWORK"
	returns "BOOL"
	doc [[!
<summary>
```
Note according to IDA TU27 X360(Console),  
This native & 'NETWORK_IS_PARTY_MEMBER' both jump to the same location.  
Side note: This location just stops where it's at once jumped to.  
Screenshot for side note,   
h t t p ://i.imgur.com/m2ci1mF.png  
h t t p://i.imgur.com/Z0Wx2B6.png  
```
</summary>
	]]

native "NETWORK_IS_IN_SPECTATOR_MODE"
    hash "0x048746E388762E11"
	jhash (0x3EAD9DB8)
	ns "NETWORK"
	returns "BOOL"
	doc [[!
	]]

native "NETWORK_IS_IN_TUTORIAL_SESSION"
    hash "0xADA24309FE08DACF"
	jhash (0x34DD7B28)
	ns "NETWORK"
	returns "Any"
	doc [[!
	]]

native "NETWORK_IS_IN_SESSION"
    hash "0xCA97246103B63917"
	jhash (0x4BC4105E)
	ns "NETWORK"
	returns "BOOL"
	doc [[!
	]]

native "NETWORK_IS_IN_TRANSITION"
    hash "0x68049AEFF83D8F0A"
	jhash (0xC3CDB626)
	ns "NETWORK"
	returns "BOOL"
	doc [[!
	]]

native "NETWORK_IS_MULTIPLAYER_DISABLED"
    hash "0x9747292807126EDA"
	jhash (0x05518C0F)
	alias "0x9747292807126EDA"
	ns "NETWORK"
	returns "ScrHandle"
	doc [[!
	]]

native "NETWORK_IS_INACTIVE_PROFILE"
    hash "0x7E58745504313A2E"
	jhash (0x95481343)
	arguments {
		AnyPtr "p0",
	}
	ns "NETWORK"
	returns "BOOL"
	doc [[!
	]]

native "NETWORK_IS_PARTICIPANT_ACTIVE"
    hash "0x6FF8FF40B6357D45"
	jhash (0x4E2C348B)
	arguments {
		int "p0",
	}
	ns "NETWORK"
	returns "BOOL"
	doc [[!
	]]

native "NETWORK_IS_PENDING_FRIEND"
    hash "0x0BE73DA6984A6E33"
	jhash (0x5C85FF81)
	arguments {
		Any "p0",
	}
	ns "NETWORK"
	returns "BOOL"
	doc [[!
<summary>
```
This function is hard-coded to always return 0.  
```
</summary>
	]]

native "NETWORK_IS_LOCAL_PLAYER_INVINCIBLE"
    hash "0x8A8694B48715B000"
	jhash (0x8DE13B36)
	ns "NETWORK"
	returns "BOOL"
	doc [[!
	]]

native "NETWORK_IS_PLAYER_ACTIVE"
    hash "0xB8DFD30D6973E135"
	jhash (0x43657B17)
	arguments {
		Player "player",
	}
	ns "NETWORK"
	returns "BOOL"
	doc [[!
	]]

native "NETWORK_IS_PARTY_MEMBER"
    hash "0x676ED266AADD31E0"
	jhash (0x1D0C929D)
	arguments {
		intPtr "networkHandle",
	}
	ns "NETWORK"
	returns "BOOL"
	doc [[!
<summary>
```
Note according to IDA TU27 X360(Console),  
This native & 'NETWORK_IS_PARTY_MEMBER' both jump to the same location.  
Side note: This location just stops where it's at once jumped to.  
Screenshot for side note,   
h t t p ://i.imgur.com/m2ci1mF.png  
h t t p://i.imgur.com/Z0Wx2B6.png  
```
</summary>
	]]

native "NETWORK_IS_PLAYER_BLOCKED_BY_ME"
    hash "0x57AF1F8E27483721"
	jhash (0xAE4F4560)
	arguments {
		Player "player",
	}
	ns "NETWORK"
	returns "BOOL"
	doc [[!
	]]

native "_NETWORK_IS_PLAYER_EQUAL_TO_INDEX"
    hash "0x9DE986FC9A87C474"
	jhash (0xE66A0B40)
	arguments {
		Player "player",
		int "index",
	}
	alias "0x9DE986FC9A87C474"
	ns "NETWORK"
	returns "BOOL"
	doc [[!
<summary>
```
NETWORK_ARE_*  
```
</summary>
	]]

native "NETWORK_IS_PLAYER_A_PARTICIPANT"
    hash "0x3CA58F6CB7CBD784"
	jhash (0xB08B6992)
	arguments {
		Any "p0",
	}
	ns "NETWORK"
	returns "BOOL"
	doc [[!
	]]

native "NETWORK_IS_PLAYER_IN_MP_CUTSCENE"
    hash "0x63F9EE203C3619F2"
	jhash (0x56F961E4)
	arguments {
		Player "player",
	}
	ns "NETWORK"
	returns "BOOL"
	doc [[!
	]]

native "NETWORK_IS_PLAYER_ANIMATION_DRAWING_SYNCHRONIZED"
    hash "0xC6F8AB8A4189CF3A"
	jhash (0x3D6360B5)
	ns "NETWORK"
	returns "void"
	doc [[!
<summary>
```
hash collision  
```
</summary>
	]]

native "NETWORK_IS_PLAYER_TALKING"
    hash "0x031E11F3D447647E"
	jhash (0xDA9FD9DB)
	arguments {
		Player "player",
	}
	ns "NETWORK"
	returns "BOOL"
	doc [[!
<summary>
```
returns true if someone is screaming or talking in a microphone  
```
</summary>
	]]

native "NETWORK_IS_PLAYER_CONNECTED"
    hash "0x93DC1BE4E1ABE9D1"
	jhash (0x168EE2C2)
	arguments {
		Player "player",
	}
	ns "NETWORK"
	returns "BOOL"
	doc [[!
	]]

native "_NETWORK_IS_PSN_AVAILABLE"
    hash "0x8D11E61A4ABF49CC"
	alias "0x8D11E61A4ABF49CC"
	ns "NETWORK"
	returns "BOOL"
	doc [[!
	]]

native "NETWORK_IS_SCRIPT_ACTIVE"
    hash "0x9D40DF90FAD26098"
	jhash (0x4A65250C)
	arguments {
		charPtr "scriptName",
		Player "player",
		BOOL "p2",
		Any "p3",
	}
	ns "NETWORK"
	returns "BOOL"
	doc [[!
	]]

native "_NETWORK_IS_PLAYER_IN_SCRIPT"
    hash "0x46FB3ED415C7641C"
	jhash (0xF9A51B92)
	arguments {
		Player "player",
		int "p1",
		Hash "scriptHash",
	}
	alias "0x46FB3ED415C7641C"
	ns "NETWORK"
	returns "BOOL"
	doc [[!
<summary>
```
p1 = 6  
NETWORK_CRC_HASH_CHECK?  
```
</summary>
	]]

native "NETWORK_IS_PLAYER_MUTED_BY_ME"
    hash "0x8C71288AE68EDE39"
	jhash (0x7A21050E)
	arguments {
		Player "player",
	}
	ns "NETWORK"
	returns "BOOL"
	doc [[!
	]]

native "NETWORK_IS_SESSION_STARTED"
    hash "0x9DE624D2FC4B603F"
	jhash (0x9D854A37)
	ns "NETWORK"
	returns "BOOL"
	doc [[!
<summary>
```
This checks if player is playing on gta online or not.  
Please add an if and block your mod if this is "true".  
```
</summary>
	]]

native "NETWORK_IS_SESSION_ACTIVE"
    hash "0xD83C2B94E7508980"
	jhash (0x715CB8C4)
	ns "NETWORK"
	returns "BOOL"
	doc [[!
	]]

native "NETWORK_IS_SIGNED_ONLINE"
    hash "0x1077788E268557C2"
	jhash (0x6E5BDCE2)
	ns "NETWORK"
	returns "BOOL"
	doc [[!
<summary>
```
Returns whether the game is not in offline mode.  
seemed not to work for some ppl  
```
</summary>
	]]

native "NETWORK_IS_SESSION_BUSY"
    hash "0xF4435D66A8E2905E"
	jhash (0x8592152D)
	ns "NETWORK"
	returns "BOOL"
	doc [[!
	]]

native "_NETWORK_IS_TEXT_CHAT_ACTIVE"
    hash "0x5FCF4D7069B09026"
	ns "NETWORK"
	returns "BOOL"
	doc [[!
<summary>
```
Same as _IS_TEXT_CHAT_ACTIVE, except it does not check if the text chat HUD component is initialized, and therefore may crash.  
```
</summary>
	]]

native "NETWORK_IS_SIGNED_IN"
    hash "0x054354A99211EB96"
	jhash (0xADD0B40F)
	ns "NETWORK"
	returns "BOOL"
	doc [[!
<summary>
```
Returns whether the player is signed into Social Club.  
```
</summary>
	]]

native "NETWORK_IS_TRANSITION_BUSY"
    hash "0x520F3282A53D26B7"
	jhash (0xA357A2C6)
	ns "NETWORK"
	returns "Any"
	doc [[!
	]]

native "_NETWORK_IS_THIS_SCRIPT_MARKED"
    hash "0xD1110739EEADB592"
	arguments {
		Any "p0",
		BOOL "p1",
		Any "p2",
	}
	alias "0xD1110739EEADB592"
	alias "_NETWORK_SET_THIS_SCRIPT_MARKED"
	ns "NETWORK"
	returns "BOOL"
	doc [[!
	]]

native "NETWORK_IS_TRANSITION_HOST_FROM_HANDLE"
    hash "0x6B5C83BA3EFE6A10"
	jhash (0x0E2854C4)
	arguments {
		intPtr "networkHandle",
	}
	ns "NETWORK"
	returns "BOOL"
	doc [[!
	]]

native "NETWORK_IS_TRANSITION_HOST"
    hash "0x0B824797C9BF2159"
	jhash (0x0C0900BC)
	ns "NETWORK"
	returns "Any"
	doc [[!
	]]

native "NETWORK_IS_TRANSITION_MATCHMAKING"
    hash "0x292564C735375EDF"
	jhash (0x8262C70E)
	alias "0x292564C735375EDF"
	ns "NETWORK"
	returns "Any"
	doc [[!
	]]

native "NETWORK_IS_TRANSITION_TO_GAME"
    hash "0x9D7696D8F4FA6CB7"
	jhash (0x17146B2B)
	ns "NETWORK"
	returns "Any"
	doc [[!
	]]

native "NETWORK_IS_TRANSITION_STARTED"
    hash "0x53FA83401D9C07FE"
	jhash (0x7917E111)
	ns "NETWORK"
	returns "BOOL"
	doc [[!
	]]

native "NETWORK_JOIN_GROUP_ACTIVITY"
    hash "0xA06509A691D12BE4"
	jhash (0x0D7E5CF9)
	alias "0xA06509A691D12BE4"
	ns "NETWORK"
	returns "Any"
	doc [[!
	]]

native "NETWORK_JOIN_TRANSITION"
    hash "0x9D060B08CD63321A"
	jhash (0xB054EC4B)
	arguments {
		Player "player",
	}
	ns "NETWORK"
	returns "BOOL"
	doc [[!
<summary>
```
int handle[76];  
NETWORK_HANDLE_FROM_FRIEND(iSelectedPlayer, &handle[0], 13);  
Player uVar2 = NETWORK_GET_PLAYER_FROM_GAMER_HANDLE(&handle[0]);  
NETWORK_JOIN_TRANSITION(uVar2);  
		nothing doin.  
```
</summary>
	]]

native "NETWORK_LAUNCH_TRANSITION"
    hash "0x2DCF46CB1A4F0884"
	jhash (0xE3570BA2)
	ns "NETWORK"
	returns "Any"
	doc [[!
	]]

native "NETWORK_LEAVE_TRANSITION"
    hash "0xD23A1A815D21DB19"
	jhash (0x3A3599B7)
	ns "NETWORK"
	returns "Any"
	doc [[!
	]]

native "NETWORK_MARK_TRANSITION_GAMER_AS_FULLY_JOINED"
    hash "0x5728BB6D63E3FF1D"
	jhash (0x03383F57)
	arguments {
		AnyPtr "p0",
	}
	ns "NETWORK"
	returns "BOOL"
	doc [[!
	]]

native "NETWORK_MEMBER_ID_FROM_GAMER_HANDLE"
    hash "0xC82630132081BB6F"
	jhash (0x62EF0A63)
	arguments {
		intPtr "networkHandle",
	}
	ns "NETWORK"
	returns "charPtr"
	doc [[!
	]]

native "NETWORK_OPEN_TRANSITION_MATCHMAKING"
    hash "0x2B3A8F7CA3A38FDE"
	jhash (0xC71E607B)
	alias "0x2B3A8F7CA3A38FDE"
	ns "NETWORK"
	returns "void"
	doc [[!
	]]

native "NETWORK_OVERRIDE_CHAT_RESTRICTIONS"
    hash "0x3039AE5AD2C9C0C4"
	jhash (0x74EE2D8B)
	arguments {
		Player "player",
		BOOL "toggle",
	}
	alias "0x3039AE5AD2C9C0C4"
	ns "NETWORK"
	returns "void"
	doc [[!
<summary>
```
Could possibly bypass being muted or automatically muted  
```
</summary>
	]]

native "NETWORK_OVERRIDE_RECEIVE_RESTRICTIONS"
    hash "0xDDF73E2B1FEC5AB4"
	jhash (0x95F1C60D)
	arguments {
		Player "player",
		BOOL "toggle",
	}
	alias "0xDDF73E2B1FEC5AB4"
	ns "NETWORK"
	returns "void"
	doc [[!
<summary>
```
R* uses this to hear all player when spectating.   
It allows you to hear other online players when their chat is on none, crew and or friends  
```
</summary>
	]]

native "NETWORK_OVERRIDE_CLOCK_TIME"
    hash "0xE679E3E06E363892"
	jhash (0xC077BCD6)
	arguments {
		int "Hours",
		int "Minutes",
		int "Seconds",
	}
	ns "NETWORK"
	returns "void"
	doc [[!
<summary>
```
Works in Singleplayer too.  
Actually has a 4th param (BOOL) that sets byte_14273C46C (in b944) to whatever was passed to p3.  
```
</summary>
	]]

native "NETWORK_OVERRIDE_TRANSITION_CHAT"
    hash "0xAF66059A131AA269"
	jhash (0xCAB21090)
	arguments {
		BOOL "p0",
	}
	alias "0xAF66059A131AA269"
	ns "NETWORK"
	returns "void"
	doc [[!
	]]

native "_NETWORK_OVERRIDE_SEND_RESTRICTIONS"
    hash "0x97DD4C5944CC2E6A"
	arguments {
		Player "player",
		BOOL "toggle",
	}
	alias "0x97DD4C5944CC2E6A"
	ns "NETWORK"
	returns "void"
	doc [[!
<summary>
```
Console Hash: 0x6C344AE3  
"NETWORK_OVERRIDE_SEND_RESTRICTIONS" is right, but dev-c put a _ by default.  
This is used alongside the native,  
'NETWORK_OVERRIDE_RECEIVE_RESTRICTIONS'. Read it's description for more info.  
```
</summary>
	]]

native "NETWORK_PLAYER_GET_USERID"
    hash "0x4927FC39CD0869A0"
	jhash (0x4EC0D983)
	arguments {
		Player "player",
		charPtr "userID",
	}
	alias "_NETWORK_PLAYER_GET_USER_ID"
	ns "NETWORK"
	returns "charPtr"
	doc [[!
<summary>
```
Sets [userID] to the user id of the given player. Returns "**Invalid**" if CPlayerInfo of the given player cannot be retrieved or the player doesn't exist.  
```
</summary>
	]]

native "NETWORK_PLAYER_IS_BADSPORT"
    hash "0x19D8DA0E5A68045A"
	jhash (0xA19708E3)
	ns "NETWORK"
	returns "BOOL"
	doc [[!
<summary>
```
Returns whether the player has been reported too often or not.  
Example : griefing.  
```
</summary>
	]]

native "NETWORK_PLAYER_GET_NAME"
    hash "0x7718D2E2060837D2"
	jhash (0xCE48F260)
	arguments {
		Player "player",
	}
	ns "NETWORK"
	returns "charPtr"
	doc [[!
<summary>
```
Returns the name of a given player. Returns "**Invalid**" if CPlayerInfo of the given player cannot be retrieved or the player doesn't exist.  
Does exactly the same as GET_PLAYER_NAME.  
```
</summary>
	]]

native "NETWORK_PLAYER_HAS_HEADSET"
    hash "0x3FB99A8B08D18FD6"
	jhash (0x451FB6B6)
	arguments {
		Player "player",
	}
	ns "NETWORK"
	returns "BOOL"
	doc [[!
	]]

native "_NETWORK_PLAYER_IS_IN_CLAN"
    hash "0x579CCED0265D4896"
	jhash (0xF5F4BD95)
	ns "NETWORK"
	returns "BOOL"
	doc [[!
	]]

native "NETWORK_PLAYER_IS_ROCKSTAR_DEV"
    hash "0x544ABDDA3B409B6D"
	jhash (0xF6659045)
	arguments {
		Player "player",
	}
	ns "NETWORK"
	returns "BOOL"
	doc [[!
<summary>
```
Checks if a specific value (BYTE) in CPlayerInfo is nonzero.  
Returns always false in Singleplayer.  
No longer used for dev checks since first mods were released on PS3 & 360.  
R* now checks with the is_dlc_present native for the dlc hash 2532323046,  
if that is present it will unlock dev stuff.  
```
</summary>
	]]

native "NETWORK_PLAYER_IS_CHEATER"
    hash "0x655B91F1495A9090"
	jhash (0xA51DC214)
	ns "NETWORK"
	returns "BOOL"
	doc [[!
	]]

native "NETWORK_REGISTER_ENTITY_AS_NETWORKED"
    hash "0x06FAACD625D80CAA"
	jhash (0x31A630A4)
	arguments {
		Entity "entity",
	}
	alias "0x06FAACD625D80CAA"
	ns "NETWORK"
	returns "void"
	doc [[!
	]]

native "NETWORK_REGISTER_PLAYER_BROADCAST_VARIABLES"
    hash "0x3364AA97340CA215"
	jhash (0xBE3D32B4)
	arguments {
		intPtr "vars",
		int "numVars",
	}
	ns "NETWORK"
	returns "void"
	doc [[!
	]]

native "_NETWORK_PLAYER_IS_UNK"
    hash "0x172F75B6EE2233BA"
	jhash (0x1720ABA6)
	alias "0x172F75B6EE2233BA"
	ns "NETWORK"
	returns "BOOL"
	doc [[!
<summary>
```
fuck this function in particular.  
It's similar to unk_0x9A176B6E but this ones got a different stat hash:  
0xBC707798  
```
</summary>
	]]

native "NETWORK_REMOVE_ALL_TRANSITION_INVITE"
    hash "0x726E0375C7A26368"
	jhash (0xF7134E73)
	alias "0x726E0375C7A26368"
	ns "NETWORK"
	returns "void"
	doc [[!
	]]

native "_NETWORK_PLAYER_SOMETHING"
    hash "0x565E430DB3B05BEC"
	jhash (0xD265B049)
	arguments {
		Player "player",
	}
	alias "0x565E430DB3B05BEC"
	ns "NETWORK"
	returns "BOOL"
	doc [[!
<summary>
```
NETWORK_PLAYER_???  
```
</summary>
	]]

native "NETWORK_REGISTER_HOST_BROADCAST_VARIABLES"
    hash "0x3E9B2F01C50DF595"
	jhash (0xDAF3B0AE)
	arguments {
		intPtr "vars",
		int "sizeofVars",
	}
	ns "NETWORK"
	returns "void"
	doc [[!
<summary>
```
sizeofVars is in bytes  
```
</summary>
	]]

native "NETWORK_REMOVE_TRANSITION_INVITE"
    hash "0x7524B431B2E6F7EE"
	jhash (0xFDE84CB7)
	arguments {
		AnyPtr "p0",
	}
	ns "NETWORK"
	returns "void"
	doc [[!
	]]

native "_NETWORK_REQUEST_CLOUD_BACKGROUND_SCRIPTS"
    hash "0x924426BFFD82E915"
	jhash (0x29532731)
	alias "0x924426BFFD82E915"
	ns "NETWORK"
	returns "BOOL"
	doc [[!
<summary>
```
NETWORK_REQUEST_CLOUD_BACKGROUND_SCRIPTS - Correct console hash is 0x98EFB921  
Start the downloading of BG_NG.RPF from R* Cloud which contains hotfix.  
The console hash given is incorrect for Xbox360 that is. I searched in IDA and found 0x98EFB921 which came right after 0x155465EE. Then I searched it in TU27 X360 scripts and found it was the same results same scripts as the PC Hash for this which is obviously correct. I found the correct one as I noticed TU27 X360 script search pulled no results for 0x29532731 when it should have.  
As you can see here you will see the 155465EE first then the correct hash for this native. Then the current 29532731 one which could be the native below or the native below's hash could be the has below the 29532731   
puu.sh/nhdQI/e0ca5567b4.png  
0x98EFB921 is the correct console hash for "_DOWNLOAD_BG_SCRIPT_RPF". 0x29532731 is "_HAS_BG_SCRIPT_BEEN_DOWNLOADED"  
The code:  
seg001:00000000003EFF4C uunk_0x29532731:                        # CODE XREF: sub_158C8AC+14p  
seg001:00000000003EFF4C                 lis       r3, dword_1CFB100@ha  
seg001:00000000003EFF50                 lwz       r3, dword_1CFB100@l(r3)  
seg001:00000000003EFF54                 ld        r3, 0x1020(r3)  
seg001:00000000003EFF58                 extsw     r3, r3  
seg001:00000000003EFF5C                 blr  
seg001:00000000003EFF5C # End of function uunk_0x29532731  
```
</summary>
	]]

native "NETWORK_REMOVE_ENTITY_AREA"
    hash "0x93CF869BAA0C4874"
	jhash (0xEAB97F25)
	arguments {
		Any "p0",
	}
	ns "NETWORK"
	returns "BOOL"
	doc [[!
	]]

native "NETWORK_REQUEST_CONTROL_OF_DOOR"
    hash "0x870DDFD5A4A796E4"
	jhash (0xF60DAAF6)
	arguments {
		int "doorID",
	}
	ns "NETWORK"
	returns "BOOL"
	doc [[!
	]]

native "NETWORK_REMOVE_PRESENCE_INVITE"
    hash "0xF0210268DB0974B1"
	jhash (0x93C665FA)
	arguments {
		Any "p0",
	}
	alias "0xF0210268DB0974B1"
	ns "NETWORK"
	returns "BOOL"
	doc [[!
	]]

native "NETWORK_REQUEST_CONTROL_OF_NETWORK_ID"
    hash "0xA670B3662FAFFBD0"
	jhash (0x9262A60A)
	arguments {
		int "netId",
	}
	ns "NETWORK"
	returns "BOOL"
	doc [[!
	]]

native "NETWORK_RESET_BODY_TRACKER"
    hash "0x72433699B4E6DD64"
	jhash (0x3914463F)
	ns "NETWORK"
	returns "void"
	doc [[!
<summary>
```
hash collision?? - Not sure, but fits alphabetically  
```
</summary>
	]]

native "NETWORK_REQUEST_CLOUD_TUNABLES"
    hash "0x42FB3B532D526E6C"
	jhash (0xD760CAD5)
	alias "0x42FB3B532D526E6C"
	ns "NETWORK"
	returns "void"
	doc [[!
<summary>
```
This native start the download of tunables from R* cloud  
```
</summary>
	]]

native "_NETWORK_SCTV_SLOTS"
    hash "0x49EC8030F5015F8B"
	jhash (0x3C3E2AB6)
	arguments {
		int "p0",
	}
	alias "0x49EC8030F5015F8B"
	ns "NETWORK"
	returns "void"
	doc [[!
<summary>
```
p0 = 0 or 4  
```
</summary>
	]]

native "NETWORK_REQUEST_CONTROL_OF_ENTITY"
    hash "0xB69317BF5E782347"
	jhash (0xA05FEBD7)
	arguments {
		Entity "entity",
	}
	ns "NETWORK"
	returns "BOOL"
	doc [[!
	]]

native "_NETWORK_SEND_PRESENCE_INVITE"
    hash "0xC3C7A6AFDB244624"
	jhash (0x8B99B72B)
	arguments {
		intPtr "networkHandle",
		AnyPtr "p1",
		Any "p2",
		Any "p3",
	}
	alias "0xC3C7A6AFDB244624"
	ns "NETWORK"
	returns "BOOL"
	doc [[!
	]]

native "_NETWORK_RESPAWN_COORDS"
    hash "0x9769F811D1785B03"
	jhash (0xBE6A30C3)
	arguments {
		Player "player",
		float "x",
		float "y",
		float "z",
		BOOL "p4",
		BOOL "p5",
	}
	alias "0x9769F811D1785B03"
	ns "NETWORK"
	returns "void"
	doc [[!
<summary>
```
p4 and p5 are always 0 in scripts  
```
</summary>
	]]

native "NETWORK_SEND_TEXT_MESSAGE"
    hash "0x3A214F2EC889B100"
	jhash (0xAFFEA720)
	arguments {
		charPtr "message",
		intPtr "networkHandle",
	}
	ns "NETWORK"
	returns "BOOL"
	doc [[!
<summary>
```
how can I increase the character limit on this native?  
--------------------------------  
return - it's possible for it to have an error and return a value. One error is if it cannot find space to create the event it doesn't send the text and returns zero. It also returns 0 is the strlen is 0 or the strlen > 0x100 (I thought it was 64 so idk why it's checking 265. I may just be dumb :P ) There are other ways it could return 0 also but who the hell cares cuz it's very unlikely, but it returns a bool.  
to the top guy, idk if it is possible. It is probably read a max of 64 characters on the recieving end so even if we did modify it to send more it probably wouldn't work. One of the other problems is that in part of the function it copies the string to the local stack which means we would have to change that to make it work.  
```
</summary>
	]]

native "NETWORK_RESURRECT_LOCAL_PLAYER"
    hash "0xEA23C49EAA83ACFB"
	jhash (0xF1F9D4B4)
	arguments {
		float "x",
		float "y",
		float "z",
		float "heading",
		BOOL "unk",
		BOOL "changetime",
	}
	ns "NETWORK"
	returns "void"
	doc [[!
	]]

native "NETWORK_SEND_TRANSITION_GAMER_INSTRUCTION"
    hash "0x31D1D2B858D25E6B"
	jhash (0x468B0884)
	arguments {
		intPtr "networkHandle",
		charPtr "p1",
		int "p2",
		int "p3",
		BOOL "p4",
	}
	ns "NETWORK"
	returns "BOOL"
	doc [[!
<summary>
```
the first arg seems to be the network player handle (&handle) and the second var is pretty much always "" and the third seems to be a number between 0 and ~10 and the 4th is is something like 0 to 5 and I guess the 5th is a bool cuz it is always 0 or 1  
does this send an invite to a player?  
```
</summary>
	]]

native "NETWORK_SESSION_BLOCK_JOIN_REQUESTS"
    hash "0xA73667484D7037C3"
	jhash (0xE6EEF8AF)
	arguments {
		BOOL "p0",
	}
	alias "0xA73667484D7037C3"
	ns "NETWORK"
	returns "void"
	doc [[!
	]]

native "_NETWORK_SEND_PRESENCE_TRANSITION_INVITE"
    hash "0xC116FF9B4D488291"
	jhash (0x877C0E1C)
	arguments {
		AnyPtr "p0",
		AnyPtr "p1",
		Any "p2",
		Any "p3",
	}
	alias "0xC116FF9B4D488291"
	ns "NETWORK"
	returns "BOOL"
	doc [[!
<summary>
```
String "NETWORK_SEND_PRESENCE_TRANSITION_INVITE" is contained in the function in ida so this one is correct.  
```
</summary>
	]]

native "NETWORK_SESSION_CREW_MATCHMAKING"
    hash "0x94BC51E9449D917F"
	jhash (0xD7624E6B)
	arguments {
		int "p0",
		int "p1",
		int "p2",
		int "maxPlayers",
		BOOL "p4",
	}
	alias "0x94BC51E9449D917F"
	ns "NETWORK"
	returns "BOOL"
	doc [[!
	]]

native "NETWORK_SESSION_ACTIVITY_QUICKMATCH"
    hash "0xBE3E347A87ACEB82"
	jhash (0x3F75CC38)
	arguments {
		Any "p0",
		Any "p1",
		Any "p2",
		Any "p3",
	}
	alias "0xBE3E347A87ACEB82"
	ns "NETWORK"
	returns "BOOL"
	doc [[!
	]]

native "NETWORK_SESSION_END"
    hash "0xA02E59562D711006"
	jhash (0xBCACBEA2)
	arguments {
		BOOL "p0",
		BOOL "p1",
	}
	ns "NETWORK"
	returns "BOOL"
	doc [[!
<summary>
```
p0 is always false and p1 varies.  
NETWORK_SESSION_END(0, 1)  
NETWORK_SESSION_END(0, 0)  
Results in: "Connection to session lost due to an unknown network error. Please return to Grand Theft Auto V and try again later."  
```
</summary>
	]]

native "NETWORK_SESSION_FORCE_CANCEL_INVITE"
    hash "0xA29177F7703B5644"
	jhash (0x3FD49D3B)
	alias "0xA29177F7703B5644"
	ns "NETWORK"
	returns "void"
	doc [[!
	]]

native "NETWORK_SESSION_CANCEL_INVITE"
    hash "0x2FBF47B1B36D36F9"
	jhash (0x20317535)
	ns "NETWORK"
	returns "void"
	doc [[!
	]]

native "NETWORK_SESSION_CHANGE_SLOTS"
    hash "0xB4AB419E0D86ACAE"
	jhash (0x6BB93227)
	arguments {
		int "p0",
		BOOL "p1",
	}
	alias "0xB4AB419E0D86ACAE"
	ns "NETWORK"
	returns "void"
	doc [[!
	]]

native "NETWORK_SESSION_GET_INVITER"
    hash "0xE57397B4A3429DD0"
	jhash (0xE9C6B3FD)
	arguments {
		intPtr "networkHandle",
	}
	ns "NETWORK"
	returns "void"
	doc [[!
	]]

native "_NETWORK_SESSION_GET_UNK"
    hash "0x56CE820830EF040B"
	jhash (0x36EAD960)
	arguments {
		int "p0",
	}
	alias "0x56CE820830EF040B"
	ns "NETWORK"
	returns "int"
	doc [[!
	]]

native "NETWORK_SESSION_ENTER"
    hash "0x330ED4D05491934F"
	jhash (0x543CD2BE)
	arguments {
		Any "p0",
		Any "p1",
		Any "p2",
		int "maxPlayers",
		Any "p4",
		Any "p5",
	}
	ns "NETWORK"
	returns "Any"
	doc [[!
<summary>
```
unknown params  
p0 = 0, 2, or 999 (The global is 999 by default.)  
p1 = 0 (Always in every script it's found in atleast.)  
p2 = 0, 3, or 4 (Based on a var that is determined by a function.)  
p3 = maxPlayers (It's obvious in x360 scripts it's always 18)  
p4 = 0 (Always in every script it's found in atleast.)  
p5 = 0 or 1. (1 if network_can_enter_multiplayer, but set to 0 if other checks after that are passed.)  
p5 is reset to 0 if,  
Global_1315318 = 0 or Global_1315323 = 9 or 12 or (Global_1312629 = 0 && Global_1312631 = true/1) those are passed.  
```
</summary>
	]]

native "NETWORK_SESSION_FRIEND_MATCHMAKING"
    hash "0x2CFC76E0D087C994"
	jhash (0x4E53202A)
	arguments {
		int "p0",
		int "p1",
		int "maxPlayers",
		BOOL "p3",
	}
	alias "0x2CFC76E0D087C994"
	ns "NETWORK"
	returns "BOOL"
	doc [[!
	]]

native "NETWORK_SESSION_HOST_CLOSED"
    hash "0xED34C0C02C098BB7"
	jhash (0x8AC9EA19)
	arguments {
		int "p0",
		int "maxPlayers",
	}
	alias "0xED34C0C02C098BB7"
	ns "NETWORK"
	returns "BOOL"
	doc [[!
	]]

native "NETWORK_SESSION_HOST_SINGLE_PLAYER"
    hash "0xC74C33FCA52856D5"
	jhash (0xF3B1CA85)
	arguments {
		int "p0",
	}
	ns "NETWORK"
	returns "void"
	doc [[!
<summary>
```
Loads up the map that is loaded when beeing in mission creator  
Player gets placed in a mix between online/offline mode  
p0 is always 2 in R* scripts.  
Appears to be patched in gtav b757 (game gets terminated) alonside with most other network natives to prevent online modding ~ghost30812  
```
</summary>
	]]

native "NETWORK_SESSION_HOST"
    hash "0x6F3D4ED9BEE4E61D"
	jhash (0x6716460F)
	arguments {
		int "p0",
		int "maxPlayers",
		BOOL "p2",
	}
	ns "NETWORK"
	returns "BOOL"
	doc [[!
<summary>
```
Does nothing in online but in offline it will cause the screen to fade to black. Nothing happens past then, the screen will sit at black until you restart GTA. Other stuff must be needed to actually host a session.  
```
</summary>
	]]

native "NETWORK_SESSION_HOST_FRIENDS_ONLY"
    hash "0xB9CFD27A5D578D83"
	jhash (0x26864403)
	arguments {
		int "p0",
		int "maxPlayers",
	}
	ns "NETWORK"
	returns "BOOL"
	doc [[!
<summary>
```
Does nothing in online but in offline it will cause the screen to fade to black. Nothing happens past then, the screen will sit at black until you restart GTA. Other stuff must be needed to actually host a session.  
```
</summary>
	]]

native "NETWORK_SESSION_IS_CLOSED_CREW"
    hash "0x74732C6CA90DA2B4"
	jhash (0xA95299B9)
	alias "0x74732C6CA90DA2B4"
	ns "NETWORK"
	returns "BOOL"
	doc [[!
	]]

native "_NETWORK_SESSION_IS_PLAYER_VOTED_TO_KICK"
    hash "0xD6D09A6F32F49EF1"
	jhash (0x8A559D26)
	arguments {
		Player "player",
	}
	alias "_NETWORK_SESSION_ARE_PLAYERS_VOTING_TO_KICK"
	ns "NETWORK"
	returns "BOOL"
	doc [[!
	]]

native "_NETWORK_SESSION_HOSTED"
    hash "0xC19F6C8E7865A6FF"
	jhash (0xF3768F90)
	arguments {
		BOOL "p0",
	}
	alias "0xC19F6C8E7865A6FF"
	ns "NETWORK"
	returns "void"
	doc [[!
	]]

native "NETWORK_SESSION_IS_PRIVATE"
    hash "0xCEF70AA5B3F89BA1"
	jhash (0xDB67785D)
	alias "0xCEF70AA5B3F89BA1"
	ns "NETWORK"
	returns "BOOL"
	doc [[!
	]]

native "NETWORK_SESSION_IS_CLOSED_FRIENDS"
    hash "0xFBCFA2EA2E206890"
	jhash (0x56E75FE4)
	alias "0xFBCFA2EA2E206890"
	ns "NETWORK"
	returns "BOOL"
	doc [[!
	]]

native "NETWORK_SESSION_IS_SOLO"
    hash "0xF3929C2379B60CCE"
	jhash (0x3D2C1916)
	alias "0xF3929C2379B60CCE"
	ns "NETWORK"
	returns "BOOL"
	doc [[!
	]]

native "NETWORK_SESSION_IS_VISIBLE"
    hash "0xBA416D68C631496A"
	jhash (0x4977AC28)
	alias "0xBA416D68C631496A"
	ns "NETWORK"
	returns "BOOL"
	doc [[!
	]]

native "NETWORK_SESSION_LEAVE_SINGLE_PLAYER"
    hash "0x3442775428FD2DAA"
	jhash (0xC692F86A)
	ns "NETWORK"
	returns "void"
	doc [[!
	]]

native "NETWORK_SESSION_MARK_VISIBLE"
    hash "0x271CC6AB59EBF9A5"
	jhash (0x7017257D)
	arguments {
		BOOL "p0",
	}
	alias "0x271CC6AB59EBF9A5"
	ns "NETWORK"
	returns "void"
	doc [[!
	]]

native "NETWORK_SESSION_KICK_PLAYER"
    hash "0xFA8904DC5F304220"
	jhash (0x1E20138A)
	arguments {
		Player "player",
	}
	ns "NETWORK"
	returns "void"
	doc [[!
<summary>
```
Only works when you are host.  
```
</summary>
	]]

native "_NETWORK_SESSION_SET_MAX_PLAYERS"
    hash "0x8B6A4DD0AF9CE215"
	jhash (0x5F29A7E0)
	arguments {
		int "playerType",
		int "playerCount",
	}
	alias "0x8B6A4DD0AF9CE215"
	ns "NETWORK"
	returns "void"
	doc [[!
<summary>
```
BLR the shit.  
```
</summary>
	]]

native "NETWORK_SESSION_VOICE_LEAVE"
    hash "0x6793E42BE02B575D"
	jhash (0xE566C7DA)
	ns "NETWORK"
	returns "void"
	doc [[!
	]]

native "NETWORK_SESSION_VOICE_HOST"
    hash "0x9C1556705F864230"
	jhash (0x345C2980)
	ns "NETWORK"
	returns "void"
	doc [[!
	]]

native "NETWORK_SESSION_WAS_INVITED"
    hash "0x23DFB504655D0CE4"
	jhash (0x6A0BEA60)
	alias "0x23DFB504655D0CE4"
	ns "NETWORK"
	returns "BOOL"
	doc [[!
	]]

native "NETWORK_SET_ACTIVITY_SPECTATOR"
    hash "0x75138790B4359A74"
	jhash (0xFC9AD060)
	arguments {
		BOOL "toggle",
	}
	ns "NETWORK"
	returns "void"
	doc [[!
	]]

native "NETWORK_SET_CURRENTLY_SELECTED_GAMER_HANDLE_FROM_INVITE_MENU"
    hash "0x7206F674F2A3B1BB"
	jhash (0xFD95899E)
	arguments {
		AnyPtr "p0",
	}
	ns "NETWORK"
	returns "BOOL"
	doc [[!
	]]

native "NETWORK_SET_ACTIVITY_SPECTATOR_MAX"
    hash "0x9D277B76D1D12222"
	jhash (0x74E0BC0A)
	arguments {
		int "maxSpectators",
	}
	ns "NETWORK"
	returns "void"
	doc [[!
	]]

native "NETWORK_SET_ENTITY_CAN_BLEND"
    hash "0xD830567D88A1E873"
	jhash (0xDE8C0DB8)
	arguments {
		Entity "entity",
		BOOL "toggle",
	}
	ns "NETWORK"
	returns "void"
	doc [[!
	]]

native "_NETWORK_SET_ENTITY_INVISIBLE_TO_NETWORK"
    hash "0xF1CA12B18AEF5298"
	jhash (0x09CBC4B0)
	arguments {
		Entity "entity",
		BOOL "toggle",
	}
	alias "0xF1CA12B18AEF5298"
	alias "_NETWORK_SET_ENTITY_VISIBLE_TO_NETWORK"
	ns "NETWORK"
	returns "void"
	doc [[!
<summary>
```
if set to true other network players can't see it  
if set to false other network player can see it  
=========================================  
^^ I attempted this by grabbing an object with GET_ENTITY_PLAYER_IS_FREE_AIMING_AT and setting this naive no matter the toggle he could still see it.  
pc or last gen?  
^^ last-gen  
```
</summary>
	]]

native "NETWORK_SET_GAMER_INVITED_TO_TRANSITION"
    hash "0xCA2C8073411ECDB6"
	jhash (0x17F1C69D)
	arguments {
		intPtr "networkHandle",
	}
	ns "NETWORK"
	returns "void"
	doc [[!
	]]

native "NETWORK_SET_FRIENDLY_FIRE_OPTION"
    hash "0xF808475FA571D823"
	jhash (0x6BAF95FA)
	arguments {
		BOOL "toggle",
	}
	ns "NETWORK"
	returns "void"
	doc [[!
<summary>
```
//friendly fire toggle  
```
</summary>
	]]

native "NETWORK_SET_IN_MP_CUTSCENE"
    hash "0x9CA5DE655269FEC4"
	jhash (0x8434CB43)
	arguments {
		BOOL "p0",
		BOOL "p1",
	}
	ns "NETWORK"
	returns "void"
	doc [[!
	]]

native "NETWORK_SET_KEEP_FOCUSPOINT"
    hash "0x7F8413B7FC2AA6B9"
	jhash (0x075321B5)
	arguments {
		BOOL "p0",
		Any "p1",
	}
	ns "NETWORK"
	returns "void"
	doc [[!
<summary>
```
hash collision???  
```
</summary>
	]]

native "NETWORK_SET_IN_SPECTATOR_MODE"
    hash "0x423DE3854BB50894"
	jhash (0x5C4C8458)
	arguments {
		BOOL "toggle",
		Ped "playerPed",
	}
	ns "NETWORK"
	returns "void"
	doc [[!
	]]

native "NETWORK_SET_LOCAL_PLAYER_INVINCIBLE_TIME"
    hash "0x2D95C7E2D7E07307"
	jhash (0xFEA9B85C)
	arguments {
		int "time",
	}
	ns "NETWORK"
	returns "void"
	doc [[!
	]]

native "_NETWORK_SET_NETWORK_ID_DYNAMIC"
    hash "0x2B1813ABA29016C5"
	jhash (0x155465EE)
	arguments {
		int "netID",
		BOOL "toggle",
	}
	alias "0x2B1813ABA29016C5"
	ns "NETWORK"
	returns "void"
	doc [[!
<summary>
```
This is called shortly after setting Network ID Migration off it seems. Does anyone know the point of this?   
Example scenario,   
If I were to request and gain control of an online players vehicle then their vehicle's Network ID and turn migration off. I wouldn't need to ever request control again as they wouldn't gain control back.   
- scenario over -  
So what would be the point hereafter of setting it 'dynamic'?  
```
</summary>
	]]

native "NETWORK_SET_MISSION_FINISHED"
    hash "0x3B3D11CD9FFCDFC9"
	jhash (0x3083FAD7)
	ns "NETWORK"
	returns "void"
	doc [[!
	]]

native "NETWORK_SET_OVERRIDE_SPECTATOR_MODE"
    hash "0x70DA3BF8DACD3210"
	jhash (0xA0FD42D3)
	arguments {
		BOOL "toggle",
	}
	ns "NETWORK"
	returns "void"
	doc [[!
	]]

native "NETWORK_SET_PROPERTY_ID"
    hash "0x1775961C2FBBCB5C"
	jhash (0x5A74E873)
	arguments {
		Any "p0",
	}
	ns "NETWORK"
	returns "void"
	doc [[!
	]]

native "NETWORK_SET_RICH_PRESENCE"
    hash "0x1DCCACDCFC569362"
	jhash (0x932A6CED)
	arguments {
		int "p0",
		Any "p1",
		Any "p2",
		Any "p3",
	}
	ns "NETWORK"
	returns "void"
	doc [[!
<summary>
```
On PC it's a nullsub which means it does absolutely nothing.  
Now that Discord supports Rich Presence, R* might finally implement this for PC. Or maybe in future games like RDR2, GTA VI...  
```
</summary>
	]]

native "NETWORK_SET_TALKER_PROXIMITY"
    hash "0xCBF12D65F95AD686"
	jhash (0x67555C66)
	arguments {
		float "p0",
	}
	ns "NETWORK"
	returns "void"
	doc [[!
	]]

native "_NETWORK_SET_RICH_PRESENCE_2"
    hash "0x3E200C2BCF4164EB"
	jhash (0x017E6777)
	arguments {
		int "p0",
		charPtr "gxtLabel",
	}
	alias "0x3E200C2BCF4164EB"
	ns "NETWORK"
	returns "void"
	doc [[!
<summary>
**This native does absolutely nothing, just a nullsub**

```
NETWORK_SET_RICH_PRESENCE but for PlayStation? (On PC it's a nullsub)  
```
</summary>
	]]

native "NETWORK_SET_THIS_SCRIPT_IS_NETWORK_SCRIPT"
    hash "0x1CA59E306ECB80A5"
	jhash (0x470810ED)
	arguments {
		int "lobbySize",
		BOOL "p1",
		int "playerId",
	}
	ns "NETWORK"
	returns "void"
	doc [[!
<summary>
```
p1 is always 0  
```
</summary>
	]]

native "NETWORK_SET_TEAM_ONLY_CHAT"
    hash "0xD5B4883AC32F24C3"
	jhash (0x3813019A)
	arguments {
		BOOL "toggle",
	}
	ns "NETWORK"
	returns "void"
	doc [[!
	]]

native "NETWORK_SET_TRANSITION_CREATOR_HANDLE"
    hash "0xEF26739BCD9907D5"
	jhash (0x1DD01FE7)
	arguments {
		AnyPtr "p0",
	}
	ns "NETWORK"
	returns "void"
	doc [[!
	]]

native "NETWORK_SET_VOICE_CHANNEL"
    hash "0xEF6212C2EFEF1A23"
	jhash (0x3974879F)
	arguments {
		Any "p0",
	}
	ns "NETWORK"
	returns "void"
	doc [[!
	]]

native "NETWORK_SET_TRANSITION_ACTIVITY_ID"
    hash "0x30DE938B516F0AD2"
	jhash (0xCCA9C022)
	arguments {
		Any "p0",
	}
	alias "0x30DE938B516F0AD2"
	ns "NETWORK"
	returns "void"
	doc [[!
	]]

native "NETWORK_START_SYNCHRONISED_SCENE"
    hash "0x9A1B3FCDB36C8697"
	jhash (0xA9DFDC40)
	arguments {
		int "netScene",
	}
	ns "NETWORK"
	returns "void"
	doc [[!
	]]

native "NETWORK_SET_VOICE_ACTIVE"
    hash "0xBABEC9E69A91C57B"
	jhash (0x8011247F)
	arguments {
		BOOL "toggle",
	}
	ns "NETWORK"
	returns "void"
	doc [[!
	]]

native "NETWORK_SUPPRESS_INVITE"
    hash "0xA0682D67EF1FBA3D"
	jhash (0x323DC78C)
	arguments {
		BOOL "toggle",
	}
	ns "NETWORK"
	returns "void"
	doc [[!
	]]

native "NETWORK_UNREGISTER_NETWORKED_ENTITY"
    hash "0x7368E683BB9038D6"
	jhash (0x5C645F64)
	arguments {
		Entity "entity",
	}
	alias "0x7368E683BB9038D6"
	ns "NETWORK"
	returns "void"
	doc [[!
	]]

native "NETWORK_SHOW_PROFILE_UI"
    hash "0x859ED1CEA343FCA8"
	jhash (0xF00A20B0)
	arguments {
		intPtr "networkHandle",
	}
	ns "NETWORK"
	returns "void"
	doc [[!
<summary>
```
Example:  
int playerHandle;	  
NETWORK_HANDLE_FROM_PLAYER(selectedPlayer, &playerHandle, 13);  
NETWORK_SHOW_PROFILE_UI(&playerHandle);  
```
</summary>
	]]

native "NETWORK_STOP_SYNCHRONISED_SCENE"
    hash "0xC254481A4574CB2F"
	jhash (0x97B1CDF6)
	arguments {
		int "netScene",
	}
	ns "NETWORK"
	returns "void"
	doc [[!
	]]

native "OBJ_TO_NET"
    hash "0x99BFDC94A603E541"
	jhash (0x1E05F29F)
	arguments {
		Object "object",
	}
	ns "NETWORK"
	returns "int"
	doc [[!
<summary>
```
Lets objects spawn online simply do it like this:  
int createdObject = OBJ_TO_NET(CREATE_OBJECT_NO_OFFSET(oball, pCoords.x, pCoords.y, pCoords.z, 1, 0, 0));  
```
</summary>
	]]

native "PARTICIPANT_ID_TO_INT"
    hash "0x57A3BDDAD8E5AA0A"
	jhash (0x907498B0)
	ns "NETWORK"
	returns "int"
	doc [[!
<summary>
```
Return the local Participant ID.  
This native is exactly the same as 'PARTICIPANT_ID' native.  
```
</summary>
	]]

native "_NETWORK_VOICE_CONNECT_TO_PLAYER"
    hash "0xABD5E88B8A2D3DB2"
	jhash (0x9DFD89E6)
	arguments {
		AnyPtr "globalPtr",
	}
	alias "0xABD5E88B8A2D3DB2"
	ns "NETWORK"
	returns "void"
	doc [[!
<summary>
```
Only one occurence in the scripts:  
auto sub_cb43(auto a_0, auto a_1) {  
    if (g_2594CB._f1) {  
        if (NETWORK::_855BC38818F6F684()) {  
            NETWORK::_ABD5E88B8A2D3DB2(&a_0._fB93);  
            g_2594CB._f14/*{13}*/ = a_0._fB93;  
            g_2594CB._f4/*"64"*/ = a_1;  
            return 1;  
        }  
    }  
    return 0;  
}  
other:  
looks like it passes a player in the paramater  
Contains string "NETWORK_VOICE_CONNECT_TO_PLAYER" in ida  
```
</summary>
	]]

native "PED_TO_NET"
    hash "0x0EDEC3C276198689"
	jhash (0x86A0B759)
	arguments {
		Ped "ped",
	}
	ns "NETWORK"
	returns "int"
	doc [[!
<summary>
```
gets the network id of a ped  
```
</summary>
	]]

native "NETWORK_X_AFFECTS_GAMERS"
    hash "0xE532D6811B3A4D2A"
	jhash (0x7771AB83)
	arguments {
		Any "p0",
	}
	alias "0xE532D6811B3A4D2A"
	ns "NETWORK"
	returns "BOOL"
	doc [[!
	]]

native "RESERVE_NETWORK_MISSION_PEDS"
    hash "0xB60FEBA45333D36F"
	jhash (0x54998C37)
	arguments {
		int "amount",
	}
	ns "NETWORK"
	returns "void"
	doc [[!
	]]

native "PARTICIPANT_ID"
    hash "0x90986E8876CE0A83"
	jhash (0x9C35A221)
	ns "NETWORK"
	returns "Player"
	doc [[!
<summary>
```
Return the local Participant ID  
```
</summary>
	]]

native "SET_BALANCE_ADD_MACHINE"
    hash "0x815E5E3073DA1D67"
	jhash (0xE123C7AC)
	arguments {
		AnyPtr "p0",
		AnyPtr "p1",
	}
	ns "NETWORK"
	returns "BOOL"
	doc [[!
	]]

native "RESERVE_NETWORK_MISSION_OBJECTS"
    hash "0x4E5C93BD0C32FBF8"
	jhash (0x391DF4F3)
	arguments {
		int "amount",
	}
	ns "NETWORK"
	returns "void"
	doc [[!
	]]

native "SET_ENTITY_LOCALLY_INVISIBLE"
    hash "0xE135A9FF3F5D05D8"
	jhash (0x51ADCC5F)
	arguments {
		Entity "entity",
	}
	ns "NETWORK"
	returns "void"
	doc [[!
<summary>
```
I tried using this and I see nothing happening, what is this suppose to do?  
```
</summary>
	]]

native "SET_ENTITY_LOCALLY_VISIBLE"
    hash "0x241E289B5C059EDC"
	jhash (0x235A57B3)
	arguments {
		Entity "entity",
	}
	ns "NETWORK"
	returns "void"
	doc [[!
<summary>
```
I tried using this and I see nothing happening, what is this suppose to do?  
```
</summary>
	]]

native "RESERVE_NETWORK_MISSION_VEHICLES"
    hash "0x76B02E21ED27A469"
	jhash (0x5062875E)
	arguments {
		int "amount",
	}
	ns "NETWORK"
	returns "void"
	doc [[!
	]]

native "SET_BALANCE_ADD_MACHINES"
    hash "0xB8322EEB38BE7C26"
	jhash (0x22C33603)
	arguments {
		AnyPtr "p0",
		Any "p1",
		AnyPtr "p2",
	}
	ns "NETWORK"
	returns "BOOL"
	doc [[!
	]]

native "SET_LOCAL_PLAYER_INVISIBLE_LOCALLY"
    hash "0xE5F773C1A1D9D168"
	jhash (0x764F6222)
	arguments {
		BOOL "p0",
	}
	ns "NETWORK"
	returns "void"
	doc [[!
	]]

native "SET_LOCAL_PLAYER_VISIBLE_LOCALLY"
    hash "0x7619364C82D3BF14"
	jhash (0x324B56DB)
	arguments {
		BOOL "p0",
	}
	ns "NETWORK"
	returns "void"
	doc [[!
	]]

native "SET_ENTITY_VISIBLE_IN_CUTSCENE"
    hash "0xE0031D3C8F36AB82"
	jhash (0xDBFB067B)
	arguments {
		Any "p0",
		BOOL "p1",
		BOOL "p2",
	}
	ns "NETWORK"
	returns "void"
	doc [[!
	]]

native "SET_NETWORK_ID_CAN_MIGRATE"
    hash "0x299EEB23175895FC"
	jhash (0x47C8E5FF)
	arguments {
		int "netId",
		BOOL "toggle",
	}
	ns "NETWORK"
	returns "void"
	doc [[!
<summary>
```
Whether or not another player is allowed to take control of the entity  
```
</summary>
	]]

native "SET_LOCAL_PLAYER_VISIBLE_IN_CUTSCENE"
    hash "0xD1065D68947E7B6E"
	jhash (0x59F3479B)
	arguments {
		BOOL "p0",
		BOOL "p1",
	}
	ns "NETWORK"
	returns "void"
	doc [[!
	]]

native "SET_NETWORK_ID_VISIBLE_IN_CUTSCENE"
    hash "0xA6928482543022B4"
	jhash (0x199E75EF)
	arguments {
		int "netId",
		BOOL "p1",
		BOOL "p2",
	}
	ns "NETWORK"
	returns "void"
	doc [[!
	]]

native "_SET_NETWORK_OBJECT_NON_CONTACT"
    hash "0x6274C4712850841E"
	jhash (0xEA235081)
	arguments {
		Object "object",
		BOOL "toggle",
	}
	alias "0x6274C4712850841E"
	ns "NETWORK"
	returns "void"
	doc [[!
<summary>
```
Original put name,  
_SET_NETWORK_VEHICLE_NON_CONTACT  
However changed to 'object' as the instances where this is called in scripts both freemode and golf it's only used on objects after the objects are called OBJ_TO_NET p_parachute_s (freemode) prop_golf_ball (golf). Tho the script search was done via TU27 Xbox360 ones.  
Got my hopes up whoever put this as vehicle. I was hoping it was what R* used in non-contact races.  
```
</summary>
	]]

native "SET_NETWORK_ID_EXISTS_ON_ALL_MACHINES"
    hash "0xE05E81A888FA63C8"
	jhash (0x68D486B2)
	arguments {
		int "netId",
		BOOL "toggle",
	}
	ns "NETWORK"
	returns "void"
	doc [[!
	]]

native "_SET_NETWORK_ID_SYNC_TO_PLAYER"
    hash "0xA8A024587329F36A"
	jhash (0x4D15FDB1)
	arguments {
		int "netId",
		Player "player",
		BOOL "toggle",
	}
	alias "0xA8A024587329F36A"
	ns "NETWORK"
	returns "void"
	doc [[!
<summary>
```
not tested....  
```
</summary>
	]]

native "SET_PLAYER_INVISIBLE_LOCALLY"
    hash "0x12B37D54667DB0B8"
	jhash (0x18227209)
	arguments {
		Player "player",
		BOOL "toggle",
	}
	ns "NETWORK"
	returns "void"
	doc [[!
	]]

native "SET_STORE_ENABLED"
    hash "0x9641A9FF718E9C5E"
	jhash (0xC1F6443B)
	arguments {
		BOOL "toggle",
	}
	ns "NETWORK"
	returns "void"
	doc [[!
<summary>
```
Access to the store for shark cards etc...  
```
</summary>
	]]

native "SET_NETWORK_VEHICLE_RESPOT_TIMER"
    hash "0xEC51713AB6EC36E8"
	jhash (0x2C30912D)
	arguments {
		int "netId",
		int "time",
	}
	ns "NETWORK"
	returns "void"
	doc [[!
	]]

native "TEXTURE_DOWNLOAD_GET_NAME"
    hash "0x3448505B6E35262D"
	jhash (0xA40EF65A)
	arguments {
		int "p0",
	}
	ns "NETWORK"
	returns "charPtr"
	doc [[!
	]]

native "SET_PLAYER_VISIBLE_LOCALLY"
    hash "0xFAA10F1FAFB11AF2"
	jhash (0xBA2BB4B4)
	arguments {
		Player "player",
		BOOL "toggle",
	}
	ns "NETWORK"
	returns "void"
	doc [[!
	]]

native "SHUTDOWN_AND_LAUNCH_SINGLE_PLAYER_GAME"
    hash "0x593850C16A36B692"
	jhash (0x92B7351C)
	ns "NETWORK"
	returns "void"
	doc [[!
<summary>
```
Starts a new singleplayer game (at the prologue).  
```
</summary>
	]]

native "TEXTURE_DOWNLOAD_RELEASE"
    hash "0x487EB90B98E9FB19"
	jhash (0xEE8D9E70)
	arguments {
		int "p0",
	}
	ns "NETWORK"
	returns "void"
	doc [[!
	]]

native "TEXTURE_DOWNLOAD_REQUEST"
    hash "0x16160DA74A8E74A2"
	jhash (0xAD546CC3)
	arguments {
		intPtr "PlayerHandle",
		charPtr "FilePath",
		charPtr "Name",
		BOOL "p3",
	}
	ns "NETWORK"
	returns "int"
	doc [[!
	]]

native "TEXTURE_DOWNLOAD_HAS_FAILED"
    hash "0x5776ED562C134687"
	jhash (0xE4547765)
	arguments {
		int "p0",
	}
	alias "0x5776ED562C134687"
	ns "NETWORK"
	returns "BOOL"
	doc [[!
	]]

native "VEH_TO_NET"
    hash "0xB4C94523F023419C"
	jhash (0xF17634EB)
	arguments {
		Vehicle "vehicle",
	}
	ns "NETWORK"
	returns "int"
	doc [[!
<summary>
```
calls from vehicle to net.  
```
</summary>
	]]

native "USE_PLAYER_COLOUR_INSTEAD_OF_TEAM_COLOUR"
    hash "0x5FFE9B4144F9712F"
	jhash (0x4DD46DAE)
	arguments {
		BOOL "toggle",
	}
	ns "NETWORK"
	returns "void"
	doc [[!
<summary>
```
hash collision?  
```
</summary>
	]]

native "USING_NETWORK_WEAPONTYPE"
    hash "0xE26CCFF8094D8C74"
	jhash (0xF49C1533)
	arguments {
		Any "p0",
	}
	ns "NETWORK"
	returns "BOOL"
	doc [[!
<summary>
```
hash collision?  
```
</summary>
	]]

native "0x1C2473301B1C66BA"
    hash "0x1C2473301B1C66BA"
	jhash (0xA27B9FE8)
	ns "NETWORKCASH"
	returns "Any"
	doc [[!
<summary>
```
NETWORK_CAN_R??? or NETWORK_CAN_S???  
```
</summary>
	]]

native "0x7303E27CC6532080"
    hash "0x7303E27CC6532080"
	arguments {
		Any "p0",
		BOOL "p1",
		BOOL "p2",
		BOOL "p3",
		AnyPtr "p4",
		Any "p5",
	}
	ns "NETWORKCASH"
	returns "BOOL"
	doc [[!
<summary>
```
NETWORK_CAN_R??? or NETWORK_CAN_S???  
```
</summary>
	]]

native "0x6FCF8DDEA146C45B"
    hash "0x6FCF8DDEA146C45B"
	jhash (0xB96C7ABE)
	arguments {
		Any "p0",
	}
	ns "NETWORKCASH"
	returns "void"
	doc [[!
<summary>
```
This function is hard-coded to always return 1. Крч какая-то хуйня.  
```
</summary>
	]]

native "0x7C4FCCD2E4DEB394"
    hash "0x7C4FCCD2E4DEB394"
	ns "NETWORKCASH"
	returns "BOOL"
	doc [[!
<summary>
```
Used for cash gifts  
Console Hash  
```
</summary>
	]]

native "0xDC18531D7019A535"
    hash "0xDC18531D7019A535"
	arguments {
		Any "p0",
		Any "p1",
	}
	ns "NETWORKCASH"
	returns "BOOL"
	doc [[!
<summary>
```
probably 0x3461981 on console  
```
</summary>
	]]

native "0xE154B48B68EF72BC"
    hash "0xE154B48B68EF72BC"
	jhash (0x531E4892)
	arguments {
		Any "p0",
	}
	ns "NETWORKCASH"
	returns "BOOL"
	doc [[!
<summary>
```
This function is hard-coded to always return 1.  
```
</summary>
	]]

native "0xE260E0BB9CD995AC"
    hash "0xE260E0BB9CD995AC"
	jhash (0x8F266745)
	arguments {
		Any "p0",
	}
	ns "NETWORKCASH"
	returns "BOOL"
	doc [[!
	]]

native "NETWORK_BUY_AIRSTRIKE"
    hash "0x763B4BD305338F19"
	jhash (0x40470683)
	arguments {
		int "cost",
		BOOL "p1",
		BOOL "p2",
	}
	ns "NETWORKCASH"
	returns "void"
	doc [[!
<summary>
```
p1 = 0 (always)  
p2 = 1 (always)  
```
</summary>
	]]

native "0xF70EFA14FE091429"
    hash "0xF70EFA14FE091429"
	jhash (0x8B755993)
	arguments {
		Any "p0",
	}
	ns "NETWORKCASH"
	returns "Any"
	doc [[!
	]]

native "NETWORK_BUY_BOUNTY"
    hash "0x7B718E197453F2D9"
	jhash (0xCB89CBE0)
	arguments {
		int "amount",
		Player "victim",
		BOOL "p2",
		BOOL "p3",
	}
	ns "NETWORKCASH"
	returns "void"
	doc [[!
<summary>
```
p1 is just an assumption. p2 was false and p3 was true.  
```
</summary>
	]]

native "NETWORK_BUY_FAIRGROUND_RIDE"
    hash "0x8A7B3952DD64D2B5"
	jhash (0xD9622D64)
	arguments {
		int "amountSpent",
		Any "p1",
		BOOL "p2",
		BOOL "p3",
	}
	alias "0x8A7B3952DD64D2B5"
	ns "NETWORKCASH"
	returns "void"
	doc [[!
<summary>
```
The first parameter is the amount spent which is store in a global when this native is called. The global returns 10. Which is the price for both rides.  
The last 3 parameters are,   
2,0,1 in the am_ferriswheel.c  
1,0,1 in the am_rollercoaster.c  
```
</summary>
	]]

native "NETWORK_BUY_HEALTHCARE"
    hash "0xD9B067E55253E3DD"
	jhash (0x832150E5)
	arguments {
		int "cost",
		BOOL "p1",
		BOOL "p2",
	}
	ns "NETWORKCASH"
	returns "void"
	doc [[!
	]]

native "NETWORK_BUY_HELI_STRIKE"
    hash "0x81AA4610E3FD3A69"
	jhash (0x047547D4)
	arguments {
		int "cost",
		BOOL "p1",
		BOOL "p2",
	}
	ns "NETWORKCASH"
	returns "void"
	doc [[!
<summary>
```
p1 = 0 (always)  
p2 = 1 (always)  
```
</summary>
	]]

native "NETWORK_BUY_PROPERTY"
    hash "0x650A08A280870AF6"
	jhash (0x7D479AAB)
	arguments {
		float "propertyCost",
		Hash "propertyName",
		BOOL "p2",
		BOOL "p3",
	}
	ns "NETWORKCASH"
	returns "void"
	doc [[!
	]]

native "NETWORK_BUY_ITEM"
    hash "0xF0077C797F66A355"
	jhash (0xA07B6368)
	arguments {
		Ped "player",
		Hash "item",
		Any "p2",
		Any "p3",
		BOOL "p4",
		charPtr "item_name",
		Any "p6",
		Any "p7",
		Any "p8",
		BOOL "p9",
	}
	ns "NETWORKCASH"
	returns "void"
	doc [[!
	]]

native "NETWORK_CAN_BET"
    hash "0x3A54E33660DED67F"
	jhash (0xE3802533)
	arguments {
		Any "p0",
	}
	alias "0x3A54E33660DED67F"
	ns "NETWORKCASH"
	returns "BOOL"
	doc [[!
	]]

native "NETWORK_CAN_RECEIVE_PLAYER_CASH"
    hash "0x5D17BE59D2123284"
	jhash (0x41F5F10E)
	arguments {
		Any "p0",
		Any "p1",
		Any "p2",
		Any "p3",
	}
	ns "NETWORKCASH"
	returns "BOOL"
	doc [[!
	]]

native "NETWORK_CAN_SPEND_MONEY"
    hash "0xAB3CAA6B422164DA"
	jhash (0x5AA379D9)
	arguments {
		Any "p0",
		BOOL "p1",
		BOOL "p2",
		BOOL "p3",
		Any "p4",
	}
	alias "0xAB3CAA6B422164DA"
	ns "NETWORKCASH"
	returns "BOOL"
	doc [[!
	]]

native "NETWORK_CLEAR_CHARACTER_WALLET"
    hash "0xA921DED15FDF28F5"
	jhash (0x19F0C471)
	arguments {
		Any "p0",
	}
	alias "0xA921DED15FDF28F5"
	ns "NETWORKCASH"
	returns "void"
	doc [[!
	]]

native "NETWORK_DELETE_CHARACTER"
    hash "0x05A50AF38947EB8D"
	jhash (0xA9F7E9C3)
	arguments {
		int "characterIndex",
		BOOL "p1",
		BOOL "p2",
	}
	ns "NETWORKCASH"
	returns "void"
	doc [[!
<summary>
```
Note the 2nd parameters are always 1, 0. I have a feeling it deals with your money, wallet, bank. So when you delete the character it of course wipes the wallet cash at that time. So if that was the case, it would be eg, NETWORK_DELETE_CHARACTER(characterIndex, deleteWalletCash, deleteBankCash);  
```
</summary>
	]]

native "NETWORK_EARN_FROM_AI_TARGET_KILL"
    hash "0x515B4A22E4D3C6D7"
	jhash (0x866004A8)
	arguments {
		Any "p0",
		Any "p1",
	}
	alias "0x515B4A22E4D3C6D7"
	ns "NETWORKCASH"
	returns "void"
	doc [[!
<summary>
```
DSPORT  
```
</summary>
	]]

native "_NETWORK_EARN_FROM_ARMOUR_TRUCK"
    hash "0xF514621E8EA463D0"
	jhash (0x30B3EC0A)
	arguments {
		int "amount",
	}
	alias "0xF514621E8EA463D0"
	ns "NETWORKCASH"
	returns "void"
	doc [[!
<summary>
```
For the money bags that drop a max of $40,000. Often called 40k bags.  
Most likely NETWORK_EARN_FROM_ROB***  
MONEY_EARN_JOBS  
```
</summary>
	]]

native "_NETWORK_EARN_FROM_AMBIENT_JOB"
    hash "0xFB6DB092FBAE29E6"
	arguments {
		int "p0",
		charPtr "p1",
		AnyPtr "p2",
	}
	alias "0xFB6DB092FBAE29E6"
	ns "NETWORKCASH"
	returns "void"
	doc [[!
<summary>
```
Console Hash - 0xA14CC95D = NETWORK_EARN_FROM_AMBIENT_JOB  
Example for p1: "AM_DISTRACT_COPS"  
```
</summary>
	]]

native "NETWORK_EARN_FROM_BETTING"
    hash "0x827A5BA1A44ACA6D"
	jhash (0xA0F7F07C)
	arguments {
		int "amount",
		charPtr "p1",
	}
	ns "NETWORKCASH"
	returns "void"
	doc [[!
	]]

native "NETWORK_EARN_FROM_BOUNTY"
    hash "0x131BB5DA15453ACF"
	jhash (0x127F2DAE)
	arguments {
		int "amount",
		intPtr "networkHandle",
		AnyPtr "p2",
		Any "p3",
	}
	ns "NETWORKCASH"
	returns "void"
	doc [[!
	]]

native "NETWORK_EARN_FROM_CRATE_DROP"
    hash "0xB1CC1B9EC3007A2A"
	jhash (0xEAF04923)
	arguments {
		int "amount",
	}
	alias "0xB1CC1B9EC3007A2A"
	ns "NETWORKCASH"
	returns "void"
	doc [[!
	]]

native "_NETWORK_EARN_FROM_GANG_PICKUP"
    hash "0xA03D4ACE0A3284CE"
	jhash (0x33C20BC4)
	arguments {
		int "amount",
	}
	alias "0xA03D4ACE0A3284CE"
	ns "NETWORKCASH"
	returns "void"
	doc [[!
<summary>
```
MONEY_EARN_PICKED_UP  
```
</summary>
	]]

native "NETWORK_EARN_FROM_CHALLENGE_WIN"
    hash "0x2B171E6B2F64D8DF"
	jhash (0x2BEFB6C4)
	arguments {
		Any "p0",
		AnyPtr "p1",
		BOOL "p2",
	}
	alias "0x2B171E6B2F64D8DF"
	ns "NETWORKCASH"
	returns "void"
	doc [[!
	]]

native "_NETWORK_EARN_FROM_DAILY_OBJECTIVE"
    hash "0x6EA318C91C1A8786"
	arguments {
		int "p0",
		charPtr "p1",
		int "p2",
	}
	alias "0x6EA318C91C1A8786"
	ns "NETWORKCASH"
	returns "void"
	doc [[!
<summary>
```
Console Hash - 0xAB6BD72F = NETWORK_EARN_FROM_DAILY_OBJECTIVE  
```
</summary>
	]]

native "NETWORK_EARN_FROM_IMPORT_EXPORT"
    hash "0xF92A014A634442D6"
	jhash (0xF11FC458)
	arguments {
		Any "p0",
		Any "p1",
	}
	ns "NETWORKCASH"
	returns "void"
	doc [[!
	]]

native "_NETWORK_EARN_FROM_JOB_BONUS"
    hash "0x6816FB4416760775"
	arguments {
		Any "p0",
		AnyPtr "p1",
		AnyPtr "p2",
	}
	alias "0x6816FB4416760775"
	ns "NETWORKCASH"
	returns "void"
	doc [[!
<summary>
```
Console Hash - 0xBEE23713 = NETWORK_EARN_FROM_JOB_BONUS  
```
</summary>
	]]

native "NETWORK_EARN_FROM_HOLDUPS"
    hash "0x45B8154E077D9E4D"
	jhash (0xE6B90E9C)
	arguments {
		int "amount",
	}
	ns "NETWORKCASH"
	returns "void"
	doc [[!
	]]

native "NETWORK_EARN_FROM_NOT_BADSPORT"
    hash "0x4337511FA8221D36"
	jhash (0xCC068380)
	arguments {
		int "amount",
	}
	alias "0x4337511FA8221D36"
	ns "NETWORKCASH"
	returns "void"
	doc [[!
<summary>
```
Enough007: Adds an entry in the Network Transaction Log.  
Max value for amount 2000  
```
</summary>
	]]

native "NETWORK_EARN_FROM_JOB"
    hash "0xB2CC4836834E8A98"
	jhash (0x0B6997FC)
	arguments {
		int "amount",
		charPtr "p1",
	}
	ns "NETWORKCASH"
	returns "void"
	doc [[!
	]]

native "NETWORK_EARN_FROM_PICKUP"
    hash "0xED1517D3AF17C698"
	jhash (0x70A0ED62)
	arguments {
		int "amount",
	}
	ns "NETWORKCASH"
	returns "Any"
	doc [[!
	]]

native "NETWORK_EARN_FROM_MISSION_H"
    hash "0x61326EE6DF15B0CA"
	jhash (0x5E81F55C)
	arguments {
		int "amount",
		charPtr "heistHash",
	}
	alias "0x61326EE6DF15B0CA"
	ns "NETWORKCASH"
	returns "void"
	doc [[!
<summary>
```
Pretty sure this is actually a hash collision.  
It should be NETWORK_EARN_FROM_A*** or NETWORK_EARN_FROM_B***  
=============================================================  
Not a hash collision, test it for yourself when finishing heist.  
lackos; 2017.03.12  
```
</summary>
	]]

native "NETWORK_EARN_FROM_ROCKSTAR"
    hash "0x02CE1D6AC0FC73EA"
	jhash (0x5A3733CC)
	arguments {
		int "amount",
	}
	ns "NETWORKCASH"
	returns "void"
	doc [[!
<summary>
```
This merely adds an entry in the Network Transaction Log;   
it does not grant cash to the player (on PC).  
Max value for amount is 9999999.  
```
</summary>
	]]

native "_NETWORK_GET_BANK_BALANCE_STRING"
    hash "0xA6FA3979BED01B81"
	alias "0xA6FA3979BED01B81"
	ns "NETWORKCASH"
	returns "charPtr"
	doc [[!
<summary>
```
Console Hash: Probably 0xAA7EA3BD  
```
</summary>
	]]

native "NETWORK_EARN_FROM_PERSONAL_VEHICLE"
    hash "0x3F4D00167E41E0AD"
	jhash (0x96B8BEE8)
	arguments {
		Any "p0",
		Any "p1",
		Any "p2",
		Any "p3",
		Any "p4",
		Any "p5",
		Any "p6",
		Any "p7",
		Any "p8",
	}
	alias "0x3F4D00167E41E0AD"
	ns "NETWORKCASH"
	returns "void"
	doc [[!
<summary>
```
Now has 9 parameters.  
```
</summary>
	]]

native "NETWORK_GET_VC_BALANCE"
    hash "0x5CBAD97E059E1B94"
	jhash (0xADF8F882)
	alias "0x5CBAD97E059E1B94"
	ns "NETWORKCASH"
	returns "int"
	doc [[!
	]]

native "NETWORK_GET_VC_WALLET_BALANCE"
    hash "0xA40F9C2623F6A8B5"
	jhash (0x4F5B781C)
	arguments {
		int "character",
	}
	alias "0xA40F9C2623F6A8B5"
	ns "NETWORKCASH"
	returns "int"
	doc [[!
<summary>
```
From what I understand, it retrieves STAT_WALLET_BALANCE for the specified character (-1 means use MPPLY_LAST_MP_CHAR)  
```
</summary>
	]]

native "NETWORK_EARN_FROM_PROPERTY"
    hash "0x849648349D77F5C5"
	jhash (0x9BE4F7E1)
	arguments {
		int "amount",
		Hash "propertyName",
	}
	ns "NETWORKCASH"
	returns "void"
	doc [[!
	]]

native "NETWORK_EARN_FROM_VEHICLE"
    hash "0xB539BD8A4C1EECF8"
	jhash (0xF803589D)
	arguments {
		Any "p0",
		Any "p1",
		Any "p2",
		Any "p3",
		Any "p4",
		Any "p5",
		Any "p6",
		Any "p7",
	}
	ns "NETWORKCASH"
	returns "void"
	doc [[!
<summary>
```
Now has 8 params.  
```
</summary>
	]]

native "NETWORK_INITIALIZE_CASH"
    hash "0x3DA5ECD1A56CBA6D"
	jhash (0x66DA9935)
	arguments {
		int "p0",
		int "p1",
	}
	alias "0x3DA5ECD1A56CBA6D"
	ns "NETWORKCASH"
	returns "void"
	doc [[!
	]]

native "NETWORK_MONEY_CAN_BET"
    hash "0x81404F3DC124FE5B"
	jhash (0x8474E6F0)
	arguments {
		Any "p0",
		BOOL "p1",
		BOOL "p2",
	}
	alias "0x81404F3DC124FE5B"
	ns "NETWORKCASH"
	returns "BOOL"
	doc [[!
	]]

native "NETWORK_GET_VC_BANK_BALANCE"
    hash "0x76EF28DA05EA395A"
	jhash (0x16184FB5)
	alias "0x76EF28DA05EA395A"
	ns "NETWORKCASH"
	returns "int"
	doc [[!
<summary>
```
From what I can see in ida, I believe it retrieves the players online bank balance.  
```
</summary>
	]]

native "NETWORK_PAY_UTILITY_BILL"
    hash "0xAFE08B35EC0C9EAE"
	jhash (0x451A2644)
	arguments {
		Any "p0",
		BOOL "p1",
		BOOL "p2",
	}
	alias "0xAFE08B35EC0C9EAE"
	ns "NETWORKCASH"
	returns "void"
	doc [[!
	]]

native "NETWORK_RECEIVE_PLAYER_JOBSHARE_CASH"
    hash "0x56A3B51944C50598"
	jhash (0x4ED71C1A)
	arguments {
		int "value",
		intPtr "networkHandle",
	}
	ns "NETWORKCASH"
	returns "void"
	doc [[!
	]]

native "NETWORK_GIVE_PLAYER_JOBSHARE_CASH"
    hash "0xFB18DF9CB95E0105"
	jhash (0xC6047FDB)
	arguments {
		int "amount",
		intPtr "networkHandle",
	}
	ns "NETWORKCASH"
	returns "void"
	doc [[!
	]]

native "NETWORK_SPENT_AMMO_DROP"
    hash "0xB162DC95C0A3317B"
	jhash (0x4B643076)
	arguments {
		Any "p0",
		BOOL "p1",
		BOOL "p2",
	}
	ns "NETWORKCASH"
	returns "void"
	doc [[!
	]]

native "NETWORK_PAY_EMPLOYEE_WAGE"
    hash "0x5FD5ED82CBBE9989"
	jhash (0xBE70849B)
	arguments {
		Any "p0",
		BOOL "p1",
		BOOL "p2",
	}
	alias "0x5FD5ED82CBBE9989"
	ns "NETWORKCASH"
	returns "void"
	doc [[!
	]]

native "NETWORK_PAY_MATCH_ENTRY_FEE"
    hash "0x9346E14F2AF74D46"
	jhash (0x224A3488)
	arguments {
		int "value",
		intPtr "p1",
		BOOL "p2",
		BOOL "p3",
	}
	alias "0x9346E14F2AF74D46"
	ns "NETWORKCASH"
	returns "void"
	doc [[!
	]]

native "NETWORK_SPENT_BETTING"
    hash "0x1C436FD11FFA692F"
	jhash (0xF8A07513)
	arguments {
		Any "p0",
		Any "p1",
		AnyPtr "p2",
		BOOL "p3",
		BOOL "p4",
	}
	ns "NETWORKCASH"
	returns "void"
	doc [[!
	]]

native "NETWORK_SPENT_BOUNTY"
    hash "0x29B260B84947DFCC"
	jhash (0x3401FC96)
	arguments {
		Any "p0",
		BOOL "p1",
		BOOL "p2",
	}
	ns "NETWORKCASH"
	returns "void"
	doc [[!
	]]

native "NETWORK_REFUND_CASH"
    hash "0xF9C812CD7C46E817"
	jhash (0x07C92F21)
	arguments {
		int "index",
		charPtr "context",
		charPtr "reason",
		BOOL "unk",
	}
	alias "0xF9C812CD7C46E817"
	ns "NETWORKCASH"
	returns "void"
	doc [[!
<summary>
```
index  
-------  
See function sub_1005 in am_boat_taxi.ysc  
context  
----------  
"BACKUP_VAGOS"  
"BACKUP_LOST"  
"BACKUP_FAMILIES"  
"HIRE_MUGGER"  
"HIRE_MERCENARY"  
"BUY_CARDROPOFF"  
"HELI_PICKUP"  
"BOAT_PICKUP"  
"CLEAR_WANTED"  
"HEAD_2_HEAD"  
"CHALLENGE"  
"SHARE_LAST_JOB"  
"DEFAULT"  
reason  
---------  
"NOTREACHTARGET"  
"TARGET_ESCAPE"  
"DELIVERY_FAIL"  
"NOT_USED"  
"TEAM_QUIT"  
"SERVER_ERROR"  
"RECEIVE_LJ_L"  
"CHALLENGE_PLAYER_LEFT"  
"DEFAULT"  
unk  
-----  
Unknown bool value  
```
</summary>
	]]

native "NETWORK_SPENT_BULL_SHARK"
    hash "0xA6DD8458CE24012C"
	jhash (0xDE7D398C)
	arguments {
		Any "p0",
		BOOL "p1",
		BOOL "p2",
	}
	ns "NETWORKCASH"
	returns "void"
	doc [[!
	]]

native "NETWORK_SPENT_ARREST_BAIL"
    hash "0x812F5488B1B2A299"
	jhash (0x5AEE2FC1)
	arguments {
		Any "p0",
		BOOL "p1",
		BOOL "p2",
	}
	ns "NETWORKCASH"
	returns "void"
	doc [[!
	]]

native "NETWORK_SPENT_BUY_PASSIVE_MODE"
    hash "0x6D3A430D1A809179"
	jhash (0x7E97C92C)
	arguments {
		Any "p0",
		BOOL "p1",
		BOOL "p2",
	}
	ns "NETWORKCASH"
	returns "void"
	doc [[!
	]]

native "NETWORK_SPENT_BUY_REVEAL_PLAYERS"
    hash "0x6E176F1B18BC0637"
	jhash (0x2F7836E2)
	arguments {
		Any "p0",
		BOOL "p1",
		BOOL "p2",
	}
	ns "NETWORKCASH"
	returns "void"
	doc [[!
	]]

native "NETWORK_SPENT_BOAT_PICKUP"
    hash "0x524EE43A37232C00"
	jhash (0xB241CABD)
	arguments {
		Any "p0",
		BOOL "p1",
		BOOL "p2",
	}
	ns "NETWORKCASH"
	returns "void"
	doc [[!
	]]

native "NETWORK_SPENT_CARWASH"
    hash "0xEC03C719DB2F4306"
	jhash (0x8283E028)
	arguments {
		Any "p0",
		Any "p1",
		Any "p2",
		BOOL "p3",
		BOOL "p4",
	}
	ns "NETWORKCASH"
	returns "void"
	doc [[!
	]]

native "NETWORK_SPENT_BUY_OFFTHERADAR"
    hash "0xA628A745E2275C5D"
	jhash (0x20DDCF2F)
	arguments {
		Any "p0",
		BOOL "p1",
		BOOL "p2",
	}
	ns "NETWORKCASH"
	returns "void"
	doc [[!
	]]

native "NETWORK_SPENT_CASH_DROP"
    hash "0x289016EC778D60E0"
	jhash (0x87BD1D11)
	arguments {
		int "amount",
		BOOL "p1",
		BOOL "p2",
	}
	ns "NETWORKCASH"
	returns "void"
	doc [[!
	]]

native "NETWORK_SPENT_BUY_WANTEDLEVEL"
    hash "0xE1B13771A843C4F6"
	jhash (0xE7CB4F95)
	arguments {
		Any "p0",
		AnyPtr "p1",
		BOOL "p2",
		BOOL "p3",
	}
	ns "NETWORKCASH"
	returns "void"
	doc [[!
	]]

native "NETWORK_SPENT_FROM_ROCKSTAR"
    hash "0x6A445B64ED7ABEB5"
	jhash (0x54198922)
	arguments {
		int "bank",
		BOOL "p1",
		BOOL "p2",
	}
	alias "0x6A445B64ED7ABEB5"
	ns "NETWORKCASH"
	returns "void"
	doc [[!
	]]

native "NETWORK_SPENT_CALL_PLAYER"
    hash "0xACDE7185B374177C"
	jhash (0x1A89B5FC)
	arguments {
		Any "p0",
		AnyPtr "p1",
		BOOL "p2",
		BOOL "p3",
	}
	ns "NETWORKCASH"
	returns "void"
	doc [[!
	]]

native "NETWORK_SPENT_HELI_PICKUP"
    hash "0x7BF1D73DB2ECA492"
	jhash (0x27EEBCAB)
	arguments {
		Any "p0",
		BOOL "p1",
		BOOL "p2",
	}
	ns "NETWORKCASH"
	returns "void"
	doc [[!
	]]

native "NETWORK_SPENT_HIRE_MUGGER"
    hash "0xE404BFB981665BF0"
	jhash (0xE792C4A5)
	arguments {
		Any "p0",
		BOOL "p1",
		BOOL "p2",
	}
	ns "NETWORKCASH"
	returns "void"
	doc [[!
<summary>
```
Only used once in a script (am_contact_requests)  
p1 = 0  
p2 = 1  
```
</summary>
	]]

native "NETWORK_SPENT_CINEMA"
    hash "0x6B38ECB05A63A685"
	jhash (0x1100CAF5)
	arguments {
		Any "p0",
		Any "p1",
		BOOL "p2",
		BOOL "p3",
	}
	ns "NETWORKCASH"
	returns "void"
	doc [[!
	]]

native "NETWORK_SPENT_NO_COPS"
    hash "0xD5BB406F4E04019F"
	jhash (0x2E51C61C)
	arguments {
		Any "p0",
		BOOL "p1",
		BOOL "p2",
	}
	alias "0xD5BB406F4E04019F"
	ns "NETWORKCASH"
	returns "void"
	doc [[!
	]]

native "NETWORK_SPENT_HIRE_MERCENARY"
    hash "0xE7B80E2BF9D80BD6"
	jhash (0x99CF02C4)
	arguments {
		Any "p0",
		BOOL "p1",
		BOOL "p2",
	}
	ns "NETWORKCASH"
	returns "void"
	doc [[!
	]]

native "NETWORK_SPENT_PAY_VEHICLE_INSURANCE_PREMIUM"
    hash "0x9FF28D88C766E3E8"
	jhash (0x4E665BB2)
	arguments {
		int "amount",
		Hash "vehicleModel",
		intPtr "networkHandle",
		BOOL "notBankrupt",
		BOOL "hasTheMoney",
	}
	ns "NETWORKCASH"
	returns "void"
	doc [[!
<summary>
```
According to how I understood this in the freemode script alone,  
The first parameter is determined by a function named, func_5749 within the freemode script which has a list of all the vehicles and a set price to return which some vehicles deals with globals as well. So the first parameter is basically the set in stone insurance cost it's gonna charge you for that specific vehicle model.  
The second parameter whoever put it was right, they call GET_ENTITY_MODEL with the vehicle as the paremeter.  
The third parameter is the network handle as they call their little struct<13> func or atleast how the script decompiled it to look which in lamens terms just returns the network handle of the previous owner based on DECOR_GET_INT(vehicle, "Previous_Owner").  
The fourth parameter is a bool that returns true/false depending on if your bank balance is greater then 0.  
The fifth and last parameter is a bool that returns true/false depending on if you have the money for the car based on the cost returned by func_5749. In the freemode script eg,  
bool hasTheMoney = NETWORKCASH::_GET_BANK_BALANCE() < carCost.  
```
</summary>
	]]

native "NETWORK_SPENT_PROSTITUTES"
    hash "0xB21B89501CFAC79E"
	jhash (0x78436D07)
	arguments {
		Any "p0",
		BOOL "p1",
		BOOL "p2",
	}
	ns "NETWORKCASH"
	returns "void"
	doc [[!
	]]

native "NETWORK_SPENT_HOLDUPS"
    hash "0xD9B86B9872039763"
	jhash (0x1B3803B1)
	arguments {
		Any "p0",
		BOOL "p1",
		BOOL "p2",
	}
	ns "NETWORKCASH"
	returns "void"
	doc [[!
	]]

native "NETWORK_SPENT_IN_STRIPCLUB"
    hash "0xEE99784E4467689C"
	jhash (0x8957038E)
	arguments {
		Any "p0",
		BOOL "p1",
		Any "p2",
		BOOL "p3",
	}
	alias "0xEE99784E4467689C"
	ns "NETWORKCASH"
	returns "void"
	doc [[!
	]]

native "NETWORK_SPENT_REQUEST_JOB"
    hash "0x8204DA7934DF3155"
	jhash (0xD57A5125)
	arguments {
		Any "p0",
		BOOL "p1",
		BOOL "p2",
	}
	alias "0x8204DA7934DF3155"
	ns "NETWORKCASH"
	returns "void"
	doc [[!
	]]

native "NETWORK_SPENT_ROBBED_BY_MUGGER"
    hash "0x995A65F15F581359"
	jhash (0xE6AAA0D5)
	arguments {
		int "amount",
		BOOL "p1",
		BOOL "p2",
	}
	alias "0x995A65F15F581359"
	ns "NETWORKCASH"
	returns "void"
	doc [[!
	]]

native "NETWORK_SPENT_PLAYER_HEALTHCARE"
    hash "0x7C99101F7FCE2EE5"
	jhash (0x3D96A21C)
	arguments {
		Any "p0",
		Any "p1",
		BOOL "p2",
		BOOL "p3",
	}
	alias "0x7C99101F7FCE2EE5"
	ns "NETWORKCASH"
	returns "void"
	doc [[!
	]]

native "NETWORK_SPENT_TELESCOPE"
    hash "0x7FE61782AD94CC09"
	jhash (0xAE7FF044)
	arguments {
		Any "p0",
		BOOL "p1",
		BOOL "p2",
	}
	ns "NETWORKCASH"
	returns "void"
	doc [[!
	]]

native "_NETWORK_SPENT_REQUEST_HEIST"
    hash "0x9D26502BB97BFE62"
	arguments {
		Any "p0",
		BOOL "p1",
		BOOL "p2",
	}
	alias "0x9D26502BB97BFE62"
	ns "NETWORKCASH"
	returns "void"
	doc [[!
<summary>
```
Console Hash 0xF4287778 = NETWORK_SPENT_REQUEST_HEIST  
```
</summary>
	]]

native "NETWORK_SPENT_TAXI"
    hash "0x17C3A7D31EAE39F9"
	jhash (0x1F3DB3E3)
	arguments {
		int "amount",
		BOOL "p1",
		BOOL "p2",
	}
	ns "NETWORKCASH"
	returns "void"
	doc [[!
	]]

native "PROCESS_CASH_GIFT"
    hash "0x20194D48EAEC9A41"
	jhash (0xC5D8B1E9)
	arguments {
		intPtr "p0",
		intPtr "p1",
		charPtr "p2",
	}
	alias "0x20194D48EAEC9A41"
	ns "NETWORKCASH"
	returns "charPtr"
	doc [[!
<summary>
```
This isn't a hash collision. It is used to give the player cash via the CASH_GIFT stats.  
```
</summary>
	]]

native "ADD_DOOR_TO_SYSTEM"
    hash "0x6F8838D03D1DC226"
	jhash (0x9D2D778D)
	arguments {
		Hash "doorHash",
		Hash "modelHash",
		float "x",
		float "y",
		float "z",
		BOOL "p5",
		BOOL "p6",
		BOOL "p7",
	}
	ns "OBJECT"
	returns "void"
	doc [[!
	]]

native "CREATE_AMBIENT_PICKUP"
    hash "0x673966A0C0FD7171"
	jhash (0x17B99CE7)
	arguments {
		Hash "pickupHash",
		float "posX",
		float "posY",
		float "posZ",
		int "p4",
		int "value",
		Hash "modelHash",
		BOOL "returnHandle",
		BOOL "p8",
	}
	ns "OBJECT"
	returns "Pickup"
	doc [[!
<summary>
```
Used for doing money drop  
Pickup hashes: pastebin.com/8EuSv2r1  
```
</summary>
	]]

native "CREATE_OBJECT"
    hash "0x509D5878EB39E842"
	jhash (0x2F7AA05C)
	arguments {
		Object "modelHash",
		float "x",
		float "y",
		float "z",
		BOOL "isNetwork",
		BOOL "thisScriptCheck",
		BOOL "dynamic",
	}
	ns "OBJECT"
	returns "Object"
	doc [[!
<summary>
```
thisScriptCheck - can be destroyed if it belongs to the calling script.  
p5 - last parameter does not mean object handle is returned  
maybe a quick view in disassembly will tell us what is actually does  
----------  
prop_tt_screenstatic (0xE2E039BC) is handled different. Not sure how yet but it I know it is.  
```
</summary>
	]]

native "ATTACH_PORTABLE_PICKUP_TO_PED"
    hash "0x8DC39368BDD57755"
	jhash (0x184F6AB3)
	arguments {
		Ped "ped",
		Any "p1",
	}
	ns "OBJECT"
	returns "void"
	doc [[!
	]]

native "CREATE_OBJECT_NO_OFFSET"
    hash "0x9A294B2138ABB884"
	jhash (0x58040420)
	arguments {
		Hash "modelHash",
		float "x",
		float "y",
		float "z",
		BOOL "isNetwork",
		BOOL "thisScriptCheck",
		BOOL "dynamic",
	}
	ns "OBJECT"
	returns "Object"
	doc [[!
<summary>
```
thisScriptCheck - can be destroyed if it belongs to the calling script.  
p5 - does not mean object handle is returned  
maybe a quick view in disassembly will tell us what is actually does  
----------  
prop_tt_screenstatic (0xE2E039BC) is handled different. Not sure how yet but it I know it is.  
```
</summary>
	]]

native "CREATE_MONEY_PICKUPS"
    hash "0x0589B5E791CE9B2B"
	jhash (0x36C9A5EA)
	arguments {
		float "x",
		float "y",
		float "z",
		int "value",
		int "amount",
		Hash "model",
	}
	ns "OBJECT"
	returns "void"
	doc [[!
<summary>
```
Spawns one or more money pickups.  
x: The X-component of the world position to spawn the money pickups at.  
y: The Y-component of the world position to spawn the money pickups at.  
z: The Z-component of the world position to spawn the money pickups at.  
value: The combined value of the pickups (in dollars).  
amount: The number of pickups to spawn.  
model: The model to use, or 0 for default money model.  
Example:  
CREATE_MONEY_PICKUPS(x, y, z, 1000, 3, 0x684a97ae);  
Spawns 3 spray cans that'll collectively give $1000 when picked up. (Three spray cans, each giving $334, $334, $332 = $1000).  
==============================================  
Max is 2000 in MP. So if you put the amount to 20, but the value to $400,000 eg. They will only be able to pickup 20 - $2,000 bags. So, $40,000  
```
</summary>
	]]

native "CREATE_PICKUP"
    hash "0xFBA08C503DD5FA58"
	jhash (0x5E14DF68)
	arguments {
		Hash "pickupHash",
		float "posX",
		float "posY",
		float "posZ",
		int "p4",
		int "value",
		BOOL "p6",
		Hash "modelHash",
	}
	ns "OBJECT"
	returns "Pickup"
	doc [[!
<summary>
```
Pickup hashes: pastebin.com/8EuSv2r1  
```
</summary>
	]]

native "CREATE_PICKUP_ROTATE"
    hash "0x891804727E0A98B7"
	jhash (0xF015BFE2)
	arguments {
		Hash "pickupHash",
		float "posX",
		float "posY",
		float "posZ",
		float "rotX",
		float "rotY",
		float "rotZ",
		int "flag",
		int "amount",
		Any "p9",
		BOOL "p10",
		Hash "modelHash",
	}
	ns "OBJECT"
	returns "Pickup"
	doc [[!
<summary>
```
Pickup hashes: pastebin.com/8EuSv2r1  
flags:  
8 (1 << 3): place on ground  
512 (1 << 9): spin around  
```
</summary>
	]]

native "_CREATE_PORTABLE_PICKUP_2"
    hash "0x125494B98A21AAF7"
	jhash (0x56A02502)
	arguments {
		Hash "pickupHash",
		float "x",
		float "y",
		float "z",
		BOOL "placeOnGround",
		Hash "modelHash",
	}
	alias "0x125494B98A21AAF7"
	ns "OBJECT"
	returns "Pickup"
	doc [[!
	]]

native "CREATE_PORTABLE_PICKUP"
    hash "0x2EAF1FDB2FB55698"
	jhash (0x8C886BE5)
	arguments {
		Hash "pickupHash",
		float "x",
		float "y",
		float "z",
		BOOL "placeOnGround",
		Hash "modelHash",
	}
	ns "OBJECT"
	returns "Pickup"
	doc [[!
<summary>
```
Pickup hashes: pastebin.com/8EuSv2r1  
```
</summary>
	]]

native "DETACH_PORTABLE_PICKUP_FROM_PED"
    hash "0xCF463D1E9A0AECB1"
	jhash (0x1D094562)
	arguments {
		Ped "ped",
	}
	ns "OBJECT"
	returns "void"
	doc [[!
	]]

native "DELETE_OBJECT"
    hash "0x539E0AE3E6634B9F"
	jhash (0xD6EF9DA7)
	arguments {
		ObjectPtr "object",
	}
	ns "OBJECT"
	returns "void"
	doc [[!
<summary>
```
Deletes the specified object, then sets the handle pointed to by the pointer to NULL.  
meme.  
```
</summary>
	]]

native "_DOES_DES_OBJECT_EXIST"
    hash "0x52AF537A0C5B8AAD"
	jhash (0xE08C834D)
	arguments {
		int "handle",
	}
	alias "0x52AF537A0C5B8AAD"
	ns "OBJECT"
	returns "BOOL"
	doc [[!
<summary>
```
Returns true if a destructible object with this handle exists, false otherwise.  
```
</summary>
	]]

native "_DOES_DOOR_EXIST"
    hash "0xC153C43EA202C8C1"
	jhash (0x5AFCD8A1)
	arguments {
		Hash "doorHash",
	}
	alias "0xC153C43EA202C8C1"
	ns "OBJECT"
	returns "BOOL"
	doc [[!
<summary>
```
Example:  
if (OBJECT::_DOES_DOOR_EXIST(doorHash))  
{  
    OBJECT::REMOVE_DOOR_FROM_SYSTEM(doorHash);  
}  
```
</summary>
	]]

native "DOES_OBJECT_OF_TYPE_EXIST_AT_COORDS"
    hash "0xBFA48E2FF417213F"
	jhash (0x23FF2BA4)
	arguments {
		float "x",
		float "y",
		float "z",
		float "radius",
		Hash "hash",
		BOOL "p5",
	}
	ns "OBJECT"
	returns "BOOL"
	doc [[!
<summary>
```
p5 is usually 0.  
```
</summary>
	]]

native "DOES_PICKUP_EXIST"
    hash "0xAFC1CA75AD4074D1"
	jhash (0x9C6DA0B3)
	arguments {
		Pickup "pickup",
	}
	ns "OBJECT"
	returns "BOOL"
	doc [[!
	]]

native "_DOOR_CONTROL"
    hash "0x9B12F9A24FABEDB0"
	jhash (0x4E0A260B)
	arguments {
		Hash "doorHash",
		float "x",
		float "y",
		float "z",
		BOOL "locked",
		float "xRotMult",
		float "yRotMult",
		float "zRotMult",
	}
	ns "OBJECT"
	returns "void"
	doc [[!
<summary>
```
OBJECT::_9B12F9A24FABEDB0(${prop_gate_prison_01}, 1845.0, 2605.0, 45.0, 0, 0.0, 50.0, 0);  //door unlocked  
OBJECT::_9B12F9A24FABEDB0(${prop_gate_prison_01}, 1845.0, 2605.0, 45.0, 1, 0.0, 50.0, 0);  //door locked  
locked simply tells the game whether or not the door is locked.  
x,y,z RotMult are multipliers that specify how fast the door/gate will rotate in degrees per second.  
```
</summary>
	]]

native "DOES_PICKUP_OBJECT_EXIST"
    hash "0xD9EFB6DBF7DAAEA3"
	jhash (0xE0B32108)
	arguments {
		Object "pickupObject",
	}
	ns "OBJECT"
	returns "BOOL"
	doc [[!
	]]

native "GET_CLOSEST_OBJECT_OF_TYPE"
    hash "0xE143FA2249364369"
	jhash (0x45619B33)
	arguments {
		float "x",
		float "y",
		float "z",
		float "radius",
		Hash "modelHash",
		BOOL "isMission",
		BOOL "p6",
		BOOL "p7",
	}
	ns "OBJECT"
	returns "Object"
	doc [[!
<summary>
```
Has 8 params in the latest patches.  
isMission - if true doesn't return mission objects  
```
</summary>
	]]

native "_GET_DES_OBJECT"
    hash "0xB48FCED898292E52"
	jhash (0xA286DE96)
	arguments {
		float "x",
		float "y",
		float "z",
		float "rotation",
		charPtr "name",
	}
	alias "0xB48FCED898292E52"
	ns "OBJECT"
	returns "int"
	doc [[!
<summary>
```
Gets a destructible object's handle  
Example:  
OBJECT::_B48FCED898292E52(-809.9619750976562, 170.919, 75.7406997680664, 3.0, "des_tvsmash");  
All found arguments for p4 starts with "des_" like "DES_FIB_Floor" and "des_shipsink".  
```
</summary>
	]]

native "_GET_DES_OBJECT_STATE"
    hash "0x899BA936634A322E"
	jhash (0xF1B8817A)
	arguments {
		int "handle",
	}
	alias "0x899BA936634A322E"
	ns "OBJECT"
	returns "Any"
	doc [[!
<summary>
```
Get a destrictible object's state.  
Substract 1 to get the real state.  
See _SET_DES_OBJECT_STATE to see the different states  
For example, if the object just spawned (state 2), the native will return 3.  
```
</summary>
	]]

native "_GET_DES_OBJECT_ANIM_PROGRESS"
    hash "0x260EE4FDBDF4DB01"
	jhash (0x020497DE)
	arguments {
		int "desObjectHandle",
	}
	alias "0x260EE4FDBDF4DB01"
	ns "OBJECT"
	returns "float"
	doc [[!
<param name="desObjectHandle">The des-object handle to get the animation progress from.</param>
<returns>A float between 0.0 and 1.0, 0.0 is the beginning of the animation, 1.0 is the end. Value resets to 0.0 instantly after reaching 1.0.</returns>
	]]

native "GET_OBJECT_FRAGMENT_DAMAGE_HEALTH"
    hash "0xB6FBFD079B8D0596"
	jhash (0xF0B330AD)
	arguments {
		Any "p0",
		BOOL "p1",
	}
	ns "OBJECT"
	returns "float"
	doc [[!
	]]

native "_GET_OBJECT_OFFSET_FROM_COORDS"
    hash "0x163E252DE035A133"
	jhash (0x87A42A12)
	arguments {
		float "xPos",
		float "yPos",
		float "zPos",
		float "heading",
		float "xOffset",
		float "yOffset",
		float "zOffset",
	}
	ns "OBJECT"
	returns "Vector3"
	doc [[!
	]]

native "GET_PICKUP_COORDS"
    hash "0x225B8B35C88029B3"
	jhash (0xC2E1E2C5)
	arguments {
		Pickup "pickup",
	}
	ns "OBJECT"
	returns "Vector3"
	doc [[!
	]]

native "_GET_PICKUP_HASH"
    hash "0x5EAAD83F8CFB4575"
	jhash (0x6AE36192)
	arguments {
		Pickup "pickupHash",
	}
	alias "0x5EAAD83F8CFB4575"
	ns "OBJECT"
	returns "Hash"
	doc [[!
<summary>
```
returns pickup hash.  
```
</summary>
	]]

native "GET_SAFE_PICKUP_COORDS"
    hash "0x6E16BC2503FF1FF0"
	jhash (0x618B5F67)
	arguments {
		float "x",
		float "y",
		float "z",
		Any "p3",
		Any "p4",
	}
	ns "OBJECT"
	returns "Vector3"
	doc [[!
	]]

native "GET_PICKUP_OBJECT"
    hash "0x5099BC55630B25AE"
	jhash (0x6052E62E)
	arguments {
		Pickup "pickup",
	}
	alias "0x5099BC55630B25AE"
	ns "OBJECT"
	returns "Object"
	doc [[!
	]]

native "GET_STATE_OF_CLOSEST_DOOR_OF_TYPE"
    hash "0xEDC1A5B84AEF33FF"
	jhash (0x4B44A83D)
	arguments {
		Hash "type",
		float "x",
		float "y",
		float "z",
		BOOLPtr "locked",
		floatPtr "heading",
	}
	ns "OBJECT"
	returns "void"
	doc [[!
<summary>
```
locked is 0 if no door is found  
locked is 0 if door is unlocked  
locked is 1 if door is found and unlocked.  
-------------  
the locked bool is either 0(unlocked)(false) or 1(locked)(true)  
```
</summary>
	]]

native "HAS_OBJECT_BEEN_BROKEN"
    hash "0x8ABFB70C49CC43E2"
	jhash (0xFE21F891)
	arguments {
		Object "object",
	}
	ns "OBJECT"
	returns "BOOL"
	doc [[!
	]]

native "_GET_WEAPON_HASH_FROM_PICKUP"
    hash "0x08F96CA6C551AD51"
	jhash (0xEDD01937)
	arguments {
		Pickup "pickupHash",
	}
	alias "0x08F96CA6C551AD51"
	ns "OBJECT"
	returns "Hash"
	doc [[!
<summary>
```
returns the weapon hash of pickup  
```
</summary>
	]]

native "_HIGHLIGHT_PLACEMENT_COORDS"
    hash "0x3430676B11CDF21D"
	jhash (0x63B02FAD)
	arguments {
		float "x",
		float "y",
		float "z",
		int "colorIndex",
	}
	alias "0x3430676B11CDF21D"
	ns "OBJECT"
	returns "void"
	doc [[!
<summary>
```
draws circular marker at pos  
-1 = none  
0 = red  
1 = green  
2 = blue  
3 = green larger  
4 = nothing  
5 = green small  
```
</summary>
	]]

native "IS_ANY_OBJECT_NEAR_POINT"
    hash "0x397DC58FF00298D1"
	jhash (0xE9E46941)
	arguments {
		float "x",
		float "y",
		float "z",
		float "range",
		BOOL "p4",
	}
	ns "OBJECT"
	returns "BOOL"
	doc [[!
	]]

native "HAS_CLOSEST_OBJECT_OF_TYPE_BEEN_BROKEN"
    hash "0x761B0E69AC4D007E"
	jhash (0x6FC0353D)
	arguments {
		float "p0",
		float "p1",
		float "p2",
		float "p3",
		Hash "modelHash",
		Any "p5",
	}
	ns "OBJECT"
	returns "BOOL"
	doc [[!
	]]

native "HAS_PICKUP_BEEN_COLLECTED"
    hash "0x80EC48E6679313F9"
	jhash (0x0BE5CCED)
	arguments {
		Pickup "pickup",
	}
	ns "OBJECT"
	returns "BOOL"
	doc [[!
	]]

native "IS_OBJECT_NEAR_POINT"
    hash "0x8C90FE4B381BA60A"
	jhash (0x50A62C43)
	arguments {
		Hash "objectHash",
		float "x",
		float "y",
		float "z",
		float "range",
	}
	ns "OBJECT"
	returns "BOOL"
	doc [[!
	]]

native "IS_OBJECT_VISIBLE"
    hash "0x8B32ACE6326A7546"
	jhash (0xF4FD8AE4)
	arguments {
		Object "object",
	}
	ns "OBJECT"
	returns "BOOL"
	doc [[!
	]]

native "IS_DOOR_CLOSED"
    hash "0xC531EE8A1145A149"
	jhash (0x48659CD7)
	arguments {
		Hash "door",
	}
	ns "OBJECT"
	returns "BOOL"
	doc [[!
	]]

native "IS_GARAGE_EMPTY"
    hash "0x90E47239EA1980B8"
	jhash (0xA8B37DEA)
	arguments {
		Any "garage",
		BOOL "p1",
		int "p2",
	}
	ns "OBJECT"
	returns "BOOL"
	doc [[!
	]]

native "IS_POINT_IN_ANGLED_AREA"
    hash "0x2A70BAE8883E4C81"
	jhash (0x73BCFFDC)
	arguments {
		float "p0",
		float "p1",
		float "p2",
		float "p3",
		float "p4",
		float "p5",
		float "p6",
		float "p7",
		float "p8",
		float "p9",
		BOOL "p10",
		BOOL "p11",
	}
	ns "OBJECT"
	returns "BOOL"
	doc [[!
	]]

native "0x024A60DEB0EA69F0"
    hash "0x024A60DEB0EA69F0"
	jhash (0xC33ED360)
	arguments {
		Any "p0",
		Player "player",
		float "p2",
		int "p3",
	}
	ns "OBJECT"
	returns "BOOL"
	doc [[!
	]]

native "_IS_PICKUP_WITHIN_RADIUS"
    hash "0xF9C36251F6E48E33"
	jhash (0xF139681B)
	arguments {
		Hash "pickupHash",
		float "x",
		float "y",
		float "z",
		float "radius",
	}
	ns "OBJECT"
	returns "BOOL"
	doc [[!
<summary>
```
Pickup hashes: pastebin.com/8EuSv2r1  
```
</summary>
	]]

native "0x03C27E13B42A0E82"
    hash "0x03C27E13B42A0E82"
	jhash (0x4F44AF21)
	arguments {
		Hash "doorHash",
		float "p1",
		BOOL "p2",
		BOOL "p3",
	}
	ns "OBJECT"
	returns "void"
	doc [[!
	]]

native "_MARK_OBJECT_FOR_DELETION"
    hash "0xADBE4809F19F927A"
	jhash (0x2048A7DD)
	arguments {
		Object "object",
	}
	ns "OBJECT"
	returns "void"
	doc [[!
<summary>
```
is this like setting is as no longer needed?  
```
</summary>
	]]

native "0x0BF3B3BD47D79C08"
    hash "0x0BF3B3BD47D79C08"
	jhash (0x7EFBA039)
	arguments {
		Hash "hash",
		int "p1",
	}
	ns "OBJECT"
	returns "void"
	doc [[!
	]]

native "0x0378C08504160D0D"
    hash "0x0378C08504160D0D"
	arguments {
		Any "p0",
	}
	ns "OBJECT"
	returns "BOOL"
	doc [[!
	]]

native "0x160AA1B32F6139B8"
    hash "0x160AA1B32F6139B8"
	jhash (0xD42A41C2)
	arguments {
		Hash "doorHash",
	}
	ns "OBJECT"
	returns "int"
	doc [[!
	]]

native "0x0596843B34B95CE5"
    hash "0x0596843B34B95CE5"
	arguments {
		Any "p0",
		Any "p1",
	}
	ns "OBJECT"
	returns "void"
	doc [[!
	]]

native "0x163F8B586BC95F2A"
    hash "0x163F8B586BC95F2A"
	jhash (0x65213FC3)
	arguments {
		Any "coords",
		float "radius",
		Hash "modelHash",
		float "x",
		float "y",
		float "z",
		Vector3Ptr "p6",
		int "p7",
	}
	ns "OBJECT"
	returns "Any"
	doc [[!
<summary>
```
only documented params  
dont know what this does.... To Be Continued...  
```
</summary>
	]]

native "0x11D1E53A726891FE"
    hash "0x11D1E53A726891FE"
	arguments {
		Object "object",
	}
	ns "OBJECT"
	returns "BOOL"
	doc [[!
<summary>
```
console hash: 0x883DAB2D  
```
</summary>
	]]

native "0x190428512B240692"
    hash "0x190428512B240692"
	jhash (0xA565E27E)
	arguments {
		Any "p0",
		BOOL "p1",
		BOOL "p2",
		BOOL "p3",
		BOOL "p4",
	}
	ns "OBJECT"
	returns "void"
	doc [[!
	]]

native "0x1C1B69FAE509BA97"
    hash "0x1C1B69FAE509BA97"
	arguments {
		Any "p0",
		Any "p1",
	}
	ns "OBJECT"
	returns "void"
	doc [[!
	]]

native "0x1761DC5D8471CBAA"
    hash "0x1761DC5D8471CBAA"
	jhash (0x41924877)
	arguments {
		Any "p0",
		Player "player",
		int "p2",
	}
	ns "OBJECT"
	returns "BOOL"
	doc [[!
	]]

native "0x1E3F1B1B891A2AAA"
    hash "0x1E3F1B1B891A2AAA"
	arguments {
		Any "p0",
		Any "p1",
	}
	ns "OBJECT"
	returns "void"
	doc [[!
	]]

native "0x31F924B53EADDF65"
    hash "0x31F924B53EADDF65"
	jhash (0xDB18FA01)
	arguments {
		BOOL "p0",
	}
	ns "OBJECT"
	returns "void"
	doc [[!
	]]

native "0x318516E02DE3ECE2"
    hash "0x318516E02DE3ECE2"
	jhash (0x9879AC51)
	arguments {
		float "p0",
	}
	ns "OBJECT"
	returns "void"
	doc [[!
	]]

native "0x372EF6699146A1E4"
    hash "0x372EF6699146A1E4"
	jhash (0x142C8F76)
	arguments {
		Any "p0",
		Entity "entity",
		float "p2",
		int "p3",
	}
	ns "OBJECT"
	returns "BOOL"
	doc [[!
	]]

native "0x394CD08E31313C28"
    hash "0x394CD08E31313C28"
	ns "OBJECT"
	returns "void"
	doc [[!
	]]

native "0x3ED2B83AB2E82799"
    hash "0x3ED2B83AB2E82799"
	arguments {
		Any "p0",
		Any "p1",
	}
	ns "OBJECT"
	returns "void"
	doc [[!
	]]

native "0x39A5FB7EAF150840"
    hash "0x39A5FB7EAF150840"
	arguments {
		Any "p0",
		Any "p1",
	}
	ns "OBJECT"
	returns "void"
	doc [[!
	]]

native "0x46494A2475701343"
    hash "0x46494A2475701343"
	jhash (0x7DB578DD)
	arguments {
		float "p0",
		float "p1",
		float "p2",
		float "p3",
		Hash "modelHash",
		BOOL "p5",
	}
	ns "OBJECT"
	returns "BOOL"
	doc [[!
	]]

native "0x4A39DB43E47CF3AA"
    hash "0x4A39DB43E47CF3AA"
	jhash (0xE3261B35)
	arguments {
		Any "p0",
	}
	ns "OBJECT"
	returns "void"
	doc [[!
	]]

native "0x46F3ADD1E2D5BAF2"
    hash "0x46F3ADD1E2D5BAF2"
	arguments {
		Any "p0",
		Any "p1",
	}
	ns "OBJECT"
	returns "void"
	doc [[!
	]]

native "0x4BC2854478F3A749"
    hash "0x4BC2854478F3A749"
	jhash (0xD649B7E1)
	arguments {
		Hash "doorHash",
	}
	ns "OBJECT"
	returns "int"
	doc [[!
	]]

native "0x4D89D607CB3DD1D2"
    hash "0x4D89D607CB3DD1D2"
	jhash (0x19B17769)
	arguments {
		Object "object",
		BOOL "toggle",
	}
	ns "OBJECT"
	returns "void"
	doc [[!
	]]

native "0x616093EC6B139DD9"
    hash "0x616093EC6B139DD9"
	jhash (0x7FADB4B9)
	arguments {
		Player "player",
		Hash "pickupHash",
		BOOL "p2",
	}
	ns "OBJECT"
	returns "void"
	doc [[!
<summary>
```
From the scripts:  
OBJECT::_616093EC6B139DD9(PLAYER::PLAYER_ID(), ${pickup_portable_package}, 0);  
OBJECT::_616093EC6B139DD9(PLAYER::PLAYER_ID(), ${pickup_portable_package}, 0);  
OBJECT::_616093EC6B139DD9(PLAYER::PLAYER_ID(), ${pickup_portable_package}, 1);  
OBJECT::_616093EC6B139DD9(PLAYER::PLAYER_ID(), ${pickup_portable_package}, 0);  
OBJECT::_616093EC6B139DD9(PLAYER::PLAYER_ID(), ${pickup_armour_standard}, 0);  
OBJECT::_616093EC6B139DD9(PLAYER::PLAYER_ID(), ${pickup_armour_standard}, 1);  
SET_PLAYER_P*  
```
</summary>
	]]

native "0x641F272B52E2F0F8"
    hash "0x641F272B52E2F0F8"
	arguments {
		Any "p0",
		Any "p1",
	}
	ns "OBJECT"
	returns "void"
	doc [[!
	]]

native "0x589F80B325CC82C5"
    hash "0x589F80B325CC82C5"
	jhash (0xE9AE494F)
	arguments {
		float "p0",
		float "p1",
		float "p2",
		Any "p3",
		AnyPtr "p4",
	}
	ns "OBJECT"
	returns "BOOL"
	doc [[!
	]]

native "0x62454A641B41F3C5"
    hash "0x62454A641B41F3C5"
	arguments {
		Any "p0",
	}
	ns "OBJECT"
	returns "void"
	doc [[!
	]]

native "0x66A49D021870FE88"
    hash "0x66A49D021870FE88"
	jhash (0x6158959E)
	ns "OBJECT"
	returns "void"
	doc [[!
	]]

native "0x65499865FCA6E5EC"
    hash "0x65499865FCA6E5EC"
	jhash (0xB74C3BD7)
	arguments {
		Hash "doorHash",
	}
	ns "OBJECT"
	returns "float"
	doc [[!
<summary>
```
possibly called:  
ADD_DOOR_EXPERIMENTAL_MATRIX  
```
</summary>
	]]

native "0x673ED815D6E323B7"
    hash "0x673ED815D6E323B7"
	jhash (0x7B44D659)
	arguments {
		Any "p0",
		BOOL "p1",
		BOOL "p2",
		BOOL "p3",
		Any "p4",
	}
	ns "OBJECT"
	returns "BOOL"
	doc [[!
	]]

native "0x762DB2D380B48D04"
    hash "0x762DB2D380B48D04"
	jhash (0xD1BAAFB7)
	arguments {
		Any "p0",
	}
	ns "OBJECT"
	returns "void"
	doc [[!
	]]

native "0x701FDA1E82076BA4"
    hash "0x701FDA1E82076BA4"
	jhash (0xF592AD10)
	ns "OBJECT"
	returns "void"
	doc [[!
	]]

native "0x826D1EE4D1CAFC78"
    hash "0x826D1EE4D1CAFC78"
	arguments {
		Any "p0",
		Any "p1",
	}
	ns "OBJECT"
	returns "void"
	doc [[!
	]]

native "0x758A5C1B3B1E1990"
    hash "0x758A5C1B3B1E1990"
	arguments {
		Any "p0",
	}
	ns "OBJECT"
	returns "void"
	doc [[!
	]]

native "0x85B6C850546FDDE2"
    hash "0x85B6C850546FDDE2"
	jhash (0x4BD59750)
	arguments {
		Any "p0",
		BOOL "p1",
		BOOL "p2",
		BOOL "p3",
		Any "p4",
	}
	ns "OBJECT"
	returns "BOOL"
	doc [[!
	]]

native "0x78857FC65CADB909"
    hash "0x78857FC65CADB909"
	jhash (0xA3CDF152)
	arguments {
		BOOL "p0",
	}
	ns "OBJECT"
	returns "void"
	doc [[!
	]]

native "0x8881C98A31117998"
    hash "0x8881C98A31117998"
	arguments {
		Any "p0",
	}
	ns "OBJECT"
	returns "void"
	doc [[!
	]]

native "0x88EAEC617CD26926"
    hash "0x88EAEC617CD26926"
	jhash (0x3A8F1BF7)
	arguments {
		Hash "p0",
		BOOL "p1",
	}
	ns "OBJECT"
	returns "void"
	doc [[!
<summary>
```
SET_LOCAL_PLAYER_*  
```
</summary>
	]]

native "0x858EC9FD25DE04AA"
    hash "0x858EC9FD25DE04AA"
	arguments {
		Any "p0",
		Any "p1",
	}
	ns "OBJECT"
	returns "void"
	doc [[!
	]]

native "0x867458251D47CCB2"
    hash "0x867458251D47CCB2"
	arguments {
		Any "p0",
		Any "p1",
	}
	ns "OBJECT"
	returns "void"
	doc [[!
	]]

native "0x96EE0EBA0163DF80"
    hash "0x96EE0EBA0163DF80"
	arguments {
		Any "p0",
		Any "p1",
	}
	ns "OBJECT"
	returns "void"
	doc [[!
	]]

native "0x9BA001CB45CBF627"
    hash "0x9BA001CB45CBF627"
	jhash (0x47531446)
	arguments {
		Hash "doorHash",
		float "heading",
		BOOL "p2",
		BOOL "p3",
	}
	ns "OBJECT"
	returns "void"
	doc [[!
	]]

native "0x8CAAB2BD3EA58BD4"
    hash "0x8CAAB2BD3EA58BD4"
	arguments {
		Any "p0",
	}
	ns "OBJECT"
	returns "void"
	doc [[!
	]]

native "0xA08FE5E49BDC39DD"
    hash "0xA08FE5E49BDC39DD"
	jhash (0x276A7807)
	arguments {
		Any "p0",
		float "p1",
		BOOL "p2",
	}
	ns "OBJECT"
	returns "void"
	doc [[!
	]]

native "0x92AEFB5F6E294023"
    hash "0x92AEFB5F6E294023"
	jhash (0xCBB5F9B6)
	arguments {
		Object "object",
		BOOL "p1",
		BOOL "p2",
	}
	ns "OBJECT"
	returns "void"
	doc [[!
	]]

native "0xA90E7227A9303FA9"
    hash "0xA90E7227A9303FA9"
	arguments {
		Any "p0",
		Any "p1",
	}
	ns "OBJECT"
	returns "void"
	doc [[!
	]]

native "0xA2C1F5E92AFE49ED"
    hash "0xA2C1F5E92AFE49ED"
	jhash (0xB241806C)
	ns "OBJECT"
	returns "void"
	doc [[!
	]]

native "0xB3ECA65C7317F174"
    hash "0xB3ECA65C7317F174"
	ns "OBJECT"
	returns "Any"
	doc [[!
	]]

native "0xA85A21582451E951"
    hash "0xA85A21582451E951"
	jhash (0xF736227C)
	arguments {
		Hash "doorHash",
		BOOL "p1",
	}
	ns "OBJECT"
	returns "void"
	doc [[!
	]]

native "0xBCE595371A5FBAAF"
    hash "0xBCE595371A5FBAAF"
	jhash (0x3A68AA46)
	arguments {
		Any "p0",
		BOOL "p1",
	}
	ns "OBJECT"
	returns "void"
	doc [[!
	]]

native "0xB2D0BDE54F0E8E5A"
    hash "0xB2D0BDE54F0E8E5A"
	jhash (0x132B6D92)
	arguments {
		Object "object",
		BOOL "toggle",
	}
	ns "OBJECT"
	returns "void"
	doc [[!
	]]

native "0xC6033D32241F6FB5"
    hash "0xC6033D32241F6FB5"
	jhash (0xF4A1A14A)
	arguments {
		Any "p0",
		BOOL "p1",
	}
	ns "OBJECT"
	returns "void"
	doc [[!
	]]

native "0xD76EEEF746057FD6"
    hash "0xD76EEEF746057FD6"
	arguments {
		Any "p0",
	}
	ns "OBJECT"
	returns "Any"
	doc [[!
	]]

native "0xC485E07E4F0B7958"
    hash "0xC485E07E4F0B7958"
	jhash (0xB4A9A558)
	arguments {
		Hash "doorHash",
		BOOL "p1",
		BOOL "p2",
		BOOL "p3",
	}
	ns "OBJECT"
	returns "void"
	doc [[!
	]]

native "0xDA05194260CDCDF9"
    hash "0xDA05194260CDCDF9"
	arguments {
		Any "p0",
		Any "p1",
	}
	ns "OBJECT"
	returns "void"
	doc [[!
	]]

native "0xC7F29CA00F46350E"
    hash "0xC7F29CA00F46350E"
	jhash (0x9BF33E41)
	arguments {
		BOOL "p0",
	}
	ns "OBJECT"
	returns "void"
	doc [[!
	]]

native "0xDB41D07A45A6D4B7"
    hash "0xDB41D07A45A6D4B7"
	jhash (0x000E92DC)
	arguments {
		Any "p0",
	}
	ns "OBJECT"
	returns "Any"
	doc [[!
	]]

native "0xD9B71952F78A2640"
    hash "0xD9B71952F78A2640"
	jhash (0xECE58AE0)
	arguments {
		Hash "doorHash",
		BOOL "p1",
	}
	ns "OBJECT"
	returns "void"
	doc [[!
	]]

native "0xDF6CA0330F2E737B"
    hash "0xDF6CA0330F2E737B"
	arguments {
		Any "p0",
		Any "p1",
	}
	ns "OBJECT"
	returns "void"
	doc [[!
	]]

native "0xE7E4C198B0185900"
    hash "0xE7E4C198B0185900"
	jhash (0x1E82C2AE)
	arguments {
		Object "p0",
		Any "p1",
		BOOL "p2",
	}
	ns "OBJECT"
	returns "void"
	doc [[!
	]]

native "0xE84EB93729C5F36A"
    hash "0xE84EB93729C5F36A"
	arguments {
		Any "p0",
	}
	ns "OBJECT"
	returns "Any"
	doc [[!
	]]

native "0xDF97CDD4FC08FD34"
    hash "0xDF97CDD4FC08FD34"
	jhash (0x17FF9393)
	arguments {
		Any "p0",
	}
	ns "OBJECT"
	returns "BOOL"
	doc [[!
	]]

native "0xF0EED5A6BC7B237A"
    hash "0xF0EED5A6BC7B237A"
	jhash (0x95A9AB2B)
	arguments {
		Any "p0",
		Entity "entity",
		int "p2",
	}
	ns "OBJECT"
	returns "BOOL"
	doc [[!
<summary>
```
IS_OBJECT_???  
```
</summary>
	]]

native "0xEB6F1A9B5510A5D2"
    hash "0xEB6F1A9B5510A5D2"
	jhash (0xAF016CC1)
	arguments {
		Any "p0",
		BOOL "p1",
	}
	ns "OBJECT"
	returns "void"
	doc [[!
	]]

native "0xF2E1A7133DD356A6"
    hash "0xF2E1A7133DD356A6"
	jhash (0x43BB7E48)
	arguments {
		Hash "hash",
		BOOL "toggle",
	}
	ns "OBJECT"
	returns "void"
	doc [[!
	]]

native "0xF12E33034D887F66"
    hash "0xF12E33034D887F66"
	arguments {
		Any "p0",
		Any "p1",
		Any "p2",
		Any "p3",
		Any "p4",
		Any "p5",
	}
	ns "OBJECT"
	returns "Any"
	doc [[!
	]]

native "0xF9C1681347C8BD15"
    hash "0xF9C1681347C8BD15"
	arguments {
		Object "object",
	}
	ns "OBJECT"
	returns "void"
	doc [[!
	]]

native "0xF92099527DB8E2A7"
    hash "0xF92099527DB8E2A7"
	jhash (0xA7E936FD)
	arguments {
		Any "p0",
		Any "p1",
	}
	ns "OBJECT"
	returns "void"
	doc [[!
	]]

native "REMOVE_ALL_PICKUPS_OF_TYPE"
    hash "0x27F9D613092159CF"
	jhash (0x40062C53)
	arguments {
		Hash "pickupHash",
	}
	ns "OBJECT"
	returns "void"
	doc [[!
<summary>
```
Pickup hashes: pastebin.com/8EuSv2r1  
```
</summary>
	]]

native "PLACE_OBJECT_ON_GROUND_PROPERLY"
    hash "0x58A850EAEE20FAA3"
	jhash (0x8F95A20B)
	arguments {
		Object "object",
	}
	ns "OBJECT"
	returns "BOOL"
	doc [[!
	]]

native "REMOVE_PICKUP"
    hash "0x3288D8ACAECD2AB2"
	jhash (0x64A7A0E0)
	arguments {
		Pickup "pickup",
	}
	ns "OBJECT"
	returns "void"
	doc [[!
	]]

native "REMOVE_DOOR_FROM_SYSTEM"
    hash "0x464D8E1427156FE4"
	jhash (0x00253286)
	arguments {
		Hash "doorHash",
	}
	ns "OBJECT"
	returns "void"
	doc [[!
	]]

native "SET_ACTIVATE_OBJECT_PHYSICS_AS_SOON_AS_IT_IS_UNFROZEN"
    hash "0x406137F8EF90EAF5"
	jhash (0x3E263AE1)
	arguments {
		Object "object",
		BOOL "toggle",
	}
	ns "OBJECT"
	returns "void"
	doc [[!
	]]

native "_SET_DOOR_ACCELERATION_LIMIT"
    hash "0x6BAB9442830C7F53"
	jhash (0xDF83DB47)
	arguments {
		Hash "doorHash",
		int "limit",
		BOOL "p2",
		BOOL "p3",
	}
	alias "0x6BAB9442830C7F53"
	ns "OBJECT"
	returns "void"
	doc [[!
<summary>
```
Sets the acceleration limit of a door.  
How fast it can open, or the inverse hinge resistance.  
A limit of 0 seems to lock doors.  
p2 is always 0, p3 is always 1.  
```
</summary>
	]]

native "_SET_DES_OBJECT_STATE"
    hash "0x5C29F698D404C5E1"
	jhash (0x21F51560)
	arguments {
		int "handle",
		int "state",
	}
	alias "0x5C29F698D404C5E1"
	ns "OBJECT"
	returns "void"
	doc [[!
<summary>
```
Defines the state of a destructible object.  
Use the "0xB48FCED898292E52" native to find an object's handle with its name / coords  
State 2 == object just spawned  
State 4 == Beginning of the animation  
State 6 == Start animation  
State 9 == End of the animation  
```
</summary>
	]]

native "SET_FORCE_OBJECT_THIS_FRAME"
    hash "0xF538081986E49E9D"
	jhash (0x3DA41C1A)
	arguments {
		Any "p0",
		Any "p1",
		Any "p2",
		Any "p3",
	}
	ns "OBJECT"
	returns "void"
	doc [[!
	]]

native "_SET_DOOR_AJAR_ANGLE"
    hash "0xB6E6FBA95C7324AC"
	jhash (0x34883DE3)
	arguments {
		Hash "doorHash",
		float "ajar",
		BOOL "p2",
		BOOL "p3",
	}
	alias "0xB6E6FBA95C7324AC"
	ns "OBJECT"
	returns "void"
	doc [[!
<summary>
```
Sets the ajar angle of a door.  
Ranges from -1.0 to 1.0, and 0.0 is closed / default.  
p2 is always 0, p3 is always 1.  
```
</summary>
	]]

native "_SET_OBJECT_COLOUR"
    hash "0x3B2FD68DB5F8331C"
	jhash (0xA88C6937)
	arguments {
		Entity "entity",
		Any "p1",
		int "R",
		int "G",
		int "B",
	}
	alias "0x3B2FD68DB5F8331C"
	ns "OBJECT"
	returns "void"
	doc [[!
<summary>
Seems to set the colour of the prop. Haven't really tested it on other props.
Only appears in am_mp_nightclub.c for the nightclub dancefloor.

Not sure what p1 does, seems to only ever be '1' in scripts.
</summary>
<param name="R">:</param>
<param name="G">:</param>
<param name="B">:</param>
	]]

native "_SET_OBJECT_SOMETHING"
    hash "0x77F33F2CCF64B3AA"
	jhash (0x483C5C88)
	arguments {
		Object "object",
		BOOL "p1",
	}
	alias "0x77F33F2CCF64B3AA"
	ns "OBJECT"
	returns "void"
	doc [[!
<summary>
````
i don't know what this does  
```<pre>  
void __fastcall OBJECT___0x77F33F2CCF64B3AA_START(scrNativeCallContext *args)  
{  
  bool p2; // bl@1  
  CObject *pObject; // rax@1  
  scrNativeCallContextArgStruct *pArgs; // rax@1  
  pArgs = args->pArgs;  
  p2 = pArgs->a2.BOOL != 0;  
  pObject = getAddressOfObject(pArgs->a1.Object);  
  if ( pObject )  
  {  
    pObject->field_425 &= 0xDFu;                // 1101 1111 (clear bit 6)  
    pObject->field_425 |= 32 * p2;              // bit 6 = p2  
  }  
}  
// sfink  
// note to AB: please set "white-space: pre" in css  
````

```
## Parameters
* **object**: 
* **p1**: 
```
</summary>
	]]

native "SET_OBJECT_TARGETTABLE"
    hash "0x8A7391690F5AFD81"
	jhash (0x3F88CD86)
	arguments {
		Object "object",
		BOOL "targettable",
	}
	ns "OBJECT"
	returns "Any"
	doc [[!
	]]

native "SET_OBJECT_PHYSICS_PARAMS"
    hash "0xF6DF6E90DE7DF90F"
	jhash (0xE8D11C58)
	arguments {
		Object "object",
		float "weight",
		float "p2",
		float "p3",
		float "p4",
		float "p5",
		float "gravity",
		float "p7",
		float "p8",
		float "p9",
		float "p10",
		float "buoyancy",
	}
	ns "OBJECT"
	returns "void"
	doc [[!
<summary>
```
Adjust the physics parameters of a prop, or otherwise known as "object". This is useful for simulated gravity.  
Other parameters seem to be unknown.  
p2: seems to be weight and gravity related. Higher value makes the obj fall faster. Very sensitive?  
p3: seems similar to p2  
p4: makes obj fall slower the higher the value  
p5: similar to p4  
```
</summary>
	]]

native "SET_PICKUP_REGENERATION_TIME"
    hash "0x78015C9B4B3ECC9D"
	jhash (0xAB11267D)
	arguments {
		Pickup "pickup",
		int "duration",
	}
	ns "OBJECT"
	returns "void"
	doc [[!
<summary>
```
duration specifies the time until the next respawn, in ms. (known values: 600000).  
Usage Example:  
Pickup pickup = OBJECT::CREATE_PICKUP_ROTATE(...);  
OBJECT::SET_PICKUP_REGENERATION_TIME(pickup, 600000); // 10mins  
```
</summary>
	]]

native "_SET_OBJECT_TEXTURE_VARIANT"
    hash "0x971DA0055324D033"
	arguments {
		Object "object",
		int "paintIndex",
	}
	alias "0x971DA0055324D033"
	ns "OBJECT"
	returns "void"
	doc [[!
<summary>
```
enum ObjectPaintVariants  
{  
	Pacific = 0,  
	Azure = 1,  
	Nautical = 2,  
	Continental = 3,  
	Battleship = 4,  
	Intrepid = 5,  
	Uniform = 6,  
	Classico = 7,  
	Mediterranean = 8,  
	Command = 9,  
	Mariner = 10,  
	Ruby = 11,  
	Vintage = 12,  
	Pristine = 13,  
	Merchant = 14,  
	Voyager = 15  
};  
```
</summary>
	]]

native "SET_TEAM_PICKUP_OBJECT"
    hash "0x53E0DF1A2A3CF0CA"
	jhash (0x77687DC5)
	arguments {
		Object "object",
		Any "p1",
		BOOL "p2",
	}
	ns "OBJECT"
	returns "void"
	doc [[!
	]]

native "TRACK_OBJECT_VISIBILITY"
    hash "0xB252BC036B525623"
	jhash (0x46D06B9A)
	arguments {
		Any "p0",
	}
	ns "OBJECT"
	returns "void"
	doc [[!
	]]

native "SET_STATE_OF_CLOSEST_DOOR_OF_TYPE"
    hash "0xF82D8F1926A02C3D"
	jhash (0x38C951A4)
	arguments {
		Hash "type",
		float "x",
		float "y",
		float "z",
		BOOL "locked",
		float "heading",
		BOOL "p6",
	}
	ns "OBJECT"
	returns "void"
	doc [[!
<summary>
```
Hardcoded to not work in multiplayer.  
Used to lock/unlock doors to interior areas of the game.  
(Possible) Door Types:  
pastebin.com/9S2m3qA4  
Heading is either 1, 0 or -1 in the scripts. Means default closed(0) or opened either into(1) or out(-1) of the interior.  
Locked means that the heading is locked.    
p6 is always 0.   
225 door types, model names and coords found in stripclub.c4:  
pastebin.com/gywnbzsH  
get door info: pastebin.com/i14rbekD  
```
</summary>
	]]

native "SLIDE_OBJECT"
    hash "0x2FDFF4107B8C1147"
	jhash (0x63BFA7A0)
	arguments {
		Object "object",
		float "toX",
		float "toY",
		float "toZ",
		float "speedX",
		float "speedY",
		float "speedZ",
		BOOL "collision",
	}
	ns "OBJECT"
	returns "BOOL"
	doc [[!
<summary>
```
Returns true if the object has finished moving.  
If false, moves the object towards the specified X, Y and Z coordinates with the specified X, Y and Z speed.  
See also: gtag.gtagaming.com/opcode-database/opcode/034E/  
```
</summary>
	]]

native "DISABLE_CONTROL_ACTION"
    hash "0xFE99B66D079CF6BC"
	jhash (0x3800C0DC)
	arguments {
		int "inputGroup",
		int "control",
		BOOL "disable",
	}
	ns "PAD"
	returns "void"
	doc [[!
<summary>
```
control values and meaning: github.com/crosire/scripthookvdotnet/blob/dev_v3/source/scripting/Controls.cs  
0, 1 and 2 used in the scripts. 0 is by far the most common of them.  
Control values from the decompiled scripts: 0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,  
28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,53,5  
4,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,  
79,80,81,82,85,86,87,88,89,90,91,92,93,95,96,97,98,99,100,101,102,103,105,  
107,108,109,110,111,112,113,114,115,116,117,118,119,123,126,129,130,131,132,  
133,134,136,137,138,139,140,141,142,143,144,145,146,147,148,149,150,151,152,  
153,154,155,156,157,158,159,160,161,162,163,164,165,166,167,168,169,171,172  
,177,187,188,189,190,195,196,199,200,201,202,203,205,207,208,209,211,212,213, 217,219,220,221,225,226,230,234,235,236,237,238,239,240,241,242,243,244,257,  
261,262,263,264,265,270,271,272,273,274,278,279,280,281,282,283,284,285,286,  
287,288,289,337.  
Example: CONTROLS::DISABLE_CONTROL_ACTION(2, 19, true) disables the switching UI from appearing both when using a keyboard and Xbox 360 controller. Needs to be executed each frame.   
Control group 1 and 0 gives the same results as 2. Same results for all players.  
```
</summary>
	]]

native "ENABLE_ALL_CONTROL_ACTIONS"
    hash "0xA5FFE9B05F199DE7"
	jhash (0xFC2F119F)
	arguments {
		int "inputGroup",
	}
	ns "PAD"
	returns "void"
	doc [[!
	]]

native "DISABLE_ALL_CONTROL_ACTIONS"
    hash "0x5F4B6931816E599B"
	jhash (0x16753CF4)
	arguments {
		int "inputGroup",
	}
	ns "PAD"
	returns "void"
	doc [[!
	]]

native "GET_CONTROL_INSTRUCTIONAL_BUTTON"
    hash "0x0499D7B09FC9B407"
	jhash (0x3551727A)
	arguments {
		int "inputGroup",
		int "control",
		Player "p2",
	}
	alias "0x0499D7B09FC9B407"
	ns "PAD"
	returns "charPtr"
	doc [[!
<summary>
```
formerly called _GET_CONTROL_ACTION_NAME incorrectly  
p2 appears to always be true.  
p2 is unused variable in function.  
EG:  
GET_CONTROL_INSTRUCTIONAL_BUTTON (2, 201, 1) /*INPUT_FRONTEND_ACCEPT (e.g. Enter button)*/  
GET_CONTROL_INSTRUCTIONAL_BUTTON (2, 202, 1) /*INPUT_FRONTEND_CANCEL (e.g. ESC button)*/  
GET_CONTROL_INSTRUCTIONAL_BUTTON (2, 51, 1) /*INPUT_CONTEXT (e.g. E button)*/  
gtaforums.com/topic/819070-c-draw-instructional-buttons-scaleform-movie/#entry1068197378  
0, 1 and 2 used in the scripts. 0 is by far the most common of them.  
```
</summary>
	]]

native "_DISABLE_INPUT_GROUP"
    hash "0x7F4724035FDCA1DD"
	jhash (0x2CEDE6C5)
	arguments {
		int "inputGroup",
	}
	alias "0x7F4724035FDCA1DD"
	ns "PAD"
	returns "void"
	doc [[!
	]]

native "GET_CONTROL_NORMAL"
    hash "0xEC3C9B8D5327B563"
	jhash (0x5DE226A5)
	arguments {
		int "inputGroup",
		int "control",
	}
	ns "PAD"
	returns "float"
	doc [[!
<summary>
```
Returns the value of CONTROLS::GET_CONTROL_VALUE Normalized (ie a real number value between -1 and 1)  
0, 1 and 2 used in the scripts. 0 is by far the most common of them.  
```
</summary>
	]]

native "GET_DISABLED_CONTROL_NORMAL"
    hash "0x11E65974A982637C"
	jhash (0x66FF4FAA)
	arguments {
		int "inputGroup",
		int "control",
	}
	ns "PAD"
	returns "float"
	doc [[!
<summary>
```
control - c# works with (int)GTA.Control.CursorY / (int)GTA.Control.CursorX and returns the mouse movement (additive).  
0, 1 and 2 used in the scripts. 0 is by far the most common of them.  
```
</summary>
	]]

native "ENABLE_CONTROL_ACTION"
    hash "0x351220255D64C155"
	jhash (0xD2753551)
	arguments {
		int "inputGroup",
		int "control",
		BOOL "enable",
	}
	ns "PAD"
	returns "void"
	doc [[!
<summary>
```
control values and meaning: github.com/crosire/scripthookvdotnet/blob/dev_v3/source/scripting/Control.cs  
and  
wiki.fivem.net/wiki/Controls  
0, 1 and 2 used in the scripts.  
Control values from the decompiled scripts:   
0,1,2,3,4,5,6,8,9,10,11,14,15,16,17,19,21,22,24,25,26,30,31,32,33,34,35,36,  
37,44,46,47,59,60,65,68,69,70,71,72,73,74,75,76,79,80,81,82,86,95,98,99,100  
,101,114,140,141,143,172,173,174,175,176,177,178,179,180,181,187,188,189,19  
0,195,196,197,198,199,201,202,203,204,205,206,207,208,209,210,217,218,219,2  
20,221,225,228,229,230,231,234,235,236,237,238,239,240,241,242,245,246,257,  
261,262,263,264,286,287,288,289,337,338,339,340,341,342,343  
INPUTGROUP_MOVE  
INPUTGROUP_LOOK  
INPUTGROUP_WHEEL  
INPUTGROUP_CELLPHONE_NAVIGATE  
INPUTGROUP_CELLPHONE_NAVIGATE_UD  
INPUTGROUP_CELLPHONE_NAVIGATE_LR  
INPUTGROUP_FRONTEND_DPAD_ALL  
INPUTGROUP_FRONTEND_DPAD_UD  
INPUTGROUP_FRONTEND_DPAD_LR  
INPUTGROUP_FRONTEND_LSTICK_ALL  
INPUTGROUP_FRONTEND_RSTICK_ALL  
INPUTGROUP_FRONTEND_GENERIC_UD  
INPUTGROUP_FRONTEND_GENERIC_LR  
INPUTGROUP_FRONTEND_GENERIC_ALL  
INPUTGROUP_FRONTEND_BUMPERS  
INPUTGROUP_FRONTEND_TRIGGERS  
INPUTGROUP_FRONTEND_STICKS  
INPUTGROUP_SCRIPT_DPAD_ALL  
INPUTGROUP_SCRIPT_DPAD_UD  
INPUTGROUP_SCRIPT_DPAD_LR  
INPUTGROUP_SCRIPT_LSTICK_ALL  
INPUTGROUP_SCRIPT_RSTICK_ALL  
INPUTGROUP_SCRIPT_BUMPERS  
INPUTGROUP_SCRIPT_TRIGGERS  
INPUTGROUP_WEAPON_WHEEL_CYCLE  
INPUTGROUP_FLY  
INPUTGROUP_SUB  
INPUTGROUP_VEH_MOVE_ALL  
INPUTGROUP_CURSOR  
INPUTGROUP_CURSOR_SCROLL  
INPUTGROUP_SNIPER_ZOOM_SECONDARY  
INPUTGROUP_VEH_HYDRAULICS_CONTROL  
Took those in IDA Pro.Not sure in which order they go  
```
</summary>
	]]

native "IS_CONTROL_JUST_PRESSED"
    hash "0x580417101DDB492F"
	jhash (0x4487F579)
	arguments {
		int "inputGroup",
		int "control",
	}
	ns "PAD"
	returns "BOOL"
	doc [[!
<summary>
Returns whether a [control](https://docs.fivem.net/game-references/controls/) was newly pressed since the last check.
</summary>
<param name="inputGroup">The control system instance to use. Usually set to 0.</param>
<param name="control">The control ID to check.</param>
<returns>True if the control was pressed.</returns>
	]]

native "GET_CONTROL_VALUE"
    hash "0xD95E79E8686D2C27"
	jhash (0xC526F3C6)
	arguments {
		int "inputGroup",
		int "control",
	}
	ns "PAD"
	returns "int"
	doc [[!
<summary>
```
0, 1 and 2 used in the scripts. 0 is by far the most common of them.  
```
</summary>
	]]

native "IS_CONTROL_JUST_RELEASED"
    hash "0x50F940259D3841E6"
	jhash (0x2314444B)
	arguments {
		int "inputGroup",
		int "control",
	}
	ns "PAD"
	returns "BOOL"
	doc [[!
<summary>
Returns whether a [control](https://docs.fivem.net/game-references/controls/) was newly released since the last check.
</summary>
<param name="inputGroup">The control system instance to use. Usually set to 0.</param>
<param name="control">The control ID to check.</param>
<returns>True if the control was recently released.</returns>
	]]

native "IS_CONTROL_RELEASED"
    hash "0x648EE3E7F38877DD"
	jhash (0x1F91A06E)
	arguments {
		int "inputGroup",
		int "control",
	}
	ns "PAD"
	returns "BOOL"
	doc [[!
<summary>
Returns whether a [control](https://docs.fivem.net/game-references/controls/) is currently _not_ pressed.
</summary>
<param name="inputGroup">The control system instance to use. Usually set to 0.</param>
<param name="control">The control ID to check.</param>
<returns>True if the control is not pressed.</returns>
	]]

native "GET_LOCAL_PLAYER_AIM_STATE"
    hash "0xBB41AFBBBC0A0287"
	jhash (0x81802053)
	ns "PAD"
	returns "int"
	doc [[!
	]]

native "IS_DISABLED_CONTROL_JUST_RELEASED"
    hash "0x305C8DCD79DA8B0F"
	jhash (0xD6A679E1)
	arguments {
		int "inputGroup",
		int "control",
	}
	ns "PAD"
	returns "BOOL"
	doc [[!
<summary>
```
0, 1 and 2 used in the scripts. 0 is by far the most common of them.  
```
</summary>
	]]

native "IS_CONTROL_ENABLED"
    hash "0x1CEA6BFDF248E5D9"
	jhash (0x9174AF84)
	arguments {
		int "inputGroup",
		int "control",
	}
	ns "PAD"
	returns "BOOL"
	doc [[!
<summary>
```
Control Groups:  
enum InputGroups  
{  
	INPUTGROUP_MOVE = 0,  
	INPUTGROUP_LOOK = 1,  
	INPUTGROUP_WHEEL = 2,  
	INPUTGROUP_CELLPHONE_NAVIGATE = 3,  
	INPUTGROUP_CELLPHONE_NAVIGATE_UD = 4,  
	INPUTGROUP_CELLPHONE_NAVIGATE_LR = 5,  
	INPUTGROUP_FRONTEND_DPAD_ALL = 6,  
	INPUTGROUP_FRONTEND_DPAD_UD = 7,  
	INPUTGROUP_FRONTEND_DPAD_LR = 8,  
	INPUTGROUP_FRONTEND_LSTICK_ALL = 9,  
	INPUTGROUP_FRONTEND_RSTICK_ALL = 10,  
	INPUTGROUP_FRONTEND_GENERIC_UD = 11,  
	INPUTGROUP_FRONTEND_GENERIC_LR = 12,  
	INPUTGROUP_FRONTEND_GENERIC_ALL = 13,  
	INPUTGROUP_FRONTEND_BUMPERS = 14,  
	INPUTGROUP_FRONTEND_TRIGGERS = 15,  
	INPUTGROUP_FRONTEND_STICKS = 16,  
	INPUTGROUP_SCRIPT_DPAD_ALL = 17,  
	INPUTGROUP_SCRIPT_DPAD_UD = 18,  
	INPUTGROUP_SCRIPT_DPAD_LR = 19,  
	INPUTGROUP_SCRIPT_LSTICK_ALL = 20,  
	INPUTGROUP_SCRIPT_RSTICK_ALL = 21,  
	INPUTGROUP_SCRIPT_BUMPERS = 22,  
	INPUTGROUP_SCRIPT_TRIGGERS = 23,  
	INPUTGROUP_WEAPON_WHEEL_CYCLE = 24,  
	INPUTGROUP_FLY = 25,  
	INPUTGROUP_SUB = 26,  
	INPUTGROUP_VEH_MOVE_ALL = 27,  
	INPUTGROUP_CURSOR = 28,  
	INPUTGROUP_CURSOR_SCROLL = 29,  
	INPUTGROUP_SNIPER_ZOOM_SECONDARY = 30,  
	INPUTGROUP_VEH_HYDRAULICS_CONTROL = 31,  
	MAX_INPUTGROUPS = 32,  
	INPUTGROUP_INVALID = 33  
};  
0, 1 and 2 used in the scripts.  
```
</summary>
	]]

native "IS_DISABLED_CONTROL_PRESSED"
    hash "0xE2587F8CBBD87B1D"
	jhash (0x32A93544)
	arguments {
		int "inputGroup",
		int "control",
	}
	ns "PAD"
	returns "BOOL"
	doc [[!
<summary>
```
0, 1 and 2 used in the scripts. 0 is by far the most common of them.  
```
</summary>
	]]

native "_IS_INPUT_JUST_DISABLED"
    hash "0x13337B38DB572509"
	arguments {
		int "inputGroup",
	}
	alias "0x13337B38DB572509"
	ns "PAD"
	returns "BOOL"
	doc [[!
<summary>
```
I may be wrong with this one, but from the looks of the scripts, it sets keyboard related stuff as soon as this returns true.  
0, 1 and 2 used in the scripts. 0 is by far the most common of them.  
```
</summary>
	]]

native "IS_CONTROL_PRESSED"
    hash "0xF3A21BCD95725A4A"
	jhash (0x517A4384)
	arguments {
		int "inputGroup",
		int "control",
	}
	ns "PAD"
	returns "BOOL"
	doc [[!
<summary>
Returns whether a [control](https://docs.fivem.net/game-references/controls/) is currently pressed.
</summary>
<param name="inputGroup">The control system instance to use. Usually set to 0.</param>
<param name="control">The control ID to check.</param>
<returns>True if the control was pressed.</returns>
	]]

native "0x0F70731BACCFBB96"
    hash "0x0F70731BACCFBB96"
	ns "PAD"
	returns "BOOL"
	doc [[!
	]]

native "IS_DISABLED_CONTROL_JUST_PRESSED"
    hash "0x91AEF906BCA88877"
	jhash (0xEE6ABD32)
	arguments {
		int "inputGroup",
		int "control",
	}
	ns "PAD"
	returns "BOOL"
	doc [[!
<summary>
```
0, 1 and 2 used in the scripts. 0 is by far the most common of them.  
```
</summary>
	]]

native "0x23F09EADC01449D6"
    hash "0x23F09EADC01449D6"
	arguments {
		BOOL "p0",
	}
	ns "PAD"
	returns "BOOL"
	doc [[!
	]]

native "0x4683149ED1DDE7A1"
    hash "0x4683149ED1DDE7A1"
	jhash (0xBBFC9050)
	arguments {
		charPtr "p0",
	}
	ns "PAD"
	returns "BOOL"
	doc [[!
	]]

native "_IS_INPUT_DISABLED"
    hash "0xA571D46727E2B718"
	arguments {
		int "inputGroup",
	}
	alias "_GET_LAST_INPUT_METHOD"
	ns "PAD"
	returns "BOOL"
	doc [[!
<summary>
```
Seems to return true if the input is currently disabled. "_GET_LAST_INPUT_METHOD" didn't seem very accurate, but I've left the original description below.  
--  
index usually 2  
returns true if the last input method was made with mouse + keyboard, false if it was made with a gamepad  
0, 1 and 2 used in the scripts. 0 is by far the most common of them.  
```
</summary>
	]]

native "0x4F8A26A890FD62FB"
    hash "0x4F8A26A890FD62FB"
	jhash (0xF2A65A4C)
	arguments {
		int "inputGroup",
		int "control",
	}
	ns "PAD"
	returns "float"
	doc [[!
<summary>
```
The "disabled" variant of _0x5B84D09CEC5209C5.  
0, 1 and 2 used in the scripts. 0 is by far the most common of them.  
```
</summary>
	]]

native "IS_LOOK_INVERTED"
    hash "0x77B612531280010D"
	jhash (0x313434B2)
	ns "PAD"
	returns "BOOL"
	doc [[!
	]]

native "0x14D29BB12D47F68C"
    hash "0x14D29BB12D47F68C"
	arguments {
		Any "p0",
		Any "p1",
		Any "p2",
		Any "p3",
		Any "p4",
	}
	ns "PAD"
	returns "void"
	doc [[!
<summary>
**This native does absolutely nothing, just a nullsub**
</summary>
	]]

native "0x5B73C77D9EB66E24"
    hash "0x5B73C77D9EB66E24"
	arguments {
		BOOL "p0",
	}
	ns "PAD"
	returns "void"
	doc [[!
	]]

native "0x3D42B92563939375"
    hash "0x3D42B92563939375"
	jhash (0xD2C80B2E)
	arguments {
		charPtr "p0",
	}
	ns "PAD"
	returns "BOOL"
	doc [[!
<summary>
```
Used in carsteal3 script with p0 = "Carsteal4_spycar".  
```
</summary>
	]]

native "0x643ED62D5EA3BEBD"
    hash "0x643ED62D5EA3BEBD"
	jhash (0x42140FF9)
	ns "PAD"
	returns "void"
	doc [[!
	]]

native "0x59B9A7AF4C95133C"
    hash "0x59B9A7AF4C95133C"
	ns "PAD"
	returns "Any"
	doc [[!
<summary>
```
Same behavior as GET_LOCAL_PLAYER_AIM_STATE but only used on the PC version.  
```
</summary>
	]]

native "0x6CD79468A1E595C6"
    hash "0x6CD79468A1E595C6"
	arguments {
		int "inputGroup",
	}
	ns "PAD"
	returns "BOOL"
	doc [[!
	]]

native "0x8290252FFF36ACB5"
    hash "0x8290252FFF36ACB5"
	arguments {
		int "p0",
		int "red",
		int "green",
		int "blue",
	}
	ns "PAD"
	returns "void"
	doc [[!
<summary>
```
HUD_COLOUR_CONTROLLER_CHOP = 174;  
UI::GET_HUD_COLOUR(174, &v_6, &v_7, &v_8, &v_9);  
CONTROLS::_8290252FFF36ACB5(0, v_6, v_7, v_8);  
```
</summary>
	]]

native "0x5B84D09CEC5209C5"
    hash "0x5B84D09CEC5209C5"
	jhash (0xC49343BB)
	arguments {
		int "inputGroup",
		int "control",
	}
	ns "PAD"
	returns "float"
	doc [[!
<summary>
```
Seems to return values between -1 and 1 for controls like gas and steering.  
0, 1 and 2 used in the scripts. 0 is by far the most common of them.  
```
</summary>
	]]

native "0xCB0360EFEFB2580D"
    hash "0xCB0360EFEFB2580D"
	arguments {
		Any "p0",
	}
	ns "PAD"
	returns "void"
	doc [[!
	]]

native "0x80C2FD58D720C801"
    hash "0x80C2FD58D720C801"
	jhash (0x3EE71F6A)
	arguments {
		int "inputGroup",
		int "control",
		BOOL "p2",
	}
	ns "PAD"
	returns "charPtr"
	doc [[!
<summary>
```
0, 1 and 2 used in the scripts. 0 is by far the most common of them.  
```
</summary>
	]]

native "0xA0CEFCEA390AAB9B"
    hash "0xA0CEFCEA390AAB9B"
	arguments {
		Any "p0",
	}
	ns "PAD"
	returns "void"
	doc [[!
	]]

native "0xD7D22F5592AED8BA"
    hash "0xD7D22F5592AED8BA"
	jhash (0x0E8EF929)
	arguments {
		int "p0",
	}
	ns "PAD"
	returns "int"
	doc [[!
	]]

native "0xF239400E16C23E08"
    hash "0xF239400E16C23E08"
	jhash (0x7D65EB6E)
	arguments {
		Any "p0",
		Any "p1",
	}
	ns "PAD"
	returns "void"
	doc [[!
	]]

native "0xE1615EC03B3BB4FD"
    hash "0xE1615EC03B3BB4FD"
	ns "PAD"
	returns "BOOL"
	doc [[!
<summary>
```
Used with IS_LOOK_INVERTED() and negates its affect.  
--  
Not sure how the person above got that description, but here's an actual example:  
if (CONTROLS::_GET_LAST_INPUT_METHOD(2)) {  
    if (a_5) {  
        if (CONTROLS::IS_LOOK_INVERTED()) {  
            a_3 *= -1;  
        }  
        if (CONTROLS::_E1615EC03B3BB4FD()) {  
            a_3 *= -1;  
        }  
    }  
}  
```
</summary>
	]]

native "0xFB6C4072E9A32E92"
    hash "0xFB6C4072E9A32E92"
	arguments {
		Any "p0",
		Any "p1",
	}
	ns "PAD"
	returns "Any"
	doc [[!
	]]

native "0xFC859E2374407556"
    hash "0xFC859E2374407556"
	ns "PAD"
	returns "BOOL"
	doc [[!
	]]

native "_SET_CONTROL_NORMAL"
    hash "0xE8A25867FBA3B05E"
	arguments {
		int "inputGroup",
		int "control",
		float "amount",
	}
	alias "0xE8A25867FBA3B05E"
	ns "PAD"
	returns "BOOL"
	doc [[!
<summary>
```
This is for simulating player input.  
amount is a float value from 0   
0, 1 and 2 used in the scripts. 0 is by far the most common of them.  
```
</summary>
	]]

native "_SET_CURSOR_LOCATION"
    hash "0xFC695459D4D0E219"
	arguments {
		float "x",
		float "y",
	}
	alias "0xFC695459D4D0E219"
	ns "PAD"
	returns "BOOL"
	doc [[!
<summary>
```
Renamed to SET_CURSOR_LOCATION (I previously named it _SET_CURSOR_POSTION) which is the correct name as far as I can tell.  
```
</summary>
	]]

native "SET_INPUT_EXCLUSIVE"
    hash "0xEDE476E5EE29EDB1"
	jhash (0x4E8E29E6)
	arguments {
		int "inputGroup",
		int "control",
	}
	ns "PAD"
	returns "void"
	doc [[!
	]]

native "SET_PAD_SHAKE"
    hash "0x48B3886C1358D0D5"
	jhash (0x5D38BD2F)
	arguments {
		int "p0",
		int "duration",
		int "frequency",
	}
	ns "PAD"
	returns "void"
	doc [[!
<summary>
```
p0 always seems to be 0  
duration in milliseconds   
frequency should range from about 10 (slow vibration) to 255 (very fast)  
appears to be a hash collision, though it does do what it says  
example:  
SET_PAD_SHAKE(0, 100, 200);  
```
</summary>
	]]

native "STOP_PAD_SHAKE"
    hash "0x38C16A305E8CDC8D"
	jhash (0x8F75657E)
	arguments {
		Any "p0",
	}
	ns "PAD"
	returns "void"
	doc [[!
	]]

native "SET_PLAYERPAD_SHAKES_WHEN_CONTROLLER_DISABLED"
    hash "0x798FDEB5B1575088"
	jhash (0xA86BD91F)
	arguments {
		BOOL "toggle",
	}
	ns "PAD"
	returns "void"
	doc [[!
	]]

native "ADD_NAVMESH_REQUIRED_REGION"
    hash "0x387EAD7EE42F6685"
	jhash (0x12B086EA)
	arguments {
		float "x",
		float "y",
		float "radius",
	}
	ns "PATHFIND"
	returns "void"
	doc [[!
	]]

native "ADD_NAVMESH_BLOCKING_OBJECT"
    hash "0xFCD5C8E06E502F5A"
	jhash (0x2952BA56)
	arguments {
		float "p0",
		float "p1",
		float "p2",
		float "p3",
		float "p4",
		float "p5",
		float "p6",
		BOOL "p7",
		Any "p8",
	}
	ns "PATHFIND"
	returns "Any"
	doc [[!
	]]

native "CALCULATE_TRAVEL_DISTANCE_BETWEEN_POINTS"
    hash "0xADD95C7005C4A197"
	jhash (0xB114489B)
	arguments {
		float "x1",
		float "y1",
		float "z1",
		float "x2",
		float "y2",
		float "z2",
	}
	ns "PATHFIND"
	returns "float"
	doc [[!
<summary>
```
Calculates the travel distance between a set of points.  
Doesn't seem to correlate with distance on gps sometimes.  
```
</summary>
	]]

native "ARE_ALL_NAVMESH_REGIONS_LOADED"
    hash "0x8415D95B194A3AEA"
	jhash (0x34C4E789)
	ns "PATHFIND"
	returns "BOOL"
	doc [[!
	]]

native "_CLEAR_GPS_DISABLED_ZONE_AT_INDEX"
    hash "0x2801D0012266DF07"
	arguments {
		int "index",
	}
	alias "0x2801D0012266DF07"
	ns "PATHFIND"
	returns "void"
	doc [[!
<summary>
Clears a disabled GPS route area from a certain index previously set using [`SET_GPS_DISABLED_ZONE_AT_INDEX`](#_0xD0BC1C6FB18EE154).
</summary>
<param name="index">Index of disabled zone.</param>
	]]

native "DISABLE_NAVMESH_IN_AREA"
    hash "0x4C8872D8CDBE1B8B"
	jhash (0x6E37F132)
	arguments {
		Any "p0",
		Any "p1",
		Any "p2",
		Any "p3",
		Any "p4",
		Any "p5",
		Any "p6",
	}
	ns "PATHFIND"
	returns "void"
	doc [[!
	]]

native "DOES_NAVMESH_BLOCKING_OBJECT_EXIST"
    hash "0x0EAEB0DB4B132399"
	jhash (0x4B67D7EE)
	arguments {
		Any "p0",
	}
	alias "0x0EAEB0DB4B132399"
	ns "PATHFIND"
	returns "BOOL"
	doc [[!
	]]

native "GENERATE_DIRECTIONS_TO_COORD"
    hash "0xF90125F1F79ECDF8"
	jhash (0xED35C094)
	arguments {
		float "x",
		float "y",
		float "z",
		BOOL "p3",
		intPtr "direction",
		floatPtr "vehicle",
		floatPtr "distToNxJunction",
	}
	ns "PATHFIND"
	returns "int"
	doc [[!
<summary>
```
Usage example:  
Public Function GenerateDirectionsToCoord(Pos As Vector3) As Tuple(Of String, Single, Single)  
        Dim f4, f5, f6 As New OutputArgument()  
        Native.Function.Call(Hash.GENERATE_DIRECTIONS_TO_COORD, Pos.X, Pos.Y, Pos.Z, True, f4, f5, f6)  
        Dim direction As String = f4.GetResult(Of Single)()  
        Return New Tuple(Of String, Single, Single)(direction.Substring(0, 1), f5.GetResult(Of Single)(), f6.GetResult(Of Single)())  
    End Function  
p3 I use 1  
direction:  
0 = You Have Arrived
1 = Recalculating Route, Please make a u-turn where safe  
2 = Please Proceed the Highlighted Route  
3 = In (distToNxJunction) Turn Left  
4 = In (distToNxJunction) Turn Right  
5 = In (distToNxJunction) Go Straight  
6 = In (distToNxJunction) Keep Left  
7 = In (distToNxJunction) Keep Right
8 = In (distToNxJunction) Join the freeway  
9 = In (distToNxJunction) Exit Freeway  
return value set to 0 always  
```
</summary>
	]]

native "GET_CLOSEST_MAJOR_VEHICLE_NODE"
    hash "0x2EABE3B06F58C1BE"
	jhash (0x04B5F15B)
	arguments {
		float "x",
		float "y",
		float "z",
		Vector3Ptr "outPosition",
		float "unknown1",
		int "unknown2",
	}
	ns "PATHFIND"
	returns "BOOL"
	doc [[!
<summary>
```
Get the closest vehicle node to a given position, unknown1 = 3.0, unknown2 = 0  
```
</summary>
	]]

native "GET_CLOSEST_ROAD"
    hash "0x132F52BBA570FE92"
	jhash (0x567B0E11)
	arguments {
		float "x",
		float "y",
		float "z",
		float "p3",
		int "p4",
		Vector3Ptr "p5",
		Vector3Ptr "p6",
		AnyPtr "p7",
		AnyPtr "p8",
		floatPtr "p9",
		BOOL "p10",
	}
	ns "PATHFIND"
	returns "Any"
	doc [[!
<summary>
```
p1 seems to be always 1.0f in the scripts  
```
</summary>
	]]

native "GET_CLOSEST_VEHICLE_NODE_WITH_HEADING"
    hash "0xFF071FB798B803B0"
	jhash (0x8BD5759B)
	arguments {
		float "x",
		float "y",
		float "z",
		Vector3Ptr "outPosition",
		floatPtr "outHeading",
		int "nodeType",
		float "p6",
		int "p7",
	}
	ns "PATHFIND"
	returns "BOOL"
	doc [[!
<summary>
```
p5, p6 and p7 seems to be about the same as p4, p5 and p6 for GET_CLOSEST_VEHICLE_NODE. p6 and/or p7 has something to do with finding a node on the same path/road and same direction(at least for this native, something to do with the heading maybe). Edit this when you find out more.  
p5 is either 1 or 12. 1 means any path/road. 12, 8, 0 means node in the middle of the closest main (asphalt) road.  
p6 is always 3.0  
p7 is always 0.  
Known node types: simple path/asphalt road, only asphalt road, water, under the map at always the same coords.   
The node types follows a pattern. For example, every fourth node is of the type water i.e. 3, 7, 11, 15, 19, 23, 27, 31, 35, 39... 239. Could not see any difference between nodes within certain types.   
Starting at 2, every fourth node is under the map, always same coords.  
Same with only asphalt road (0, 4, 8, etc) and simple path/asphalt road (1, 5, 9, etc).  
gtaforums.com/topic/843561-pathfind-node-types  
Example of usage, moving vehicle to closest path/road:  
Vector3 coords = ENTITY::GET_ENTITY_COORDS(playerVeh, true);  
Vector3 closestVehicleNodeCoords;   
float roadHeading;   
PATHFIND::GET_CLOSEST_VEHICLE_NODE_WITH_HEADING(coords.x, coords.y, coords.z, &closestVehicleNodeCoords, &roadHeading, 1, 3, 0);   
ENTITY::SET_ENTITY_HEADING(playerVeh, roadHeading);  
ENTITY::SET_ENTITY_COORDS(playerVeh, closestVehicleNodeCoords.x, closestVehicleNodeCoords.y, closestVehicleNodeCoords.z, 1, 0, 0, 1);  
VEHICLE::SET_VEHICLE_ON_GROUND_PROPERLY(playerVeh);  
------------------------------------------------------------------  
C# Example (ins1de) : pastebin.com/fxtMWAHD  
```
</summary>
	]]

native "GET_CLOSEST_VEHICLE_NODE"
    hash "0x240A18690AE96513"
	jhash (0x6F5F1E6C)
	arguments {
		float "x",
		float "y",
		float "z",
		Vector3Ptr "outPosition",
		int "nodeType",
		float "p5",
		float "p6",
	}
	ns "PATHFIND"
	returns "BOOL"
	doc [[!
<summary>
```
FYI: When falling through the map (or however you got under it) you will respawn when your player ped's height is <= -200.0 meters (I think you all know this) and when in a vehicle you will actually respawn at the closest vehicle node.  
----------  
Vector3 nodePos;  
GET_CLOSEST_VEHICLE_NODE(x,y,z,&nodePos,...)  
p4 is either 0, 1 or 8. 1 means any path/road. 0 means node in the middle of the closest main (asphalt) road.  
p5, p6 are always the same:  
0x40400000 (3.0), 0  
p5 can also be 100.0 and p6 can be 2.5:  
PATHFIND::GET_CLOSEST_VEHICLE_NODE(a_0, &v_5, v_9, 100.0, 2.5)  
Known node types: simple path/asphalt road, only asphalt road, water, under the map at always the same coords.   
The node types follows a pattern. For example, every fourth node is of the type water i.e. 3, 7, 11, 15, 19, 23, 27, 31, 35, 39... 239. Could not see any difference between nodes within certain types.   
Starting at 2, every fourth node is under the map, always same coords.  
Same with only asphalt road (0, 4, 8, etc) and simple path/asphalt road (1, 5, 9, etc).   
gtaforums.com/topic/843561-pathfind-node-types  
```
</summary>
	]]

native "_GET_IS_SLOW_ROAD_FLAG"
    hash "0x4F5070AA58F69279"
	jhash (0x56737A3C)
	arguments {
		int "nodeID",
	}
	alias "0x4F5070AA58F69279"
	ns "PATHFIND"
	returns "BOOL"
	doc [[!
<summary>
```
p0 = VEHICLE_NODE_ID  
Returns true when the node is Offroad. Alleys, some dirt roads, and carparks return true.  
Normal roads where plenty of Peds spawn will return false  
```
</summary>
	]]

native "GET_NTH_CLOSEST_VEHICLE_NODE_FAVOUR_DIRECTION"
    hash "0x45905BE8654AE067"
	jhash (0x928A4DEC)
	arguments {
		float "x",
		float "y",
		float "z",
		float "desiredX",
		float "desiredY",
		float "desiredZ",
		int "nthClosest",
		Vector3Ptr "outPosition",
		floatPtr "outHeading",
		int "nodetype",
		Any "p10",
		Any "p11",
	}
	ns "PATHFIND"
	returns "BOOL"
	doc [[!
<summary>
```
See gtaforums.com/topic/843561-pathfind-node-types for node type info. 0 = paved road only, 1 = any road, 3 = water  
p10 always equal 0x40400000  
p11 always equal 0  
```
</summary>
	]]

native "GET_NTH_CLOSEST_VEHICLE_NODE"
    hash "0xE50E52416CCF948B"
	jhash (0xF125BFCC)
	arguments {
		float "x",
		float "y",
		float "z",
		int "nthClosest",
		Vector3Ptr "outPosition",
		Any "unknown1",
		Any "unknown2",
		Any "unknown3",
	}
	ns "PATHFIND"
	returns "BOOL"
	doc [[!
	]]

native "GET_NTH_CLOSEST_VEHICLE_NODE_ID_WITH_HEADING"
    hash "0x6448050E9C2A7207"
	jhash (0xC1AEB88D)
	arguments {
		float "x",
		float "y",
		float "z",
		int "nthClosest",
		Vector3Ptr "outPosition",
		float "outHeading",
		Any "p6",
		float "p7",
		float "p8",
	}
	ns "PATHFIND"
	returns "Any"
	doc [[!
	]]

native "GET_NTH_CLOSEST_VEHICLE_NODE_ID"
    hash "0x22D7275A79FE8215"
	jhash (0x3F358BEA)
	arguments {
		float "x",
		float "y",
		float "z",
		int "nth",
		int "nodetype",
		float "p5",
		float "p6",
	}
	ns "PATHFIND"
	returns "int"
	doc [[!
<summary>
```
Returns the id.  
```
</summary>
	]]

native "GET_RANDOM_VEHICLE_NODE"
    hash "0x93E0DB8440B73A7D"
	jhash (0xAD1476EA)
	arguments {
		float "x",
		float "y",
		float "z",
		float "radius",
		BOOL "p4",
		BOOL "p5",
		BOOL "p6",
		Vector3Ptr "outPosition",
		intPtr "nodeId",
	}
	ns "PATHFIND"
	returns "BOOL"
	doc [[!
	]]

native "GET_STREET_NAME_AT_COORD"
    hash "0x2EB41072B4C1E4C0"
	jhash (0xDEBEEFCF)
	arguments {
		float "x",
		float "y",
		float "z",
		HashPtr "streetName",
		HashPtr "crossingRoad",
	}
	ns "PATHFIND"
	returns "void"
	doc [[!
<summary>
```
Determines the name of the street which is the closest to the given coordinates.  
x,y,z - the coordinates of the street  
streetName - returns a hash to the name of the street the coords are on  
crossingRoad - if the coordinates are on an intersection, a hash to the name of the crossing road  
Note: the names are returned as hashes, the strings can be returned using the function UI::GET_STREET_NAME_FROM_HASH_KEY.  
```
</summary>
	]]

native "GET_NTH_CLOSEST_VEHICLE_NODE_WITH_HEADING"
    hash "0x80CA6A8B6C094CC4"
	jhash (0x7349C856)
	arguments {
		float "x",
		float "y",
		float "z",
		int "nthClosest",
		Vector3Ptr "outPosition",
		floatPtr "heading",
		AnyPtr "unknown1",
		int "unknown2",
		float "unknown3",
		float "unknown4",
	}
	ns "PATHFIND"
	returns "BOOL"
	doc [[!
<summary>
```
Get the nth closest vehicle node and its heading. (unknown2 = 9, unknown3 = 3.0, unknown4 = 2.5)  
```
</summary>
	]]

native "GET_SAFE_COORD_FOR_PED"
    hash "0xB61C8E878A4199CA"
	jhash (0xB370270A)
	arguments {
		float "x",
		float "y",
		float "z",
		BOOL "onGround",
		Vector3Ptr "outPosition",
		int "flags",
	}
	ns "PATHFIND"
	returns "BOOL"
	doc [[!
<summary>
```
When onGround == true outPosition is a position located on the nearest pavement.  
When a safe coord could not be found the result of a function is false and outPosition == Vector3.Zero.  
In the scripts these flags are used: 0, 14, 12, 16, 20, 21, 28. 0 is most commonly used, then 16.   
16 works for me, 0 crashed the script.  
```
</summary>
	]]

native "GET_VEHICLE_NODE_POSITION"
    hash "0x703123E5E7D429C2"
	jhash (0xE38E252D)
	arguments {
		int "nodeId",
		Vector3Ptr "outPosition",
	}
	ns "PATHFIND"
	returns "void"
	doc [[!
<summary>
```
Calling this with an invalid node id, will crash the game.  
Note that IS_VEHICLE_NODE_ID_VALID simply checks if nodeId is not zero. It does not actually ensure that the id is valid.  
Eg. IS_VEHICLE_NODE_ID_VALID(1) will return true, but will crash when calling GET_VEHICLE_NODE_POSITION().  
sfink: This native returns a pointer to a packed Vector3 struct in the RAX register, as do the following natives:  
AI::WAYPOINT_RECORDING_GET_COORD  
ENTITY::GET_ENTITY_MATRIX  
FIRE::GET_CLOSEST_FIRE_POS  
GAMEPLAY::FIND_SPAWN_POINT_IN_DIRECTION  
GAMEPLAY::GET_MODEL_DIMENSIONS  
GAMEPLAY::OVERRIDE_SAVE_HOUSE  
GAMEPLAY::_0x82FDE6A57EE4EE44  
GAMEPLAY::_0x8BDC7BFC57A81E76  
GAMEPLAY::_0x8D7A43EC6A5FEA45  
GAMEPLAY::_0xA4A0065E39C9F25C  
GAMEPLAY::_0xDFB4138EEFED7B81  
MOBILE::GET_MOBILE_PHONE_POSITION  
MOBILE::GET_MOBILE_PHONE_ROTATION  
NETWORK::NETWORK_GET_RESPAWN_RESULT  
OBJECT::_0x163F8B586BC95F2A  
PATHFIND::GET_CLOSEST_MAJOR_VEHICLE_NODE  
PATHFIND::GET_CLOSEST_ROAD  
PATHFIND::GET_CLOSEST_VEHICLE_NODE  
PATHFIND::GET_CLOSEST_VEHICLE_NODE_WITH_HEADING  
PATHFIND::GET_NTH_CLOSEST_VEHICLE_NODE  
PATHFIND::GET_NTH_CLOSEST_VEHICLE_NODE_FAVOUR_DIRECTION  
PATHFIND::GET_NTH_CLOSEST_VEHICLE_NODE_WITH_HEADING  
PATHFIND::GET_RANDOM_VEHICLE_NODE  
PATHFIND::GET_SAFE_COORD_FOR_PED  
PATHFIND::GET_VEHICLE_NODE_POSITION  
PATHFIND::_0x16F46FB18C8009E4  
VEHICLE::_0xA4822F1CF23F4810  
VEHICLE::_0xDF7E3EEB29642C38  
WATER::TEST_PROBE_AGAINST_ALL_WATER  
WATER::TEST_PROBE_AGAINST_WATER  
WEAPON::GET_PED_LAST_WEAPON_IMPACT_COORD  
WORLDPROBE::_0xFF6BE494C7987F34  
WORLDPROBE::_GET_RAYCAST_RESULT  
```
</summary>
	]]

native "_GET_SUPPORTS_GPS_ROUTE_FLAG"
    hash "0xA2AE5C478B96E3B6"
	jhash (0xEE4B1219)
	arguments {
		int "nodeID",
	}
	alias "0xA2AE5C478B96E3B6"
	ns "PATHFIND"
	returns "BOOL"
	doc [[!
<summary>
```
p0 = VEHICLE_NODE_ID  
Returns false for nodes that aren't used for GPS routes.  
Example:  
Nodes in Fort Zancudo and LSIA are false  
```
</summary>
	]]

native "IS_NAVMESH_LOADED_IN_AREA"
    hash "0xF813C7E63F9062A5"
	jhash (0x4C2BA99E)
	arguments {
		float "x1",
		float "y1",
		float "z1",
		float "x2",
		float "y2",
		float "z2",
	}
	ns "PATHFIND"
	returns "BOOL"
	doc [[!
<summary>
```
Returns whether navmesh for the region is loaded. The region is a rectangular prism defined by it's top left deepest corner to it's bottom right shallowest corner.  
If you can re-word this so it makes more sense, please do. I'm horrible with words sometimes...  
```
</summary>
	]]

native "GET_VEHICLE_NODE_PROPERTIES"
    hash "0x0568566ACBB5DEDC"
	jhash (0xCC90110B)
	arguments {
		float "x",
		float "y",
		float "z",
		intPtr "density",
		intPtr "flags",
	}
	ns "PATHFIND"
	returns "BOOL"
	doc [[!
<summary>
```
MulleDK19: Gets the density and flags of the closest node to the specified position.  
Density is a value between 0 and 15, indicating how busy the road is.  
Flags is a bit field.  
```
</summary>
	]]

native "IS_VEHICLE_NODE_ID_VALID"
    hash "0x1EAF30FCFBF5AF74"
	jhash (0x57DFB1EF)
	arguments {
		int "vehicleNodeId",
	}
	ns "PATHFIND"
	returns "BOOL"
	doc [[!
<summary>
```
Returns true if the id is non zero.  
```
</summary>
	]]

native "IS_POINT_ON_ROAD"
    hash "0x125BF4ABFC536B09"
	jhash (0xCF198055)
	arguments {
		float "x",
		float "y",
		float "z",
		Vehicle "vehicle",
	}
	ns "PATHFIND"
	returns "BOOL"
	doc [[!
<summary>
```
Gets a value indicating whether the specified position is on a road.  
The vehicle parameter is not implemented (ignored).  
```
</summary>
	]]

native "LOAD_ALL_PATH_NODES"
    hash "0x80E4A6EDDB0BE8D9"
	jhash (0xC66E28C3)
	arguments {
		BOOL "keepInMemory",
	}
	ns "PATHFIND"
	returns "BOOL"
	doc [[!
<summary>
```
Loads all path nodes.  
If keepInMemory is true, all path nodes will be loaded and be kept in memory; otherwise, all path nodes will be loaded, but unloaded as the game sees fit.  
- MulleDK19.  
August 29, 2017: This native has been removed in v1180.  
```
</summary>
	]]

native "0x01708E8DD3FF8C65"
    hash "0x01708E8DD3FF8C65"
	arguments {
		float "p0",
		float "p1",
		float "p2",
		float "p3",
		float "p4",
		float "p5",
	}
	ns "PATHFIND"
	returns "Any"
	doc [[!
	]]

native "0x07FB139B592FA687"
    hash "0x07FB139B592FA687"
	jhash (0x2CDA5012)
	arguments {
		float "p0",
		float "p1",
		float "p2",
		float "p3",
	}
	ns "PATHFIND"
	returns "BOOL"
	doc [[!
	]]

native "0x0B919E1FB47CC4E0"
    hash "0x0B919E1FB47CC4E0"
	jhash (0x3C5085E4)
	arguments {
		float "p0",
	}
	ns "PATHFIND"
	returns "void"
	doc [[!
	]]

native "0x16F46FB18C8009E4"
    hash "0x16F46FB18C8009E4"
	jhash (0xF6422F9A)
	arguments {
		Any "p0",
		Any "p1",
		Any "p2",
		Any "p3",
		Any "p4",
	}
	ns "PATHFIND"
	returns "Any"
	doc [[!
	]]

native "0x1FC289A0C3FF470F"
    hash "0x1FC289A0C3FF470F"
	jhash (0x90DF7A4C)
	arguments {
		BOOL "p0",
	}
	ns "PATHFIND"
	returns "Any"
	doc [[!
	]]

native "0x29C24BFBED8AB8FB"
    hash "0x29C24BFBED8AB8FB"
	jhash (0x3FE8C5A0)
	arguments {
		float "p0",
		float "p1",
	}
	ns "PATHFIND"
	returns "float"
	doc [[!
	]]

native "0x228E5C6AD4D74BFD"
    hash "0x228E5C6AD4D74BFD"
	jhash (0xD6A3B458)
	arguments {
		BOOL "p0",
	}
	ns "PATHFIND"
	returns "void"
	doc [[!
<summary>
```
Probably the opposite of  0x80E4A6EDDB0BE8D9 / LOAD_ALL_PATH_NODES  
```
</summary>
	]]

native "0x336511A34F2E5185"
    hash "0x336511A34F2E5185"
	jhash (0xA07C5B7D)
	arguments {
		float "left",
		float "right",
	}
	ns "PATHFIND"
	returns "float"
	doc [[!
<summary>
```
calculates two distances  
```
</summary>
	]]

native "0x3599D741C9AC6310"
    hash "0x3599D741C9AC6310"
	jhash (0x76751DD4)
	arguments {
		float "p0",
		float "p1",
		float "p2",
		float "p3",
	}
	ns "PATHFIND"
	returns "float"
	doc [[!
	]]

native "0x705A844002B39DC0"
    hash "0x705A844002B39DC0"
	ns "PATHFIND"
	returns "Any"
	doc [[!
	]]

native "0x869DAACBBE9FA006"
    hash "0x869DAACBBE9FA006"
	jhash (0x286F82CC)
	ns "PATHFIND"
	returns "Any"
	doc [[!
	]]

native "0x8ABE8608576D9CE3"
    hash "0x8ABE8608576D9CE3"
	jhash (0x3ED21C90)
	arguments {
		float "p0",
		float "p1",
		float "p2",
		float "p3",
	}
	ns "PATHFIND"
	returns "float"
	doc [[!
	]]

native "0xAA76052DDA9BFC3E"
    hash "0xAA76052DDA9BFC3E"
	jhash (0xD0F51299)
	arguments {
		Any "p0",
		Any "p1",
		Any "p2",
		Any "p3",
		Any "p4",
		Any "p5",
		Any "p6",
	}
	ns "PATHFIND"
	returns "void"
	doc [[!
	]]

native "0xA0F8A7517A273C05"
    hash "0xA0F8A7517A273C05"
	arguments {
		Any "p0",
		Any "p1",
		Any "p2",
		Any "p3",
		Any "p4",
	}
	ns "PATHFIND"
	returns "Any"
	doc [[!
	]]

native "0xBBB45C3CF5C8AA85"
    hash "0xBBB45C3CF5C8AA85"
	jhash (0x4B770634)
	ns "PATHFIND"
	returns "Any"
	doc [[!
	]]

native "0xF3162836C28F9DA5"
    hash "0xF3162836C28F9DA5"
	arguments {
		Any "p0",
		Any "p1",
		Any "p2",
		Any "p3",
	}
	ns "PATHFIND"
	returns "Any"
	doc [[!
	]]

native "0xF7B79A50B905A30D"
    hash "0xF7B79A50B905A30D"
	jhash (0x86E80A17)
	arguments {
		float "p0",
		float "p1",
		float "p2",
		float "p3",
	}
	ns "PATHFIND"
	returns "BOOL"
	doc [[!
<summary>
```
Only did a quick disassembly, but this function seems to load all path nodes in the given area. Parameters appear to be start x, start y, end x, end y.  
```
</summary>
	]]

native "REMOVE_NAVMESH_BLOCKING_OBJECT"
    hash "0x46399A7895957C0E"
	jhash (0x098602B0)
	arguments {
		Any "p0",
	}
	ns "PATHFIND"
	returns "void"
	doc [[!
	]]

native "REMOVE_NAVMESH_REQUIRED_REGIONS"
    hash "0x916F0A3CDEC3445E"
	jhash (0x637BB680)
	ns "PATHFIND"
	returns "void"
	doc [[!
	]]

native "SET_GPS_DISABLED_ZONE"
    hash "0xDC20483CD3DD5201"
	jhash (0x720B8073)
	arguments {
		Any "p0",
		Any "p1",
		Any "p2",
		Any "p3",
		Any "p4",
		Any "p5",
	}
	ns "PATHFIND"
	returns "void"
	doc [[!
	]]

native "SET_GPS_DISABLED_ZONE_AT_INDEX"
    hash "0xD0BC1C6FB18EE154"
	jhash (0x98BDB311)
	arguments {
		float "x1",
		float "y1",
		float "z1",
		float "x2",
		float "y2",
		float "z2",
		int "index",
	}
	alias "0xD0BC1C6FB18EE154"
	ns "PATHFIND"
	returns "void"
	doc [[!
<summary>
Disables the GPS route displayed on the minimap while within a certain zone (area). When in a disabled zone and creating a waypoint, the GPS route is not shown on the minimap until you are outside of the zone. When disabled, the direct distance is shown on minimap opposed to distance to travel. Seems to only work before setting a waypoint.

You can clear the disabled zone with CLEAR_GPS_DISABLED_ZONE_AT_INDEX.

**Setting a waypoint at the same coordinate:**

Disabled Zone: <https://i.imgur.com/P9VUuxM.png>

Enabled Zone (normal): <https://i.imgur.com/BPi24aw.png>
</summary>
<param name="x1">X coordinate of first vector.</param>
<param name="y1">Y coordinate of first vector.</param>
<param name="z1">Z coordinate of first vector.</param>
<param name="x2">X coordinate of second vector.</param>
<param name="y2">Y coordinate of second vector.</param>
<param name="z2">Z coordinate of second vector.</param>
<param name="index">Index of zone.</param>
	]]

native "SET_IGNORE_NO_GPS_FLAG"
    hash "0x72751156E7678833"
	jhash (0xB72CF194)
	arguments {
		BOOL "ignore",
	}
	ns "PATHFIND"
	returns "void"
	doc [[!
	]]

native "SET_PED_PATHS_BACK_TO_ORIGINAL"
    hash "0xE04B48F2CC926253"
	jhash (0x3F1ABDA4)
	arguments {
		Any "p0",
		Any "p1",
		Any "p2",
		Any "p3",
		Any "p4",
		Any "p5",
	}
	ns "PATHFIND"
	returns "void"
	doc [[!
	]]

native "SET_PED_PATHS_IN_AREA"
    hash "0x34F060F4BF92E018"
	jhash (0x2148EA84)
	arguments {
		float "x1",
		float "y1",
		float "z1",
		float "x2",
		float "y2",
		float "z2",
		BOOL "unknown",
	}
	ns "PATHFIND"
	returns "void"
	doc [[!
	]]

native "SET_ROADS_BACK_TO_ORIGINAL"
    hash "0x1EE7063B80FFC77C"
	jhash (0x86AC4A85)
	arguments {
		float "p0",
		float "p1",
		float "p2",
		float "p3",
		float "p4",
		float "p5",
	}
	ns "PATHFIND"
	returns "void"
	doc [[!
<summary>
```
missing a last parameter int p6  
```
</summary>
	]]

native "SET_ROADS_IN_ANGLED_AREA"
    hash "0x1A5AA1208AF5DB59"
	jhash (0xBD088F4B)
	arguments {
		float "x1",
		float "y1",
		float "z1",
		float "x2",
		float "y2",
		float "z2",
		float "angle",
		BOOL "unknown1",
		BOOL "unknown2",
		BOOL "unknown3",
	}
	ns "PATHFIND"
	returns "void"
	doc [[!
<summary>
```
/* Corrected conflicting parameter names */  
```
</summary>
	]]

native "SET_ROADS_BACK_TO_ORIGINAL_IN_ANGLED_AREA"
    hash "0x0027501B9F3B407E"
	jhash (0x9DB5D209)
	arguments {
		float "x1",
		float "y1",
		float "z1",
		float "x2",
		float "y2",
		float "z2",
		float "p6",
	}
	ns "PATHFIND"
	returns "void"
	doc [[!
<summary>
```
bool p7 - always 1  
```
</summary>
	]]

native "SET_ROADS_IN_AREA"
    hash "0xBF1A602B5BA52FEE"
	jhash (0xEBC7B918)
	arguments {
		float "x1",
		float "y1",
		float "z1",
		float "x2",
		float "y2",
		float "z2",
		BOOL "unknown1",
		BOOL "unknown2",
	}
	ns "PATHFIND"
	returns "void"
	doc [[!
<summary>
```
/* Corrected conflicting parameter names */  
```
</summary>
	]]

native "UPDATE_NAVMESH_BLOCKING_OBJECT"
    hash "0x109E99373F290687"
	jhash (0x4E9776D0)
	arguments {
		Any "p0",
		float "p1",
		float "p2",
		float "p3",
		float "p4",
		float "p5",
		float "p6",
		float "p7",
		Any "p8",
	}
	ns "PATHFIND"
	returns "void"
	doc [[!
	]]

native "GET_NEXT_GPS_DISABLED_ZONE_INDEX"
    hash "0xD3A6A0EF48823A8C"
	jhash (0xBE92551F)
	arguments {
		int "index",
	}
	alias "0xD3A6A0EF48823A8C"
	ns "PED"
	returns "int"
	doc [[!
<summary>
Gets the next zone that has been disabled using SET_GPS_DISABLED_ZONE_AT_INDEX.
</summary>
<returns>The disabled zone index</returns>
	]]

native "ADD_ARMOUR_TO_PED"
    hash "0x5BA652A0CD14DF2F"
	jhash (0xF686B26E)
	arguments {
		Ped "ped",
		int "amount",
	}
	ns "PED"
	returns "void"
	doc [[!
<summary>
```
Same as SET_PED_ARMOUR, but ADDS 'amount' to the armor the Ped already has.  
```
</summary>
	]]

native "ADD_RELATIONSHIP_GROUP"
    hash "0xF372BC22FCB88606"
	jhash (0x8B635546)
	arguments {
		charPtr "name",
		HashPtr "groupHash",
	}
	ns "PED"
	returns "Any"
	doc [[!
<summary>
```
Can't select void. This function returns nothing. The hash of the created relationship group is output in the second parameter.  
```
</summary>
	]]

native "APPLY_DAMAGE_TO_PED"
    hash "0x697157CED63F18D4"
	jhash (0x4DC27FCF)
	arguments {
		Ped "ped",
		int "damageAmount",
		BOOL "armorFirst",
	}
	ns "PED"
	returns "void"
	doc [[!
<summary>
```
damages a ped with the given amount  
----  
armorFirst means it will damage/lower the armor first before damaging the player.  
setting damageAmount to a negative amount will cause the player or the armor (depending on armorFirst) to be healed by damageAmount instead.  
```
</summary>
	]]

native "ADD_SCENARIO_BLOCKING_AREA"
    hash "0x1B5C85C612E5256E"
	jhash (0xA38C0234)
	arguments {
		float "x1",
		float "y1",
		float "z1",
		float "x2",
		float "y2",
		float "z2",
		BOOL "p6",
		BOOL "p7",
		BOOL "p8",
		BOOL "p9",
	}
	ns "PED"
	returns "int"
	doc [[!
	]]

native "APPLY_PED_BLOOD"
    hash "0x83F7E01C7B769A26"
	jhash (0x376CE3C0)
	arguments {
		Ped "ped",
		int "boneIndex",
		float "xRot",
		float "yRot",
		float "zRot",
		charPtr "woundType",
	}
	ns "PED"
	returns "void"
	doc [[!
<summary>
```
Found one occurence in re_crashrescue.c4  
PED::APPLY_PED_BLOOD(l_4B, 3, 0.0, 0.0, 0.0, "wound_sheet");  
```
</summary>
	]]

native "APPLY_PED_BLOOD_DAMAGE_BY_ZONE"
    hash "0x816F6981C60BF53B"
	jhash (0x1E54DB12)
	arguments {
		Ped "ped",
		Any "p1",
		float "p2",
		float "p3",
		Any "p4",
	}
	alias "0x816F6981C60BF53B"
	ns "PED"
	returns "void"
	doc [[!
	]]

native "APPLY_PED_BLOOD_BY_ZONE"
    hash "0x3311E47B91EDCBBC"
	jhash (0x8F3F3A9C)
	arguments {
		Ped "ped",
		Any "p1",
		float "p2",
		float "p3",
		AnyPtr "p4",
	}
	alias "0x3311E47B91EDCBBC"
	ns "PED"
	returns "void"
	doc [[!
	]]

native "APPLY_PED_DAMAGE_DECAL"
    hash "0x397C38AA7B4A5F83"
	jhash (0x8A13A41F)
	arguments {
		Ped "ped",
		int "p1",
		float "p2",
		float "p3",
		float "p4",
		float "p5",
		float "p6",
		int "p7",
		BOOL "p8",
		charPtr "p9",
	}
	ns "PED"
	returns "void"
	doc [[!
<summary>
```
APPLY_PED_DAMAGE_DECAL(ped, 1, 0.5f, 0.513f, 0f, 1f, unk, 0, 0, "blushing");  
```
</summary>
	]]

native "ATTACH_SYNCHRONIZED_SCENE_TO_ENTITY"
    hash "0x272E4723B56A3B96"
	jhash (0xE9BA6189)
	arguments {
		int "sceneID",
		Entity "entity",
		int "boneIndex",
	}
	ns "PED"
	returns "void"
	doc [[!
	]]

native "APPLY_PED_BLOOD_SPECIFIC"
    hash "0xEF0D582CBF2D9B0F"
	jhash (0xFC13CE80)
	arguments {
		Ped "ped",
		Any "p1",
		float "p2",
		float "p3",
		float "p4",
		float "p5",
		Any "p6",
		float "p7",
		AnyPtr "p8",
	}
	alias "0xEF0D582CBF2D9B0F"
	ns "PED"
	returns "void"
	doc [[!
	]]

native "APPLY_PED_DAMAGE_PACK"
    hash "0x46DF918788CB093F"
	jhash (0x208D0CB8)
	arguments {
		Ped "ped",
		charPtr "damagePack",
		float "damage",
		float "mult",
	}
	ns "PED"
	returns "void"
	doc [[!
<summary>
```
Damage Packs:  
"SCR_TrevorTreeBang"  
"HOSPITAL_0"  
"HOSPITAL_1"  
"HOSPITAL_2"  
"HOSPITAL_3"  
"HOSPITAL_4"  
"HOSPITAL_5"  
"HOSPITAL_6"  
"HOSPITAL_7"  
"HOSPITAL_8"  
"HOSPITAL_9"  
"SCR_Dumpster"  
"BigHitByVehicle"  
"SCR_Finale_Michael_Face"  
"SCR_Franklin_finb"  
"SCR_Finale_Michael"  
"SCR_Franklin_finb2"  
"Explosion_Med"  
"SCR_Torture"  
"SCR_TracySplash"  
"Skin_Melee_0"  
Additional damage packs:  
gist.github.com/alexguirre/f3f47f75ddcf617f416f3c8a55ae2227  
```
</summary>
	]]

native "CAN_CREATE_RANDOM_COPS"
    hash "0x5EE2CAFF7F17770D"
	jhash (0xAA73DAD9)
	ns "PED"
	returns "BOOL"
	doc [[!
	]]

native "CAN_CREATE_RANDOM_BIKE_RIDER"
    hash "0xEACEEDA81751915C"
	jhash (0x7018BE31)
	ns "PED"
	returns "BOOL"
	doc [[!
	]]

native "CAN_CREATE_RANDOM_PED"
    hash "0x3E8349C08E4B82E4"
	jhash (0xF9ABE88F)
	arguments {
		BOOL "unk",
	}
	ns "PED"
	returns "BOOL"
	doc [[!
	]]

native "CAN_CREATE_RANDOM_DRIVER"
    hash "0xB8EB95E5B4E56978"
	jhash (0x99861609)
	ns "PED"
	returns "BOOL"
	doc [[!
	]]

native "CAN_PED_IN_COMBAT_SEE_TARGET"
    hash "0xEAD42DE3610D0721"
	jhash (0xCCD525E1)
	arguments {
		Ped "ped",
		Ped "target",
	}
	ns "PED"
	returns "BOOL"
	doc [[!
	]]

native "CAN_KNOCK_PED_OFF_VEHICLE"
    hash "0x51AC07A44D4F5B8A"
	jhash (0xC9D098B3)
	arguments {
		Ped "ped",
	}
	ns "PED"
	returns "BOOL"
	doc [[!
	]]

native "_CAN_PED_SEE_PED"
    hash "0x6CD5A433374D4CFB"
	jhash (0x74A0F291)
	arguments {
		Ped "ped1",
		Ped "ped2",
	}
	alias "0x6CD5A433374D4CFB"
	ns "PED"
	returns "BOOL"
	doc [[!
<summary>
```
Returns true if ped1 can see ped2 in their line of vision  
```
</summary>
	]]

native "CAN_PED_RAGDOLL"
    hash "0x128F79EDCECE4FD5"
	jhash (0xC0EFB7A3)
	arguments {
		Ped "ped",
	}
	ns "PED"
	returns "BOOL"
	doc [[!
<summary>
```
Prevents the ped from going limp.  
[Example: Can prevent peds from falling when standing on moving vehicles.]  
```
</summary>
	]]

native "CLEAR_FACIAL_IDLE_ANIM_OVERRIDE"
    hash "0x726256CC1EEB182F"
	jhash (0x5244F4E2)
	arguments {
		Ped "ped",
	}
	ns "PED"
	returns "void"
	doc [[!
	]]

native "CLEAR_ALL_PED_PROPS"
    hash "0xCD8A7537A9B52F06"
	jhash (0x81DF8B43)
	arguments {
		Ped "ped",
	}
	ns "PED"
	returns "void"
	doc [[!
<summary>
```
List of component/props ID  
gtaxscripting.blogspot.com/2016/04/gta-v-peds-component-and-props.html  
```
</summary>
	]]

native "CLEAR_PED_ALTERNATE_MOVEMENT_ANIM"
    hash "0xD8D19675ED5FBDCE"
	jhash (0x7A7F5BC3)
	arguments {
		Ped "ped",
		int "stance",
		float "p2",
	}
	ns "PED"
	returns "void"
	doc [[!
	]]

native "CLEAR_PED_ALTERNATE_WALK_ANIM"
    hash "0x8844BBFCE30AA9E9"
	jhash (0x5736FB23)
	arguments {
		Ped "ped",
		float "p1",
	}
	ns "PED"
	returns "void"
	doc [[!
	]]

native "CLEAR_PED_BLOOD_DAMAGE"
    hash "0x8FE22675A5A45817"
	jhash (0xF7ADC960)
	arguments {
		Ped "ped",
	}
	ns "PED"
	returns "void"
	doc [[!
	]]

native "CLEAR_PED_BLOOD_DAMAGE_BY_ZONE"
    hash "0x56E3B78C5408D9F4"
	jhash (0xF210BE69)
	arguments {
		Ped "ped",
		int "p1",
	}
	alias "0x56E3B78C5408D9F4"
	ns "PED"
	returns "void"
	doc [[!
<summary>
```
Somehow related to changing ped's clothes.  
```
</summary>
	]]

native "CLEAR_PED_DAMAGE_DECAL_BY_ZONE"
    hash "0x523C79AEEFCC4A2A"
	jhash (0x70AA5B7D)
	arguments {
		Ped "ped",
		int "p1",
		charPtr "p2",
	}
	alias "0x523C79AEEFCC4A2A"
	ns "PED"
	returns "void"
	doc [[!
<summary>
```
p1: from 0 to 5 in the b617d scripts.  
p2: "blushing" and "ALL" found in the b617d scripts.  
```
</summary>
	]]

native "CLEAR_PED_DECORATIONS"
    hash "0x0E5173C163976E38"
	jhash (0xD4496BF3)
	arguments {
		Ped "ped",
	}
	ns "PED"
	returns "void"
	doc [[!
	]]

native "CLEAR_PED_DRIVE_BY_CLIPSET_OVERRIDE"
    hash "0x4AFE3690D7E0B5AC"
	jhash (0xAEC9163B)
	arguments {
		Ped "ped",
	}
	ns "PED"
	returns "void"
	doc [[!
	]]

native "CLEAR_PED_LAST_DAMAGE_BONE"
    hash "0x8EF6B7AC68E2F01B"
	jhash (0x56CB715E)
	arguments {
		Ped "ped",
	}
	ns "PED"
	returns "void"
	doc [[!
	]]

native "_CLEAR_PED_FACIAL_DECORATIONS"
    hash "0xE3B27E70CEAB9F0C"
	jhash (0xEFD58EB9)
	arguments {
		Ped "ped",
	}
	alias "0xE3B27E70CEAB9F0C"
	ns "PED"
	returns "void"
	doc [[!
	]]

native "CLEAR_PED_NON_CREATION_AREA"
    hash "0x2E05208086BA0651"
	jhash (0x6F7043A3)
	ns "PED"
	returns "void"
	doc [[!
	]]

native "CLEAR_PED_PROP"
    hash "0x0943E5B8E078E76E"
	jhash (0x2D23D743)
	arguments {
		Ped "ped",
		int "propId",
	}
	ns "PED"
	returns "void"
	doc [[!
<summary>
```
List of component/props ID  
gtaxscripting.blogspot.com/2016/04/gta-v-peds-component-and-props.html  
```
</summary>
	]]

native "CLEAR_PED_SCUBA_GEAR_VARIATION"
    hash "0xB50EB4CCB29704AC"
	jhash (0x080275EE)
	arguments {
		Ped "ped",
	}
	alias "0xB50EB4CCB29704AC"
	alias "_REMOVE_PED_SCUBA_GEAR_NOW"
	ns "PED"
	returns "void"
	doc [[!
<summary>
Removes the scubagear (for mp male: component id: 8, drawableId: 123, textureId: any) from peds. Does not play the 'remove scuba gear' animation, but instantly removes it.
</summary>
<param name="ped">The ped to remove the scuba gear from.</param>
	]]

native "CLEAR_PED_WETNESS"
    hash "0x9C720776DAA43E7E"
	jhash (0x629F15BD)
	arguments {
		Ped "ped",
	}
	ns "PED"
	returns "void"
	doc [[!
<summary>
```
It clears the wetness of the selected Ped/Player. Clothes have to be wet to notice the difference.  
```
</summary>
	]]

native "CLEAR_RELATIONSHIP_BETWEEN_GROUPS"
    hash "0x5E29243FB56FC6D4"
	jhash (0x994B8C2D)
	arguments {
		int "relationship",
		Hash "group1",
		Hash "group2",
	}
	ns "PED"
	returns "void"
	doc [[!
<summary>
```
Clears the relationship between two groups. This should be called twice (once for each group).  
Relationship types:  
0 = Companion  
1 = Respect  
2 = Like  
3 = Neutral  
4 = Dislike  
5 = Hate  
255 = Pedestrians  
(Credits: Inco)  
Example:  
PED::CLEAR_RELATIONSHIP_BETWEEN_GROUPS(2, l_1017, 0xA49E591C);  
PED::CLEAR_RELATIONSHIP_BETWEEN_GROUPS(2, 0xA49E591C, l_1017);  
```
</summary>
	]]

native "CLONE_PED"
    hash "0xEF29A16337FACADB"
	jhash (0x8C8A8D6E)
	arguments {
		Ped "ped",
		float "heading",
		BOOL "isNetwork",
		BOOL "thisScriptCheck",
	}
	ns "PED"
	returns "Ped"
	doc [[!
<summary>
```
thisScriptCheck - can be destroyed if it belongs to the calling script.  
Example of Cloning Your Player:  
CLONE_PED(PLAYER_PED_ID(), GET_ENTITY_HEADING(PLAYER_PED_ID()), 0, 1);  
```
</summary>
	]]

native "CLONE_PED_TO_TARGET"
    hash "0xE952D6431689AD9A"
	jhash (0xFC70EEC7)
	arguments {
		Ped "ped",
		Ped "targetPed",
	}
	alias "_ASSIGN_PLAYER_TO_PED"
	ns "PED"
	returns "void"
	doc [[!
<summary>
```
What exactly is the difference? What does this exactly do by chance?  
^ Copies ped's components and props to targetPed.  
---------------------------------------------------------------------------------  
| Internally has a 3rd param (bool) which is set to true by default |  
```
</summary>
	]]

native "CREATE_GROUP"
    hash "0x90370EBE0FEE1A3D"
	jhash (0x8DC0368D)
	arguments {
		int "unused",
	}
	ns "PED"
	returns "int"
	doc [[!
<summary>
```
Creates a new ped group.  
Groups can contain up to 8 peds.  
The parameter is unused.  
Returns a handle to the created group, or 0 if a group couldn't be created.  
```
</summary>
	]]

native "CREATE_NM_MESSAGE"
    hash "0x418EF2A1BCE56685"
	jhash (0x1CFBFD4B)
	arguments {
		BOOL "startImmediately",
		int "messageId",
	}
	ns "PED"
	returns "void"
	doc [[!
<summary>
```
Creates a new NaturalMotion message.  
startImmediately: If set to true, the character will perform the message the moment it receives it by GIVE_PED_NM_MESSAGE. If false, the Ped will get the message but won't perform it yet. While it's a boolean value, if negative, the message will not be initialized.  
messageId: The ID of the NaturalMotion message.  
If a message already exists, this function does nothing. A message exists until the point it has been successfully dispatched by GIVE_PED_NM_MESSAGE.  
```
</summary>
	]]

native "CREATE_PED"
    hash "0xD49F9B0955C367DE"
	jhash (0x0389EF71)
	arguments {
		int "pedType",
		Hash "modelHash",
		float "x",
		float "y",
		float "z",
		float "heading",
		BOOL "isNetwork",
		BOOL "thisScriptCheck",
	}
	ns "PED"
	returns "Ped"
	doc [[!
<summary>
```
thisScriptCheck - can be destroyed if it belongs to the calling script.  
p7 - last parameter does not mean ped handle is returned  
maybe a quick view in disassembly will tell us what is actually does  
*Heading*: 0.0  
*Heading* is the Z axis spawn rotation of the ped 0->5th parameter.  
Ped Types:  
enum PedTypes  
{  
	PED_TYPE_PLAYER_0,// michael  
	PED_TYPE_PLAYER_1,// franklin  
	PED_TYPE_NETWORK_PLAYER,	// mp character  
	PED_TYPE_PLAYER_2,// trevor  
	PED_TYPE_CIVMALE,  
	PED_TYPE_CIVFEMALE,  
	PED_TYPE_COP,  
	PED_TYPE_GANG_ALBANIAN,  
	PED_TYPE_GANG_BIKER_1,  
	PED_TYPE_GANG_BIKER_2,  
	PED_TYPE_GANG_ITALIAN,  
	PED_TYPE_GANG_RUSSIAN,  
	PED_TYPE_GANG_RUSSIAN_2,  
	PED_TYPE_GANG_IRISH,  
	PED_TYPE_GANG_JAMAICAN,  
	PED_TYPE_GANG_AFRICAN_AMERICAN,  
	PED_TYPE_GANG_KOREAN,  
	PED_TYPE_GANG_CHINESE_JAPANESE,  
	PED_TYPE_GANG_PUERTO_RICAN,  
	PED_TYPE_DEALER,  
	PED_TYPE_MEDIC,  
	PED_TYPE_FIREMAN,  
	PED_TYPE_CRIMINAL,  
	PED_TYPE_BUM,  
	PED_TYPE_PROSTITUTE,  
	PED_TYPE_SPECIAL,  
	PED_TYPE_MISSION,  
	PED_TYPE_SWAT,  
	PED_TYPE_ANIMAL,  
	PED_TYPE_ARMY  
};  
```
</summary>
	]]

native "CREATE_PED_INSIDE_VEHICLE"
    hash "0x7DD959874C1FD534"
	jhash (0x3000F092)
	arguments {
		Vehicle "vehicle",
		int "pedType",
		Hash "modelHash",
		int "seat",
		BOOL "isNetwork",
		BOOL "thisScriptCheck",
	}
	ns "PED"
	returns "Ped"
	doc [[!
<summary>
```
thisScriptCheck - can be destroyed if it belongs to the calling script.  
p5 - last parameter does not mean ped handle is returned  
maybe a quick view in disassembly will tell us what is actually does  
Ped Types:  
enum ePedType  
{  
	PED_TYPE_PLAYER_0 = 0,  
	PED_TYPE_PLAYER_1 = 1,  
	PED_TYPE_PLAYER_2 = 3,  
	PED_TYPE_CIVMALE = 4,  
	PED_TYPE_CIVFEMALE = 5,  
	PED_TYPE_COP = 6,  
	PED_TYPE_UNKNOWN_7 = 7,  
	PED_TYPE_UNKNOWN_12 = 12, // gang member?  
	PED_TYPE_UNKNOWN_19 = 19,  
	PED_TYPE_MEDIC = 20,  
	PED_TYPE_FIREMAN = 21,  
	PED_TYPE_UNKNOWN_22 = 22,  
	PED_TYPE_UNKNOWN_25 = 25,  
	PED_TYPE_UNKNOWN_26 = 26,  
	PED_TYPE_SWAT = 27,  
	PED_TYPE_ANIMAL = 28,  
	PED_TYPE_ARMY = 29  
};  
```
</summary>
	]]

native "CREATE_RANDOM_PED"
    hash "0xB4AC7D0CF06BFE8F"
	jhash (0x5A949543)
	arguments {
		float "posX",
		float "posY",
		float "posZ",
	}
	ns "PED"
	returns "Ped"
	doc [[!
<summary>
```
vb.net  
Dim ped_handle As Integer  
                    With Game.Player.Character  
                        Dim pos As Vector3 = .Position + .ForwardVector * 3  
                        ped_handle = Native.Function.Call(Of Integer)(Hash.CREATE_RANDOM_PED, pos.X, pos.Y, pos.Z)  
                    End With  
Creates a Ped at the specified location, returns the Ped Handle.    
Ped will not act until SET_PED_AS_NO_LONGER_NEEDED is called.  
```
</summary>
	]]

native "CREATE_SYNCHRONIZED_SCENE"
    hash "0x8C18E0F9080ADD73"
	jhash (0xFFDDF8FA)
	arguments {
		float "x",
		float "y",
		float "z",
		float "roll",
		float "pitch",
		float "yaw",
		int "p6",
	}
	ns "PED"
	returns "int"
	doc [[!
<summary>
```
p6 always 2 (but it doesnt seem to matter...)  
roll and pitch 0  
yaw to Ped.rotation  
```
</summary>
	]]

native "CREATE_RANDOM_PED_AS_DRIVER"
    hash "0x9B62392B474F44A0"
	jhash (0xB927CE9A)
	arguments {
		Vehicle "vehicle",
		BOOL "returnHandle",
	}
	ns "PED"
	returns "Ped"
	doc [[!
	]]

native "_CREATE_SYNCHRONIZED_SCENE_2"
    hash "0x62EC273D00187DCA"
	jhash (0xF3876894)
	arguments {
		float "x",
		float "y",
		float "z",
		float "radius",
		Hash "object",
	}
	alias "0x62EC273D00187DCA"
	ns "PED"
	returns "int"
	doc [[!
	]]

native "DETACH_SYNCHRONIZED_SCENE"
    hash "0x6D38F1F04CBB37EA"
	jhash (0x52A1CAB2)
	arguments {
		int "sceneID",
	}
	ns "PED"
	returns "void"
	doc [[!
	]]

native "DELETE_PED"
    hash "0x9614299DCB53E54B"
	jhash (0x13EFB9A0)
	arguments {
		PedPtr "ped",
	}
	ns "PED"
	returns "void"
	doc [[!
<summary>
```
Deletes the specified ped, then sets the handle pointed to by the pointer to NULL.  
```
</summary>
	]]

native "DOES_GROUP_EXIST"
    hash "0x7C6B0C22F9F40BBE"
	jhash (0x935C978D)
	arguments {
		int "groupId",
	}
	ns "PED"
	returns "BOOL"
	doc [[!
	]]

native "_DISPOSE_SYNCHRONIZED_SCENE"
    hash "0xCD9CC7E200A52A6F"
	jhash (0xBF7F9035)
	arguments {
		int "scene",
	}
	alias "0xCD9CC7E200A52A6F"
	ns "PED"
	returns "void"
	doc [[!
	]]

native "FORCE_PED_MOTION_STATE"
    hash "0xF28965D04F570DCA"
	jhash (0x164DDEFF)
	arguments {
		Ped "ped",
		Hash "motionStateHash",
		BOOL "p2",
		BOOL "p3",
		BOOL "p4",
	}
	ns "PED"
	returns "BOOL"
	doc [[!
<summary>
```
Some motionstate hashes are  
0xec17e58 (standing idle), 0xbac0f10b (nothing?), 0x3f67c6af (aiming with pistol 2-h), 0x422d7a25 (stealth), 0xbd8817db, 0x916e828c  
and those for the strings  
"motionstate_idle", "motionstate_walk", "motionstate_run", "motionstate_actionmode_idle", and "motionstate_actionmode_walk".  
Regarding p2, p3 and p4: Most common is 0, 0, 0); followed by 0, 1, 0); and 1, 1, 0); in the scripts. p4 is very rarely something other than 0.  
 [31/03/2017] ins1de :  
        enum MotionState  
        {  
            StopRunning = -530524,  
            StopWalking = -668482597,  
            Idle = 247561816, // 1, 1, 0  
            Idl2 = -1871534317,  
            SkyDive =-1161760501, // 0, 1, 0  
            Stealth = 1110276645,  
            Sprint = -1115154469,  
            Swim = -1855028596,  
            Unknown1 = 1063765679,  
            Unknown2 = -633298724,  
        }  
```
</summary>
	]]

native "EXPLODE_PED_HEAD"
    hash "0x2D05CED3A38D0F3A"
	jhash (0x05CC1380)
	arguments {
		Ped "ped",
		Hash "weaponHash",
	}
	ns "PED"
	returns "void"
	doc [[!
<summary>
```
Forces the ped to fall back and kills it.  
It doesn't really explode the ped's head but it kills the ped  
```
</summary>
	]]

native "FORCE_PED_TO_OPEN_PARACHUTE"
    hash "0x16E42E800B472221"
	jhash (0xA819680B)
	arguments {
		Ped "ped",
	}
	ns "PED"
	returns "void"
	doc [[!
	]]

native "_FREEZE_PED_CAMERA_ROTATION"
    hash "0xFF287323B0E2C69A"
	jhash (0x290421BE)
	arguments {
		Ped "ped",
	}
	alias "0xFF287323B0E2C69A"
	ns "PED"
	returns "void"
	doc [[!
	]]

native "GET_ANIM_INITIAL_OFFSET_POSITION"
    hash "0xBE22B26DD764C040"
	jhash (0xC59D4268)
	arguments {
		charPtr "animDict",
		charPtr "animName",
		float "x",
		float "y",
		float "z",
		float "xRot",
		float "yRot",
		float "zRot",
		float "p8",
		int "p9",
	}
	ns "PED"
	returns "Vector3"
	doc [[!
<summary>
```
Animations list : www.los-santos-multiplayer.com/dev.airdancer?cxt=anim  
```
</summary>
	]]

native "GET_ANIM_INITIAL_OFFSET_ROTATION"
    hash "0x4B805E6046EE9E47"
	jhash (0x5F7789E6)
	arguments {
		charPtr "animDict",
		charPtr "animName",
		float "x",
		float "y",
		float "z",
		float "xRot",
		float "yRot",
		float "zRot",
		float "p8",
		int "p9",
	}
	ns "PED"
	returns "Vector3"
	doc [[!
<summary>
```
Animations list : www.los-santos-multiplayer.com/dev.airdancer?cxt=anim  
```
</summary>
	]]

native "GET_CLOSEST_PED"
    hash "0xC33AB876A77F8164"
	jhash (0x8F6C1F55)
	arguments {
		float "x",
		float "y",
		float "z",
		float "radius",
		BOOL "p4",
		BOOL "p5",
		PedPtr "outPed",
		BOOL "p7",
		BOOL "p8",
		int "pedType",
	}
	ns "PED"
	returns "BOOL"
	doc [[!
<summary>
```
Gets the closest ped in a radius.  
Ped Types:  
Any ped = -1  
Player = 1  
Male = 4   
Female = 5   
Cop = 6  
Human = 26  
SWAT = 27   
Animal = 28  
Army = 29  
------------------  
P4 P5 P7 P8  
1  0  x  x  = return nearest walking Ped  
1  x  0  x  = return nearest walking Ped  
x  1  1  x  = return Ped you are using  
0  0  x  x  = no effect  
0  x  0  x  = no effect  
x = can be 1 or 0. Does not have any obvious changes.  
This function does not return ped who is:  
1. Standing still  
2. Driving  
3. Fleeing  
4. Attacking  
This function only work if the ped is:  
1. walking normally.  
2. waiting to cross a road.  
Note: PED::GET_PED_NEARBY_PEDS works for more peds.  
```
</summary>
	]]

native "GET_COMBAT_FLOAT"
    hash "0x52DFF8A10508090A"
	jhash (0x511D7EF8)
	arguments {
		Ped "ped",
		int "p1",
	}
	ns "PED"
	returns "float"
	doc [[!
<summary>
```
p0: Ped Handle  
p1: int i | 0 <= i <= 27  
p1 probably refers to the attributes configured in combatbehavior.meta. There are 13. Example:  
<BlindFireChance value="0.1"/>  
<WeaponShootRateModifier value="1.0"/>  
<TimeBetweenBurstsInCover value="1.25"/>  
<BurstDurationInCover value="2.0"/>  
<TimeBetweenPeeks value="10.0"/>  
<WeaponAccuracy value="0.18"/>  
<FightProficiency value="0.8"/>  
<StrafeWhenMovingChance value="1.0"/>  
<WalkWhenStrafingChance value="0.0"/>  
<AttackWindowDistanceForCover value="55.0"/>  
<TimeToInvalidateInjuredTarget value="9.0"/>  
<TriggerChargeTime_Near value="4.0"/>  
<TriggerChargeTime_Far value="10.0"/>  
-------------Confirmed by editing combatbehavior.meta:  
p1:  
0=BlindFireChance  
1=BurstDurationInCover  
3=TimeBetweenBurstsInCover  
4=TimeBetweenPeeks  
5=StrafeWhenMovingChance  
8=WalkWhenStrafingChance  
11=AttackWindowDistanceForCover  
12=TimeToInvalidateInjuredTarget  
16=OptimalCoverDistance  
```
</summary>
	]]

native "GET_DEAD_PED_PICKUP_COORDS"
    hash "0xCD5003B097200F36"
	jhash (0x129F9DC1)
	arguments {
		Ped "ped",
		float "p1",
		float "p2",
	}
	ns "PED"
	returns "Vector3"
	doc [[!
	]]

native "_GET_FIRST_PARENT_ID_FOR_PED_TYPE"
    hash "0x68D353AB88B97E0C"
	jhash (0x211DEFEC)
	arguments {
		int "type",
	}
	ns "PED"
	returns "int"
	doc [[!
<summary>
```
Type equals 0 for male non-dlc, 1 for female non-dlc, 2 for male dlc, and 3 for female dlc.  
Used when calling SET_PED_HEAD_BLEND_DATA.  
```
</summary>
	]]

native "_GET_HAIR_RGB_COLOR"
    hash "0x4852FC386E2E1BB5"
	arguments {
		int "hairColorIndex",
		intPtr "outR",
		intPtr "outG",
		intPtr "outB",
	}
	alias "0x4852FC386E2E1BB5"
	ns "PED"
	returns "void"
	doc [[!
<summary>
Input: Haircolor index, value between 0 and 63 (inclusive).
Output: RGB values for the haircolor specified in the input.

This is used with the hair color swatches scaleform.

Use [`_0x013E5CFC38CD5387`](#_0x013E5CFC38CD5387) to get the makeup colors.
</summary>
<param name="hairColorIndex">The hair color index. Value between 0-63 (inclusive).</param>
<param name="outR">Output red value.</param>
<param name="outG">Output green value.</param>
<param name="outB">Output blue value.</param>
	]]

native "GET_GROUP_SIZE"
    hash "0x8DE69FE35CA09A45"
	jhash (0xF7E1A691)
	arguments {
		int "groupID",
		AnyPtr "unknown",
		intPtr "sizeInMembers",
	}
	ns "PED"
	returns "void"
	doc [[!
<summary>
```
p1 may be a BOOL representing whether or not the group even exists  
```
</summary>
	]]

native "GET_JACK_TARGET"
    hash "0x5486A79D9FBD342D"
	jhash (0x1D196361)
	arguments {
		Ped "ped",
	}
	ns "PED"
	returns "Ped"
	doc [[!
	]]

native "_GET_MAKEUP_RGB_COLOR"
    hash "0x013E5CFC38CD5387"
	arguments {
		int "makeupColorIndex",
		intPtr "outR",
		intPtr "outG",
		intPtr "outB",
	}
	alias "0x013E5CFC38CD5387"
	ns "PED"
	returns "void"
	doc [[!
<summary>
Input: Makeup color index, value between 0 and 63 (inclusive).
Output: RGB values for the makeup color specified in the input.

This is used with the makeup color swatches scaleform.

Use [`_0x4852FC386E2E1BB5`](#_0x4852FC386E2E1BB5) to get the hair colors.
</summary>
<param name="makeupColorIndex">The hair color index. Value between 0-63 (inclusive).</param>
<param name="outR">Output red value.</param>
<param name="outG">Output green value.</param>
<param name="outB">Output blue value.</param>
	]]

native "GET_MELEE_TARGET_FOR_PED"
    hash "0x18A3E9EE1297FD39"
	jhash (0xAFEC26A4)
	arguments {
		Ped "ped",
	}
	ns "PED"
	returns "Ped"
	doc [[!
	]]

native "GET_MOUNT"
    hash "0xE7E11B8DCBED1058"
	jhash (0xDD31EC4E)
	arguments {
		Ped "ped",
	}
	ns "PED"
	returns "Ped"
	doc [[!
<summary>
```
Function just returns 0  
void __fastcall ped__get_mount(NativeContext *a1)  
{  
