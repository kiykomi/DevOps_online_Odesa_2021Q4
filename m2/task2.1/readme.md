# Task 2.1

## Most popular Hypervisors 1st type
1) VMWare Vsphere or free version - ESXi.
2) Microsoft Hyper-V.
3) QEMU/KVM  (proxmox used KVM  technology).
4) Xen Citrix.

### But we have some emulators and Hypervisors 2nd type:
1) Microsoft VirtualPC.
2) VMWare Workstation.
3) Oracle VirtualBox.
4) QEMU emulator (for simple testing  boot images).
5) OpenVZ



## Differents of Hypervisors

* First different is a type of hypervisor.
Hypervisors of type 1 works with computer "metal" natively and dont need to be installed other OS, so to speak "Bare Metal", they are have more better performance then hypervisors of 2nd type, who work over installed OS like Windows, MacOS or Linux and working slower, but sometimes, it is the only solution for quick test software and OS before deploy it in  production.

* Lets look on differents of most popular HV:
- VMWare Vsphere - this is a first popular hypervisor, works with all server platforms, has in its composition a kernel similar to Linux, but with  own CLI commands and utilites, have a free versions (ESXi).

- MS Hyper-V - works only on Windows Server,  like a part of this OS, usually used with Windows virtualization, unlike the previous HV, Hyper-V do not have a USB mapping to VM and not have a free  versions (you must have a license for Windows and for Hyper-V). 

- KVM - it is opensorce solution for virtualization. Have a many functions and futures, but it is new product in virtualization arena and have some bugs in his work (not recommended to use in high-load projects). KVM - only command line, but he have a many GUI shells. It is solution for professionals, who know what thay doing.
