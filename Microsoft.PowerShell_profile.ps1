Add-Type -Assembly System.Web
function google{
    param([string] $query)
    $query = "https://www.google.com/#q=" + [System.Web.HttpUtility]::UrlEncode($query)
    Start-Process $query
}

function touch{
    param([string] $fileName)
    "" > $fileName
}

function toucho{
    param([string] $fileName)
    "" > $fileName
    $fileName = "./" + $fileName
    code $fileName
}

function open{
    param([string] $url)
    
    if($url -eq "gmail"){
        $url = "https://gmail.com"
    }

    if($url -eq "spiegel"){
        $url = "https://www.spiegel.de"
    }

    if($url -eq "github"){
        $url = "https://github.com"
    }

    if($url -eq "dev"){
        $url = "https://dev.to"
    }

    if(! $url.StartsWith("http")){
        $url = "https://" + $url
    }

    

    Start-Process $url
}