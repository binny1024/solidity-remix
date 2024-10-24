// SPDX-License-Identifier: GPL-3.0
pragma solidity  >=0.7.0 <0.9.0;
import "contracts/5_Asset.sol";
contract AssetFactory{
   
    uint public index = 0; //记录创建的合约个数
    mapping(address => string) public addr_name; //记录合约地址对应的的名字
    mapping(address => address) public receiver_addr; //
    mapping(uint => address) public addr_index; //地址在工程合约中的索引
    address public owner;
     constructor(){
        owner =msg.sender;
    }
    modifier  onlyOwner(){
        require(msg.sender==owner);
        _;
    }
    function newAssert(string memory name,string memory symbol,address _receiver)public onlyOwner returns(address){
        require(receiver_addr[_receiver]==address(0),"this account has been created one asset");
        Asset asset = new Asset(name,symbol);
        address asset_address = address(asset);
        addr_name[asset_address] = name;
        addr_index[index] = asset_address;
        receiver_addr[_receiver] = asset_address;
        index++;
        return asset_address;
    }

}