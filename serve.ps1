$listener = New-Object System.Net.HttpListener
$listener.Prefixes.Add("http://localhost:9090/")
$listener.Start()
Write-Host "Server running at http://localhost:9090/"

$basePath = "C:\Users\Yagiz\OneDrive\Desktop\proje copilot\src"

$mimeTypes = @{
    ".html" = "text/html"
    ".css"  = "text/css"
    ".js"   = "application/javascript"
    ".json" = "application/json"
    ".png"  = "image/png"
    ".jpg"  = "image/jpeg"
    ".webp" = "image/webp"
}

while ($listener.IsListening) {
    $context = $listener.GetContext()
    $requestUrl = $context.Request.Url.LocalPath
    if ($requestUrl -eq "/") { $requestUrl = "/index.html" }
    
    $filePath = Join-Path $basePath $requestUrl.Replace("/", "\")
    
    if (Test-Path $filePath) {
        $ext = [System.IO.Path]::GetExtension($filePath)
        $contentType = if ($mimeTypes.ContainsKey($ext)) { $mimeTypes[$ext] } else { "application/octet-stream" }
        $context.Response.ContentType = "$contentType; charset=utf-8"
        $buffer = [System.IO.File]::ReadAllBytes($filePath)
        $context.Response.ContentLength64 = $buffer.Length
        $context.Response.OutputStream.Write($buffer, 0, $buffer.Length)
    } else {
        $context.Response.StatusCode = 404
        $buffer = [System.Text.Encoding]::UTF8.GetBytes("Not Found")
        $context.Response.OutputStream.Write($buffer, 0, $buffer.Length)
    }
    $context.Response.Close()
}
