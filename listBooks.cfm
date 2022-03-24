<cfinvoke method = "showBooks"
    returnvariable = "rawBookList" 
    component = "components.book">
<!--- <!---     webservice ="http://yourdomain.com/web_services/book.cfc?wsd1"> ---> --->
<cfinvokeargument name="store" value="1">
</cfinvoke>

<cfset newBookList = rawBookList>
<cfdump var ="#newBookList#">