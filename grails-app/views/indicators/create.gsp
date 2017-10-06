<!DOCTYPE html>
<html>
<head>
  <meta name="layout" content="dataInputLayout"/>
</head>
<body>
	<div class="pageTitle">
    		<h1>Create Indicator</h1>
      	<p>Complete the form below to create an Indicator</p>
    </div>
    <g:form class="simpleform" url="create">
   			 <g:hasErrors bean="${teacher}">
      			<div class="errors">
        				<g:renderErrors bean="${teacher}"/>
      			</div>
    			</g:hasErrors>
    		<div class="backgrounds">
            <div class="labels">
                <label for="indicatorTitle">Indicator Title:</label>
                <br>
                <g:textField type="text" id="indicator_name" name="indicator_name" value="${indicator?.indicator_name}" placeholder="Title" class="${hasErrors(bean:indicator,field:'indicatorTitle','errors')}"/>
                <br>
                <label for="indicatorDesc">Indicator Description:</label>
                <br>
                <g:textArea id="indicator_description" name="indicator_description" value="${indicator?.indicator_description}" rows="10" cols="50"/>

                <g:if test="${indicator?.outcome_id != NULL}">
                  <g:hiddenField name="outcome_id" value="${indicator?.outcome_id}"/>
                </g:if>
                <g:elseif test="${outcome_id != null}">
                    <g:hiddenField name="outcome_id" value="${outcome_id}"/>
                </g:elseif>

                <g:submitButton class="button" name="submitButton" value="Create Outcome" />
                <g:submitButton class="button" name="submitButton" value="Cancel" />
            </div>
        </div>
      </g:form>
    </body>
</html>