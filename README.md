# wifi-interface-tools
Common bash scripts for wifi interfaces and adapters.


## Requirements
```
sudo apt update
sudo apt install net-tools iproute2 -y
```

## Usage
Give permissions:
```
chmod +x managed.sh monitor.sh
```
Enter monitor mode:
```
sudo ./monitor.sh INTERFACE_NAME
```

Enter managed mode:
```
sudo ./managed.sh INTERFACE_NAME
```
