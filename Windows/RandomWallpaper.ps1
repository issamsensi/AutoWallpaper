while ($true) {
            $wallpaperFolder = "C:\Users\ISSAM SENSI\Pictures\wallpapers"


$images = Get-ChildItem -Path $wallpaperFolder -Include *.jpg, *.jpeg, *.png, *.bmp -Recurse | Get-Random -Count 1


if ($images.Count -gt 0) {
    $selectedImage = $images[0].FullName

    
    Add-Type @"
using System;
using System.Runtime.InteropServices;
public class Wallpaper {
    [DllImport("user32.dll", SetLastError = true)]
    public static extern bool SystemParametersInfo(int uAction, int uParam, string lpvParam, int fuWinIni);
}
"@

    [Wallpaper]::SystemParametersInfo(20, 0, $selectedImage, 3)
}

            Start-Sleep -Seconds 600 
}
