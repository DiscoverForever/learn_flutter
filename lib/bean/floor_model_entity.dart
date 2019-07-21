class FloorModelEntity {
	FloorModelResult result;
	String code;

	FloorModelEntity({this.result, this.code});

	FloorModelEntity.fromJson(Map<String, dynamic> json) {
		result = json['result'] != null ? new FloorModelResult.fromJson(json['result']) : null;
		code = json['code'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		if (this.result != null) {
      data['result'] = this.result.toJson();
    }
		data['code'] = this.code;
		return data;
	}
}

class FloorModelResult {
	int showShadow;
	String showName;
	String bgColor;
	int bottomMargin;
	String bottomMarginColor;
	int isNewStyle;
	String type;
	FloorModelResultContent content;
	int showLines;
	int marginTop;

	FloorModelResult({this.showShadow, this.showName, this.bgColor, this.bottomMargin, this.bottomMarginColor, this.isNewStyle, this.type, this.content, this.showLines, this.marginTop});

	FloorModelResult.fromJson(Map<String, dynamic> json) {
		showShadow = json['showShadow'];
		showName = json['showName'];
		bgColor = json['bgColor'];
		bottomMargin = json['bottomMargin'];
		bottomMarginColor = json['bottomMarginColor'];
		isNewStyle = json['isNewStyle'];
		type = json['type'];
		content = json['content'] != null ? new FloorModelResultContent.fromJson(json['content']) : null;
		showLines = json['showLines'];
		marginTop = json['marginTop'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['showShadow'] = this.showShadow;
		data['showName'] = this.showName;
		data['bgColor'] = this.bgColor;
		data['bottomMargin'] = this.bottomMargin;
		data['bottomMarginColor'] = this.bottomMarginColor;
		data['isNewStyle'] = this.isNewStyle;
		data['type'] = this.type;
		if (this.content != null) {
      data['content'] = this.content.toJson();
    }
		data['showLines'] = this.showLines;
		data['marginTop'] = this.marginTop;
		return data;
	}
}

class FloorModelResultContent {
	String bgPic;
	int notification;
	List<FloorModelResultContentData> data;
	int involveSkin;
	int lightColorSwitch;
	int time;
	int ynSpace;
	String fontColor;

	FloorModelResultContent({this.bgPic, this.notification, this.data, this.involveSkin, this.lightColorSwitch, this.time, this.ynSpace, this.fontColor});

	FloorModelResultContent.fromJson(Map<String, dynamic> json) {
		bgPic = json['bgPic'];
		notification = json['notification'];
		if (json['data'] != null) {
			data = new List<FloorModelResultContentData>();(json['data'] as List).forEach((v) { data.add(new FloorModelResultContentData.fromJson(v)); });
		}
		involveSkin = json['involveSkin'];
		lightColorSwitch = json['lightColorSwitch'];
		time = json['time'];
		ynSpace = json['ynSpace'];
		fontColor = json['fontColor'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['bgPic'] = this.bgPic;
		data['notification'] = this.notification;
		if (this.data != null) {
      data['data'] =  this.data.map((v) => v.toJson()).toList();
    }
		data['involveSkin'] = this.involveSkin;
		data['lightColorSwitch'] = this.lightColorSwitch;
		data['time'] = this.time;
		data['ynSpace'] = this.ynSpace;
		data['fontColor'] = this.fontColor;
		return data;
	}
}

class FloorModelResultContentData {
	String icon;
	String name;
	int id;
	String isSub;
	int channelId;
	int order;
	FloorModelResultContentDataJump jump;

	FloorModelResultContentData({this.icon, this.name, this.id, this.isSub, this.channelId, this.order, this.jump});

	FloorModelResultContentData.fromJson(Map<String, dynamic> json) {
		icon = json['icon'];
		name = json['name'];
		id = json['id'];
		isSub = json['isSub'];
		channelId = json['channelId'];
		order = json['order'];
		jump = json['jump'] != null ? new FloorModelResultContentDataJump.fromJson(json['jump']) : null;
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['icon'] = this.icon;
		data['name'] = this.name;
		data['id'] = this.id;
		data['isSub'] = this.isSub;
		data['channelId'] = this.channelId;
		data['order'] = this.order;
		if (this.jump != null) {
      data['jump'] = this.jump.toJson();
    }
		return data;
	}
}

class FloorModelResultContentDataJump {
	String des;
	String srv;
	FloorModelResultContentDataJumpParams params;

	FloorModelResultContentDataJump({this.des, this.srv, this.params});

	FloorModelResultContentDataJump.fromJson(Map<String, dynamic> json) {
		des = json['des'];
		srv = json['srv'];
		params = json['params'] != null ? new FloorModelResultContentDataJumpParams.fromJson(json['params']) : null;
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['des'] = this.des;
		data['srv'] = this.srv;
		if (this.params != null) {
      data['params'] = this.params.toJson();
    }
		return data;
	}
}

class FloorModelResultContentDataJumpParams {
	String needLogin;
	String url;

	FloorModelResultContentDataJumpParams({this.needLogin, this.url});

	FloorModelResultContentDataJumpParams.fromJson(Map<String, dynamic> json) {
		needLogin = json['needLogin'];
		url = json['url'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['needLogin'] = this.needLogin;
		data['url'] = this.url;
		return data;
	}
}
