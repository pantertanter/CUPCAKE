<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<t:genericpage>
    <jsp:attribute name="header">
         Bestil cupcakes
    </jsp:attribute>
    <jsp:attribute name="footer">
    </jsp:attribute>

    <jsp:body>
        <h2>Hej, ${sessionScope.email} </h2>
        <h4>Bestil cupcakes her</h4>
        <form class="mt-4" method="post" action="${pageContext.request.contextPath}/fc/customerpage">
            <label for="topping">Toppings</label>
            <select name="topping" id="topping">
                <c:forEach var="topping" items="${applicationScope.toppingList}">
                    <option value="${topping.topping_id}">${topping.topping_name}</option>
                </c:forEach>
            </select>

            <label for="bottom">Bottoms</label>
            <select name="bottom" id="bottom">
                <c:forEach var="bottom" items="${applicationScope.bottomList}">
                    <option value="${bottom.bottom_id}">${bottom.bottom_Name}</option>
                </c:forEach>
            </select>

            <label for="amount">amount</label>
            <select name="amount" id="amount">
                <option value="1">1</option>
                <option value="2">2</option>
                <option value="3">3</option>
                <option value="4">4</option>
                <option value="5">5</option>
                <option value="6">6</option>
                <option value="7">7</option>
                <option value="8">8</option>
                <option value="9">9</option>
                <option value="10">10</option>
            </select>
            <button type="submit" class="btn btn-success">submit</button>
        </form>
        <div class="row">
            <c:forEach var="tmpCake" items="${sessionScope.tmpOrder}">
                <p>
                    ${applicationScope.toppingList.get(tmpCake.toppingId).topping_name} -
                    ${applicationScope.bottomList.get(tmpCake.bottomId).bottom_Name} x
                    ${tmpCake.amount}
                </p>
            </c:forEach>

        </div>
    </jsp:body>

</t:genericpage>

