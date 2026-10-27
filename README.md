# Microsoft Office installer archive

เก็บสำเนาไฟล์ `Microsoft_365_and_Office_16.113.26100421_Installer.pkg` ตามไฟล์ต้นฉบับที่อัปโหลด

**[ดาวน์โหลดไฟล์จาก Releases](https://github.com/Peerapat-J/Microsoft-Office-16.113.4-pgk/releases/tag/16.113.26100421)**

ไฟล์ต้นฉบับขนาด 2,877,627,418 bytes แบ่งเป็น 43 ส่วน (ส่วนละไม่เกิน 64 MiB)เพื่อให้แต่ละส่วนต่ำกว่าขีดจำกัด 2 GiB ของ GitHub Releases ไฟล์ binary เก็บใน Releases ส่วน repo เก็บวิธีรวมไฟล์และ checksum

## ดาวน์โหลดและรวมไฟล์บน macOS

ดาวน์โหลดไฟล์เหล่านี้จาก Releases มาไว้ในโฟลเดอร์เดียวกัน:

- `Microsoft_365_and_Office_16.113.26100421_Installer.pkg.part001` ถึง `.part043`
- `SHA256SUMS`
- `SHA256SUMS-original`
- `restore.sh`

เปิด Terminal ที่โฟลเดอร์นั้นแล้วรัน:

```sh
sh restore.sh
```

สคริปต์ตรวจ SHA-256 ของทั้ง 43 ส่วน รวมกลับเป็น `.pkg` และตรวจ SHA-256 ของไฟล์ที่รวมแล้ว ต้องมีพื้นที่ว่างเพิ่มประมาณ 2.88 GB สำหรับไฟล์ที่รวมแล้ว

หากใช้ GitHub CLI:

```sh
gh release download 16.113.26100421 --repo Peerapat-J/Microsoft-Office-16.113.4-pgk --dir office-installer
cd office-installer
sh restore.sh
```

## ข้อมูลไฟล์

- SHA-256 ต้นฉบับ: `8212551ea19ce659caf2dc140cf77a26d0e3d8c1473a61e147a146e7711554b7`
- รายละเอียดแต่ละส่วน: [manifest.json](manifest.json)
- ผลตรวจ `pkgutil --check-signature` ก่อนอัปโหลด: **invalid signature** จึงยังไม่ได้ยืนยันว่าแพ็กเกจนี้ปลอดภัยสำหรับติดตั้ง การตรวจ checksum ยืนยันเพียงว่าไฟล์ที่รวมกลับตรงกับไฟล์ที่อัปโหลด
- ไม่มีการแก้ไขเนื้อหา installer และไม่มี license หรือ activation key รวมอยู่ในเอกสารของ repo นี้
