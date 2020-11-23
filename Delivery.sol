import './Ownable.sol';
pragma solidity 0.5.12;

contract Delivery is Ownable {

    struct Package {
        uint id;
        address sender;
        address receiver;
        uint deliveryCost;
        string status;
        bool isPaid;
    }

    mapping(uint => Package) private packages;

    function createPackage(uint id, address sender, address receiver, uint deliveryCost) public onlyOwner {
        Package memory newPackage;

        //temporary solution for id
        newPackage.id = id;
        newPackage.sender = sender;
        newPackage.receiver = receiver;
        newPackage.deliveryCost = deliveryCost;
        newPackage.status = 'new';
        newPackage.isPaid = false;

        packages[id] = newPackage;
    }

}