<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="data_list ">
    <div id="newsListNav">
        ${newsNav}
    </div>
    <div class="datas" >
        <h3 class="news_title" >${news.title}</h3>
        <div class="row news_info">
            <div class="col-md-4">
                日期：【<fmt:formatDate value="${news.publishDate}" type="date" pattern="yyyy-MM-dd HH:mm:ss"></fmt:formatDate>】
            </div>
            <div class="col-md-4">
                作者：${news.author}
            </div>
            <div class="col-md-4">
                访问次数：[${news.click}]
            </div>
        </div>
        <div class="news_content">
            ${news.context}
        </div>
    </div>
    <div class="newsUpAndDown">
        ${newsUpAndDown}
    </div>
</div>