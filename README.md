# Microsoft Office for Mac version 16.113.4 (26100421) installer archive

After version version 16.113.4 will forced to pay subscription to Microsoft 365 apps by no reason, even though I've already paid for one-time purchase many years ago. Fuck you Microsoft.

An archive of `Microsoft_365_and_Office_16.113.26100421_Installer.pkg`, preserved as originally uploaded.

**[Download from Releases](https://github.com/Peerapat-J/Microsoft-Office-16.113.4-pgk/releases/tag/16.113.26100421)**

The original file is 2,877,627,418 bytes and is split into 43 parts of up to 64 MiB each, below the 2 GiB limit per GitHub release asset. The binary files are stored in Releases; this repository contains instructions for reassembling them and verifying their checksums.

## Download and reassemble on macOS

Download the following files from Releases into the same folder:

- `Microsoft_365_and_Office_16.113.26100421_Installer.pkg.part001` through `.part043`
- `SHA256SUMS`
- `SHA256SUMS-original`
- `restore.sh`

Open Terminal in that folder and run:

```sh
sh restore.sh
```

The script verifies the SHA-256 checksums of all 43 parts, reassembles the `.pkg` file, and verifies its SHA-256 checksum. You need approximately 2.88 GB of additional free space for the reassembled file.

With GitHub CLI:

```sh
gh release download 16.113.26100421 --repo Peerapat-J/Microsoft-Office-16.113.4-pgk --dir office-installer
cd office-installer
sh restore.sh
```

## File information

- Original SHA-256: `8212551ea19ce659caf2dc140cf77a26d0e3d8c1473a61e147a146e7711554b7`
- Part details: [manifest.json](manifest.json)
- The pre-upload `pkgutil --check-signature` check reported **invalid signature**, so this package has not been confirmed safe to install. Checksum verification only confirms that the reassembled file matches the uploaded original.
- The installer contents have not been modified. This repository’s documentation does not include a license or activation key.

## Original pkg

[Google Drive](https://drive.google.com/file/d/1i7IJevpDbcWXKl7YZM2xHJpTntMXyF1M/view?usp=sharing)
