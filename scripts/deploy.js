const hre = require('hardhat');

async function main() {
  const Todos = await hre.ethers.getContractFactory('Todos');
  const todos = await Todos.deploy();

  await todos.deployed();

  console.log('Todos deployed to:', todos.address);
}

main()
  .then(() => process.exit(0))
  .catch((error) => {
    console.error(error);
    process.exit(1);
  });
