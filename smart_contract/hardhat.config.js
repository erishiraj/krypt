// https://eth-goerli.g.alchemy.com/v2/8ScAdYm1Z_3ShF20Na__KUvG2rEmxrhM q
require('@nomiclabs/hardhat-waffle');

/** @type import('hardhat/config').HardhatUserConfig */
module.exports = {
  solidity: '0.8.17',
  networks: {
    goerli: {
      url: 'https://eth-goerli.g.alchemy.com/v2/8ScAdYm1Z_3ShF20Na__KUvG2rEmxrhM',
      accounts: [
        '4138cd80c342c42778974eaf277df03a0fba650a34dd95068faa3e0f3f48f30b',
      ],
    },
  },
};
