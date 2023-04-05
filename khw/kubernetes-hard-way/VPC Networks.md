[VPC Networks](https://cloud.google.com/vpc/docs/vpc#networks)

Virtual version of physical network

A VPC network does the following:

-   Provides connectivity for your [Compute Engine virtual machine (VM) instances](https://cloud.google.com/vpc/docs/vpc#vm-instances).
-   Offers native Internal TCP/UDP Load Balancing and proxy systems for Internal HTTP(S) Load Balancing.
-   Connects to on-premises networks by using Cloud VPN tunnels and VLAN attachments for Cloud Interconnect.
-   Distributes traffic from Google Cloud external load balancers to backends.

**SUBNETS**

- VPC are gloal resources and each vpc contains an IP address range called subnets, thus subnets are regional resources and have IP address ranges associated to them.
- While creating a resource in GCP we choose a network and subnets along with the instance template, also selecting the zone and region 
	-  When you [create an instance](https://cloud.google.com/compute/docs/instances/create-start-instance), you select a zone for the instance. If you don't select a network for the VM, the default VPC network is used, which has a subnet in every region. If you do select a network for the VM, you must select a network that contains a subnet in the selected zone's parent region.
    
	-   When you [create a managed instance group](https://cloud.google.com/compute/docs/instance-groups/creating-groups-of-managed-instances), you select a zone or region, depending on the group type, and an instance template. The instance template defines which VPC network to use. Therefore, when you create a managed instance group, you must select an instance template with an appropriate configuration; the template must specify a VPC network that has subnets in the selected zone or region. Auto mode VPC networks always have a subnet in every region.
    
	-   The process of [creating a Kubernetes container cluster](https://cloud.google.com/kubernetes-engine/docs/how-to/creating-a-container-cluster) involves selecting a zone or region (depending on the cluster type), a network, and a subnet. You must select a subnet that is available in the selected zone or region.
- Two subnets exists IPv4 covers all IPv4 address ranges and IPv6 covers both IPv4 and IPv6 address ranges 
