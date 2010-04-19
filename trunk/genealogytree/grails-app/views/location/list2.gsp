
<%@ page import="com.genealogytree.Location" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'location.label', default: 'Location')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>


<!-- <script src="http://maps.google.com/maps?file=api&v=2&key=ABQIAAAA03uIrV0kGFdBwtPYkG69yhT2yXp_ZAY8_ufC3CFXhHIE1NvwkxS7t_bShEj-stE91f-qn9YF_W2hQg" type="text/javascript"></script> -->
<script src="http://maps.google.com/maps?file=api&v=2&key=ABQIAAAAy1X0TtvReu0zD-J251GW3hR7AD6nXwFB7qSfw9KWhkRTeb_VchTC1URdZxoaaWNoK6N4Ecr5yiIpsQ" type="text/javascript"></script>
<script type="text/javascript" >



  var geocoder;
   var map;
   var address = "";

    function showAddress(address) {
      if (geocoder) {
        geocoder.getLatLng(
          address,
          function(point) {
            if (!point) {
             alert(address + " not found");
            } else {
              map.setCenter(point, 13);
              var marker = new GMarker(point);
              map.addOverlay(marker);
              marker.openInfoWindowHtml(address);
            }
          }
        );
    }
    }

    </script>






    </head>
    <body>

        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLink(uri: '/')}">Home</a></span>
            <span class="menuButton"><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></span>
 
       </div>
        <div class="body">
            <div class="list">
                <table>
            <h1><g:message code="default.list.label" args="[entityName]" /></h1>

            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <div class="list">
                <table>

                    <tbody>

			  <g:set var="counter" value="${1}" />
                    <g:each in="${locationInstanceList}" status="i" var="locationInstance">

                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                        
    
                            <td><g:link action="show" id="${locationInstance.id}">${fieldValue(bean: locationInstance, field: "id")}</g:link></td>
                        
                            <td>${fieldValue(bean: locationInstance, field: "lId")}</td>
                        
                            <td>${fieldValue(bean: locationInstance, field: "street2")}</td>
                        
                            <td>${fieldValue(bean: locationInstance, field: "street1")}</td>
                        
                            <td>${fieldValue(bean: locationInstance, field: "zipCode")}</td>
                        
                            <td>${fieldValue(bean: locationInstance, field: "state")}</td>
				    <td>${fieldValue(bean: locationInstance, field: "street1")} ${fieldValue(bean: locationInstance, field: "city")} ${fieldValue(bean: locationInstance, field: "state")} ${fieldValue(bean: locationInstance, field: "zipCode")}</td>

				    <td>${counter}.&nbsp; ${it}<g:set var="counter" value="${counter + 1}" /><br></td>

				    <td><INPUT TYPE="button" NAME="myButton" VALUE="Press This" onClick="setValue("52 east sweedsford rd malvern pa 19355")";"></td>
                        
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
<b>

<g:set var="bar" value="Hello!" />
${bar}.&nbsp; ${it}




<script type="text/javascript" >

var linebreak = "<br />"
var address = "${fieldValue(bean: locationInstance, field: "street1")}";
// ${fieldValue(bean: locationInstance, field: "state")} ${fieldValue(bean: locationInstance, field: "zipCode")}";
// var address = "123";
document.write(linebreak)
document.write(address)


// <g:set var="foo" value="{fieldValue(bean: locationInstance, field: "street1")}" scope="page" />
<g:set var="bar" value="Hello!" />

document.write(linebreak)
document.write(tomorrow)
document.write(bar)

</script>


<form action="#" onsubmit="showAddress(address); return false">
      <p>
      </p>
      <div id="map_canvas" style="width: 500px; height: 300px"></div>
    </form>


<form action="list2" onsubmit="showAddress(this.address5.value); return false">

<p>
	<input type="hidden" name = "bl" value = " " />

<g:select label="Address List e" name="address5" from="${locations}" optionValue="${{it.lStr1+' '+it.lCity+' '+it.lState+' '+it.lZip}}" keys="${locations.lStr1}" />

        <input type="submit" value="Map It!" />
      </p>

      <div id="map_canvas" style="width: 500px; height: 300px"></div>
    </form>

<div id="map_canvas" style="width: 500px; height: 400px" ></div>
<script type="text/javascript" >
var map = new GMap2(document.getElementById("map_canvas"));
geocoder = new GClientGeocoder();
var address = "52 east swedesford rd malvern pa 19355";
showAddress(address);

map.addControl(new GLargeMapControl());
map.addControl(new GMapTypeControl());
</script>


            <div class="paginateButtons">
</div>

        </div>
</div>
    </body>
</html>
