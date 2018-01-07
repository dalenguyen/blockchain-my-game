pragma solidity ^0.4.17;

contract IScoreStore{
    function GetScore(string name) public returns (int);
}

contract MyGame{
    function ShowScore(string name) public returns (int){
        // Replace the address in new environment
        IScoreStore scoreStore = IScoreStore(0x6cbac7da9e93333b9b9a9ecce021855d87b67a0b);
        return scoreStore.GetScore(name);
    }
}