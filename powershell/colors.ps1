# https://www.dotnetcatch.com/2017/04/09/light-theme-for-the-powershell-console/

Function invert-consolecolors {
 
    $oldForeground = $host.ui.rawui.ForegroundColor 
    $oldBackground = $host.ui.rawui.BackgroundColor
    $host.ui.rawui.ForegroundColor = $oldBackground
    $host.ui.rawui.BackgroundColor = $oldForeground
 
    Set-PSReadlineOption -ContinuationPromptBackgroundColor $oldForeground
    Set-PSReadlineOption -Token None -BackgroundColor $oldForeground
    Set-PSReadlineOption -Token Comment -BackgroundColor $oldForeground
    Set-PSReadlineOption -Token Keyword -BackgroundColor $oldForeground
    Set-PSReadlineOption -Token String -BackgroundColor $oldForeground
    Set-PSReadlineOption -Token Operator -BackgroundColor $oldForeground
    Set-PSReadlineOption -Token Variable -BackgroundColor $oldForeground
    Set-PSReadlineOption -Token Command -BackgroundColor $oldForeground
    Set-PSReadlineOption -Token Parameter -BackgroundColor $oldForeground
    Set-PSReadlineOption -Token Type -BackgroundColor $oldForeground
    Set-PSReadlineOption -Token Number -BackgroundColor $oldForeground
    Set-PSReadlineOption -Token Member -BackgroundColor $oldForeground
    Set-PSReadlineOption -EmphasisBackgroundColor $oldForeground
    Set-PSReadlineOption -ErrorBackgroundColor $oldForeground
 
 
    Set-PSReadlineOption -ContinuationPromptForegroundColor $oldBackground
    Set-PSReadlineOption -Token None -ForegroundColor $oldBackground
    Set-PSReadlineOption -Token Command -ForegroundColor "Blue"
    Set-PSReadlineOption -Token Type -ForegroundColor "DarkGray"
    Set-PSReadlineOption -Token Number -ForegroundColor "DarkGreen"
    Set-PSReadlineOption -Token Member -ForegroundColor "DarkGreen"
    Set-PSReadlineOption -Token Variable -ForegroundColor "DarkGray"
     
    $Host.PrivateData.ErrorBackgroundColor = "Yellow"
 
    cls

}
 
Function reset-consolecolors {
     
    $host.ui.rawui.ForegroundColor = "DarkYellow"
    $host.ui.rawui.BackgroundColor = "DarkMagenta"
 
    Set-PSReadlineOption -ResetTokenColors
 
    $Host.PrivateData.ErrorForegroundColor = "Red"
    $Host.PrivateData.ErrorBackgroundColor = "Black"
    $Host.PrivateData.WarningForegroundColor = "Yellow"
    $Host.PrivateData.WarningBackgroundColor = "Black"
    $Host.PrivateData.DebugForegroundColor = "Yellow"
    $Host.PrivateData.DebugBackgroundColor = "Black"
    $Host.PrivateData.VerboseForegroundColor = "Yellow"
    $Host.PrivateData.VerboseBackgroundColor = "Black"
    $Host.PrivateData.ProgressForegroundColor = "Yellow"
    $Host.PrivateData.ProgressBackgroundColor = "DarkCyan"
 
    cls

}