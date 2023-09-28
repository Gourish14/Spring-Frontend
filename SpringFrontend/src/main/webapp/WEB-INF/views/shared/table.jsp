<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix="c" %>
<ul class="list-group">
  <c:forEach var="category" items="${categories}">
  <li class="list-group-item">${category.name}</li>
  </c:forEach>
</ul>