	平台前期的整体功能大概分为四个部分：用户中心  视播中心  评论中心  消息中心

	用户中心 - User Center
		
		基于快速注册的理念，由于之后需要通过email对用户进行有效性验证，而平台无法保证注册时email的真实有效性，故采用用户名和密码注册。

		1） 用户注册(signup)
			Url:     http://www.ppst.com/signup
			Uri:     http://www.ppst.com/users/create
			Params:  name pwd pwd_confirmation
			Method:  post

		2） 用户登录(login)
			Url:     http://www.ppst.com/login
			Uri:     http://www.ppst.com/users/login
			Params:  name pwd
			Method:  post

		3） 用户验证(verification)
			Url:     http://www.ppst.com/verify
			Uri:     http://www.ppst.com/users/verify
			Params:  email code
			Method:  post

		4） 用户视播列表(user broadcast list)
			Url:     http://www.ppst.com/users/123/broadcasts
			Params:  user_id
			Method:  get

		5） 用户评论列表(user comment list)
			Url:    http://www.ppst.com/users/123/comments
			Params: user_id
			Method: get

		6） 用户消息列表(user message list)
			Url:    http://www.ppst.com/users/123/messages
			Params: user_id
			Method: get

		7） 用户钱包
			暂时不清楚具体流程

		8） 用户上传头像(user avatar)
			Url:    http://www.ppst.com/users/crop
			Uri:    http://www.ppst.com/users/123/edit
			Params: user avatar
			Method: put
		
		数据库设计
			Table:   user
			Fields:  name					string(8)       # 用户名
			         password			string(64)      # md5后的密码
							 salt					string(64)      # 加密方式中的随机值
							 email				string(32)      # 验证邮箱
							 alipay				string(32)      # 支付宝帐号
							 create_time	timestamp       # 用户注册时间
							 update_time	timestamp       # 备用：上次登录时间 最近更新时间等


	
	视播中心 - Broadcast center
