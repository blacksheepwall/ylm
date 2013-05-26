<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <title>Bootstrap, from LayoutIt!</title>
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta name="description" content="">
  <meta name="author" content="">

	<!--link rel="stylesheet/less" href="less/bootstrap.less" type="text/css" /-->
	<!--link rel="stylesheet/less" href="less/responsive.less" type="text/css" /-->
	<!--script src="js/less-1.3.3.min.js"></script-->
	<!--append ‘#!watch’ to the browser URL, then refresh the page. -->
	
	<link href="/css/bootstrap.min.css" rel="stylesheet">
	<link href="/css/bootstrap-responsive.min.css" rel="stylesheet">
	<link href="/css/style.css" rel="stylesheet">

  <!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
  <!--[if lt IE 9]>
    <script src="js/html5shiv.js"></script>
  <![endif]-->

  <!-- Fav and touch icons -->
  <link rel="apple-touch-icon-precomposed" sizes="144x144" href="/img/apple-touch-icon-144-precomposed.png">
  <link rel="apple-touch-icon-precomposed" sizes="114x114" href="/img/apple-touch-icon-114-precomposed.png">
  <link rel="apple-touch-icon-precomposed" sizes="72x72" href="/img/apple-touch-icon-72-precomposed.png">
  <link rel="apple-touch-icon-precomposed" href="/img/apple-touch-icon-57-precomposed.png">
  <link rel="shortcut icon" href="/img/favicon.png">
  
	<script type="text/javascript" src="/js/jquery.min.js"></script>
	<script type="text/javascript" src="/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="/js/scripts.js"></script>
</head>

<body>
<div class="container-fluid">
	<div class="row-fluid">
		<div class="span12">
			<div class="navbar">
				<div class="navbar-inner">
					<div class="container-fluid">
						 <a data-target=".navbar-responsive-collapse" data-toggle="collapse" class="btn btn-navbar"><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span></a> <a href="#" class="brand"><strong>旅游业务代理分销系统</strong></a>
						<div class="nav-collapse collapse navbar-responsive-collapse">
							<ul class="nav">
								<li class="active">
									<a href="#">首页</a>
								</li>
								<li>
									<a href="#">链接1</a>
								</li>
								<li>
									<a href="#">链接2</a>
								</li>
								<li class="dropdown">
									 <a data-toggle="dropdown" class="dropdown-toggle" href="#">更多<strong class="caret"></strong></a>
									<ul class="dropdown-menu">
										<li>
											<a href="#">Action</a>
										</li>
										<li>
											<a href="#">Another action</a>
										</li>
										<li>
											<a href="#">Something else here</a>
										</li>
										<li class="divider">
										</li>
										<li class="nav-header">
											Nav header
										</li>
										<li>
											<a href="#">Separated link</a>
										</li>
										<li>
											<a href="#">One more separated link</a>
										</li>
									</ul>
								</li>
							</ul>
							<ul class="nav pull-right">
								<li>
									<a href="#">王伟</a>
								</li>
								<li class="divider-vertical">
								</li>
								<li class="dropdown">
									 <a data-toggle="dropdown" class="dropdown-toggle" href="#">个人设置<strong class="caret"></strong></a>
									<ul class="dropdown-menu">
										<li>
											<a href="#">Action</a>
										</li>
										<li>
											<a href="#">Another action</a>
										</li>
										<li>
											<a href="#">Something else here</a>
										</li>
										<li class="divider">
										</li>
										<li>
											<a href="#">Separated link</a>
										</li>
									</ul>
								</li>
							</ul>
						</div>
						
					</div>
				</div>
				
			</div>
		</div>
	</div>
	<div class="row-fluid">
		<div class="span2">
			<ul class="nav nav-list">
				<li class="nav-header">
					快捷菜单
				</li>
				<li class="active">
					<a href="#">合同管理</a>
				</li>
				<li>
					<a href="#">我的订单</a>
				</li>
				<li>
					<a href="#">财务结算</a><a href="#">系统设置</a>
				</li>
				<li>
					<a href="#">信息设置</a>
				</li>
				<li>
					<a href="#">...</a>
				</li>
				<li class="divider">
				</li>
				<li>
					<a href="#">系统帮助</a>
				</li>
			</ul>
		</div>
		<div class="span6">
			<div class="carousel slide" id="carousel-373696">
				<ol class="carousel-indicators">
					<li data-slide-to="0" data-target="#carousel-373696">
					</li>
					<li data-slide-to="1" data-target="#carousel-373696" class="active">
					</li>
					<li data-slide-to="2" data-target="#carousel-373696">
					</li>
				</ol>
				<div class="carousel-inner">
					<div class="item">
						<img alt="" src="http://lorempixel.com/1600/500/sports/1">
						<div class="carousel-caption">
							<h4>
								First Thumbnail label
							</h4>
							<p>
								Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.
							</p>
						</div>
					</div>
					<div class="item active">
						<img alt="" src="http://lorempixel.com/1600/500/sports/2">
						<div class="carousel-caption">
							<h4>
								Second Thumbnail label
							</h4>
							<p>
								Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.
							</p>
						</div>
					</div>
					<div class="item">
						<img alt="" src="http://lorempixel.com/1600/500/sports/3">
						<div class="carousel-caption">
							<h4>
								Third Thumbnail label
							</h4>
							<p>
								Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.
							</p>
						</div>
					</div>
				</div> <a data-slide="prev" href="#carousel-373696" class="left carousel-control">‹</a> <a data-slide="next" href="#carousel-373696" class="right carousel-control">›</a>
			</div>
			<h2>
				游美国，最高立减2500
			</h2>
			<p>
				<span>&lt;美国旅游——春季Spring&gt;</span><br><span>春天，恋爱的季节。当</span><a href="http://bbs.tuniu.com/thread-279117-0.html">北京遇上</a><a href="http://www.tuniu.com/meiguo/xihaian_place/730-1.html">西雅图(Seattle)</a><span>，邂逅在未眠的夜晚。在</span><a href="http://www.tuniu.com/meiguo/donghaian_place/709-1.html">帝国大厦(Empire State Building)</a><span>的楼顶进行一场美妙的约会，或是漫步在</span><a href="http://www.tuniu.com/meiguo/donghaian_place/715-1.html">华盛顿(Washington D.C.)</a><span>盛开的樱花树下。烛光晚餐后，</span><a href="http://www.tuniu.com/meiguo/donghaian_place/707-1.html">百老汇(Broadway)</a><span>的剧场已开幕，看着舞台上的各色人生，是否也会想起自己的美国往事。</span>
			</p>
			<p>
				<a class="btn" href="#">查看详细 »</a>
			</p>
			<ul class="thumbnails">
				<li class="span4">
					<div class="thumbnail">
						<img alt="300x200" src="http://lorempixel.com/600/200/people">
						<div class="caption">
							<h3>
								一个有海有芒果的城市
							</h3>
							<p>
								“蓝天白云，水清沙白，椰林树影”，正如麦兜说的那样，三亚便是这样一个城市。
							</p>
							<p>
								 <a class="btn" href="#">去看看</a>
							</p>
						</div>
					</div>
				</li>
				<li class="span4">
					<div class="thumbnail">
						<img alt="300x200" src="http://lorempixel.com/600/200/city">
						<div class="caption">
							<h3>
								<span>一个有海有芒果的城市</span>
							</h3>
							<p>
								“蓝天白云，水清沙白，椰林树影”，正如麦兜说的那样，三亚便是这样一个城市。
							</p>
							<p>
								<a class="btn" href="#">去看看</a>
							</p>
						</div>
					</div>
				</li>
				<li class="span4">
					<div class="thumbnail">
						<img alt="300x200" src="http://lorempixel.com/600/200/sports">
						<div class="caption">
							<h3>
								<span>一个有海有芒果的城市</span>
							</h3>
							<p>
								“蓝天白云，水清沙白，椰林树影”，正如麦兜说的那样，三亚便是这样一个城市。
							</p>
							<p>
								 <a class="btn" href="#">去看看</a>
							</p>
						</div>
					</div>
				</li>
			</ul>
			<ul class="thumbnails">
				<li class="span4">
					<div class="thumbnail">
						<img alt="300x200" src="http://lorempixel.com/600/200/people">
						<div class="caption">
							<h3>
								Thumbnail label
							</h3>
							<p>
								Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.
							</p>
							<p>
								<a class="btn" href="#">Action</a>
							</p>
						</div>
					</div>
				</li>
				<li class="span4">
					<div class="thumbnail">
						<img alt="300x200" src="http://lorempixel.com/600/200/city">
						<div class="caption">
							<h3>
								Thumbnail label
							</h3>
							<p>
								Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.
							</p>
							<p>
								<a class="btn" href="#">Action</a>
							</p>
						</div>
					</div>
				</li>
				<li class="span4">
					<div class="thumbnail">
						<img alt="300x200" src="http://lorempixel.com/600/200/sports">
						<div class="caption">
							<h3>
								Thumbnail label
							</h3>
							<p>
								Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.
							</p>
							<p>
								<a class="btn" href="#">Action</a>
							</p>
						</div>
					</div>
				</li>
			</ul>
			<div class="pagination pagination-right">
				<ul>
					<li>
						<a href="#">Prev</a>
					</li>
					<li>
						<a href="#">1</a>
					</li>
					<li>
						<a href="#">2</a>
					</li>
					<li>
						<a href="#">3</a>
					</li>
					<li>
						<a href="#">4</a>
					</li>
					<li>
						<a href="#">5</a>
					</li>
					<li>
						<a href="#">Next</a>
					</li>
				</ul>
			</div>
		</div>
		<div class="span4">
			<div class="alert">
				 <button type="button" class="close" data-dismiss="alert">×</button>
				<h4>
					注意！
				</h4> <strong>Warning!</strong> Best check yo self, you're not looking too good.
			</div>
			<ol>
				<li>
					这里是系统公告系统公告系统公告系统公告
				</li>
				<li>
					这里是系统公告系统公告系统公告
				</li>
				<li>
					这里是系统公告系统公告
				</li>
				<li>
					这里是系统公告
				</li>
				<li>
					这里是系统公告
				</li>
				<li>
					这里是系统公告
				</li>
				<li>
					这里是系统公告
				</li>
				<li>
					这里是系统公告
				</li>
			</ol>
			<ul class="nav nav-tabs">
				<li class="active">
					<a href="#">今日热销</a>
				</li>
				<li>
					<a href="#">推荐产品</a>
				</li>
				<li class="disabled">
					<a href="#">其他</a>
				</li>
				<li class="dropdown pull-right">
					 <a href="#" data-toggle="dropdown" class="dropdown-toggle">更多<strong class="caret"></strong></a>
					<ul class="dropdown-menu">
						<li>
							<a href="#">Action</a>
						</li>
						<li>
							<a href="#">Another action</a>
						</li>
						<li>
							<a href="#">Something else here</a>
						</li>
						<li class="divider">
						</li>
						<li>
							<a href="#">Separated link</a>
						</li>
					</ul>
				</li>
			</ul>
			<div class="media well">
				 <a href="#" class="pull-left"><img src="http://lorempixel.com/64/64/" class="media-object" alt=""></a>
				<div class="media-body">
					<h4 class="media-heading">
						2013春 三亚行
					</h4> 三亚被称为“东方夏威夷”，它拥有全海南岛最美丽的海滨风光。这里有闻名中外的“天下第一湾”亚龙湾和大东海、三亚湾等优质海滨，它们的共同特点就是海蓝沙白、浪平风轻。
				</div>
			</div>
			<div class="media well">
				 <a href="#" class="pull-left"><img src="http://lorempixel.com/64/64/" class="media-object" alt=""></a>
				<div class="media-body">
					<h4 class="media-heading">
						<span>2013春 三亚行</span>
					</h4> 三亚被称为“东方夏威夷”，它拥有全海南岛最美丽的海滨风光。这里有闻名中外的“天下第一湾”亚龙湾和大东海、三亚湾等优质海滨，它们的共同特点就是海蓝沙白、浪平风轻。
				</div>
			</div>
		</div>
	</div>
</div>
</body>
</html>
