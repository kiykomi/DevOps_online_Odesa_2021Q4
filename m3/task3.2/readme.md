# Task 3.2.


## Let's make a network config with routers.

![1](screen/Screenshot_31.png)



## Let's check ping from  devices to routers.

![2](screen/Screenshot_32.png)


![3](screen/Screenshot_33.png)


![4](screen/Screenshot_34.png)



## Let's do a ping and traceroute  command befor changes in Data Center network.

![5](screen/Screenshot_35.png)



## Let's change netmask to /26 (255.255.255.192)

![6](screen/Screenshot_36.png)

### As we are see, ping and traceroute success on 2.20.89.1 (router), but unsuccessful on endpoint devices. This trouble persist, because network with mask 26 include only 62 hosts, but our servers have addresses 50, 100 and 150. 100 and 150 - out of limits, of the network.

![7](screen/Screenshot_38.png)


## Let's make 4 VLAN on switch in Data Center and assign it with ports  GE0/1 - GE0/3.

### As we are see, Ping and Traceroute do not working, because now devices  living in another virtual networks and not configured trunk port in router ISP3.

![8](screen/Screenshot_39.png)


## Let's change port FE0/1 state to trunk on a switch Data Center, make virtual interfaces on router ISP3 and set new ip addresses, corresponding servers subnets and addresses.

![14](screen/Screenshot_46.png)


```
interface GigabitEthernet0/0.2
encapsulation dot1Q 2
ip address 2.20.89.1 255.255.255.192
interface GigabitEthernet0/0.3
encapsulation dot1Q 3
ip address 2.20.89.65 255.255.255.192
interface GigabitEthernet0/0.4
encapsulation dot1Q 4
ip address 2.20.89.129 255.255.255.192
```

![9](screen/Screenshot_40.png)

## Setting Default Gateway for servers according with new addresses.

![10](screen/Screenshot_41.png)


![11](screen/Screenshot_42.png)


![12](screen/Screenshot_43.png)

## Let's  ping our server now, when VLAN is configured correctly.

![13](screen/Screenshot_44.png)


## Address Table

![15](screen/Screenshot_47.png)





