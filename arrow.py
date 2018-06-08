#!/usr/bin/python3

import sys

class Arrow:
    def __init__(self, size):
        
        self.size = size
        
    def print(self):

        for line in range(self.size):
            text = ' ' * (self.size-line) + "*"
            if (line != 0):
                text += " " * (1 + (line - 1) * 2) + "*"
            print(text)

        print("*" * (self.size * 2 + 1))


        for line in range(self.size):
            print(" " * self.size + "*")            

def main():
    args = sys.argv

    if (len(args) == 2):
        arrow = Arrow(int(args[1]))
        arrow.print()

    elif (len(args) < 2) :
        print("[" + args[0] + "] Please entre one argument")

    else :
        print("[" + args[0] + "] Please entre ONLY one argument")
    


if __name__ == '__main__':
    main()
