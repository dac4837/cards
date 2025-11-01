# PowerShell script to rename PNG files in the current directory
# to maya-1.png, maya-2.png, etc.

# Get all PNG files in the current directory
$pngFiles = Get-ChildItem -Path . -Filter *.png | Sort-Object Name

# Initialize counter
$counter = 1

foreach ($file in $pngFiles) {
    # Construct the new file name
    $newName = "maya-$counter.png"
    
    # Rename the file
    Rename-Item -Path $file.FullName -NewName $newName

    Write-Host "Renamed '$($file.Name)' -> '$newName'"

    # Increment counter
    $counter++
}
