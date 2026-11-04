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

Microsoft Edge WebView2 Runtime must be present before the native installer runs.
The package declares `webview2-runtime` as a shared prerequisite, so Chocolatey
resolves it first on machines where the dependency is missing. The Tweaky Driver
uninstall script does not remove this shared runtime.

The 0.1.44 dependency correction changes package metadata only. The official
installer URL, SHA-256, install/uninstall scripts and accepted exit code remain
unchanged. An installer exit code of 2 is still a failure; it is not treated as
success or used to bypass verification. The original verifier log reports that
code but does not independently identify which installer guard rejected the
environment. The corrected package must complete the community verifier again.

The initial 0.1.44 packaging was checked for PowerShell syntax, metadata, archive
contents and agreement with the signed official artifact. It was not installed or
uninstalled on the publisher's working PC as part of package preparation; the
community verifier's result must be checked separately.
