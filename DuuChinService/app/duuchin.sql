
-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `coverPictureUrl` varchar(255) DEFAULT '' COMMENT '',
  `nickname` varchar(40) DEFAULT '' COMMENT '',
  `type`varchar(32) DEFAULT 'NORMAL_USER' COMMENT '角色 NORMAL_USER DQ_SINGER DQ_OFFICIAL_ACCOUNT',
  `musicCount` int(10) DEFAULT 0 COMMENT '',
  `musicPlayCount` int(10) DEFAULT 0 COMMENT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT='用户表';

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'https://wx.qlogo.cn/mmhead/bmBPCMraoKGLgywcNIDAVM4l0IoECLyqNlSheZYfpkY/132', 'xbss', 'DQ_OFFICIAL_ACCOUNT', 0, 0);
INSERT INTO `user` VALUES ('2', 'https://wx.qlogo.cn/mmhead/sfYdEibamQEd7nQgAWfcFWunW36icr23gzAdXAh0UmEvo/132', '超甜的布丁', 'DQ_SINGER', 30, 567);
INSERT INTO `user` VALUES ('3', 'https://wx.qlogo.cn/mmhead/gBSelbQM7M19TeazvLwo3f8znKS8KR1CuibicFHc1GTWI/132', '暮色上浓妆', 'DQ_SINGER', 47, 2346);
INSERT INTO `user` VALUES ('4', 'https://thirdwx.qlogo.cn/mmhead/Izdzuf4uOPicNHHV7hUMlibFVv79ZKARBTIzLTXoS8uYg/132', '独留清风醉', 'NORMAL_USER', 0, 0);
INSERT INTO `user` VALUES ('5', 'https://wx.qlogo.cn/mmhead/S4hqPXo1jhJXO93CrSnZwwEpGy5SErdSsibJyM2gib9vk/132', '嘴角的樱桃汁', 'NORMAL_USER', 0, 0);

-- ----------------------------
-- Table structure for song
-- ----------------------------
DROP TABLE IF EXISTS `song`;
CREATE TABLE `song` (
    `id` int(10) NOT NULL AUTO_INCREMENT,
    `userId` int(10) DEFAULT NULL COMMENT '',
    `coverPictureUrl` varchar(255) DEFAULT '' COMMENT '',
    `songUrl` varchar(255) DEFAULT '' COMMENT '',
    `cnName` varchar(64) DEFAULT '' COMMENT '',
    `enName` varchar(64) DEFAULT '' COMMENT '',
    `commentCount` int(10) DEFAULT 0 COMMENT '',
    `thumbUpCount` int(10) DEFAULT 0 COMMENT '',
    `readCount` int(10) DEFAULT 0 COMMENT '',
    PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT='歌曲表';

-- ----------------------------
-- Records of song
-- ----------------------------
INSERT INTO `song` VALUES ('1', '2', 'http://cdn.duuchin.com/%E8%8A%B3%E8%8D%89%E6%83%85%E6%80%9D%E5%BC%A6%E4%B8%8A%E7%95%99_1607846669603.jpg', 'http://cdn.duuchin.com/3_1607846673982.%E8%B5%B5%E7%AB%8B%E6%A2%85%E2%80%94%E8%92%99%E8%92%99%E7%BB%86%E9%9B%A8.mp3','蒙蒙细雨', 'Zuser boroon', '23', '45', '1234');
INSERT INTO `song` VALUES ('2', '2', 'http://cdn.duuchin.com/%E8%8A%B3%E8%8D%89%E6%83%85%E6%80%9D%E5%BC%A6%E4%B8%8A%E7%95%99_1607846669603.jpg', 'http://cdn.duuchin.com/3_1607846673982.%E8%B5%B5%E7%AB%8B%E6%A2%85%E2%80%94%E8%92%99%E8%92%99%E7%BB%86%E9%9B%A8.mp3','蒙蒙细雨', 'Zuser boroon', '23', '45', '1234');
INSERT INTO `song` VALUES ('3', '3', 'http://cdn.duuchin.com/%E8%8A%B3%E8%8D%89%E6%83%85%E6%80%9D%E5%BC%A6%E4%B8%8A%E7%95%99_1607846669603.jpg', 'http://cdn.duuchin.com/3_1607846673982.%E8%B5%B5%E7%AB%8B%E6%A2%85%E2%80%94%E8%92%99%E8%92%99%E7%BB%86%E9%9B%A8.mp3','蒙蒙细雨', 'Zuser boroon', '23', '45', '1234');
INSERT INTO `song` VALUES ('4', '2', 'http://cdn.duuchin.com/%E8%8A%B3%E8%8D%89%E6%83%85%E6%80%9D%E5%BC%A6%E4%B8%8A%E7%95%99_1607846669603.jpg', 'http://cdn.duuchin.com/3_1607846673982.%E8%B5%B5%E7%AB%8B%E6%A2%85%E2%80%94%E8%92%99%E8%92%99%E7%BB%86%E9%9B%A8.mp3','蒙蒙细雨', 'Zuser boroon', '23', '45', '1234');
INSERT INTO `song` VALUES ('5', '3', 'http://cdn.duuchin.com/%E8%8A%B3%E8%8D%89%E6%83%85%E6%80%9D%E5%BC%A6%E4%B8%8A%E7%95%99_1607846669603.jpg', 'http://cdn.duuchin.com/3_1607846673982.%E8%B5%B5%E7%AB%8B%E6%A2%85%E2%80%94%E8%92%99%E8%92%99%E7%BB%86%E9%9B%A8.mp3','蒙蒙细雨', 'Zuser boroon', '23', '45', '1234');
INSERT INTO `song` VALUES ('6', '3', 'http://cdn.duuchin.com/%E8%8A%B3%E8%8D%89%E6%83%85%E6%80%9D%E5%BC%A6%E4%B8%8A%E7%95%99_1607846669603.jpg', 'http://cdn.duuchin.com/3_1607846673982.%E8%B5%B5%E7%AB%8B%E6%A2%85%E2%80%94%E8%92%99%E8%92%99%E7%BB%86%E9%9B%A8.mp3','蒙蒙细雨', 'Zuser boroon', '23', '45', '1234');
INSERT INTO `song` VALUES ('7', '2', 'http://cdn.duuchin.com/%E8%8A%B3%E8%8D%89%E6%83%85%E6%80%9D%E5%BC%A6%E4%B8%8A%E7%95%99_1607846669603.jpg', 'http://cdn.duuchin.com/3_1607846673982.%E8%B5%B5%E7%AB%8B%E6%A2%85%E2%80%94%E8%92%99%E8%92%99%E7%BB%86%E9%9B%A8.mp3','蒙蒙细雨', 'Zuser boroon', '23', '45', '1234');
INSERT INTO `song` VALUES ('8', '2', 'http://cdn.duuchin.com/%E8%8A%B3%E8%8D%89%E6%83%85%E6%80%9D%E5%BC%A6%E4%B8%8A%E7%95%99_1607846669603.jpg', 'http://cdn.duuchin.com/3_1607846673982.%E8%B5%B5%E7%AB%8B%E6%A2%85%E2%80%94%E8%92%99%E8%92%99%E7%BB%86%E9%9B%A8.mp3','蒙蒙细雨', 'Zuser boroon', '23', '45', '1234');
INSERT INTO `song` VALUES ('9', '3', 'http://cdn.duuchin.com/%E8%8A%B3%E8%8D%89%E6%83%85%E6%80%9D%E5%BC%A6%E4%B8%8A%E7%95%99_1607846669603.jpg', 'http://cdn.duuchin.com/3_1607846673982.%E8%B5%B5%E7%AB%8B%E6%A2%85%E2%80%94%E8%92%99%E8%92%99%E7%BB%86%E9%9B%A8.mp3','蒙蒙细雨', 'Zuser boroon', '23', '45', '1234');
INSERT INTO `song` VALUES ('10', '2', 'http://cdn.duuchin.com/%E8%8A%B3%E8%8D%89%E6%83%85%E6%80%9D%E5%BC%A6%E4%B8%8A%E7%95%99_1607846669603.jpg', 'http://cdn.duuchin.com/3_1607846673982.%E8%B5%B5%E7%AB%8B%E6%A2%85%E2%80%94%E8%92%99%E8%92%99%E7%BB%86%E9%9B%A8.mp3','蒙蒙细雨', 'Zuser boroon', '23', '45', '1234');
INSERT INTO `song` VALUES ('11', '3', 'http://cdn.duuchin.com/%E8%8A%B3%E8%8D%89%E6%83%85%E6%80%9D%E5%BC%A6%E4%B8%8A%E7%95%99_1607846669603.jpg', 'http://cdn.duuchin.com/3_1607846673982.%E8%B5%B5%E7%AB%8B%E6%A2%85%E2%80%94%E8%92%99%E8%92%99%E7%BB%86%E9%9B%A8.mp3','蒙蒙细雨', 'Zuser boroon', '23', '45', '1234');
INSERT INTO `song` VALUES ('12', '3', 'http://cdn.duuchin.com/%E8%8A%B3%E8%8D%89%E6%83%85%E6%80%9D%E5%BC%A6%E4%B8%8A%E7%95%99_1607846669603.jpg', 'http://cdn.duuchin.com/3_1607846673982.%E8%B5%B5%E7%AB%8B%E6%A2%85%E2%80%94%E8%92%99%E8%92%99%E7%BB%86%E9%9B%A8.mp3','蒙蒙细雨', 'Zuser boroon', '23', '45', '1234');
INSERT INTO `song` VALUES ('13', '3', 'http://cdn.duuchin.com/%E8%8A%B3%E8%8D%89%E6%83%85%E6%80%9D%E5%BC%A6%E4%B8%8A%E7%95%99_1607846669603.jpg', 'http://cdn.duuchin.com/3_1607846673982.%E8%B5%B5%E7%AB%8B%E6%A2%85%E2%80%94%E8%92%99%E8%92%99%E7%BB%86%E9%9B%A8.mp3','蒙蒙细雨', 'Zuser boroon', '23', '45', '1234');
INSERT INTO `song` VALUES ('14', '2', 'http://cdn.duuchin.com/%E8%8A%B3%E8%8D%89%E6%83%85%E6%80%9D%E5%BC%A6%E4%B8%8A%E7%95%99_1607846669603.jpg', 'http://cdn.duuchin.com/3_1607846673982.%E8%B5%B5%E7%AB%8B%E6%A2%85%E2%80%94%E8%92%99%E8%92%99%E7%BB%86%E9%9B%A8.mp3','蒙蒙细雨', 'Zuser boroon', '23', '45', '1234');
INSERT INTO `song` VALUES ('15', '2', 'http://cdn.duuchin.com/%E8%8A%B3%E8%8D%89%E6%83%85%E6%80%9D%E5%BC%A6%E4%B8%8A%E7%95%99_1607846669603.jpg', 'http://cdn.duuchin.com/3_1607846673982.%E8%B5%B5%E7%AB%8B%E6%A2%85%E2%80%94%E8%92%99%E8%92%99%E7%BB%86%E9%9B%A8.mp3','蒙蒙细雨', 'Zuser boroon', '23', '45', '1234');
INSERT INTO `song` VALUES ('16', '2', 'http://cdn.duuchin.com/%E8%8A%B3%E8%8D%89%E6%83%85%E6%80%9D%E5%BC%A6%E4%B8%8A%E7%95%99_1607846669603.jpg', 'http://cdn.duuchin.com/3_1607846673982.%E8%B5%B5%E7%AB%8B%E6%A2%85%E2%80%94%E8%92%99%E8%92%99%E7%BB%86%E9%9B%A8.mp3','蒙蒙细雨', 'Zuser boroon', '23', '45', '1234');
INSERT INTO `song` VALUES ('17', '3', 'http://cdn.duuchin.com/%E8%8A%B3%E8%8D%89%E6%83%85%E6%80%9D%E5%BC%A6%E4%B8%8A%E7%95%99_1607846669603.jpg', 'http://cdn.duuchin.com/3_1607846673982.%E8%B5%B5%E7%AB%8B%E6%A2%85%E2%80%94%E8%92%99%E8%92%99%E7%BB%86%E9%9B%A8.mp3','蒙蒙细雨', 'Zuser boroon', '23', '45', '1234');
INSERT INTO `song` VALUES ('18', '2', 'http://cdn.duuchin.com/%E8%8A%B3%E8%8D%89%E6%83%85%E6%80%9D%E5%BC%A6%E4%B8%8A%E7%95%99_1607846669603.jpg', 'http://cdn.duuchin.com/3_1607846673982.%E8%B5%B5%E7%AB%8B%E6%A2%85%E2%80%94%E8%92%99%E8%92%99%E7%BB%86%E9%9B%A8.mp3','蒙蒙细雨', 'Zuser boroon', '23', '45', '1234');
INSERT INTO `song` VALUES ('19', '3', 'http://cdn.duuchin.com/%E8%8A%B3%E8%8D%89%E6%83%85%E6%80%9D%E5%BC%A6%E4%B8%8A%E7%95%99_1607846669603.jpg', 'http://cdn.duuchin.com/3_1607846673982.%E8%B5%B5%E7%AB%8B%E6%A2%85%E2%80%94%E8%92%99%E8%92%99%E7%BB%86%E9%9B%A8.mp3','蒙蒙细雨', 'Zuser boroon', '23', '45', '1234');
INSERT INTO `song` VALUES ('20', '3', 'http://cdn.duuchin.com/%E8%8A%B3%E8%8D%89%E6%83%85%E6%80%9D%E5%BC%A6%E4%B8%8A%E7%95%99_1607846669603.jpg', 'http://cdn.duuchin.com/3_1607846673982.%E8%B5%B5%E7%AB%8B%E6%A2%85%E2%80%94%E8%92%99%E8%92%99%E7%BB%86%E9%9B%A8.mp3','蒙蒙细雨', 'Zuser boroon', '23', '45', '1234');
INSERT INTO `song` VALUES ('21', '2', 'http://cdn.duuchin.com/1_1553073056837.jpg', 'http://cdn.duuchin.com/%E7%88%B6%E4%BA%B2%E7%9A%84%E8%8D%89%E5%8E%9F%E6%AF%8D%E4%BA%B2%E7%9A%84%E6%B2%B3_1553073059421.mp3', '父亲的草原母亲的河', 'Aaviin mini tal eejiin mini gool', '145', '4554', '1234123');
INSERT INTO `song` VALUES ('22', '3', 'http://cdn.duuchin.com/1_1553073056837.jpg', 'http://cdn.duuchin.com/%E7%88%B6%E4%BA%B2%E7%9A%84%E8%8D%89%E5%8E%9F%E6%AF%8D%E4%BA%B2%E7%9A%84%E6%B2%B3_1553073059421.mp3', '父亲的草原母亲的河', 'Aaviin mini tal eejiin mini gool', '145', '4554', '1234123');
INSERT INTO `song` VALUES ('23', '2', 'http://cdn.duuchin.com/1_1553073056837.jpg', 'http://cdn.duuchin.com/%E7%88%B6%E4%BA%B2%E7%9A%84%E8%8D%89%E5%8E%9F%E6%AF%8D%E4%BA%B2%E7%9A%84%E6%B2%B3_1553073059421.mp3', '父亲的草原母亲的河', 'Aaviin mini tal eejiin mini gool', '145', '4554', '1234123');
INSERT INTO `song` VALUES ('24', '3', 'http://cdn.duuchin.com/1_1553073056837.jpg', 'http://cdn.duuchin.com/%E7%88%B6%E4%BA%B2%E7%9A%84%E8%8D%89%E5%8E%9F%E6%AF%8D%E4%BA%B2%E7%9A%84%E6%B2%B3_1553073059421.mp3', '父亲的草原母亲的河', 'Aaviin mini tal eejiin mini gool', '145', '4554', '1234123');
INSERT INTO `song` VALUES ('25', '2', 'http://cdn.duuchin.com/1_1553073056837.jpg', 'http://cdn.duuchin.com/%E7%88%B6%E4%BA%B2%E7%9A%84%E8%8D%89%E5%8E%9F%E6%AF%8D%E4%BA%B2%E7%9A%84%E6%B2%B3_1553073059421.mp3', '父亲的草原母亲的河', 'Aaviin mini tal eejiin mini gool', '145', '4554', '1234123');
INSERT INTO `song` VALUES ('26', '3', 'http://cdn.duuchin.com/1_1553073056837.jpg', 'http://cdn.duuchin.com/%E7%88%B6%E4%BA%B2%E7%9A%84%E8%8D%89%E5%8E%9F%E6%AF%8D%E4%BA%B2%E7%9A%84%E6%B2%B3_1553073059421.mp3', '父亲的草原母亲的河', 'Aaviin mini tal eejiin mini gool', '145', '4554', '1234123');
INSERT INTO `song` VALUES ('27', '3', 'http://cdn.duuchin.com/1_1553073056837.jpg', 'http://cdn.duuchin.com/%E7%88%B6%E4%BA%B2%E7%9A%84%E8%8D%89%E5%8E%9F%E6%AF%8D%E4%BA%B2%E7%9A%84%E6%B2%B3_1553073059421.mp3', '父亲的草原母亲的河', 'Aaviin mini tal eejiin mini gool', '145', '4554', '1234123');
INSERT INTO `song` VALUES ('28', '2', 'http://cdn.duuchin.com/1_1553073056837.jpg', 'http://cdn.duuchin.com/%E7%88%B6%E4%BA%B2%E7%9A%84%E8%8D%89%E5%8E%9F%E6%AF%8D%E4%BA%B2%E7%9A%84%E6%B2%B3_1553073059421.mp3', '父亲的草原母亲的河', 'Aaviin mini tal eejiin mini gool', '145', '4554', '1234123');
INSERT INTO `song` VALUES ('29', '2', 'http://cdn.duuchin.com/1_1553073056837.jpg', 'http://cdn.duuchin.com/%E7%88%B6%E4%BA%B2%E7%9A%84%E8%8D%89%E5%8E%9F%E6%AF%8D%E4%BA%B2%E7%9A%84%E6%B2%B3_1553073059421.mp3', '父亲的草原母亲的河', 'Aaviin mini tal eejiin mini gool', '145', '4554', '1234123');
INSERT INTO `song` VALUES ('30', '2', 'http://cdn.duuchin.com/1_1553073056837.jpg', 'http://cdn.duuchin.com/%E7%88%B6%E4%BA%B2%E7%9A%84%E8%8D%89%E5%8E%9F%E6%AF%8D%E4%BA%B2%E7%9A%84%E6%B2%B3_1553073059421.mp3', '父亲的草原母亲的河', 'Aaviin mini tal eejiin mini gool', '145', '4554', '1234123');
INSERT INTO `song` VALUES ('31', '2', 'http://cdn.duuchin.com/1_1553073056837.jpg', 'http://cdn.duuchin.com/%E7%88%B6%E4%BA%B2%E7%9A%84%E8%8D%89%E5%8E%9F%E6%AF%8D%E4%BA%B2%E7%9A%84%E6%B2%B3_1553073059421.mp3', '父亲的草原母亲的河', 'Aaviin mini tal eejiin mini gool', '145', '4554', '1234123');
INSERT INTO `song` VALUES ('32', '3', 'http://cdn.duuchin.com/1_1553073056837.jpg', 'http://cdn.duuchin.com/%E7%88%B6%E4%BA%B2%E7%9A%84%E8%8D%89%E5%8E%9F%E6%AF%8D%E4%BA%B2%E7%9A%84%E6%B2%B3_1553073059421.mp3', '父亲的草原母亲的河', 'Aaviin mini tal eejiin mini gool', '145', '4554', '1234123');
INSERT INTO `song` VALUES ('33', '2', 'http://cdn.duuchin.com/1_1553073056837.jpg', 'http://cdn.duuchin.com/%E7%88%B6%E4%BA%B2%E7%9A%84%E8%8D%89%E5%8E%9F%E6%AF%8D%E4%BA%B2%E7%9A%84%E6%B2%B3_1553073059421.mp3', '父亲的草原母亲的河', 'Aaviin mini tal eejiin mini gool', '145', '4554', '1234123');
INSERT INTO `song` VALUES ('34', '2', 'http://cdn.duuchin.com/1_1553073056837.jpg', 'http://cdn.duuchin.com/%E7%88%B6%E4%BA%B2%E7%9A%84%E8%8D%89%E5%8E%9F%E6%AF%8D%E4%BA%B2%E7%9A%84%E6%B2%B3_1553073059421.mp3', '父亲的草原母亲的河', 'Aaviin mini tal eejiin mini gool', '145', '4554', '1234123');
INSERT INTO `song` VALUES ('35', '3', 'http://cdn.duuchin.com/1_1553073056837.jpg', 'http://cdn.duuchin.com/%E7%88%B6%E4%BA%B2%E7%9A%84%E8%8D%89%E5%8E%9F%E6%AF%8D%E4%BA%B2%E7%9A%84%E6%B2%B3_1553073059421.mp3', '父亲的草原母亲的河', 'Aaviin mini tal eejiin mini gool', '145', '4554', '1234123');
INSERT INTO `song` VALUES ('36', '3', 'http://cdn.duuchin.com/1_1553073056837.jpg', 'http://cdn.duuchin.com/%E7%88%B6%E4%BA%B2%E7%9A%84%E8%8D%89%E5%8E%9F%E6%AF%8D%E4%BA%B2%E7%9A%84%E6%B2%B3_1553073059421.mp3', '父亲的草原母亲的河', 'Aaviin mini tal eejiin mini gool', '145', '4554', '1234123');
INSERT INTO `song` VALUES ('37', '3', 'http://cdn.duuchin.com/1_1553073056837.jpg', 'http://cdn.duuchin.com/%E7%88%B6%E4%BA%B2%E7%9A%84%E8%8D%89%E5%8E%9F%E6%AF%8D%E4%BA%B2%E7%9A%84%E6%B2%B3_1553073059421.mp3', '父亲的草原母亲的河', 'Aaviin mini tal eejiin mini gool', '145', '4554', '1234123');
INSERT INTO `song` VALUES ('38', '2', 'http://cdn.duuchin.com/1_1553073056837.jpg', 'http://cdn.duuchin.com/%E7%88%B6%E4%BA%B2%E7%9A%84%E8%8D%89%E5%8E%9F%E6%AF%8D%E4%BA%B2%E7%9A%84%E6%B2%B3_1553073059421.mp3', '父亲的草原母亲的河', 'Aaviin mini tal eejiin mini gool', '145', '4554', '1234123');
INSERT INTO `song` VALUES ('39', '2', 'http://cdn.duuchin.com/1_1553073056837.jpg', 'http://cdn.duuchin.com/%E7%88%B6%E4%BA%B2%E7%9A%84%E8%8D%89%E5%8E%9F%E6%AF%8D%E4%BA%B2%E7%9A%84%E6%B2%B3_1553073059421.mp3', '父亲的草原母亲的河', 'Aaviin mini tal eejiin mini gool', '145', '4554', '1234123');
INSERT INTO `song` VALUES ('40', '3', 'http://cdn.duuchin.com/1_1553073056837.jpg', 'http://cdn.duuchin.com/%E7%88%B6%E4%BA%B2%E7%9A%84%E8%8D%89%E5%8E%9F%E6%AF%8D%E4%BA%B2%E7%9A%84%E6%B2%B3_1553073059421.mp3', '父亲的草原母亲的河', 'Aaviin mini tal eejiin mini gool', '145', '4554', '1234123');

-- ----------------------------
-- Table structure for article
-- ----------------------------
DROP TABLE IF EXISTS `article`;
CREATE TABLE `article` (
    `id` int(10) NOT NULL AUTO_INCREMENT,
    `userId` int(10) DEFAULT NULL COMMENT '',
    `coverUrlList` varchar(255) DEFAULT '' COMMENT '多个英文逗号分割 最多四张',
    `title` varchar(64) DEFAULT '' COMMENT '',
    `commentCount` int(10) DEFAULT 0 COMMENT '',
    `thumbUpCount` int(10) DEFAULT 0 COMMENT '',
    `readCount` int(10) DEFAULT 0 COMMENT '',
    PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT='文章表';

-- ----------------------------
-- Records of song
-- ----------------------------
INSERT INTO `article` VALUES ('1', '1', 'https://cdn.duuchin.com/cover/20210112/1610438173578_76743156.png,https://cdn.duuchin.com/cover/20210112/1610438181103_8c0b2dea.png,https://cdn.duuchin.com/cover/20210112/1610438188349_d2147aec.png', '制作央视《新闻联播》片头曲的蒙古人', '1223', '4545', '563234');
INSERT INTO `article` VALUES ('2', '1', 'https://cdn.duuchin.com/cover/20210112/1610438173578_76743156.png,https://cdn.duuchin.com/cover/20210112/1610438181103_8c0b2dea.png,https://cdn.duuchin.com/cover/20210112/1610438188349_d2147aec.png', '制作央视《新闻联播》片头曲的蒙古人', '1223', '4545', '563234');
INSERT INTO `article` VALUES ('3', '1', 'https://cdn.duuchin.com/cover/20210112/1610438173578_76743156.png,https://cdn.duuchin.com/cover/20210112/1610438181103_8c0b2dea.png,https://cdn.duuchin.com/cover/20210112/1610438188349_d2147aec.png', '制作央视《新闻联播》片头曲的蒙古人', '1223', '4545', '563234');
INSERT INTO `article` VALUES ('4', '1', 'https://cdn.duuchin.com/cover/20210112/1610438173578_76743156.png,https://cdn.duuchin.com/cover/20210112/1610438181103_8c0b2dea.png,https://cdn.duuchin.com/cover/20210112/1610438188349_d2147aec.png', '制作央视《新闻联播》片头曲的蒙古人', '1223', '4545', '563234');
INSERT INTO `article` VALUES ('5', '1', 'https://cdn.duuchin.com/cover/20210112/1610438173578_76743156.png,https://cdn.duuchin.com/cover/20210112/1610438181103_8c0b2dea.png,https://cdn.duuchin.com/cover/20210112/1610438188349_d2147aec.png', '制作央视《新闻联播》片头曲的蒙古人', '1223', '4545', '563234');
INSERT INTO `article` VALUES ('6', '1', 'https://cdn.duuchin.com/cover/20210112/1610438173578_76743156.png,https://cdn.duuchin.com/cover/20210112/1610438181103_8c0b2dea.png,https://cdn.duuchin.com/cover/20210112/1610438188349_d2147aec.png', '制作央视《新闻联播》片头曲的蒙古人', '1223', '4545', '563234');
INSERT INTO `article` VALUES ('7', '1', 'https://cdn.duuchin.com/cover/20210112/1610438173578_76743156.png,https://cdn.duuchin.com/cover/20210112/1610438181103_8c0b2dea.png,https://cdn.duuchin.com/cover/20210112/1610438188349_d2147aec.png', '制作央视《新闻联播》片头曲的蒙古人', '1223', '4545', '563234');
INSERT INTO `article` VALUES ('8', '1', 'https://cdn.duuchin.com/cover/20210112/1610438173578_76743156.png,https://cdn.duuchin.com/cover/20210112/1610438181103_8c0b2dea.png,https://cdn.duuchin.com/cover/20210112/1610438188349_d2147aec.png', '制作央视《新闻联播》片头曲的蒙古人', '1223', '4545', '563234');
INSERT INTO `article` VALUES ('9', '1', 'https://cdn.duuchin.com/cover/20210112/1610438173578_76743156.png,https://cdn.duuchin.com/cover/20210112/1610438181103_8c0b2dea.png,https://cdn.duuchin.com/cover/20210112/1610438188349_d2147aec.png', '制作央视《新闻联播》片头曲的蒙古人', '1223', '4545', '563234');
INSERT INTO `article` VALUES ('10', '1', 'https://cdn.duuchin.com/cover/20210112/1610438188349_d2147aec.png', '制作央视《新闻联播》片头曲的蒙古人', '1223', '4545', '563234');
INSERT INTO `article` VALUES ('11', '1', 'https://cdn.duuchin.com/cover/20210112/1610438173578_76743156.png,https://cdn.duuchin.com/cover/20210112/1610438181103_8c0b2dea.png,https://cdn.duuchin.com/cover/20210112/1610438188349_d2147aec.png', '制作央视《新闻联播》片头曲的蒙古人', '1223', '4545', '563234');
INSERT INTO `article` VALUES ('12', '1', 'https://cdn.duuchin.com/cover/20210112/1610438173578_76743156.png,https://cdn.duuchin.com/cover/20210112/1610438181103_8c0b2dea.png,https://cdn.duuchin.com/cover/20210112/1610438188349_d2147aec.png', '制作央视《新闻联播》片头曲的蒙古人', '1223', '4545', '563234');
INSERT INTO `article` VALUES ('13', '1', 'https://cdn.duuchin.com/cover/20210112/1610438188349_d2147aec.png', '制作央视《新闻联播》片头曲的蒙古人', '1223', '4545', '563234');
INSERT INTO `article` VALUES ('14', '1', 'https://cdn.duuchin.com/cover/20210112/1610438173578_76743156.png,https://cdn.duuchin.com/cover/20210112/1610438181103_8c0b2dea.png,https://cdn.duuchin.com/cover/20210112/1610438188349_d2147aec.png', '制作央视《新闻联播》片头曲的蒙古人', '1223', '4545', '563234');
INSERT INTO `article` VALUES ('15', '1', 'https://cdn.duuchin.com/cover/20210112/1610438173578_76743156.png,https://cdn.duuchin.com/cover/20210112/1610438181103_8c0b2dea.png,https://cdn.duuchin.com/cover/20210112/1610438188349_d2147aec.png', '制作央视《新闻联播》片头曲的蒙古人', '1223', '4545', '563234');
INSERT INTO `article` VALUES ('16', '1', 'https://cdn.duuchin.com/cover/20210112/1610438173578_76743156.png,https://cdn.duuchin.com/cover/20210112/1610438181103_8c0b2dea.png,https://cdn.duuchin.com/cover/20210112/1610438188349_d2147aec.png', '制作央视《新闻联播》片头曲的蒙古人', '1223', '4545', '563234');
INSERT INTO `article` VALUES ('17', '1', 'https://cdn.duuchin.com/cover/20210112/1610438173578_76743156.png,https://cdn.duuchin.com/cover/20210112/1610438181103_8c0b2dea.png,https://cdn.duuchin.com/cover/20210112/1610438188349_d2147aec.png', '制作央视《新闻联播》片头曲的蒙古人', '1223', '4545', '563234');
INSERT INTO `article` VALUES ('18', '1', 'https://cdn.duuchin.com/cover/20210112/1610438173578_76743156.png,https://cdn.duuchin.com/cover/20210112/1610438181103_8c0b2dea.png,https://cdn.duuchin.com/cover/20210112/1610438188349_d2147aec.png', '制作央视《新闻联播》片头曲的蒙古人', '1223', '4545', '563234');
INSERT INTO `article` VALUES ('19', '1', 'https://cdn.duuchin.com/cover/20210112/1610438173578_76743156.png,https://cdn.duuchin.com/cover/20210112/1610438181103_8c0b2dea.png,https://cdn.duuchin.com/cover/20210112/1610438188349_d2147aec.png', '制作央视《新闻联播》片头曲的蒙古人', '1223', '4545', '563234');
INSERT INTO `article` VALUES ('20', '1', 'https://cdn.duuchin.com/cover/20210112/1610438173578_76743156.png,https://cdn.duuchin.com/cover/20210112/1610438181103_8c0b2dea.png,https://cdn.duuchin.com/cover/20210112/1610438188349_d2147aec.png', '制作央视《新闻联播》片头曲的蒙古人', '1223', '4545', '563234');

-- ----------------------------
-- Table structure for video
-- ----------------------------
DROP TABLE IF EXISTS `video`;
CREATE TABLE `video` (
   `id` int(10) NOT NULL AUTO_INCREMENT,
   `userId` int(10) DEFAULT NULL COMMENT '',
   `coverPictureUrl` varchar(255) DEFAULT '' COMMENT '',
   `videoUrl` varchar(255) DEFAULT '' COMMENT '',
   `title` varchar(64) DEFAULT '' COMMENT '',
   `intro` varchar(255) DEFAULT '' COMMENT '',
   `commentCount` int(10) DEFAULT 0 COMMENT '',
   `thumbUpCount` int(10) DEFAULT 0 COMMENT '',
   `readCount` int(10) DEFAULT 0 COMMENT '',
   `shareCount` int(10) DEFAULT 0 COMMENT '',
   `contentSeconds` int(10) DEFAULT 0 COMMENT '',
   PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT='视频表';

-- ----------------------------
-- Records of video
-- ----------------------------
INSERT INTO `video` VALUES ('1', '4', 'http://cdn.duuchin.com/demo/20210104/6e22913a38c34c4790d80ef931a93867.jpg', 'http://cdn.duuchin.com/video/1609757184423_ca25a50c.mp4','敖特根图娅最新单曲《乌珠穆沁游牧》MV首发', '岁月更迭，传承恒久，勤劳朴实的乌珠穆沁人，如呵护眼眸般珍爱大自然，遵循生态发展的律韵，择水草丰美之地而居，传承着独特的游牧文化。歌曲《乌珠穆沁游牧》由桑.青格乐图作词，蒙古国希.巴图赛汗作曲，青年歌手敖特根图娅倾情演唱。', '23', '45', '1234', '33', '123546');
INSERT INTO `video` VALUES ('2', '4', 'http://cdn.duuchin.com/demo/20210104/6e22913a38c34c4790d80ef931a93867.jpg', 'http://cdn.duuchin.com/video/1609757184423_ca25a50c.mp4','敖特根图娅最新单曲《乌珠穆沁游牧》MV首发', '岁月更迭，传承恒久，勤劳朴实的乌珠穆沁人，如呵护眼眸般珍爱大自然，遵循生态发展的律韵，择水草丰美之地而居，传承着独特的游牧文化。歌曲《乌珠穆沁游牧》由桑.青格乐图作词，蒙古国希.巴图赛汗作曲，青年歌手敖特根图娅倾情演唱。', '23', '45', '1234', '33', '123546');
INSERT INTO `video` VALUES ('3', '5', 'http://cdn.duuchin.com/demo/20210104/6e22913a38c34c4790d80ef931a93867.jpg', 'http://cdn.duuchin.com/video/1609757184423_ca25a50c.mp4','敖特根图娅最新单曲《乌珠穆沁游牧》MV首发', '岁月更迭，传承恒久，勤劳朴实的乌珠穆沁人，如呵护眼眸般珍爱大自然，遵循生态发展的律韵，择水草丰美之地而居，传承着独特的游牧文化。歌曲《乌珠穆沁游牧》由桑.青格乐图作词，蒙古国希.巴图赛汗作曲，青年歌手敖特根图娅倾情演唱。', '23', '45', '1234', '33', '123546');
INSERT INTO `video` VALUES ('4', '5', 'http://cdn.duuchin.com/demo/20210104/6e22913a38c34c4790d80ef931a93867.jpg', 'http://cdn.duuchin.com/video/1609757184423_ca25a50c.mp4','敖特根图娅最新单曲《乌珠穆沁游牧》MV首发', '岁月更迭，传承恒久，勤劳朴实的乌珠穆沁人，如呵护眼眸般珍爱大自然，遵循生态发展的律韵，择水草丰美之地而居，传承着独特的游牧文化。歌曲《乌珠穆沁游牧》由桑.青格乐图作词，蒙古国希.巴图赛汗作曲，青年歌手敖特根图娅倾情演唱。', '23', '45', '1234', '33', '123546');
INSERT INTO `video` VALUES ('5', '4', 'http://cdn.duuchin.com/demo/20210104/6e22913a38c34c4790d80ef931a93867.jpg', 'http://cdn.duuchin.com/video/1609757184423_ca25a50c.mp4','敖特根图娅最新单曲《乌珠穆沁游牧》MV首发', '岁月更迭，传承恒久，勤劳朴实的乌珠穆沁人，如呵护眼眸般珍爱大自然，遵循生态发展的律韵，择水草丰美之地而居，传承着独特的游牧文化。歌曲《乌珠穆沁游牧》由桑.青格乐图作词，蒙古国希.巴图赛汗作曲，青年歌手敖特根图娅倾情演唱。', '23', '45', '1234', '33', '123546');
INSERT INTO `video` VALUES ('6', '1', 'http://cdn.duuchin.com/demo/20210104/6e22913a38c34c4790d80ef931a93867.jpg', 'http://cdn.duuchin.com/video/1609757184423_ca25a50c.mp4','敖特根图娅最新单曲《乌珠穆沁游牧》MV首发', '岁月更迭，传承恒久，勤劳朴实的乌珠穆沁人，如呵护眼眸般珍爱大自然，遵循生态发展的律韵，择水草丰美之地而居，传承着独特的游牧文化。歌曲《乌珠穆沁游牧》由桑.青格乐图作词，蒙古国希.巴图赛汗作曲，青年歌手敖特根图娅倾情演唱。', '23', '45', '1234', '33', '123546');
INSERT INTO `video` VALUES ('7', '5', 'http://cdn.duuchin.com/demo/20210104/6e22913a38c34c4790d80ef931a93867.jpg', 'http://cdn.duuchin.com/video/1609757184423_ca25a50c.mp4','敖特根图娅最新单曲《乌珠穆沁游牧》MV首发', '岁月更迭，传承恒久，勤劳朴实的乌珠穆沁人，如呵护眼眸般珍爱大自然，遵循生态发展的律韵，择水草丰美之地而居，传承着独特的游牧文化。歌曲《乌珠穆沁游牧》由桑.青格乐图作词，蒙古国希.巴图赛汗作曲，青年歌手敖特根图娅倾情演唱。', '23', '45', '1234', '33', '123546');
INSERT INTO `video` VALUES ('8', '4', 'http://cdn.duuchin.com/demo/20210104/6e22913a38c34c4790d80ef931a93867.jpg', 'http://cdn.duuchin.com/video/1609757184423_ca25a50c.mp4','敖特根图娅最新单曲《乌珠穆沁游牧》MV首发', '岁月更迭，传承恒久，勤劳朴实的乌珠穆沁人，如呵护眼眸般珍爱大自然，遵循生态发展的律韵，择水草丰美之地而居，传承着独特的游牧文化。歌曲《乌珠穆沁游牧》由桑.青格乐图作词，蒙古国希.巴图赛汗作曲，青年歌手敖特根图娅倾情演唱。', '23', '45', '1234', '33', '123546');
INSERT INTO `video` VALUES ('9', '4', 'http://cdn.duuchin.com/demo/20210104/6e22913a38c34c4790d80ef931a93867.jpg', 'http://cdn.duuchin.com/video/1609757184423_ca25a50c.mp4','敖特根图娅最新单曲《乌珠穆沁游牧》MV首发', '岁月更迭，传承恒久，勤劳朴实的乌珠穆沁人，如呵护眼眸般珍爱大自然，遵循生态发展的律韵，择水草丰美之地而居，传承着独特的游牧文化。歌曲《乌珠穆沁游牧》由桑.青格乐图作词，蒙古国希.巴图赛汗作曲，青年歌手敖特根图娅倾情演唱。', '23', '45', '1234', '33', '123546');
INSERT INTO `video` VALUES ('10', '1', 'http://cdn.duuchin.com/demo/20210104/6e22913a38c34c4790d80ef931a93867.jpg', 'http://cdn.duuchin.com/video/1609757184423_ca25a50c.mp4','敖特根图娅最新单曲《乌珠穆沁游牧》MV首发', '岁月更迭，传承恒久，勤劳朴实的乌珠穆沁人，如呵护眼眸般珍爱大自然，遵循生态发展的律韵，择水草丰美之地而居，传承着独特的游牧文化。歌曲《乌珠穆沁游牧》由桑.青格乐图作词，蒙古国希.巴图赛汗作曲，青年歌手敖特根图娅倾情演唱。', '23', '45', '1234', '33', '123546');
INSERT INTO `video` VALUES ('11', '4', 'http://cdn.duuchin.com/demo/20210104/6e22913a38c34c4790d80ef931a93867.jpg', 'http://cdn.duuchin.com/video/1609757184423_ca25a50c.mp4','敖特根图娅最新单曲《乌珠穆沁游牧》MV首发', '岁月更迭，传承恒久，勤劳朴实的乌珠穆沁人，如呵护眼眸般珍爱大自然，遵循生态发展的律韵，择水草丰美之地而居，传承着独特的游牧文化。歌曲《乌珠穆沁游牧》由桑.青格乐图作词，蒙古国希.巴图赛汗作曲，青年歌手敖特根图娅倾情演唱。', '23', '45', '1234', '33', '123546');
INSERT INTO `video` VALUES ('12', '5', 'http://cdn.duuchin.com/demo/20210104/6e22913a38c34c4790d80ef931a93867.jpg', 'http://cdn.duuchin.com/video/1609757184423_ca25a50c.mp4','敖特根图娅最新单曲《乌珠穆沁游牧》MV首发', '岁月更迭，传承恒久，勤劳朴实的乌珠穆沁人，如呵护眼眸般珍爱大自然，遵循生态发展的律韵，择水草丰美之地而居，传承着独特的游牧文化。歌曲《乌珠穆沁游牧》由桑.青格乐图作词，蒙古国希.巴图赛汗作曲，青年歌手敖特根图娅倾情演唱。', '23', '45', '1234', '33', '123546');
INSERT INTO `video` VALUES ('13', '4', 'http://cdn.duuchin.com/demo/20210104/6e22913a38c34c4790d80ef931a93867.jpg', 'http://cdn.duuchin.com/video/1609757184423_ca25a50c.mp4','敖特根图娅最新单曲《乌珠穆沁游牧》MV首发', '岁月更迭，传承恒久，勤劳朴实的乌珠穆沁人，如呵护眼眸般珍爱大自然，遵循生态发展的律韵，择水草丰美之地而居，传承着独特的游牧文化。歌曲《乌珠穆沁游牧》由桑.青格乐图作词，蒙古国希.巴图赛汗作曲，青年歌手敖特根图娅倾情演唱。', '23', '45', '1234', '33', '123546');
INSERT INTO `video` VALUES ('14', '5', 'http://cdn.duuchin.com/demo/20210104/6e22913a38c34c4790d80ef931a93867.jpg', 'http://cdn.duuchin.com/video/1609757184423_ca25a50c.mp4','敖特根图娅最新单曲《乌珠穆沁游牧》MV首发', '岁月更迭，传承恒久，勤劳朴实的乌珠穆沁人，如呵护眼眸般珍爱大自然，遵循生态发展的律韵，择水草丰美之地而居，传承着独特的游牧文化。歌曲《乌珠穆沁游牧》由桑.青格乐图作词，蒙古国希.巴图赛汗作曲，青年歌手敖特根图娅倾情演唱。', '23', '45', '1234', '33', '123546');
INSERT INTO `video` VALUES ('15', '1', 'http://cdn.duuchin.com/demo/20210104/6e22913a38c34c4790d80ef931a93867.jpg', 'http://cdn.duuchin.com/video/1609757184423_ca25a50c.mp4','敖特根图娅最新单曲《乌珠穆沁游牧》MV首发', '岁月更迭，传承恒久，勤劳朴实的乌珠穆沁人，如呵护眼眸般珍爱大自然，遵循生态发展的律韵，择水草丰美之地而居，传承着独特的游牧文化。歌曲《乌珠穆沁游牧》由桑.青格乐图作词，蒙古国希.巴图赛汗作曲，青年歌手敖特根图娅倾情演唱。', '23', '45', '1234', '33', '123546');
INSERT INTO `video` VALUES ('16', '1', 'http://cdn.duuchin.com/demo/20210104/6e22913a38c34c4790d80ef931a93867.jpg', 'http://cdn.duuchin.com/video/1609757184423_ca25a50c.mp4','敖特根图娅最新单曲《乌珠穆沁游牧》MV首发', '岁月更迭，传承恒久，勤劳朴实的乌珠穆沁人，如呵护眼眸般珍爱大自然，遵循生态发展的律韵，择水草丰美之地而居，传承着独特的游牧文化。歌曲《乌珠穆沁游牧》由桑.青格乐图作词，蒙古国希.巴图赛汗作曲，青年歌手敖特根图娅倾情演唱。', '23', '45', '1234', '33', '123546');
INSERT INTO `video` VALUES ('17', '1', 'http://cdn.duuchin.com/demo/20210104/6e22913a38c34c4790d80ef931a93867.jpg', 'http://cdn.duuchin.com/video/1609757184423_ca25a50c.mp4','敖特根图娅最新单曲《乌珠穆沁游牧》MV首发', '岁月更迭，传承恒久，勤劳朴实的乌珠穆沁人，如呵护眼眸般珍爱大自然，遵循生态发展的律韵，择水草丰美之地而居，传承着独特的游牧文化。歌曲《乌珠穆沁游牧》由桑.青格乐图作词，蒙古国希.巴图赛汗作曲，青年歌手敖特根图娅倾情演唱。', '23', '45', '1234', '33', '123546');
INSERT INTO `video` VALUES ('18', '4', 'http://cdn.duuchin.com/demo/20210104/6e22913a38c34c4790d80ef931a93867.jpg', 'http://cdn.duuchin.com/video/1609757184423_ca25a50c.mp4','敖特根图娅最新单曲《乌珠穆沁游牧》MV首发', '岁月更迭，传承恒久，勤劳朴实的乌珠穆沁人，如呵护眼眸般珍爱大自然，遵循生态发展的律韵，择水草丰美之地而居，传承着独特的游牧文化。歌曲《乌珠穆沁游牧》由桑.青格乐图作词，蒙古国希.巴图赛汗作曲，青年歌手敖特根图娅倾情演唱。', '23', '45', '1234', '33', '123546');
INSERT INTO `video` VALUES ('19', '4', 'http://cdn.duuchin.com/demo/20210104/6e22913a38c34c4790d80ef931a93867.jpg', 'http://cdn.duuchin.com/video/1609757184423_ca25a50c.mp4','敖特根图娅最新单曲《乌珠穆沁游牧》MV首发', '岁月更迭，传承恒久，勤劳朴实的乌珠穆沁人，如呵护眼眸般珍爱大自然，遵循生态发展的律韵，择水草丰美之地而居，传承着独特的游牧文化。歌曲《乌珠穆沁游牧》由桑.青格乐图作词，蒙古国希.巴图赛汗作曲，青年歌手敖特根图娅倾情演唱。', '23', '45', '1234', '33', '123546');
INSERT INTO `video` VALUES ('20', '1', 'http://cdn.duuchin.com/demo/20210104/6e22913a38c34c4790d80ef931a93867.jpg', 'http://cdn.duuchin.com/video/1609757184423_ca25a50c.mp4','敖特根图娅最新单曲《乌珠穆沁游牧》MV首发', '岁月更迭，传承恒久，勤劳朴实的乌珠穆沁人，如呵护眼眸般珍爱大自然，遵循生态发展的律韵，择水草丰美之地而居，传承着独特的游牧文化。歌曲《乌珠穆沁游牧》由桑.青格乐图作词，蒙古国希.巴图赛汗作曲，青年歌手敖特根图娅倾情演唱。', '23', '45', '1234', '33', '123546');
INSERT INTO `video` VALUES ('21', '5', 'http://cdn.duuchin.com/demo/20210104/6e22913a38c34c4790d80ef931a93867.jpg', 'http://cdn.duuchin.com/video/1609757184423_ca25a50c.mp4','敖特根图娅最新单曲《乌珠穆沁游牧》MV首发', '岁月更迭，传承恒久，勤劳朴实的乌珠穆沁人，如呵护眼眸般珍爱大自然，遵循生态发展的律韵，择水草丰美之地而居，传承着独特的游牧文化。歌曲《乌珠穆沁游牧》由桑.青格乐图作词，蒙古国希.巴图赛汗作曲，青年歌手敖特根图娅倾情演唱。', '23', '45', '1234', '33', '123546');
INSERT INTO `video` VALUES ('22', '4', 'http://cdn.duuchin.com/demo/20210104/6e22913a38c34c4790d80ef931a93867.jpg', 'http://cdn.duuchin.com/video/1609757184423_ca25a50c.mp4','敖特根图娅最新单曲《乌珠穆沁游牧》MV首发', '岁月更迭，传承恒久，勤劳朴实的乌珠穆沁人，如呵护眼眸般珍爱大自然，遵循生态发展的律韵，择水草丰美之地而居，传承着独特的游牧文化。歌曲《乌珠穆沁游牧》由桑.青格乐图作词，蒙古国希.巴图赛汗作曲，青年歌手敖特根图娅倾情演唱。', '23', '45', '1234', '33', '123546');
INSERT INTO `video` VALUES ('23', '4', 'http://cdn.duuchin.com/demo/20210104/6e22913a38c34c4790d80ef931a93867.jpg', 'http://cdn.duuchin.com/video/1609757184423_ca25a50c.mp4','敖特根图娅最新单曲《乌珠穆沁游牧》MV首发', '岁月更迭，传承恒久，勤劳朴实的乌珠穆沁人，如呵护眼眸般珍爱大自然，遵循生态发展的律韵，择水草丰美之地而居，传承着独特的游牧文化。歌曲《乌珠穆沁游牧》由桑.青格乐图作词，蒙古国希.巴图赛汗作曲，青年歌手敖特根图娅倾情演唱。', '23', '45', '1234', '33', '123546');
INSERT INTO `video` VALUES ('24', '1', 'http://cdn.duuchin.com/demo/20210104/6e22913a38c34c4790d80ef931a93867.jpg', 'http://cdn.duuchin.com/video/1609757184423_ca25a50c.mp4','敖特根图娅最新单曲《乌珠穆沁游牧》MV首发', '岁月更迭，传承恒久，勤劳朴实的乌珠穆沁人，如呵护眼眸般珍爱大自然，遵循生态发展的律韵，择水草丰美之地而居，传承着独特的游牧文化。歌曲《乌珠穆沁游牧》由桑.青格乐图作词，蒙古国希.巴图赛汗作曲，青年歌手敖特根图娅倾情演唱。', '23', '45', '1234', '33', '123546');
INSERT INTO `video` VALUES ('25', '5', 'http://cdn.duuchin.com/demo/20210104/6e22913a38c34c4790d80ef931a93867.jpg', 'http://cdn.duuchin.com/video/1609757184423_ca25a50c.mp4','敖特根图娅最新单曲《乌珠穆沁游牧》MV首发', '岁月更迭，传承恒久，勤劳朴实的乌珠穆沁人，如呵护眼眸般珍爱大自然，遵循生态发展的律韵，择水草丰美之地而居，传承着独特的游牧文化。歌曲《乌珠穆沁游牧》由桑.青格乐图作词，蒙古国希.巴图赛汗作曲，青年歌手敖特根图娅倾情演唱。', '23', '45', '1234', '33', '123546');