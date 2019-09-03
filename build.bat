if not exist tools\nuget.exe powershell -Command "Invoke-WebRequest https://dist.nuget.org/win-x86-commandline/latest/nuget.exe -OutFile tools\nuget.exe" & cd tools & nuget.exe install -ExcludeVersion & cd ..
if not exist build.ps1 powershell -Command "Invoke-WebRequest https://cakebuild.net/download/bootstrapper/windows -OutFile build.ps1"

tools\cake\cake.exe build.cake -target=%*