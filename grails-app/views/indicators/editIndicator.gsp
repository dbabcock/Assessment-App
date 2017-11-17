<!DOCTYPE html>
<html>
<head>
  <meta name="layout" content="dataInputLayout"/>
</head>
<body>
  <g:if test="${session?.teacher?.admin == false}">
    ${response.sendRedirect("/")}
  </g:if>
  <g:if test="${session.teacher == null}">
    ${response.sendRedirect("/")}
  </g:if>
	<div class="pageTitle">
    		<h1>Edit Indicator</h1>
      	<p>Complete the form below to edit an Indicator</p>
    </div>
    <g:form class="simpleform" url="/editIndicator">
   			 <g:hasErrors bean="${teacher}">
      			<div class="errors">
        				<g:renderErrors bean="${teacher}"/>
      			</div>
    			</g:hasErrors>
    		<div class="backgrounds">
            <div class="labels">
                <label for="indicatorName">Indicator Title:</label>
                <br>
                <g:textField type="text" id="indicatorName" name="indicatorName" value="${indicator?.indicatorName}" placeholder="Title" class="${hasErrors(bean:indicator,field:'indicatorTitle','errors')}"/>
                <br>
                <label for="indicatorDesc">Indicator Description:</label>
                <br>
                <g:textArea id="indicatorDesc" name="indicatorDesc" value="${indicator?.indicatorDescription}" rows="10" cols="50"/>
                <g:hiddenField name="id" value="${id}" />
                <label for="classes">Choose The Class:</label>
                <br>
                <g:select name="classId" from="${Classes}" id="classes" value="" style="width:20%;" optionKey="id" optionValue="title" />
                <br>
                <g:submitButton class="button" name="submitButton" value="Create Indicator" />
                <g:submitButton class="button" name="cancelButton" value="Cancel" />
            </div>
        </div>
      </g:form>
    </body>
</html>
