import './Ownable.sol';
pragma solidity 0.5.12;

contract Delivery {

    struct Package {
        uint id,
        address sender,
        address receiver,
        uint deliveryCost,
        string status
    }

}