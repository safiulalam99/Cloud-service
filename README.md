# Introduction 
This tool to show the linux related info with every login
 
## Mandatory requirements for the script

Shows new tip with every login 


### How to run the script 
- Clone the `totd` repo to your local bash shell.
- Replace path in the second line after the cd command. This helps us the .bashrc file locate the directory the script is located at and reads the tips/*.txt files easily.
- Make the `p.sh` file executeable by typing `chmod +x p.sh`. And to  run the script: `./p.sh`. Or simply run the files using `bash p.sh`.

- Go to your $HOME directory and open the `.bashrc` file using an editor of your choice.
- In the `.bashrc` file, add `bash <file.sh path>/p.sh>`.
- Save and exit the editor. 
- Run the `.bashrc` file: `source .bashrc`

## Example output 
Example must output something like this.



=====================================================
safiul@Safi:~$ source .bashrc
TIP OF THE TODAY (./tips/1.txt)
*******************************************************

Though it was Linus Torvalds who wrote the Linux Kernel initially, he hardly codes anything today. However, he is actively responsible for managing and merging codes written by other developers.

=====================================================

