$templatePath = "$env:NNDEV_TOOLS_DIR/git/templates"

# Copy git hooks from .utils/tools/git/hooks to .git/hooks
Copy-Item -Path $templatePath/hooks.tpl/* -Destination .git/hooks -Recurse -Force

#  Copy the .gitignore template file from the .utils folder to the root of the repository
Copy-Item -Path $templatePath/.gitignore.tpl -Destination .gitignore -Force

#  Copy the .gitattributes template file from the .utils folder to the root of the repository
Copy-Item -Path $templatePath/.gitattributes.tpl -Destination .gitattributes -Force