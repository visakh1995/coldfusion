<cfset filename = createUUID() & ".xls">
<cfcontent type="application/msexcel" variable="#s#" reset="true">
