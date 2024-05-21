rosbridge kurmak için:

1. Sistem Paketlerini Güncelleyin
Öncelikle, sisteminizdeki paketlerin güncel olduğundan emin olun: sudo apt-get update

2. ROS Noetic'in Yüklü Olduğunu Kontrol Edin
ROS Noetic'in sisteminizde yüklü olduğundan emin olun. Eğer ROS Noetic yüklü değilse, ROS Noetic Kurulum Kılavuzu adımlarını izleyerek kurulum yapabilirsiniz.

3. ROSBridge Server'ı Kurun
Aşağıdaki komutu terminalde çalıştırarak ROSBridge Server'ı kurun: sudo apt-get install ros-noetic-rosbridge-server

4. ROSBridge Server'ı Başlatın
Kurulum tamamlandıktan sonra, ROSBridge Server'ı başlatmak için aşağıdaki komutu kullanabilirsiniz: roslaunch rosbridge_server rosbridge_websocket.launch
