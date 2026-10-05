# Tweaky Driver — Windows Driver Inventory and Update Review

Review detected devices and available driver offers before changing a working PC.
Tweaky Driver is a proprietary Windows 10/11 x64 application by Aurelio Avila.

[Explore the official website](https://pctweaker.app/tweaky-driver/) · [Read the workflow and FAQ](https://pctweaker.app/tweaky-driver/#questions)

[Download the latest signed installer](https://github.com/AurelioAvila/Tweaky-Driver-Releases/releases/latest)

[![Latest release](https://img.shields.io/github/v/release/AurelioAvila/Tweaky-Driver-Releases?label=release)](https://github.com/AurelioAvila/Tweaky-Driver-Releases/releases/latest)

## What to expect

- A driver inventory that distinguishes detected devices from available offers.
- Separate download-ready offers and catalog candidates, so a search result is not mistaken for a compatible installation.
- Clear installed and available versions, package sources and download information, with responsive scan cancellation.
- Release notes describing supported workflows, validation status and known limitations.

Driver discovery depends on compatible packages and supported sources. Universal
driver coverage is not promised, and some packages are download-only. Review the
specific offer and release notes before installing or purchasing; detection alone
does not establish compatibility or guarantee a performance improvement.

## Download and verify

1. Open the [latest release](https://github.com/AurelioAvila/Tweaky-Driver-Releases/releases/latest) and read its notes.
2. Download the Windows x64 setup executable from that release's assets.
3. Check the file's digital signature in Windows Properties. The publisher should be **Aurelio Avila**; investigate a missing or invalid signature before running it.
4. Compare the downloaded file's SHA-256 with the digest shown in its official GitHub release asset details. Do not assume every release includes a separate checksum file. A matching hash does not replace publisher-signature verification.

Windows SmartScreen may still display a prompt for a signed application. Code
signing identifies the publisher and protects integrity; it does not guarantee
compatibility or the absence of software defects.

## WinGet status

The [WinGet submission](https://github.com/microsoft/winget-pkgs/pull/442842) for **0.1.11** has passed automated validation and is waiting for Microsoft's manual review as of October 5, 2026. The latest stable application release is **0.1.12**; WinGet will follow once the package is accepted. Use the [latest official GitHub release](https://github.com/AurelioAvila/Tweaky-Driver-Releases/releases/latest) for current downloads until the package is accepted; passing individual automated checks is not publication.

## Support and security

For help, contact [tweakydriver@pctweaker.app](mailto:tweakydriver@pctweaker.app) with the app
version, Windows version and steps to reproduce the issue. Do not include passwords,
license tokens or other sensitive data. Follow [SECURITY.md](SECURITY.md) when reporting
a suspected vulnerability.

## License and distribution

This repository distributes signed Windows x64 installers and release notes only. The original application source code is private and is not included. This is not an open-source project. See [LICENSE](LICENSE) for the copyright notice; third-party components retain their own licenses.

Read the release notes for supported features, validation status and current limitations before installing or purchasing. Driver discovery depends on compatible packages and supported sources; universal driver coverage is not promised. Some packages are download-only.

Publisher: **Aurelio Avila**. Installers, application binaries and uninstallers are signed and timestamped. Windows SmartScreen may still display a prompt.
