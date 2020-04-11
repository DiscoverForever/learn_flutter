import 'package:learn_flutter/generated/json/base/json_convert_content.dart';

class SettingsResponseEntity with JsonConvert<SettingsResponseEntity> {
	int code;
	List<SettingsResponseFloor> floors;
	SettingsResponseOthers others;
}

class SettingsResponseFloor with JsonConvert<SettingsResponseFloor> {
	String bId;
	SettingsResponseFloorsCf cf;
	SettingsResponseFloorsData data;
	String mId;
	String refId;
	int sortId;
}

class SettingsResponseFloorsCf with JsonConvert<SettingsResponseFloorsCf> {
	String bgc;
	String spl;
}

class SettingsResponseFloorsData with JsonConvert<SettingsResponseFloorsData> {
	List<SettingsResponseFloorsDataNode> nodes;
	String angleStyle;
}

class SettingsResponseFloorsDataNode with JsonConvert<SettingsResponseFloorsDataNode> {
	int jumpStyle;
	String userInfoSns;
	SettingsResponseFloorsDataNodesJumpInfo jumpInfo;
	SettingsResponseFloorsDataNodesTitle title;
	SettingsResponseFloorsDataNodesClickMta clickMta;
	int updateRedDotTime;
	SettingsResponseFloorsDataNodesSubtitle subtitle;
	int showRedDot;
	String functionId;
	SettingsResponseFloorsDataNodesExpoMta expoMta;
}

class SettingsResponseFloorsDataNodesJumpInfo with JsonConvert<SettingsResponseFloorsDataNodesJumpInfo> {
	int jumpType;
	String jumpUrl;
	int needLogin;
}

class SettingsResponseFloorsDataNodesTitle with JsonConvert<SettingsResponseFloorsDataNodesTitle> {
	String color;
	String value;
}

class SettingsResponseFloorsDataNodesClickMta with JsonConvert<SettingsResponseFloorsDataNodesClickMta> {
	String eventParam;
	String eventId;
	String pageId;
	String pageLevel;
}

class SettingsResponseFloorsDataNodesSubtitle with JsonConvert<SettingsResponseFloorsDataNodesSubtitle> {
	String color;
	String value;
}

class SettingsResponseFloorsDataNodesExpoMta with JsonConvert<SettingsResponseFloorsDataNodesExpoMta> {
	String eventParam;
	String eventId;
	String pageId;
}

class SettingsResponseOthers with JsonConvert<SettingsResponseOthers> {

}
