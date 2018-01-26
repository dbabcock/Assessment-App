<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="adminProfileLayout"/>
        <asset:stylesheet src="adminProfile.css"/>
    </head>
    <body>
    		<div class="newTab">
          <p>Settings</p>
        </div>
        <div class="mainArea">
          <g:hasErrors bean="${c}">
            <div class="errors">
              <g:renderErrors bean="${c}"/>
            </div>
          </g:hasErrors>
          <g:form class="simpleform" url="index">
            <g:select id="academicYear"  name="academicYear" from="${yearList}"  value="${year}"/>
            <button id="classButton" class="add">Set</button>
          </g:form>
            Current Academic Year: ${year}
          </br>
          </br>
            Past Years:
          </br>
              <g:each in="${Years}">
              <g:if test="${year != it.academicYear}">
                ${it}
              </br>
              </g:if>
              </g:each>
        </div>
    </body>
</html>
