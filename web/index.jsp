<%@ page import="com.zr.service.NewsService" %><%--
  Created by IntelliJ IDEA.
  User: Geng xing
  Date: 2019/3/10
  Time: 9:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
      <title>天天新闻网</title>
      <meta http-equiv="X-UA-Compatible" content="IE=edge">
      <meta name="viewport" content="width=device-width, initial-scale=1">
      <link rel="stylesheet" href="<%=request.getContextPath() %>/bootstrap/css/bootstrap.css">
      <link rel="stylesheet" href="<%=request.getContextPath() %>/static/css/news.css">
      <!-- jQuery (Bootstrap 的所有 JavaScript 插件都依赖 jQuery，所以必须放在前边) -->
      <script src="<%=request.getContextPath() %>/static/js/jquery.min.js"></script>
      <!-- 加载 Bootstrap 的所有 JavaScript 插件。你也可以根据需要只加载单个插件。 -->
      <script src="<%=request.getContextPath() %>/bootstrap/js/bootstrap.min.js"></script>
  </head>
  <body>
    <div class="container">
        <%--  动态引入文件  --%>
        <jsp:include page="foreground/commons/header.jsp"></jsp:include>
        <jsp:include page="foreground/banner.jsp"></jsp:include>
        <%
            NewsService service =new NewsService();

        %>
        <div class="row">
            <div class="col-md-4">
                <div class="data_list news_list">
                    <div class="dataHeader">国际新闻1<span class="more"><a href="news?action=list&typeId=1">更多...</a></span></div>
                    <div class="datas">
                        <ul>
                            <li>03-14&nbsp;
                                <a href="news?action=show&newsId=104" title="马杜罗说委内瑞拉电力系统再遭攻击">马杜罗说委内瑞拉电力系统再遭攻击</a>
                            </li>
                            <li>03-13&nbsp;
                                <a href="news?action=show&newsId=64" title="东日本大地震过去8年，重建的福岛能否吸引灾民回家 ">东日本大地震过去8年，重建的福岛能否吸引灾民回家 </a>
                            </li>
                            <li>03-13&nbsp;
                                <a href="news?action=show&newsId=65" title="娱乐新闻4">娱乐新闻4</a>
                            </li>
                            <li>03-13&nbsp;
                                <a href="news?action=show&newsId=66" title="娱乐新闻5">娱乐新闻5</a>
                            </li>
                            <li>03-13&nbsp;
                                <a href="news?action=show&newsId=67" title="娱乐新闻6">娱乐新闻6</a>
                            </li>
                            <li>03-13&nbsp;
                                <a href="news?action=show&newsId=68" title="娱乐新闻7">娱乐新闻7</a>
                            </li>
                            <li>03-13&nbsp;
                                <a href="news?action=show&newsId=69" title="娱乐新闻8">娱乐新闻8</a>
                            </li>
                            <li>03-13&nbsp;
                                <a href="news?action=show&newsId=53" title="娱乐新闻2">娱乐新闻2</a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="data_list news_list">
                    <div class="dataHeader">经济新闻2<span class="more"><a href="news?action=list&typeId=1">更多...</a></span></div>
                    <div class="datas">
                        <ul>
                            <li>03-14&nbsp;
                                <a href="news?action=show&newsId=104" title="央行：9.9亿自然人信用信息已接入征信体系">央行：9.9亿自然人信用信息已接入征信体系</a>
                            </li>
                            <li>03-13&nbsp;
                                <a href="news?action=show&newsId=64" title="娱乐新闻3">娱乐新闻3</a>
                            </li>
                            <li>03-13&nbsp;
                                <a href="news?action=show&newsId=65" title="娱乐新闻4">娱乐新闻4</a>
                            </li>
                            <li>03-13&nbsp;
                                <a href="news?action=show&newsId=66" title="娱乐新闻5">娱乐新闻5</a>
                            </li>
                            <li>03-13&nbsp;
                                <a href="news?action=show&newsId=67" title="娱乐新闻6">娱乐新闻6</a>
                            </li>
                            <li>03-13&nbsp;
                                <a href="news?action=show&newsId=68" title="娱乐新闻7">娱乐新闻7</a>
                            </li>
                            <li>03-13&nbsp;
                                <a href="news?action=show&newsId=69" title="娱乐新闻8">娱乐新闻8</a>
                            </li>
                            <li>03-13&nbsp;
                                <a href="news?action=show&newsId=53" title="娱乐新闻2">娱乐新闻2</a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="data_list news_list">
                    <div class="dataHeader">体育新闻3<span class="more"><a href="news?action=list&typeId=1">更多...</a></span></div>
                    <div class="datas">
                        <ul>
                            <li>03-14&nbsp;
                                <a href="news?action=show&newsId=104" title="斯特林帽子戏法 ">斯特林帽子戏法 </a>
                            </li>
                            <li>03-13&nbsp;
                                <a href="news?action=show&newsId=64" title="娱乐新闻3">娱乐新闻3</a>
                            </li>
                            <li>03-13&nbsp;
                                <a href="news?action=show&newsId=65" title="娱乐新闻4">娱乐新闻4</a>
                            </li>
                            <li>03-13&nbsp;
                                <a href="news?action=show&newsId=66" title="娱乐新闻5">娱乐新闻5</a>
                            </li>
                            <li>03-13&nbsp;
                                <a href="news?action=show&newsId=67" title="娱乐新闻6">娱乐新闻6</a>
                            </li>
                            <li>03-13&nbsp;
                                <a href="news?action=show&newsId=68" title="娱乐新闻7">娱乐新闻7</a>
                            </li>
                            <li>03-13&nbsp;
                                <a href="news?action=show&newsId=69" title="娱乐新闻8">娱乐新闻8</a>
                            </li>
                            <li>03-13&nbsp;
                                <a href="news?action=show&newsId=53" title="娱乐新闻2">娱乐新闻2</a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
            <div class="row">
                <div class="col-md-4">
                    <div class="data_list news_list">
                        <div class="dataHeader">娱乐新闻4<span class="more"><a href="news?action=list&typeId=1">更多...</a></span></div>
                        <div class="datas">
                            <ul>
                                <li>03-14&nbsp;
                                    <a href="news?action=show&newsId=104" title="香港少女穿热裤短裙便利店偷零食被捕2">香港少女穿热裤短裙便利店偷零食被捕2</a>
                                </li>
                                <li>03-13&nbsp;
                                    <a href="news?action=show&newsId=64" title="娱乐新闻3">娱乐新闻3</a>
                                </li>
                                <li>03-13&nbsp;
                                    <a href="news?action=show&newsId=65" title="娱乐新闻4">娱乐新闻4</a>
                                </li>
                                <li>03-13&nbsp;
                                    <a href="news?action=show&newsId=66" title="娱乐新闻5">娱乐新闻5</a>
                                </li>
                                <li>03-13&nbsp;
                                    <a href="news?action=show&newsId=67" title="娱乐新闻6">娱乐新闻6</a>
                                </li>
                                <li>03-13&nbsp;
                                    <a href="news?action=show&newsId=68" title="娱乐新闻7">娱乐新闻7</a>
                                </li>
                                <li>03-13&nbsp;
                                    <a href="news?action=show&newsId=69" title="娱乐新闻8">娱乐新闻8</a>
                                </li>
                                <li>03-13&nbsp;
                                    <a href="news?action=show&newsId=53" title="娱乐新闻2">娱乐新闻2</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="data_list news_list">
                        <div class="dataHeader">时政新闻5<span class="more"><a href="news?action=list&typeId=1">更多...</a></span></div>
                        <div class="datas">
                            <ul>
                                <li>03-14&nbsp;
                                    <a href="news?action=show&newsId=104" title="创新＋前瞻习近平以六“要”推进乡村振兴战略 ">创新＋前瞻习近平以六“要”推进乡村振兴战略 </a>
                                </li>
                                <li>03-13&nbsp;
                                    <a href="news?action=show&newsId=64" title="娱乐新闻3">娱乐新闻3</a>
                                </li>
                                <li>03-13&nbsp;
                                    <a href="news?action=show&newsId=65" title="娱乐新闻4">娱乐新闻4</a>
                                </li>
                                <li>03-13&nbsp;
                                    <a href="news?action=show&newsId=66" title="娱乐新闻5">娱乐新闻5</a>
                                </li>
                                <li>03-13&nbsp;
                                    <a href="news?action=show&newsId=67" title="娱乐新闻6">娱乐新闻6</a>
                                </li>
                                <li>03-13&nbsp;
                                    <a href="news?action=show&newsId=68" title="娱乐新闻7">娱乐新闻7</a>
                                </li>
                                <li>03-13&nbsp;
                                    <a href="news?action=show&newsId=69" title="娱乐新闻8">娱乐新闻8</a>
                                </li>
                                <li>03-13&nbsp;
                                    <a href="news?action=show&newsId=53" title="娱乐新闻2">娱乐新闻2</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="data_list news_list">
                        <div class="dataHeader">汽车新闻6<span class="more"><a href="news?action=list&typeId=1">更多...</a></span></div>
                        <div class="datas">
                            <ul>
                                <li>03-14&nbsp;
                                    <a href="news?action=show&newsId=104" title="特斯拉降价蔚来等新能源车企的好日子要结束了 ">特斯拉降价蔚来等新能源车企的好日子要结束了？</a>
                                </li>
                                <li>03-13&nbsp;
                                    <a href="news?action=show&newsId=64" title="娱乐新闻3">娱乐新闻3</a>
                                </li>
                                <li>03-13&nbsp;
                                    <a href="news?action=show&newsId=65" title="娱乐新闻4">娱乐新闻4</a>
                                </li>
                                <li>03-13&nbsp;
                                    <a href="news?action=show&newsId=66" title="娱乐新闻5">娱乐新闻5</a>
                                </li>
                                <li>03-13&nbsp;
                                    <a href="news?action=show&newsId=67" title="娱乐新闻6">娱乐新闻6</a>
                                </li>
                                <li>03-13&nbsp;
                                    <a href="news?action=show&newsId=68" title="娱乐新闻7">娱乐新闻7</a>
                                </li>
                                <li>03-13&nbsp;
                                    <a href="news?action=show&newsId=69" title="娱乐新闻8">娱乐新闻8</a>
                                </li>
                                <li>03-10&nbsp;
                                    <a href="news?action=show&newsId=53" title="娱乐新闻2">娱乐新闻2</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>

        <jsp:include page="foreground/commons/link.jsp"></jsp:include>
        <jsp:include page="foreground/commons/footer.jsp"></jsp:include>
    </div>

  </body>
  <script>
      $(function(){
          var nav = document.getElementsByClassName("nav")[0];
          var olis = nav.getElementsByTagName("li");
          for (var i=0; i<olis.length;i++){
              olis[i].onclick=function (ev) {
                  for (var j = 0; j <olis.length ; j++) {
                      olis[j].className="";
                  }
                  this.className="active";
              }
          }
      })
  </script>
</html>
