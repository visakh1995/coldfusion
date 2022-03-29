<cfquery 
       name="iae1" datasource="cruddb"> 
       select * from sakila.info
</cfquery>
<cfscript> 
    //Use an absolute path for the files. ---> 
       theDir=GetDirectoryFromPath(GetCurrentTemplatePath()); 
       theFile=theDir & "exportData.xls"; 
    //Create two empty ColdFusion spreadsheet objects. ---> 
		theSheet = SpreadsheetNew("DATOS REGIONAL"); 
    //Populate each object with a query. ---> 
    SpreadsheetAddRows(theSheet,iae1); 
</cfscript> 

<cfspreadsheet action="write" filename="#theFile#" name="theSheet"  
    sheetname="iae1" overwrite=true> 
<cfspreadsheet action="read" src="#theFile#" sheet=1 format="csv" name="csvData"> 

<cfspreadsheet action="write" filename="#theFile#" name="CSVData"  
    format="csv" sheetname="iae1" overwrite=true>
<a href="exportData.xls">download here</a>