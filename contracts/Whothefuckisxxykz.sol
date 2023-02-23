// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;

import "@openzeppelin/contracts/security/ReentrancyGuard.sol";
import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
// nos proporciona el modifier onlyOwner, y la funcion renounceOwnership entre otras
import "@openzeppelin/contracts/access/Ownable.sol";

contract Whothefuckisxxykz is ERC721, Ownable, ReentrancyGuard {
    // declaracion de variables relacionadas con metadata
    string public uriPrefix = "";
    string public uriSuffix = ".json";
    string public hiddenMetadataURI = "";
    // declaracion de variables relacionadas con el supply de la coleccion
    uint256 public maxSupply = 100;
    uint256 public maxMintAmountPerTransaction = 1;
    // declaracion de variables relacionadas con la dinamica de minteo
    bool public paused = true;

    constructor() ERC721("WTIX", "Who the fuck is xxykz") {}
}
