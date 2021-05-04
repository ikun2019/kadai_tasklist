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
        <ul class="list-group overflow-auto">
            <c:forEach var="task" items="${tasks}">
                <li class="list-group-item">
                    <a href="${pageContext.request.contextPath}/show?id=${task.id}">
                        <c:out value="${task.id}" />
                    </a>
                    ：<c:out value="${task.content}" />
                </li>
            </c:forEach>
        </ul>

        <div id="pagenation">
            (全 ${tasks_count} 件)<br />
            <c:forEach var="i" begin="1" end="${((tasks_count - 1) / 15) + 1}" step="1">
                <c:choose>
                    <c:when test="${i == page}">
                        <c:out value="${i}" />
                    </c:when>
                    <c:otherwise>
                        <a href="${pageContext.request.contextPath}/index?page=${i}"><c:out value="${i}" /></a>
                    </c:otherwise>
                </c:choose>
            </c:forEach>
        </div>
    </c:param>
</c:import>