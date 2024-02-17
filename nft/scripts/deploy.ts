import { ethers } from "hardhat";

async function main() {
  const nft = await ethers.deployContract("enepti");

  await nft.waitForDeployment();
  const contractAddress = await nft.getAddress()
  console.log(
    `Token contract ${contractAddress} deployed to ${nft.target}`
  );
}

// We recommend this pattern to be able to use async/await everywhere
// and properly handle errors.
main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});