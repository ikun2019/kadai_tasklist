<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<label>タスク<br />
<input type="text" name="content" value="${task.content}" />
</label>

<br /><br />
<input type="hidden" name="_token" value="${_token}" />
<button type="submit" class="btn btn-outline-success">投稿</button>