<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>  
 <%@ taglib prefix="x" uri="http://java.sun.com/jsp/jstl/xml" %>  
<html>  
<head>  
<title>Tag Example</title>  
</head>  
<body>  
<c:out value="${'Welcome to my page'}"/>  
<br>
<c:set var="Income" scope="session" value="${4000*4}"/>  
<c:out value="${Income}"/>  
<c:remove var="income"/>  
<p>After Remove Value is: <c:out value="${income}"/></p>

<p>I'll try to divde 2 by 0. The "catch" will take care of it</p>
<c:catch var ="catchtheException">  
   <% int x = 2/0;%>  
</c:catch>  
  
<c:if test = "${catchtheException != null}">  
   <p>The type of exception is : ${catchtheException} <br />  
   There is an exception: ${catchtheException.message}</p>  
</c:if>    

<c:set var="income1" scope="session" value="${4000*4}"/>  
<c:if test="${income1 > 10000}">  
   <p>My income is: <c:out value="${income}"/> which is over 10,000won<p>  
   </c:if>   
   
   <c:choose>  
    <c:when test="${income1 <= 1000}">  
       Income is not good.  
    </c:when>  
    <c:when test="${income1 > 10000}">  
        Income is very good.  
    </c:when>  
    <c:otherwise>  
       Income is undetermined...  
    </c:otherwise>  
</c:choose> 

<c:forEach var="j" begin="1" end="3">  
   Item <c:out value="${j}"/><p>  
</c:forEach>  

<c:forTokens items="010-4087-1234" delims="-" var="phno">  
   <c:out value="${phno}"/><p>  
</c:forTokens>  

<c:url value="index.jsp"/> 
<c:set var="String" value="My name is Junseok Park"/>  
<c:if test="${fn:contains(String, 'Park')}">  
   <p>Found Park <p>  
</c:if>  

<c:if test="${fn:endsWith(String, 'Park')}">  
   <p>String ends with Park<p>  
</c:if>  

<c:set var="string1" value="It is first String."/>  
<c:set var="string2" value="It is <xyz>second String.</xyz>"/>  
  
<p>With escapeXml() Function:</p>  
<p>string-1 : ${fn:escapeXml(string1)}</p>  
<p>string-2 : ${fn:escapeXml(string2)}</p>  
  
<p>Without escapeXml() Function:</p>  
<p>string-1 : ${string1}</p>  
<p>string-2 : ${string2}</p>  

<p>Index-1 : ${fn:indexOf(string, "Park")}</p>  
<p>Index-2 : ${fn:indexOf(string, "Junseok")}</p>  

<!-- split, join 예시 -->

<c:set var="str1" value="Welcome-to-JSP-Programming."/>  
<c:set var="str2" value="${fn:split(str1, '-')}" />  
<c:set var="str3" value="${fn:join(str2, ' ')}" />  
  
<p>String-3 : ${str3}</p>  

<!-- lowercase, uppercase 예 --> -->
<c:set var="string" value="Welcome to JSP Programming"/>  
${fn:toLowerCase("HELLO,")}  
${fn:toLowerCase(string)}  
<br>
  <c:set var="site" value="junseok.com"/>  
  <c:set var="author" value="Junseok Park"/>  
  Hi, This is ${fn:toUpperCase(site)} developed by ${fn:toUpperCase(author)}.  
  <br>
  <!-- Example of Substring -->
  
  ${fn:substring(author, 0, 7)} 
  
  <!-- Example of Length -->
  Length of the author is: ${fn:length(author)}<br>  
   
   <!-- Example of replace -->
   ${fn:replace(author, "Junseok", "Junduck")}  
   
   <!-- Example of xml tag -->
   <h2>Vegetable Information:</h2>  
<c:set var="vegetable">  
<vegetables>  
    <vegetable>  
      <name>onion</name>  
      <price>40/kg</price>  
    </vegetable>  
 <vegetable>  
      <name>Potato</name>  
      <price>30/kg</price>  
    </vegetable>  
 <vegetable>  
      <name>Tomato</name>  
      <price>90/kg</price>  
    </vegetable>  
</vegetables>  
</c:set>  
<x:parse xml="${vegetable}" var="output"/>  
<b>Name of the vegetable is</b>:  
<x:out select="$output/vegetables/vegetable[1]/name" /><br>  
<b>Price of the Potato is</b>:  
<x:out select="$output/vegetables/vegetable[2]/price" />  

 
</body>  
</html>  
</body>
</html>