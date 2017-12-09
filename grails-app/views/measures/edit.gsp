<!DOCTYPE html>
<html>
<head>
  <meta name="layout" content="dataInputLayout"/>
</head>
<body>
  <g:if test="${session.teacher == null}">
    ${response.sendRedirect("/")}
  </g:if>
	<div class="pageTitle">
    		<h1>Create Measure</h1>
      	<p>Complete the form below to create an Measure</p>
    </div>
    <g:form class="simpleform" url="edit">
   			 <g:hasErrors bean="${Measures}">
      			<div class="errors">
        				<g:renderErrors bean="${Measures}"/>
      			</div>
    			</g:hasErrors>
    		<div class="backgrounds">
            <div class="labels">
              <label for="Title">Measure Title:</label>
              <br>
              <g:field type="text" id="measureTitle" value="${Measures?.measureTitle}" name="measureTitle" width="100px" placeholder="Title" class="shortText"/>
              <br>
              <label for="selectIndicator">Select Indicator:</label>
              <g:select name="indicatorId" from="${Indicators}" id="selectIndicator" onchange="submit()" value="${Iid}" style="width:40%;" optionKey="id" />
              <p> ${indicatorDisc} </p>
              <br>
              <label for="Desc">Description:</label>
              <br>
              <g:textArea id="measureDescription" name="measureDescription" value="${Measures?.measureDescription}" rows="10" cols="100" resize="none"/>
              <g:hiddenField name="isadmin" value="${isadmin}" />
              <g:hiddenField name="measure" value="${measure}" />
              <g:submitButton class="button" name="submitButton" value="Create" />
              <g:submitButton class="button" name="submitButton" value="Cancel" />
            </div>
        </div>
      </g:form>
    </body>
</html>