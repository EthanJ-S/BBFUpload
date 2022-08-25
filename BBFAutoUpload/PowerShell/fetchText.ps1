import-module 'C:\BBFAutoUpload\PowerShell\textFilter.psm1';

import-module 'C:\BBFAutoUpload\PowerShell\deleteText.psm1';

$filePath = 'C:\BBFAutoUpload\tempFiles\sermonText';

$outPath = 'C:\BBFAutoUpload\videoDetails\';

$title = GetStringBetweenTwoStrings -firstString "title: '" -secondString "'," -importPath $filePath;
$title = $title.replace('&quot;','"') | out-file "C:\BBFAutoUpload\videoInformation\title.txt";
   


$description = GetStringBetweenTwoStrings -firstString '<span class="markdown stylized-lists"><p>' -secondString '</p><p><a href="https://bbfohio.com"' -importPath $filePath | 
    out-file "C:\BBFAutoUpload\videoInformation\description.txt";