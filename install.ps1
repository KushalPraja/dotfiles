
# directories
$DOTFILES = "$HOME\dotfiles"
$BACKUP = "$HOME\.dotfiles-backup\$(Get-Date -Format 'yyyyMMdd-HHmmss')"

# create backup directory
New-Item -ItemType Directory -Force -Path $BACKUP | Out-Null

# link function
function New-Link {
    param(
        [string]$Source,
        [string]$Destination
    )
    
    $destParent = Split-Path -Parent $Destination
    
    # backup existing file/directory if not a symlink
    if ((Test-Path $Destination) -and -not (Get-Item $Destination).Attributes.HasFlag([System.IO.FileAttributes]::ReparsePoint)) {
        $backupPath = Join-Path $BACKUP $Destination.Replace("$HOME\", "")
        $backupParent = Split-Path -Parent $backupPath
        New-Item -ItemType Directory -Force -Path $backupParent | Out-Null
        Move-Item -Path $Destination -Destination $backupPath -Force
        Write-Host "backed up $Destination"
    }
    
    # remove existing symlink
    if (Test-Path $Destination) {
        Remove-Item -Path $Destination -Force -Recurse
    }
    
    # create parent directory if needed
    if (-not (Test-Path $destParent)) {
        New-Item -ItemType Directory -Force -Path $destParent | Out-Null
    }
    
    # create symlink using mklink
    cmd /c mklink /D "$Destination" "$Source"
    Write-Host "linked $Destination → $Source"
}

# ensure config directory exists
$configDir = "$HOME\AppData\Local\nvim"
if (-not (Test-Path (Split-Path -Parent $configDir))) {
    New-Item -ItemType Directory -Force -Path (Split-Path -Parent $configDir) | Out-Null
}

# link nvim config
New-Link -Source "$DOTFILES\nvim" -Destination $configDir

# finish
Write-Host "[X] nvim dotfiles installed"
Write-Host "[X] backups in $BACKUP"
