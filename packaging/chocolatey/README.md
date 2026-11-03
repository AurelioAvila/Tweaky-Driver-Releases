# Chocolatey package source

These scripts package the official signed Tweaky Driver installer. They do not
bundle application binaries, scan devices or install drivers.

The package is submitted to Chocolatey's community moderation process separately
from GitHub releases. The presence of this source does not mean that a version is
approved or available in the community feed.

For a release update, verify the final installer hash, publisher signature and
trusted timestamp, then update the version-specific URL, checksum and nuspec
version together. Keep the application license and Free/Pro description accurate.

`choco pack` builds the package without installing the application. Installation
and removal require administrator access and affect the machine-wide app under
Program Files. The application requires a verified account for its scan workflow.

The initial 0.1.44 packaging was checked for PowerShell syntax, metadata, archive
contents and agreement with the signed official artifact. It was not installed or
uninstalled on the publisher's working PC as part of package preparation; the
community verifier's result must be checked separately.
