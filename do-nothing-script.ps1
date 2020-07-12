# Define Static Process Variables
$ProcessName = "Process Name"
$ProcessDate = Get-Date -UFormat "%m/%d/%Y"

# Define steps in the process as variables. Add as many steps/variables as neccessary. This script assumes
# a single linear line of steps with no decisions except for yes on whether to precede or not. You
# will also need to edit the response lines to provide room for responses as to whether the steps have been
# completed or not.
$Step1 = "Step 1"
$Step2 = "Step 2"
$Step3 = "Step 3"

# Setup Input Screen
Clear-Host
Write-Output "$ProcessName - $ProcessDate"
Write-Output "Please enter your response (Y/N)"

# Take Responses. You will only be allowed to precede if your answer is some version of Yes.
do {$Step1Response = Read-Host "$Step1"} until ("Y" -contains $Step1Response)
do {$Step2Response = Read-Host "$Step2"} until ("Y" -contains $Step2Response)
do {$Step3Response = Read-Host "$step3"} until ("Y" -contains $Step3Response)

# Prepare Final Report - Write to the screen for now.
Clear-Host
Write-Host $ProcessName
Write-Host $ProcessDate
Write-Host $Step1 : $Step1Response
Write-Host $Step2 : $Step2Response
Write-Host $Step3 : $Step3Response