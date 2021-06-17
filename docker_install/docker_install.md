# การติดตั้ง Docker  
**มีข้อควรระวัง หากมีการใช้งาน Docker บน Server อยู่แล้วให้ข้ามขั้นตอนการติดตั้ง Docker เพราะในวิธีการติดตั้ง จะมีส่วนคำสั่งในการลบ Docker ของเก่าออก หากมีระบบที่กำลังทำงานอยู่บน Docker จะถูกลบไปด้วยทันที**  
**วิธีในการติดตั้งตามเอกสารนี้ ติดตั้งด้วย OS Ubuntu 20LTS หากใช้ระบบอื่นโปรดอ่านเพิ่มเติมที่เอกสารอ้างอิง**  
อ้างอิงตามเอกสาร https://docs.docker.com/engine/install/ubuntu/  
การอธิบายจะไม่ลงรายละเอียดมากเพราะว่า **มีเอกสารจากทาง Official อยู่แล้ว**  
ก่อนติดตั้ง Docker ใหม่จำเป็นต้องทำการลบ Docker ตัวเดิมในระบบออกก่อน ด้วยคำสั่ง
```shell
sudo apt-get remove docker docker-engine docker.io containerd runc
```
---
## เริ่มการติดตั้ง Docker  
1. ติดตั้งส่วนที่จำเป็นสำหรับติดตั้ง Docker
```shell
sudo apt-get update
sudo apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg \
    lsb-release
```
![รูปภาพการทำคำสั่ง 1](image/1.png)
