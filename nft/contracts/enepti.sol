// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.19;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721Burnable.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract enepti is ERC721URIStorage {
    uint256 tokenId;

    constructor() ERC721("enepti", "NFT") {}

    function mint() external {
        _safeMint(msg.sender, tokenId);
        _setTokenURI(
            tokenId,
            "ipfs://bafkreigrzrddozgocegu24payk3f6tmadywmavx5kqi7cv2axfd2t5x2ei"
        );
        tokenId++;
    }
}