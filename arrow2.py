# Saisie de la taille de flèche 
sizeArrow = int(input("Entrée un chiffre entre 2 et 20: "))

# Variable espace 
space = " "

# vérification de l'entrée
while sizeArrow < 2 or sizeArrow > 20:
    print("ERREUR : veuillez entrer un chiffre entre 2 et 20")
    sizeArrow = int(input("Entrez un chiffre entre 2 et 20: "))

# Dessiner la tête de la flèche 
def headArrow(size):
    topArrowSize = size 
    print(topArrowSize*space + "*")

# Dessiner le corp de la flèche 
def bodyArrow(size):
    bodyArrowSize = size -1
    numSpaceBefore = size -1
    numSpaceAfter = 1

    for i in range(bodyArrowSize):
        print(numSpaceBefore*space + "*" + numSpaceAfter*space + "*")
        numSpaceBefore -= 1
        numSpaceAfter += 2

# Dessiner la base de la flèche 
def baseArrow(size):
    baseSize = (size*2)+1
    print(baseSize*"*" )

# Dessiner la queue de la flèche 
def tailArrow(size):
    tailArrowSize = size 
    for i in range (size):
        print(tailArrowSize*space + "*")

# Apelle des fonctions
headArrow(sizeArrow)
bodyArrow(sizeArrow)
baseArrow(sizeArrow)
tailArrow(sizeArrow)