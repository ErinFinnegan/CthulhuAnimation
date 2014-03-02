

color Random rand = new Random();

int myRandomNumber = rand.nextInt(0x10) + 0x10; // Generates a random number between 0x10 and 0x20
println("%x\n", myRandomNumber); // Prints it in hex, such as "0x14"
// or....
//String result = Integer.toHexString(myRandomNumber); // Random hex number in result

