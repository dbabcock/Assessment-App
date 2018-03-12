<!DOCTYPE html>
<html>
    <head>
        <link rel="shortcut icon" href="${createLinkTo(dir:'images',file:'favicon.ico')}" type="image/x-icon" />
        <meta name="layout" content="userProfileLayout"/>
        <asset:stylesheet src="adminProfile.css"/>
    </head>
    <body>
    <div class="newTab">
                <p>Measures
                  <g:link controller="measures" action="create" params="[isadmin:false]">
                    <button class="add">New<div class="plus"> &oplus;</div></button>
                </g:link>
                </p>
      </div>
      <div class="mainArea">
        <g:each in="${Measures}" var="m" status="i">
          <g:each in="${Measures.indicator.find().classes.find()}" var="c">
            <g:render template="/templates/showOwnedOnly" model="['item':c]">
                <div class="listings">
                			<h1>${m.measureTitle}</h1>
                      <p>Desc: ${m.measureDescription}</p>
                      <p>Indicator: ${m.indicator.find().toString()} </p>
                      <g:link controller="measures" action="edit" params="[measure:m.id, isadmin:false]">
                       <button class="add">Edit</button></g:link>
                      <g:link controller="measures" action="delete" params="[measure:m.id, isadmin:false]" onclick="return confirm('Are you sure you want to delete this measure? $m.measureTitle')">
           		        <button class="add">Delete</button></g:link>
                </div>
            <br/>
            </g:render>
          </g:each>
        </g:each>
      </div>
    </body>
</html>
