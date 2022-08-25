function GetStringBetweenTwoStrings($firstString, $secondString, $importPath){

    #Get content from file
    $file = Get-Content $importPath

    #Regex pattern to compare two strings
    $pattern = "$firstString(.*?)$secondString"

    #Perform the opperation
    $result = [regex]::Match($file,$pattern).Groups[1].Value

    #Return result
    return $result

}
