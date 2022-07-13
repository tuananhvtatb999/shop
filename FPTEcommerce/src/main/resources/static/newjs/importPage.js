
// ===================== import HTML to HTML JS ===================

$(function(){
  $("#header").load("${pageContext.request.contextPath}/newhtml/footer.jsp"); 
  $("#footer").load("${pageContext.request.contextPath}/newhtml/footer.jsp"); 
});