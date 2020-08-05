<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<%@ taglib prefix="x" uri="http://java.sun.com/jsp/jstl/xml" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
 <title>x:set Tag</title>  
</head>  
<body>  
<h3>Books Information:</h3>  
<c:set var="book">  
<books>  
<book>  
  <name>Three mistakes of my life</name>  
  <author>Chetan Bhagat</author>  
  <price>200</price>  
</book>  
<book>  
  <name>Tomorrow land</name>  
  <author>Brad Bird</author>  
  <price>2000</price>  
</book>  
</books>  
</c:set>  
<x:parse xml="${book}" var="output"/>  
<x:set var="fragment" select="$output/books/book[2]/price"/>  
<b>The price of the Tomorrow land book</b>:  
<x:out select="$fragment" />  
<br>
<x:choose>  
   <x:when select="$output//book/author = 'Chetan bhagat'">  
      Book is written by Chetan bhagat  
   </x:when>  
   <x:when select="$output//book/author = 'Brad Bird'">  
      Book is written by Brad Bird  
   </x:when>  
   <x:otherwise>  
      The author is unknown...  
   </x:otherwise>  
</x:choose>  

<h2>Vegetable Information:</h2>  
<c:set var="vegetables">  
<vegetables>  
    <vegetable>  
      <name>onion</name>  
      <price>40</price>  
    </vegetable>  
 <vegetable>  
      <name>Potato</name>  
      <price>30</price>  
    </vegetable>  
 <vegetable>  
      <name>Tomato</name>  
      <price>90</price>  
    </vegetable>  
</vegetables>  
</c:set>  
<x:parse xml="${vegetables}" var="output"/>  
<x:if select="$output/vegetables/vegetable/price < 100">  
   Vegetables prices are very low.  
</x:if>  
</body>
</html>