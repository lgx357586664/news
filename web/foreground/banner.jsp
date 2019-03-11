<%@ page import="com.zr.service.NewsService" %>
<%@ page import="com.zr.entity.News" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="row">
    <div class="col-md-9">
        <!-- Carousel  start -->
        <div id="myCarousel" class="carousel slide" data-ride="carousel" data-interval="2000">
            <!-- 轮播（Carousel）指标 -->
            <ol class="carousel-indicators">
                <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                <li data-target="#myCarousel" data-slide-to="1"></li>
                <li data-target="#myCarousel" data-slide-to="2"></li>
                <li data-target="#myCarousel" data-slide-to="3"></li>
            </ol>
            <!-- 轮播（Carousel）项目 -->
            <div class="carousel-inner">
            <%
                NewsService service =new NewsService();
                List<News> imageNews = service.findImageNews();
                for (int i = 0; i <imageNews.size() ; i++) {
                    if(i==0){
            %>
                <div class="item active">
                    <a href="#?<%=imageNews.get(i).getNewsId()%>"><img src="<%=request.getContextPath() %>/newsImg/<%=imageNews.get(i).getImageUrl()%>" alt="<%=imageNews.get(i).getTitle()%>"
                                      title="<%=imageNews.get(i).getTitle()%>"></a>
                  <%--  <div class="text-caption">标题 1</div>--%>
                </div>
            <%
                    }else {
            %>
                <div class="item ">
                    <a href="#?<%=imageNews.get(i).getNewsId()%>"><img src="<%=request.getContextPath() %>/newsImg/<%=imageNews.get(i).getImageUrl()%>" alt="<%=imageNews.get(i).getTitle()%>"
                                                                       title="<%=imageNews.get(i).getTitle()%>"></a>
                </div>
            <%
                    }
                }
            %>
            </div>
            <!-- 轮播（Carousel）导航 -->
            <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
                <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                <span class="sr-only">Previous</span>
            </a>
            <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
                <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                <span class="sr-only">Next</span>
            </a>
        </div>
        <!-- Carousel  end -->
        <div class="newsHeader_list">
            <%
                News headline = service.findHeadline();
                String title = headline.getTitle().length() >= 8 ? headline.getTitle().substring(0, 8) + "..." : headline.getTitle();
            %>
            <div class="newsHeader">
                <h3><a href="#?<%=headline.getNewsId()%>" title="<%=headline.getTitle()%>"><%=title%></a></h3>
                <p>;　<%=headline.getContext()%>...
                    <a href="#?<%=headline.getNewsId()%>">[查看全文]</a>
                </p>
            </div>
            <div class="currentUpdate">
                <div class="currentUpdateHeader">最近更新</div>
                <div class="currentUpdateDatas">
                    <table width="100%">
                        <%
                            List<News> newNews = service.findNewNews();
                            for (int i = 0; i <newNews.size() ; i++) {
                                title = newNews.get(i).getTitle().length() > 8 ? newNews.get(i).getTitle().substring(0, 8) : newNews.get(i).getTitle();
                                if(i%2==0){
                        %>
                        <tr>
                        <%
                                }

                        %>
                            <td width="50%">
                                <a href="#?<%=newNews.get(i).getNewsId()%>" title="<%=newNews.get(i).getTitle()%>"><%=title%></a>
                            </td>
                        <%
                               if(i%2==1){
                        %>
                        </tr>
                         <%
                               }
                            }
                        %>
                    </table>
                </div>
            </div>
        </div>
    </div>
    <div class="col-md-3">
        <div class="data_list hotspot_news_list">
            <div class="dataHeader">热点新闻</div>
            <div class="datas">
                <ul>
                    <%
                        List<News> hotNews = service.findHotNews();
                        for (int i = 0; i < hotNews.size(); i++) {
                            title=hotNews.get(i).getTitle().length()>=15?hotNews.get(i).getTitle().substring(0,15):hotNews.get(i).getTitle();
                    %>
                    <li>
                        <a href="#?<%=hotNews.get(i).getNewsId()%>" title="<%=hotNews.get(i).getTitle()%>"><%=title%></a>
                    </li>
                    <%
                        }
                    %>
                </ul>
            </div>
        </div>
    </div>
</div>
