import 'package:learn_flutter/bean/settings/settings_response_entity.dart';

settingsResponseEntityFromJson(SettingsResponseEntity data, Map<String, dynamic> json) {
	if (json['code'] != null) {
		data.code = json['code']?.toInt();
	}
	if (json['floors'] != null) {
		data.floors = new List<SettingsResponseFloor>();
		(json['floors'] as List).forEach((v) {
			data.floors.add(new SettingsResponseFloor().fromJson(v));
		});
	}
	if (json['others'] != null) {
		data.others = new SettingsResponseOthers().fromJson(json['others']);
	}
	return data;
}

Map<String, dynamic> settingsResponseEntityToJson(SettingsResponseEntity entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['code'] = entity.code;
	if (entity.floors != null) {
		data['floors'] =  entity.floors.map((v) => v.toJson()).toList();
	}
	if (entity.others != null) {
		data['others'] = entity.others.toJson();
	}
	return data;
}

settingsResponseFloorFromJson(SettingsResponseFloor data, Map<String, dynamic> json) {
	if (json['bId'] != null) {
		data.bId = json['bId']?.toString();
	}
	if (json['cf'] != null) {
		data.cf = new SettingsResponseFloorsCf().fromJson(json['cf']);
	}
	if (json['data'] != null) {
		data.data = new SettingsResponseFloorsData().fromJson(json['data']);
	}
	if (json['mId'] != null) {
		data.mId = json['mId']?.toString();
	}
	if (json['refId'] != null) {
		data.refId = json['refId']?.toString();
	}
	if (json['sortId'] != null) {
		data.sortId = json['sortId']?.toInt();
	}
	return data;
}

Map<String, dynamic> settingsResponseFloorToJson(SettingsResponseFloor entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['bId'] = entity.bId;
	if (entity.cf != null) {
		data['cf'] = entity.cf.toJson();
	}
	if (entity.data != null) {
		data['data'] = entity.data.toJson();
	}
	data['mId'] = entity.mId;
	data['refId'] = entity.refId;
	data['sortId'] = entity.sortId;
	return data;
}

settingsResponseFloorsCfFromJson(SettingsResponseFloorsCf data, Map<String, dynamic> json) {
	if (json['bgc'] != null) {
		data.bgc = json['bgc']?.toString();
	}
	if (json['spl'] != null) {
		data.spl = json['spl']?.toString();
	}
	return data;
}

Map<String, dynamic> settingsResponseFloorsCfToJson(SettingsResponseFloorsCf entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['bgc'] = entity.bgc;
	data['spl'] = entity.spl;
	return data;
}

settingsResponseFloorsDataFromJson(SettingsResponseFloorsData data, Map<String, dynamic> json) {
	if (json['nodes'] != null) {
		data.nodes = new List<SettingsResponseFloorsDataNode>();
		(json['nodes'] as List).forEach((v) {
			data.nodes.add(new SettingsResponseFloorsDataNode().fromJson(v));
		});
	}
	if (json['angleStyle'] != null) {
		data.angleStyle = json['angleStyle']?.toString();
	}
	return data;
}

Map<String, dynamic> settingsResponseFloorsDataToJson(SettingsResponseFloorsData entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	if (entity.nodes != null) {
		data['nodes'] =  entity.nodes.map((v) => v.toJson()).toList();
	}
	data['angleStyle'] = entity.angleStyle;
	return data;
}

settingsResponseFloorsDataNodeFromJson(SettingsResponseFloorsDataNode data, Map<String, dynamic> json) {
	if (json['jumpStyle'] != null) {
		data.jumpStyle = json['jumpStyle']?.toInt();
	}
	if (json['userInfoSns'] != null) {
		data.userInfoSns = json['userInfoSns']?.toString();
	}
	if (json['jumpInfo'] != null) {
		data.jumpInfo = new SettingsResponseFloorsDataNodesJumpInfo().fromJson(json['jumpInfo']);
	}
	if (json['title'] != null) {
		data.title = new SettingsResponseFloorsDataNodesTitle().fromJson(json['title']);
	}
	if (json['clickMta'] != null) {
		data.clickMta = new SettingsResponseFloorsDataNodesClickMta().fromJson(json['clickMta']);
	}
	if (json['updateRedDotTime'] != null) {
		data.updateRedDotTime = json['updateRedDotTime']?.toInt();
	}
	if (json['subtitle'] != null) {
		data.subtitle = new SettingsResponseFloorsDataNodesSubtitle().fromJson(json['subtitle']);
	}
	if (json['showRedDot'] != null) {
		data.showRedDot = json['showRedDot']?.toInt();
	}
	if (json['functionId'] != null) {
		data.functionId = json['functionId']?.toString();
	}
	if (json['expoMta'] != null) {
		data.expoMta = new SettingsResponseFloorsDataNodesExpoMta().fromJson(json['expoMta']);
	}
	return data;
}

Map<String, dynamic> settingsResponseFloorsDataNodeToJson(SettingsResponseFloorsDataNode entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['jumpStyle'] = entity.jumpStyle;
	data['userInfoSns'] = entity.userInfoSns;
	if (entity.jumpInfo != null) {
		data['jumpInfo'] = entity.jumpInfo.toJson();
	}
	if (entity.title != null) {
		data['title'] = entity.title.toJson();
	}
	if (entity.clickMta != null) {
		data['clickMta'] = entity.clickMta.toJson();
	}
	data['updateRedDotTime'] = entity.updateRedDotTime;
	if (entity.subtitle != null) {
		data['subtitle'] = entity.subtitle.toJson();
	}
	data['showRedDot'] = entity.showRedDot;
	data['functionId'] = entity.functionId;
	if (entity.expoMta != null) {
		data['expoMta'] = entity.expoMta.toJson();
	}
	return data;
}

settingsResponseFloorsDataNodesJumpInfoFromJson(SettingsResponseFloorsDataNodesJumpInfo data, Map<String, dynamic> json) {
	if (json['jumpType'] != null) {
		data.jumpType = json['jumpType']?.toInt();
	}
	if (json['jumpUrl'] != null) {
		data.jumpUrl = json['jumpUrl']?.toString();
	}
	if (json['needLogin'] != null) {
		data.needLogin = json['needLogin']?.toInt();
	}
	return data;
}

Map<String, dynamic> settingsResponseFloorsDataNodesJumpInfoToJson(SettingsResponseFloorsDataNodesJumpInfo entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['jumpType'] = entity.jumpType;
	data['jumpUrl'] = entity.jumpUrl;
	data['needLogin'] = entity.needLogin;
	return data;
}

settingsResponseFloorsDataNodesTitleFromJson(SettingsResponseFloorsDataNodesTitle data, Map<String, dynamic> json) {
	if (json['color'] != null) {
		data.color = json['color']?.toString();
	}
	if (json['value'] != null) {
		data.value = json['value']?.toString();
	}
	return data;
}

Map<String, dynamic> settingsResponseFloorsDataNodesTitleToJson(SettingsResponseFloorsDataNodesTitle entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['color'] = entity.color;
	data['value'] = entity.value;
	return data;
}

settingsResponseFloorsDataNodesClickMtaFromJson(SettingsResponseFloorsDataNodesClickMta data, Map<String, dynamic> json) {
	if (json['eventParam'] != null) {
		data.eventParam = json['eventParam']?.toString();
	}
	if (json['eventId'] != null) {
		data.eventId = json['eventId']?.toString();
	}
	if (json['pageId'] != null) {
		data.pageId = json['pageId']?.toString();
	}
	if (json['pageLevel'] != null) {
		data.pageLevel = json['pageLevel']?.toString();
	}
	return data;
}

Map<String, dynamic> settingsResponseFloorsDataNodesClickMtaToJson(SettingsResponseFloorsDataNodesClickMta entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['eventParam'] = entity.eventParam;
	data['eventId'] = entity.eventId;
	data['pageId'] = entity.pageId;
	data['pageLevel'] = entity.pageLevel;
	return data;
}

settingsResponseFloorsDataNodesSubtitleFromJson(SettingsResponseFloorsDataNodesSubtitle data, Map<String, dynamic> json) {
	if (json['color'] != null) {
		data.color = json['color']?.toString();
	}
	if (json['value'] != null) {
		data.value = json['value']?.toString();
	}
	return data;
}

Map<String, dynamic> settingsResponseFloorsDataNodesSubtitleToJson(SettingsResponseFloorsDataNodesSubtitle entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['color'] = entity.color;
	data['value'] = entity.value;
	return data;
}

settingsResponseFloorsDataNodesExpoMtaFromJson(SettingsResponseFloorsDataNodesExpoMta data, Map<String, dynamic> json) {
	if (json['eventParam'] != null) {
		data.eventParam = json['eventParam']?.toString();
	}
	if (json['eventId'] != null) {
		data.eventId = json['eventId']?.toString();
	}
	if (json['pageId'] != null) {
		data.pageId = json['pageId']?.toString();
	}
	return data;
}

Map<String, dynamic> settingsResponseFloorsDataNodesExpoMtaToJson(SettingsResponseFloorsDataNodesExpoMta entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['eventParam'] = entity.eventParam;
	data['eventId'] = entity.eventId;
	data['pageId'] = entity.pageId;
	return data;
}

settingsResponseOthersFromJson(SettingsResponseOthers data, Map<String, dynamic> json) {
	return data;
}

Map<String, dynamic> settingsResponseOthersToJson(SettingsResponseOthers entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	return data;
}