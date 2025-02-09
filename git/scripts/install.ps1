# Install Git using winget
winget install -e --id Git.Git --custom "/VERYSILENT /NORESTART /NOCANCEL /SP- /CLOSEAPPLICATIONS /RESTARTAPPLICATIONS /COMPONENTS=""icons,ext\reg\shellhere,assoc,assoc_sh"""

# Update the PATH environment variable
$env:PATH = [System.Environment]::GetEnvironmentVariable("PATH","Machine") + ";" + [System.Environment]::GetEnvironmentVariable("PATH","User")

# Set the SSL backend for Git
git config --global http.sslbackend schannel

# Prompt the user to enter their username and email
$username = Read-Host "Please enter your username (e.g., John Doe)"
$email = Read-Host "Please enter your email address (e.g., johndoe@example.com)"

# Set the username and email in Git
git config --global user.name "$username"
git config --global user.email "$email"