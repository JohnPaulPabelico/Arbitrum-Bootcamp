// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721Burnable.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract SenSanity is ERC721URIStorage  {
    uint256 private _nextTokenId;

    constructor()
        ERC721("SenSanity", "SEN")
    {
    }

    function safeMint() external {
        uint256 tokenId = _nextTokenId++;
        _safeMint(msg.sender, tokenId);
        _setTokenURI(
            tokenId,
            "ipfs://bafkreigrzrddozgocegu24payk3f6tmadywmavx5kqi7cv2axfd2t5x2ei"
        );
    }
} 