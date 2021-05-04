<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:import url="../layout/app.jsp">
    <c:param name="content">
        <c:if test="${flush != null}">
            <div id="flush_success">
                <c:out value="${flush}"></c:out>
            </div>
        </c:if>
        <p class="mt-2"><a href="${pageContext.request.contextPath}/new" class="btn btn-outline-secondary">新規タスクの投稿</a></p>
        <h2>タスク一覧</h2>
        <ul class="list-group">
            <c:forEach var="task" items="${tasks}">
                <li class="list-group-item">
                    <a href="${pageContext.request.contextPath}/show?id=${task.id}">
                        <c:out value="${task.id}" />
                    </a>
                    ：<c:out value="${task.content}" />
                </li>
            </c:forEach>
        </ul>

    </c:param>
</c:import>