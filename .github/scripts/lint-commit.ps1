$MasterLatestShortHash="$(git rev-parse --short origin/main)".Trim()
$BranchLatestShortHash="$(git log -n 1 --pretty=%h)".Trim()

npm run commitlint -- --from=$MasterLatestShortHash --to=$BranchLatestShortHash 

$CommitLintSuccessful=$LastExitCode

if($CommitLintSuccessful -eq 0) {
  Write-Host ""
  Write-Host "***********************************************"
  Write-Host "     Commit message is correctly formatted     "
  Write-Host "***********************************************"
  Write-Host ""
} else {
  Write-Host ""
  Write-Host "****************************************************"
  Write-Host "     Commit message is not correctly formatted      "
  Write-Host "****************************************************"
  Write-Host ""
  Write-Host "Here are instructions on fixing your commit message:"
  Write-Host "https://devops.medpace.com/devops/DefaultCollection/_git/Design%20System?path=%2Fdocs%2Ftracking-changes.md&version=GBmain&_a=preview&anchor=conventional-commits"
}