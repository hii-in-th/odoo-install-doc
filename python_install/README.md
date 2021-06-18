# การติดตั้ง Python
สำหรับเนื้อหาในส่วนนี้ จะเน้นไปที่วิธีการ Build code จาก Python official ส่วนเหตุผลที่เลือกวิธีการนี้มาเขียน เพราะว่า เนื้อหาส่วนการ Build code เอง ยังมีผู้ทำไม่เป็นจำนวนมาก และ เหมาะที่จะนำมาใช้กับระบบ CI/CD  
หากผู้ใช้สะดวกติดตั้งผ่าน apt หรือ yum ก็แล้วแต่สะดวก

---
# เริ่มการติดตั้ง Python
จำเป็นต้องมีประสบการณ์ทางด้าน Linux command มาบ้าง เพราะตั้งแต่ทำมา แต่ละเครื่องเจอปัญหาไม่เหมือนกัน ส่วนใหญ่จะเจอปัญหาไม่พบ library ใน repo ของ zone ประเทศที่เชื่อต่ออยู่ ต้องไปโหลด .deb จาก zone อื่นมาลงด้วยมือก็มีบ้าง และมีปัญหาเกี่ยวกับการ Build ที่ต้องแก้หน้างาน  
1. ติดตั้ง library ที่จำเป็นสำหรับการ Build ด้วยคำสั่ง
  ```sh
  sudo apt-get install -y git build-essential wget checkinstall libffi-dev python-dev libxslt-dev libzip-dev libldap2-dev libsasl2-dev node-less
  ```
  ![รูปภาพการทำคำสั่ง](image/1_1.png)

  และตามด้วย
  ```sh  
  sudo apt-get install -y libreadline-gplv2-dev libncursesw5-dev libssl-dev libsqlite3-dev tk-dev libgdbm-dev libc6-dev libbz2-dev libeccodes-dev libopenblas-base libopenblas-dev
  ```
  ![รูปภาพการทำคำสั่ง](image/1_2.png)

2. ดึง code python ด้วยคำสั่ง
```sh
wget https://www.python.org/ftp/python/3.6.13/Python-3.6.13.tgz
```
![รูปภาพการทำคำสั่ง](image/2.png)

3. ทำการคลายไฟล์ที่ Download มาด้วยคำสั่ง
```sh
tar zxvf Python-3.6.13.tgz
```
![รูปภาพการทำคำสั่ง](image/3.png)

4. ทำการ Build Python ขั้นตอนนี้จะใช้เวลาค่อนข้างนาน คำสั่งดังนี้
```sh
cd Python-3.6.13/
./configure --enable-optimizations
make
```

5. หลังจาก Build เสร็จทำการติดตั้ง Python ด้วยคำสั่ง
```sh
sudo make install
```
![รูปภาพการทำคำสั่ง](image/5.png)

6. ทำการตรวจสอบ Python version ด้วยคำสั่ง
```sh
python3.6 --version
```
![รูปภาพการทำคำสั่ง](image/6.png)
